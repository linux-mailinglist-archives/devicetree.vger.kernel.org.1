Return-Path: <devicetree+bounces-124567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A1C9D9460
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 10:27:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7E2E2B2A673
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 09:24:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BFDB1D619D;
	Tue, 26 Nov 2024 09:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="NrfxCNhi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600571D5AC2
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 09:21:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732612891; cv=none; b=GTkDiJvbWbMdckamyLBRo2RNZVDBCc8uQHT0hun2SiLG+mRkpvlfm2QVkRVt0CB6Xr3aclni1ImerX75qU4GzSXAOJOO+xFShDKvSQX76PPzizCQpN9OWmJe2kQpcTIwZKYu9OFSLYBlZlPUkeycGAAx5nKi9jg6WkwCh+TxtOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732612891; c=relaxed/simple;
	bh=yx8G5kN1dPvXv5haopV3811q4NYnuaEFQqxgpb3NT9U=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=XJf3Z8W+6LCjWoAQKmugP8i5WFx7nnqosBE2+TD5av46QYVpx9V4ujVJ0QdusdWjsBO4oKIjSe7nA5pYH2ZTDphot+XN01yEggjaDZk+tBUppMRTWouc83Dg59Z09g8DKRifMN9pC7c3aOB23Nkpq5cuHAj5pjYWC1gsvbLicjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=NrfxCNhi; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53dd59a2bc1so4481151e87.2
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 01:21:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732612887; x=1733217687; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YL9Ut0Si+rVh2q7F4JB/asIqIrf6jT+s8Jqs0j7Utvw=;
        b=NrfxCNhilBiejXHT9F52bpfhlKI8cP9bJGB16MQHlKRZvZwLiRszjJ90dAXJHV2zue
         VnJV35XznayLZuWj+EUz+sY9/XHmgGqjziXqcjSTzs+zUZ4Oh2HGpGWJicTe/jv9aw5i
         zKXCZHUQAO7SN2TmaGYUx5K8ioS4bH/T40pMN+WVMo3A9NAOu6iL4jSjycvU5FIOgKyu
         glDKSLCbYapA1ZzM5HtN+VR7zqxtLgVt1xDTlSPaXJpUMEmF0+rJQif9qTNO4xyMgb5E
         eGrF3e71XVu8bB5N/ms7UHFyUjoP9NdCjY2HrQ2vUoeBoE20kBz8lpr0gSW69LHIiEa9
         Su4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732612887; x=1733217687;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YL9Ut0Si+rVh2q7F4JB/asIqIrf6jT+s8Jqs0j7Utvw=;
        b=uqEhCBmPBzQvCQS0eaQOzCDyIDWSAm6S//Y2KoFpHrcXHy6PLjNzhuV7oi+giIkGAp
         P0FfDq3f1pO7DMSUtY3cl8xFGtkzP9wsha3ltsF9uQlr0ZOwCAtrYH3hs/ur8Yb38u0U
         VQlJk6T+RxUUbzA5oOpb1SOLwswzz9ZBXpO4tWadzIRxVgZAzX8VZ2WcuZS3kr6mBd6M
         T+ll4Y8UbnAzXLUn2lMtMTAD6ScdUX9PmYXlv2DvZZ9NgmN4xKXmSxeikIreCT9YDpyA
         l7ijDwzKRp0uJAermwaYuJ3GnWvVBXCW8pYiyA1TawiLALvKeUdRQVjkpYL5QAWunPRi
         WVMw==
X-Forwarded-Encrypted: i=1; AJvYcCV1lhi6nMmgOK6rv55Alve2I1a6wLdRULdjC5TlAPmffS2Wlomp4hw0U02eQ5f6W1+XAWadItOS6/jq@vger.kernel.org
X-Gm-Message-State: AOJu0YypDtyyjGkdNm8t4MXK2u6nqNnsbgI3W/vVeIMdnUTLaWHey+IL
	FnzoHd6LjxHShU3mkqW735UgsGTmJOTBfIS2IAD7hLGLqUie92AH19Cd+uRn4us=
X-Gm-Gg: ASbGncuRLoHVWTJ3EiYmj7q+uYpRErsTAEdYC30f2nnyp44Wvh9CD9f4yDbRYMSOUtC
	N5d+6FENq6AeuWJeJp44/+tkosPOmijqvlZrwg7WIAyVGxFQ6G9zMHtMLYn3K1A86o6dlZ8jjK3
	3bahwZo4PFDxdSqbW+jOeWer4iDACO5tQuRMLzzOn9MSnCOLYdarzbgBG5lG1W7BuI7qYEruEBC
	mo94O7cdGHji/LRqORz2jIsDxgvQFyL5wfvscTR8r4mpODcEkgZuH6D6wSiBLDkzTFrbdNv5rKF
	3RI=
X-Google-Smtp-Source: AGHT+IEqjpoyWsGOaOphc9gwJtzIyZu0gka779JBN5g8gKK1cf1hZ2MPQM9ajRauQ6fRNW3ZJEX2Wg==
X-Received: by 2002:a05:6512:e86:b0:53d:de36:7069 with SMTP id 2adb3069b0e04-53dde36707cmr4605894e87.6.1732612887547;
        Tue, 26 Nov 2024 01:21:27 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3a47sm13027694f8f.73.2024.11.26.01.21.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:21:27 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	gregkh@linuxfoundation.org,
	yoshihiro.shimoda.uh@renesas.com,
	christophe.jaillet@wanadoo.fr
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 13/15] arm64: dts: renesas: r9a08g045: Enable the system controller
Date: Tue, 26 Nov 2024 11:20:48 +0200
Message-Id: <20241126092050.1825607-14-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable the system controller. It is needed for USB and SoC
identification.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none; this patch is new

 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index 169561386f35..89cf57eb8389 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -207,7 +207,6 @@ sysc: system-controller@11020000 {
 			interrupt-names = "lpm_int", "ca55stbydone_int",
 					  "cm33stbyr_int", "ca55_deny";
 			#renesas,sysc-signal-cells = <2>;
-			status = "disabled";
 		};
 
 		pinctrl: pinctrl@11030000 {
-- 
2.39.2


