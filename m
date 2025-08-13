Return-Path: <devicetree+bounces-204178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A1797B24552
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 11:24:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 31BFA7AEEEE
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 09:22:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1F322F1FF5;
	Wed, 13 Aug 2025 09:23:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b="cDkB3o22"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA1512F0C72
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 09:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755077018; cv=none; b=ZyhZMZY5ioxaEMonKcB6RQVMWxvQjvvPZ0A4xMBdAkXOsV6wXUcHn4J3pGHopNeyzFFxYGHR326WuSqC1LGYAwTV7BaMgjhj2eAR60+8UYzOxuceedGgnDTBkPugh+PphAgZG4GboeUGsvsuwlxnJmnGTT2klN9xy6osmdWByA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755077018; c=relaxed/simple;
	bh=/rTdKk2uoMxb+q/0DRtX1FS+dFKCBJFEKFc1tSBa6tI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AhkS0uZusirIufwCp8hZXFgB66yAP1HEWC4c4RR7BIdLjyxqOd//FKDtZLP/WcbUdl5DJ3c8vdEFZ3G+5ZEMXNfKkbr2KaZL8G5jNqDJFMjuAp0OoROdVhCueK7nkL7YWFiVxMZaMYz4b4t2c+pTldv25AhcPoYREia1VvIVszk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be; spf=fail smtp.mailfrom=hammernet.be; dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b=cDkB3o22; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=hammernet.be
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3b7920354f9so5210704f8f.2
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 02:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hammernet-be.20230601.gappssmtp.com; s=20230601; t=1755077015; x=1755681815; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KV/LyU13FVZD+Ygh9a2dJ4SQHfL+zi8sFF76wcqrPxw=;
        b=cDkB3o22Ic757gaF3BaRwWOsRH44EukplTFs280m0M5FTpZWRDwanWkozVxP60pus+
         yzVrw3pwz6FVbPVukvcTJUFWQ6O+JO8n5mrncbXFnkUiYUQiuOQsT3GBaUWDMnUSCF0A
         BwYgyVGKilHYKMaK+DrFNepzbA9/NhIq+OXKrXoEsJBI/QdLKa6a1RsAuJ58atB/NFzu
         rUwStvNI63DeFkPruhX+S3NU3L56hSRwjEeM7Hl0DZelVOyG47SWjz78YkwPvCiW5NhM
         aJdG1EbHISaAYR71kix3SixtQUYP55KJ7/LepYG9se6Ej+6vk04zGP+SprAw0RbSut1+
         WJIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755077015; x=1755681815;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KV/LyU13FVZD+Ygh9a2dJ4SQHfL+zi8sFF76wcqrPxw=;
        b=OdGVyETetzZ23GcmC+AQqnI2SJdbmxpwLwfLXQ0uU2+3RjF3Nqia8itB/QfZbM60zU
         iGelGtfnFswHFYBeOis8h5gbN1ydI17BZ2kOhZhTmh9tkwmtbGf0DLiM27iVm+BgVS9D
         Xjfk5wK11ty2zWEiCdsqA6a/iPZ5HDvWcX5GxoAqGJjfLqqr59E8f1LPTskkTDwKQCwJ
         F1ULaVhx4Ym8/sfLGNA1KF4/7z+Kn9WL2iZV3aeCEPkF6RqmsYcJ7799HPFfR/vtPle4
         A3sWqglMc0FXoovYc3W8i4jpACR8psmouprXpiEOk68Y725UVPEsqAZCnLx8Bu+/RKci
         0okQ==
X-Forwarded-Encrypted: i=1; AJvYcCUDfrNyXJtHhnDSp1smKZ6eOTtT09q8dKs8fQDyf9/cVN+2Bk48d5UkMb9cUC+O/nvDH42Wxa7Pd0sF@vger.kernel.org
X-Gm-Message-State: AOJu0YyjRWANLz6/mG52JeyA23tHMnmWyXjaFfcFQimZ+MHPyLcHq1qz
	81n3ezK9Cylq6j12TXm9kp56m+YX8KUydYQt5i/Z5xt4FcsjrUEPu+yq/g93IYXcqPc=
X-Gm-Gg: ASbGnctLEj3YDrOc1jLl/+FZ02gqafep8j/+eQwSp02pRpX2MngmnSG2H8LybtwO7Sa
	YbvDnoLyaWrQvsQuE/1+XP2iNS1gidVPKMmik3c6l4akmOVsA5vFqD+tyHl0N1qXtH+egOC9QME
	W2Ew9WjXnuLXZI8WGq2G//Y/acoNoHOq7NpO7Uz98OaCdJ2KgcGa9rLzw9FMncHImgD72ef4spr
	RsdKXRJS0u0iQjadZ+gtqMH0f5M0KtBxGQ6iSVsSXgy9W9DQTGj1Xh9opVGtpFqgCg325aBEkBX
	kZc6PJCIORXfQWhWIziHYp25UfE7eBNGmfUrdq3yZI8oU5BwNKnv++ceMKphND5PjGoNIu4xYyM
	4grvNG8Pen91Zo9b1FKBAFHJX65AYD6vowMs5avVsrNB7yeogNA==
X-Google-Smtp-Source: AGHT+IEWxoI/kRzm9XJtVKTQJfagZa2jXeR/JqY3ScAS+RcLcnu42mBz4ZP0ExrShNWcggbJ1f56TQ==
X-Received: by 2002:a05:600c:4e15:b0:456:1923:7549 with SMTP id 5b1f17b1804b1-45a16b73703mr16081835e9.26.1755077015065;
        Wed, 13 Aug 2025 02:23:35 -0700 (PDT)
Received: from pop-os.telenet.be ([2a02:1807:2a00:3400:d33c:e682:2af6:3c3d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c3ac158sm47966077f8f.4.2025.08.13.02.23.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 02:23:34 -0700 (PDT)
From: Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
To: dlan@gentoo.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	palmer@dabbelt.com
Cc: skhan@linuxfoundation.org,
	linux-kernel-mentees@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
Subject: [PATCH v3 1/2] dt-bindings: riscv: spacemit: Add OrangePi RV2 board
Date: Wed, 13 Aug 2025 11:22:39 +0200
Message-ID: <20250813092240.180333-2-hendrik.hamerlinck@hammernet.be>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250813092240.180333-1-hendrik.hamerlinck@hammernet.be>
References: <20250813092240.180333-1-hendrik.hamerlinck@hammernet.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the compatible string for the OrangePi RV2 board [1]. The board
is described as using the Ky X1 SoC, which, based on available downstream
sources and testing, appears to be identical or very closely related to
the SpacemiT K1 SoC [2].

Link: http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/details/Orange-Pi-RV2.html [1]
Link: https://www.spacemit.com/en/key-stone-k1 [2]
Signed-off-by: Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
Reviewed-by: Yixun Lan <dlan@gentoo.org>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
v3: Improved changelog
---
 Documentation/devicetree/bindings/riscv/spacemit.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/riscv/spacemit.yaml b/Documentation/devicetree/bindings/riscv/spacemit.yaml
index 077b94f10dca..c56b62a6299a 100644
--- a/Documentation/devicetree/bindings/riscv/spacemit.yaml
+++ b/Documentation/devicetree/bindings/riscv/spacemit.yaml
@@ -22,6 +22,7 @@ properties:
           - enum:
               - bananapi,bpi-f3
               - milkv,jupiter
+              - xunlong,orangepi-rv2
           - const: spacemit,k1
 
 additionalProperties: true
-- 
2.43.0


