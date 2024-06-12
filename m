Return-Path: <devicetree+bounces-75051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C87229054CB
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 16:10:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 778F31F214F9
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 14:10:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0669917D8BC;
	Wed, 12 Jun 2024 14:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Fe5lvo2j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBB95336D
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 14:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718201446; cv=none; b=fnBfz21as4bmD3AxjsZ+Zad0hdbtY8CH+6ft26QEIhHRPjirEZjjX8PmZAT1m6W5t5If+JJaE3n5CtZVxkV4DErDp1+ItaINFCc6MCi99YHgHgzzz+mplFKO/eX5RRSn+kjoBNgiqewsuqMf9LNgxI0y4Pp6lYWMjDsueN4YiHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718201446; c=relaxed/simple;
	bh=a0/DHXF2SUZ9T62+RNnFm7pTHl4jfZzPu4UlkE1hp4Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=p9GVlSRETmaMJ9yOSxUQH471KKtLVU3T/w0/SUDo5vfucV1u4DJiYrwJk0ujAOsiP5yx2ON1ZezlaG3beaxWNu9fVAwDxmnflGrjiqS5E3UfYNYMRxKAbPfsySWg45Gd2sy75Y26X3xpL8NVSqx72NjG3wY+vLwgNdSijgPoR0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Fe5lvo2j; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ebe40673d8so22685191fa.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 07:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718201443; x=1718806243; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fDZBDbUR/Osz8PKcQ2HcjsVNrayHLES+DrpHvD2F5Pk=;
        b=Fe5lvo2jFCMPLmfuLZ4l0vLQpjx3qF+RW7XPQcOd8xAGaRx1CmdX8ktLxgRsHoPxDN
         zHz8V1NXknemc7w7DSIiCSOPzifVeWcZ83xImDBZynFDUa5Y4OaRVbq5z8ubsRUHZZCs
         MR2fx4WfIbZ1jOcxTv7O4vc+44rsIWlE46a4b9NUGKGEtdK2DvEZJ70nyWLjj9o0fTAV
         fG76egoThXupZnsZrStmY5yJ6NFZMdEkOwEkrvLbqNs9l3yyQaDT+lR+0Hu2/5NR1QEd
         Bm0ZTCo9rJ3pf/PvGmBhxTvTU2RaCrMy4EchzEMGuDWj+/Ci6Rr+r7VJCtnaD/LBbZvo
         lOig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718201443; x=1718806243;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fDZBDbUR/Osz8PKcQ2HcjsVNrayHLES+DrpHvD2F5Pk=;
        b=sWC1uZhaDCy0E4MC0qL/dT5y2ZgwQfJ+F2xWSp2IIAfVKwjGy0bdy0ZHdRXgEDfPtM
         AsKokG8lY1keWiryIoi0pM2JwTqh5eH8Q2Y6OOwvu/aS+rbTKfcHcvvKi5II6uac0RkJ
         IyFNK661PmWcI5FeZrcR90sQcLmlmiFyS7IO26q9Fs7E2Qgq7oZ9tusxXfuuH4o3xLn1
         GzawF9D4csCFWrEkVAd9iAt/a/cn2q04xY2+5nm+2k6pBvTWL/0x2ghUp9Qz057ouGjU
         4syHggupI1DoL8uJp3l3v13RGUl8DuqJ8Z5OhlYDz6fYLUDHfgNJT/gowwiRkHWGsJb5
         npBw==
X-Forwarded-Encrypted: i=1; AJvYcCXwVwFAVqXZR/qJB0BgkCh4Ts9ORBrcQqYTsJFOmVmABUgI0qQFApdpRgNLaGZlzfe9DlRQvfgOt91GgJ82VYgYzqJzrDzraFhTZQ==
X-Gm-Message-State: AOJu0Yz0dDy6Rp7561XThvwGj0ruEIVNgSZRLOjsxJ5jG1NQSA/aflRd
	8xHd/oqx9LL05Q/2qaksfvtQSlhq5hNOvPLOv7XkSAXPWo8zRQY/7geqJ2P4zPk=
X-Google-Smtp-Source: AGHT+IFjLR7yr1vu07suK4U8uhG1T2SNjOgZASn+EN8VRdq7sFOEyjV5ivQ5D5ogr5TWg7tHypOgaw==
X-Received: by 2002:a2e:9b88:0:b0:2eb:120c:1a59 with SMTP id 38308e7fff4ca-2ebfc9d0865mr11492691fa.16.1718201443353;
        Wed, 12 Jun 2024 07:10:43 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42286fe7670sm29304585e9.6.2024.06.12.07.10.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 07:10:42 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	arm@kernel.org,
	soc@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Oleksij Rempel <linux@rempel-privat.de>
Subject: [PATCH] MAINTAINERS: ARM: alphascale: add Krzysztof Kozlowski as maintainer
Date: Wed, 12 Jun 2024 16:10:18 +0200
Message-ID: <20240612141018.7348-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Apparently there was never a maintainers entry for the ARM Alphascale
ASM9260 SoC, thus patches end up nowhere.  Add such entry, because even
if platform is orphaned and on its way out of the kernel, it is nice to
take patches if someone sends something.

I do not plan to actively support/maintain ARM Alphascale but I can take
odd fixes now and then.

Cc: Oleksij Rempel <linux@rempel-privat.de>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index c7a13170b697..647233a62f50 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1946,6 +1946,16 @@ N:	allwinner
 N:	sun[x456789]i
 N:	sun[25]0i
 
+ARM/ALPHASCALE ARCHITECTURE
+M:	Krzysztof Kozlowski <krzk@kernel.org>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Odd Fixes
+F:	arch/arm/boot/dts/alphascale/
+F:	drivers/clk/clk-asm9260.c
+F:	drivers/clocksource/asm9260_timer.c
+F:	drivers/rtc/rtc-asm9260.c
+F:	drivers/watchdog/asm9260_wdt.c
+
 ARM/AMD PENSANDO ARM64 ARCHITECTURE
 M:	Brad Larson <blarson@amd.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
-- 
2.43.0


