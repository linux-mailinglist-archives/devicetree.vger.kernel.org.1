Return-Path: <devicetree+bounces-216962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0046CB5697E
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 15:57:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6C52718991A0
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 13:57:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39F7C1F1315;
	Sun, 14 Sep 2025 13:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aHR/9HUm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83CD01E8322
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 13:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757858220; cv=none; b=j2/UUeIxTrxAyD8n8fxMGJXqw1xxn2Qe4nsHaED2LOwzGE1JgwoBu/8+LoZQkG35q4CGZpXjBbI6uAbecwkKora4/spKredoM/AehzMukfuFKAun1IrwHttcR8YHzvBR9gerTW/gA7ElKm6j5GIgpqh7JuBy+SQUC9S0AtFZ8Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757858220; c=relaxed/simple;
	bh=G/YgUWwYgipT54ZkK5S7t4iIid/jh16TP1NiVGcDIfY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mqLXxxhJnPmbw4/gKr5VvfjaBnbYuWZh/ZLWmEbBgdl1y1a0VTTKd67vyj8QePApLdvDarN10XLHpt4LbRZ2XtR7+zccUA3y/JQaowgL3k1LPVPm8fOj9+NRhkKUHr6v0B6tF5WihHGpQBoQG6Tq/NMvfc9IxuNUJ64eP1yttpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aHR/9HUm; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-45dcfecdc0fso33569555e9.1
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 06:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757858217; x=1758463017; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2UA8yGhG9kMHYtx0Te9toutlRddNLKPlgFwt+Jj5ZBw=;
        b=aHR/9HUmPwzCarHoxiVPUS/JKdRy83Hp2l549rHvBav+G1aHNjN8qNTMr40oPOfbx4
         +/pXMl/O8BAX45mR7VNJdalKpzw/ueWtoibME1WjIYjIVvfII2wtNIOk6BUyhZ+huHJU
         RP4zk1sttF/Fr3XykCaT96FjN/pzMD7cacDdbisKuIt2+/xBjvtBdlyUKqeN76Js32Yl
         NbBQCkiQ2dLlPVZWvlgDoQWdvkP9LbJpQrdXsb1Q8Fv+DPHKbmfReTMnQnPiMW5DYOmx
         H/POhEFkC1UL76iwgvGaYxf2baU6iK0r12ik59DM1mohymEmc9ZjME7Cnch6pQPtqmW4
         UZ3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757858217; x=1758463017;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2UA8yGhG9kMHYtx0Te9toutlRddNLKPlgFwt+Jj5ZBw=;
        b=NEM+6TRQ2gtEwmevnSJV45M8BxDIqiqydR1pYuy7MdNE2vyoQAwihjQBfgSguxqbXK
         m0Xf3XmONJbk4NrkZkascq8HseMh8Vq1Vfl+jMo0hKBsPgiN7WLJjCXUrINYmb5pgLP3
         lUufm2+o+x27PAtl5GTGgrawF4bfffZwHNGtHGWbm4CdISPkz+kzvc81vQz9AkBCKI5A
         2EcwNKOEftk8Cu9ZLRtXw5OdXTQq3PbrnItycZMDtXs1YUDrcjx/fLnbfAHZj7Qt3zZM
         k0Ayefub5eeOBxUYCCrywMSt1ZEZ97KK7mi0P1iW8/Ia9yOd7+Wtid0OSXQpebPkb1Q4
         70Fw==
X-Forwarded-Encrypted: i=1; AJvYcCWc3Um9TQ1KIgkcEmsshgudY1hM1AP1/WGLpkzSRUEmUgrPfUt4iyUo7Tez7lklpIqjS15DlCtzRSI4@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9LnrTtKYSz6Rr1Je4x+dk6cQKrB3A2m2i9ActdrzvMk5nq2vO
	fIBPGRaJxJhmTVwkGT1P+BToKyXNMD1hkaI9aJdPXZqbGCoRCM/w3icU
X-Gm-Gg: ASbGncsx0UC+Lwmk+4Gmoan8hZ65JHbLHf5X+KiHhV3po7g5XKGb5qWthoVefsoFmtv
	oXy13fA7eExIT2wwCBLiRcCuByLkaEZ3CxmJhG/1xCjVa6xW0vRjfJ8WujM0n9dL3oRhG5ChBMm
	CLzlJXHZxvDKO2nCj9F28ZKOPoWrLyBp6YRB73+Saa/bleQc22e6HZY+pDkLtJrcbOTXhS+iHf3
	i+O/iI3fg7819awTQyhbLsqgsviLgxZuBO3YVyBXxcD4/nG/GdQE4VTZXXKd9X5+Q8AQr1KUwF0
	hpVE7ZraPFAY3lmFnUHT1qLRJqdWoSBpFs+RjHAxEYfdX28ODDwQ/IX7Vdqil6jOZ9jVGdBxLNI
	CSelhO7QwjDbvJWDM9Uazrw60Sj2li0SBXNDY9SvjR1aoAMJdG8EbuYyWF5aaQAORUDI1Qrk5Mg
	==
X-Google-Smtp-Source: AGHT+IHB+VULFKNGf84XS/gc0CK50EFtBdez3HC/85lxGgum+zb542w5P3i1LGfQ0Av13zEl30jWvw==
X-Received: by 2002:a05:600c:1387:b0:45b:88d6:8ddb with SMTP id 5b1f17b1804b1-45f211fc2dbmr82961965e9.37.1757858216790;
        Sun, 14 Sep 2025 06:56:56 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e84de17f9bsm6740887f8f.49.2025.09.14.06.56.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 06:56:56 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] dt-bindings: usb: samsung,exynos-dwc3 add exynos8890 compatible
Date: Sun, 14 Sep 2025 16:56:52 +0300
Message-ID: <20250914135652.2626066-1-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a compatible for the exynos8890-dwusb3 node. It features the same
clocks and regulators as exynos7, so reuse its compatible.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml b/Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml
index 6d39e5066..6ecbf53d8 100644
--- a/Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml
@@ -21,6 +21,9 @@ properties:
           - samsung,exynos7870-dwusb3
           - samsung,exynos850-dwusb3
           - samsung,exynosautov920-dwusb3
+      - items:
+          - const: samsung,exynos8890-dwusb3
+          - const: samsung,exynos7-dwusb3
       - items:
           - const: samsung,exynos990-dwusb3
           - const: samsung,exynos850-dwusb3
-- 
2.43.0


