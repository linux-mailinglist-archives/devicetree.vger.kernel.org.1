Return-Path: <devicetree+bounces-43370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 218FF85A216
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 12:37:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C92B11F20F53
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 11:37:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0A472C1AF;
	Mon, 19 Feb 2024 11:37:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b="MVL6VNtv"
X-Original-To: devicetree@vger.kernel.org
Received: from egress-ip43a.ess.de.barracuda.com (egress-ip43a.ess.de.barracuda.com [18.185.115.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0B02C1AC
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 11:37:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.185.115.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708342638; cv=none; b=MVSXNO0b7sL43jQ1Kpbp0+kvEKllaT/l3VyOkQuYndIlSKod0ITtYCFGeADHS9SvCCDFydwPdg4WHrsbWyPJVEZQApBmd9CS7DDH585mNri3BPdiQoOVwKp5GVu4qslv1atRittm9/jrh/2htoHbWSBM42z08o17dmiCBmY8hik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708342638; c=relaxed/simple;
	bh=ipv37Bhc8IqRiG2NGrgwKsYZeUsUB/RRFPRE9WT9QM8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=fElbXPlmWOFqppwNyXPNkmNMPj+PCEXUABtuym82d01gD/hz8cpJGurRjeg1cbuwkJ0OVKnTspvkxvhdMjhwDdc5acptlGiKzhJjyBU5P/0y0/RmJVhYxhZdGRi5jVpad/jutWVxy77Ay6XnCeeRfpJWEDf7RzycBXg6iMR7zXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com; spf=pass smtp.mailfrom=mistralsolutions.com; dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b=MVL6VNtv; arc=none smtp.client-ip=18.185.115.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mistralsolutions.com
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197]) by mx-outbound14-174.eu-central-1a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 19 Feb 2024 11:37:12 +0000
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-3c03ea9cde0so4288151b6e.3
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 03:37:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google; t=1708342631; x=1708947431; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZxnXFmaJGn/8fcprinCvedGunPUgJSZ24CATlBY3ghE=;
        b=MVL6VNtvQSbfZS4Mk3a7UX5AkzznRJVQoTSaDVCin7rZ5HqeQN2FzXq+7WCBJgervq
         e3XxWuAJhjeic4DuDG0w7yYYeZHmz6ogG9qajbpr1k6aZZp5ZnlQkDdfrBeFZWwI2ItI
         yvzfIlVxKuKl6BWzikE/qnRCeCgs0WD1lxHSk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708342631; x=1708947431;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZxnXFmaJGn/8fcprinCvedGunPUgJSZ24CATlBY3ghE=;
        b=Juv5IjS/yDHWCSdaDY13pnNMTIXxsDSeAZM0qk0YoQJWa/X1YJovXhiJ5618D97gTz
         npR1uF3/F/drwFQEWyKZiYJ1ebdedEfJa3ygILnYC6KQTjKc6lB9LsoLAJ0SioHma38s
         rX1hWwbNBm2tQWZW/9Nnt91y8cs/zdkOStHZFeNdoPUAI8u9ar/UeQlREjQS/cKFmvvk
         J1lb3H1gCfRxM8WFSUWVpDpGWk+1kAgTsodkJR1vZ2jZhN29Uyyq/3K/1zFK5Bb6RHXS
         Ykvd/30Vv5gez9v94MV5dog0B1UaP5r+2m7J3Tv5JN81T0h7GSXpiShX3QY1+g3WK4h+
         1Ddw==
X-Gm-Message-State: AOJu0YzB/L2365vIoJfQ/dUxuuiRBUs6Hn9wdIUJrDJqahK8/+Etk1yh
	rykDs91HRcbsXIbP1ejlcudembNjnJ39Y/7bglurVA55QnIcY+rraXFwO64YvyQz1K/Tz3uITR5
	GZXYC1ed7P91HIe0sN+1B2UAFV4hUmUtpeR2vWvpqXLW1ck139VAoNxbWmn2iz/DRfU4q2yxyeT
	baOA9Lmucr6FwFtkD7aA==
X-Received: by 2002:a17:90b:4ace:b0:299:3efe:8209 with SMTP id mh14-20020a17090b4ace00b002993efe8209mr4650243pjb.4.1708341279475;
        Mon, 19 Feb 2024 03:14:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGheUrJm7EWhHkQfPOdeAO6ZwmB2OyQFziX8lJMKLRgHHyBawm6Nw8tY/zwOjPYw/zMtcmr+g==
X-Received: by 2002:a17:90b:4ace:b0:299:3efe:8209 with SMTP id mh14-20020a17090b4ace00b002993efe8209mr4650227pjb.4.1708341279157;
        Mon, 19 Feb 2024 03:14:39 -0800 (PST)
Received: from LAP559U.mistral.in ([106.51.69.35])
        by smtp.gmail.com with ESMTPSA id cq15-20020a17090af98f00b00299947ed2efsm2343878pjb.2.2024.02.19.03.14.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Feb 2024 03:14:38 -0800 (PST)
From: sabiya.d@mistralsolutions.com
X-Google-Original-From: sabiya.d@ti.com
To: nm@ti.com,
	vigneshr@ti.com,
	kristo@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linus.walleij@linaro.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	u-kumar1@ti.com,
	sabiya.d@mistralsolutions.com,
	Dasnavis Sabiya <sabiya.d@ti.com>
Subject: [RESEND PATCH V2 0/2] Add CAN and OSPI support for AM69-SK platform
Date: Mon, 19 Feb 2024 16:44:20 +0530
Message-Id: <20240219111422.171315-1-sabiya.d@ti.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1708342631-303758-12436-2217-1
X-BESS-VER: 2019.1_20240214.1700
X-BESS-Apparent-Source-IP: 209.85.167.197
X-BESS-Parts: H4sIAAAAAAACA4uuVkqtKFGyUirNy1bSUcovVrIytzABMjKAYmYGhpZJZmkGRm
	ZmySmWiSaJlqbGpoZGhuaGyUZJiWZGSrWxABlVRS5AAAAA
X-BESS-Outbound-Spam-Score: 0.40
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.254323 [from 
	cloudscan13-204.eu-central-1a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 NO_REAL_NAME           HEADER: From: does not include a real name 
	0.40 BSF_SC0_SA085b         META: Custom Rule SA085b 
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.40 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, NO_REAL_NAME, BSF_SC0_SA085b, BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status:1

From: Dasnavis Sabiya <sabiya.d@ti.com>

Hi All,

This series adds support for the below interfaces on AM69-SK platform:
-  CAN support on both MCU and MAIN domains
-  OSPI NOR flash support

v2: Changelog:
1) Removed CAN interface aliasing.
2) Updated bootph property on the leaf nodes.

Resending version 2 adding linux-arm-kernel mailing list
Link to v1: https://lore.kernel.org/lkml/20240118153524.4135901-1-sabiya.d@ti.com/
Link to v2: https://lore.kernel.org/all/1d5c0570-fa10-4b87-9833-1710f33db01f@ti.com/

Dasnavis Sabiya (2):
  arm64: dts: ti: k3-am69-sk: Enable CAN interfaces for AM69 SK board
  arm64: dts: ti: k3-am69-sk: Add support for OSPI flash

 arch/arm64/boot/dts/ti/k3-am69-sk.dts | 162 ++++++++++++++++++++++++++
 1 file changed, 162 insertions(+)

-- 
2.34.1


