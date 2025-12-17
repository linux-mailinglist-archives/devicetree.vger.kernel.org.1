Return-Path: <devicetree+bounces-247229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D3CCC5CEE
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 03:45:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3939B307F60E
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 02:42:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99815285072;
	Wed, 17 Dec 2025 02:42:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UJsGmpVp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E72DE28CF77
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 02:42:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765939351; cv=none; b=psZUIPm/mgbGtaxg81iEBb7ZCNnF90LvBk/2x22XY2EeUm7DfwiJUzf+g/Lcuvt6NhM1xIIcvB1MJQ46wZwyd/qTtsIVUOWE65Wn73QsGuBscZeY3dklo2+SUNWoUy9QxNcAC2d+WCETnSZ6J0C/3Z1Ps6qNKnnzDOMa4dBl5b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765939351; c=relaxed/simple;
	bh=qytcxBwoj6PJMqpyTCVcjYnAP+GMDpiV6PRHkh7e8nw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b5zZu344/caHG49xf5immwiHDsqjmyIZD+VGdzO+ZI/NU5+rBk112lFys/DZDCy8/XdoN0IflexOkU8lH86WPDBk1Hb4spKtB9KP1Kz1sj6o5QP8owTSfoN4T8qMRDhs2pV3lH6D5Qks5KDmP7J2C3fTGnskDeBX/VJBCrmaP7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UJsGmpVp; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7a9c64dfa8aso4268381b3a.3
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 18:42:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765939349; x=1766544149; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tLv708T5nZKuD3uty/GoySjLydeaEBRlk4mAyPiG0Cc=;
        b=UJsGmpVpbhNft+Pc5/ifar/en2Wu6o+UjjdAWd7r1OVswVQMxEp5Ix0zcUeYlVQorh
         rcy8p0AcGcRW0KfPEfdNkSwWVvt0KGZ9w3mPGQenyZTdKNsjJ2t73k9189GdioqcPSTF
         i7XZez/HFBzo7snv/rjJKMbCVq0pSzskcCfwBgCCOt+BLHfcvkZquJ0ArZSaywifBqCd
         vRl8arKZnxndWJC6bcsONVCv36K9dvZS+cBM3nwsr7laALIjjtUTtUmY7SpWXfYxQCPD
         G3ec7zzHQIclyyJ1rVoDR8Ugt6qVzf1QPv1jEDXWG1kdAyZ2E3dfJfIpD+4idusAMO3I
         dpHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765939349; x=1766544149;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tLv708T5nZKuD3uty/GoySjLydeaEBRlk4mAyPiG0Cc=;
        b=pMbBORJMnJhdEN0lEEQG6vz97eeEWtsJydGSwdI6QF7IZ1aAiAWORKRdEOirTKKGwc
         H3v/spk05bVUpPAN/px1glKJ4iH7HV9kBGRSjm5Pn0qadLEHgwM7p4jIe5OW1f5z2ZnU
         90/Lt2h4pXQehoHflfYwe8qRZUR4NqFoFeHIM77bp2DcrXzCsiX5V3dEEyCIKskWrC4q
         MBVqboX3ehbt0DZZKEroJrhQwlD7MuRbnVVsWNJFK1bqrz0BxMWCmFyeLLlkPN22bbyb
         muogNMYRpKH5ntgupv7j9HF/wS9ZUxWNygYr+J9i0E9rWC2OTr6oymJkrU0YBE24gJRn
         TOYg==
X-Gm-Message-State: AOJu0YxFWUaKWBz9fGxZx+DhKKkLqKYu9VUnGsVAjLShe43+MArhI4Wn
	yr088ldWngzMMNl+bdYIHAZWFMBQsUyNWx1hx2xBWM+XB8Su9Ar6m/IN
X-Gm-Gg: AY/fxX663Milv1vuyeKjB1QKzDHbbE4PCTHJcMIQKLnGWOqqekMdXvoSnOy1VmOK4WI
	uESXYcOB7nKZEnEc6AIXl414R7qRoho32TvGPmZhvLich0eDknTn/amYC4Ltc5VfPFjRT1+rA6J
	y8QCHBmLY3R/PkwOhSgNzBo2vHU3WdyDCLZhQR1B+JQqLLiM558iFj+yTOlhL2TOclGhfmZD6xh
	9tdhy0bqW1YEJDx9QUPdK0cfAENYinSTke2bZOw9NXhLVWSjZsyV9fG9XLjlfiRZvYlfgEsx9F+
	IVPUjFnivIoqJ/h7ntjvS0j7k7ykrTSAcVQr9BB/fgVLCl1hEeHM8MnnjCapg2syTLtw5sfEQjl
	NA0YHTEHD/wlDud3Ju90oVn39dYZgjk/PgcSrDeg/XckyRmwlsWObh2Yilp8w0cQIpvQWTGXerM
	5kyfzxdqEn84gTsO1fwuDRBuliBRhPZoq/Mj8EO4Ke1Y7IPtsTK7+s3e27pdlNvlvq2E9oAK8sq
	cC64WvOQG5OgH39JKGTrpt/EA==
X-Google-Smtp-Source: AGHT+IF8EmsK24fsPEtUrS3MeJEwiNSX9jxwUKItV8WqJ74LAe6nBQy+G+21B3SBe4yksRo/wu40Kg==
X-Received: by 2002:a05:6a00:4c97:b0:7a4:f552:b522 with SMTP id d2e1a72fcca58-7f667a2ba18mr15648248b3a.27.1765939349129;
        Tue, 16 Dec 2025 18:42:29 -0800 (PST)
Received: from cosmo-ubuntu-2404.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7fcb8c29738sm941342b3a.17.2025.12.16.18.42.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 18:42:28 -0800 (PST)
From: Cosmo Chou <chou.cosmo@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joel@jms.id.au,
	andrew@codeconstruct.com.au
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	cosmo.chou@quantatw.com,
	Cosmo Chou <chou.cosmo@gmail.com>
Subject: [PATCH v2 5/5] ARM: dts: aspeed: bletchley: Fix ADC vref property names
Date: Wed, 17 Dec 2025 10:39:38 +0800
Message-ID: <20251217023938.445721-6-chou.cosmo@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251217023938.445721-1-chou.cosmo@gmail.com>
References: <20251217023938.445721-1-chou.cosmo@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace non-functional 'vref' with 'aspeed,int-vref-microvolt'
using the default 2.5V that the driver was already applying.

Signed-off-by: Cosmo Chou <chou.cosmo@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
index 123e2d1891f6..7c27bf6bb51d 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
@@ -1032,7 +1032,7 @@ &gpio0 {
 };
 
 &adc0 {
-	vref = <1800>;
+	aspeed,int-vref-microvolt = <2500000>;
 	status = "okay";
 
 	pinctrl-names = "default";
@@ -1043,7 +1043,7 @@ &pinctrl_adc4_default &pinctrl_adc5_default
 };
 
 &adc1 {
-	vref = <2500>;
+	aspeed,int-vref-microvolt = <2500000>;
 	status = "okay";
 
 	pinctrl-names = "default";
-- 
2.43.0


