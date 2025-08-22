Return-Path: <devicetree+bounces-208355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E1347B321D4
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 19:56:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B9DE1CC811C
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 17:56:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 044DA2989BF;
	Fri, 22 Aug 2025 17:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="apPIIHDb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A74E286D4E
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 17:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755885381; cv=none; b=nRSEux2Y2Wvsc47AcIpK4wNiI4gxjbPlRWG0AF3kPvM7T5Vb/7A8SGll2TxgFAlJcRyt0ddz6BSulYooPsEu7l6YMFq/uiqI4xt4V/kwW3qAOWt0M7AUL4hef2OZUUeToWxNMVhmff0CWUOxLduL19SBQ4wEnY48N+wGUFhTeAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755885381; c=relaxed/simple;
	bh=m8YpiygIK8B95BCa9Y//D54lLmAEkRb5obBWRIs30Fo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=q5gXblnAZYm6i7Pze7Br24+M5WJwrqH6ODz/MY+3kr/KAr2A8Hi34CRwCHeFoc7ztnXWoRE9IYf+FDTs/iKfFRMklDUCkZzMlWpsaSWpJDT/5H25KTeXWfg+02a3yrKbqdk75lDadZC2hUTtrU9QGCjR8DgQtIQGij7tQKlMuxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=apPIIHDb; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-55f359b40cbso222944e87.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755885376; x=1756490176; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/TUqvK1nMqxWyA0LRFmuiAwqCHrTHKTi4X6rqOEVERE=;
        b=apPIIHDbWFKq8nGp9WRhEIcWujLsytLFNHMM/99xmAFVBnLRUZRCJlQXVQZY0xhLRw
         KyK9LkOcsSDDAT9+vyTRoaLplrs5vU19YRLMyLX8Lgy5bpZ9bctoXoO4l/aCEHX5RDVl
         1RTv3cv3HsHXN8Llxfsy2vMlN+QaO/3n5NHNbK6nAM68NItZdxKRb66RRtAe9IWN4KxI
         geqnBW8NB0XHKdnrXP7IFYQC8oZZS3roXO1Lld5SOey1AcJmn+z83mywVhvTwJwyxCE3
         DmVdhZoL17jXw8iPx52kF1C7ukepLUyDfvk/8MBR/wI+6E0yptZkpm/vP6lYRd6WpjIy
         zQHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755885376; x=1756490176;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/TUqvK1nMqxWyA0LRFmuiAwqCHrTHKTi4X6rqOEVERE=;
        b=XzQrUX/aDVWsS6tXwojD7+GBu4k+21oLCOMwVqqchQA3Gwl1FQPp/E575ivgn+JC5G
         kUKoIE4rwF+iis++AjBg3j6jFmQe6CX+Dbz1RgRi1Fg+21xZr0k4HZy8D6Q155+xqS0W
         z/tk6nqt5Y1/9aQWp2zKloXuk4ri6DXEq/SNtybpGe2lA0LFukWes9c1WA/Qp4H8sS9e
         QzgHt3UiL29dVfMN18EoeTonUdbhHDTx7v7MCYI5gZT/uA0VJAjybzvMyNfxj8Fi84ZH
         /YesJb5TBEsCQzKxuq80fib89hLCHiksH/CewIx1HsS1SuU17KlDlN1yPTJOCBSDJzvB
         mMiw==
X-Gm-Message-State: AOJu0YxRWZkpFFDbArj6ouv1mkF+E5WP7TzmkYR3iDW5nqEWcd8/aF9i
	2TNGHtd4X/Rk+3LALeyN1ukhsemudGjVUetMQ7fkzrnFJxER2HU+30zrs8LOSVbgyIE=
X-Gm-Gg: ASbGncvygeNTLfr4G2Wdd6u3btkYrCBZ5Sv6D34H0rSHjFa29LQDkOE7nJbVTHidQqO
	DmqsAXwoCRWKqnMBGxWOcXfFP4s2lF7JZp9Eg9BAsRTlbUKr9m9b4aJoxbHBgRM236GVl68YYtK
	ccSL8iLWRwPFeBMOVtDHaglpxq1mIFCGsq5XzsGcpV0bz2aKfm8vW5icR2Z8qWktONxMm8ZHrrU
	y+s8a/G6DippyeKMBiq3dQZP7nACmtcIY6EGJIvtzek6RBy/uMHzwzp4PliTqG9m1FUqb/FzbpW
	ITYKJefApUuUpEit90jB/hP3HZHzHdrMP3UcXU1rveDxRmzeFIaNSBKVLlUUfioQcTI93T//vg2
	7RTHj6xUJy17bZNpsdFEJLQhc8ldoKC4C
X-Google-Smtp-Source: AGHT+IEGVok/1yO+9VU8KCrNRX03SOhV/8cVPhiDqRVEs5tM3GGx3ezrydTHI+IAn29DeKHuTkAYuw==
X-Received: by 2002:a05:651c:2147:b0:332:3a1c:beca with SMTP id 38308e7fff4ca-33650e28028mr8185451fa.7.1755885376260;
        Fri, 22 Aug 2025 10:56:16 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3365e20d2e1sm605121fa.1.2025.08.22.10.56.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 10:56:15 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 0/3] ARM: dts: ixp4xx: Add device trees for MI424WR
Date: Fri, 22 Aug 2025 19:56:13 +0200
Message-Id: <20250822-ixp4xx-mi424wr-dts-v2-0-cc804884474d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAD2vqGgC/32NTQ6CMBBGr0Jm7Zi2FEVX3sOwqP2BSZSSKcEaw
 t2tHMDle8n3vhWSZ/IJrtUK7BdKFMcC6lCBHczYeyRXGJRQjWilRsqTzhlfpJV+M7o5oQk+NFY
 Id2odlOHEPlDeo/eu8EBpjvzZPxb5s39zi0SBj7OVItRWy0t9e9JoOB4j99Bt2/YFf+gIVLUAA
 AA=
X-Change-ID: 20250814-ixp4xx-mi424wr-dts-afef5c00d68d
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Imre Kaloz <kaloz@openwrt.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.2

This patch series adds device trees for Actiontec MI424WR
versions A, C and D.

These routers are quite common in the Americas and uses
the IXP4xx SoC.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Changes in v2:
- Fix some wording in the compatible boards patch.
- Split off a series to add proper compatible and schema
  for the ixp4xx expansion bus MMIO GPIO and use the
  compatible from that series, iterated that series as
  well.
- Link to v1: https://lore.kernel.org/r/20250814-ixp4xx-mi424wr-dts-v1-0-b7c10f3c4193@linaro.org

---
Linus Walleij (3):
      dt-bindings: Add Actiontec vendor prefix
      dt-bindings: arm: ixp4xx: List actiontec devices
      ARM: dts: Add ixp4xx Actiontec MI424WR device trees

 .../devicetree/bindings/arm/intel-ixp4xx.yaml      |   2 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm/boot/dts/intel/ixp/Makefile               |   2 +
 .../ixp/intel-ixp42x-actiontec-mi424wr-ac.dts      |  37 +++
 .../intel/ixp/intel-ixp42x-actiontec-mi424wr-d.dts |  38 +++
 .../intel/ixp/intel-ixp42x-actiontec-mi424wr.dtsi  | 272 +++++++++++++++++++++
 6 files changed, 353 insertions(+)
---
base-commit: ddf87238d4535eefe858b642ee54f6740018b487
change-id: 20250814-ixp4xx-mi424wr-dts-afef5c00d68d

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


