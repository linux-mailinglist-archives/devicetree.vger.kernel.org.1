Return-Path: <devicetree+bounces-54551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F06948918A8
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 13:26:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8D31A1F245B1
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 12:26:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A1548565D;
	Fri, 29 Mar 2024 12:26:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="W3Nty7Au"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BAE06A031
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 12:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711715185; cv=none; b=uwsO3GLEtuCXOw2AZ2nou+LTHc3muuSOddmATuZau6nE1agsmPF4RVxcSWfmm136ueJ3yB5vEYEGohMiKTblrjKq/WNY6nT7R963OkoucPEFODzqUelEkif4o98VeTquXa1tW52zKplgQ8Wv3QOc1op5JaD6gYc78ugQq5KO8xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711715185; c=relaxed/simple;
	bh=3VWjCOa5b4hmLY3eM1N7yaUqMm4Psxq4eZLprcN78ns=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=lWiWpGl4LYOtVygi8UUcZNXmDpWQNTtuDAZOQlaUcxTPb+Wd0lsKrsJ20O/2eHdu1H3uHLnHyIOQF5XGnvVpeq4FI3zs9RpW0rww8kWS+SVGtipXxhKXQMYr7nRtZpwCISB3rYjTx65mwwtLxHWrI19vai3nfjIuyTrjRoRIrdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=W3Nty7Au; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-56bc5a3aeb9so2448812a12.3
        for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 05:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1711715181; x=1712319981; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LFvJZ+2psODEep45ngZKqrqa301yt2Mc1MN4ieVjABs=;
        b=W3Nty7AuDqDOUcgUvOog+F6jbvVjkBHAESkL50LAaES3MoxS0zqLo2SxI0r1fICm4r
         WG/3mKcVGrKsPCwaCDi9VU1Hu3EGMCUq7IUvgmb9aDbXtVde/eJvJgqpcLPsVt3ENWoD
         n2umiX500JjbG00GQ5J2k6f52ZGBNZC0ezBIrVhLKJ0GFdG4fUvAlIv5Ewo82dc3RNwu
         lsDn48Pee6QqIeyCYdhAiLcvX7TPMM3mbze0b+6kEN8zexWtiKLvChauQUJENNweIRjV
         e+EBzxmXbROitz/0AHVYiKFIBNGuAaPIOH5iI0VEv7Jc7Y1roAJFj1dh3uTQ3/AV1d+e
         uqGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711715181; x=1712319981;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LFvJZ+2psODEep45ngZKqrqa301yt2Mc1MN4ieVjABs=;
        b=l1BKrjngoiIVTbVaEhpm5qZGm4yU2g/XMOEwdw2J5nwo9L1gZcbJGtz5cVkiMqvSrB
         pQSpHU1KztxDZOHpvEPIp/C7JgyDqCbShDOtGzynM+Y3ck0un2H3iqdPtQb5JuhTdQv3
         RaAYrB5Q9O7TSjrRNYF5URIx+UPvxLMXXBs1temFClaukL27cJupKprpff9/Pn6TCX1R
         DXAMeQqyhrrL4Yl06diGNguAD01jhOegELsuxv2kyVNdbMIwDJ7kvHiXLMneascGyU26
         xuPRgAbqWxV5UXqbixUUcEi/FEIXC1aUwznZp9MhHiCFjblLeYp/r/4ojTS6SpDSk9Cd
         avoQ==
X-Forwarded-Encrypted: i=1; AJvYcCUogjRCr8Wyl1pBvEollhADCXCwLMUN1hvMQP73M3AYrHA5hAz6T7wODe/ywAajnBlw/F25ZPx+l0Klethhne0QkJnOSyLS3jPdAw==
X-Gm-Message-State: AOJu0Yx0UZD3Rcv4NjkGoI5yDU6KrJXeaTpW+g4UwujEQ6JGqU+ya9il
	/PHv8QIackpcxk04bFkcphZA16qh+pl3gyK+/SS1ULTlRvLvguF9x6eOjlUzRDY=
X-Google-Smtp-Source: AGHT+IGI1ORl4PM2xAAAC2sqhJuE1zJe22zJe66hKQmZg2EvgxzJUiXS3txvz7hOrxTmxG+CdQdMbQ==
X-Received: by 2002:a05:6402:520c:b0:567:ff26:4bcb with SMTP id s12-20020a056402520c00b00567ff264bcbmr1785912edd.30.1711715181416;
        Fri, 29 Mar 2024 05:26:21 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id m7-20020aa7c487000000b0056bf2e2c898sm1961925edq.1.2024.03.29.05.26.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Mar 2024 05:26:20 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v2 0/3] Add TCPM support for PM7250B and Fairphone 4
Date: Fri, 29 Mar 2024 13:26:18 +0100
Message-Id: <20240329-fp4-tcpm-v2-0-d7f8cd165355@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGqzBmYC/23MQQ7CIBCF4as0sxZDp1CtK+9huqh0kFkUCDSNp
 uHuYtcu/5eXb4dMiSnDrdkh0caZg6+BpwaMm/yLBM+1ASUq2SEKG5VYTVwETnN/Jat1p3qo95j
 I8vugHmNtx3kN6XPIW/tb/yBbK6QwuldKDsOsL8+7nThFFzydTVhgLKV8AWbyrrakAAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.13.0

This series adds support for Type-C Port Management on the Fairphone 4
which enables USB role switching and orientation switching.

This enables a user for example to plug in a USB stick or a USB keyboard
to the Type-C port.

To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
To: Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht
Cc: phone-devel@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

Changes in v2:
- Move disabled as last property for pm7250b_vbus
- Update USB graph to newer version, connect both HS and SS signals
- Update FP4 Type-C properties, try to keep phone charging intact by
  disabling USB PD for now
- Pick up tags
- Drop patches that landed in linux-next already
- Link to v1: https://lore.kernel.org/r/20240322-fp4-tcpm-v1-0-c5644099d57b@fairphone.com

---
Luca Weiss (3):
      arm64: dts: qcom: pm7250b: Add node for PMIC VBUS booster
      arm64: dts: qcom: pm7250b: Add a TCPM description
      arm64: dts: qcom: sm7225-fairphone-fp4: Enable USB role switching

 arch/arm64/boot/dts/qcom/pm7250b.dtsi             | 45 +++++++++++++++++
 arch/arm64/boot/dts/qcom/sm6350.dtsi              | 47 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 60 ++++++++++++++++++++++-
 3 files changed, 151 insertions(+), 1 deletion(-)
---
base-commit: f3583a292140e0a2a2ca0ae0019108401b4c9158
change-id: 20240322-fp4-tcpm-2ad68ef55346

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


