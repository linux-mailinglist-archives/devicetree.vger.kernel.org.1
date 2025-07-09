Return-Path: <devicetree+bounces-194625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9D4AFECD5
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 16:58:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C67951C45621
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 14:56:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 387A21D63E4;
	Wed,  9 Jul 2025 14:55:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="G2/wTAhW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49BFC2E62D3
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 14:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752072929; cv=none; b=FNedm2nIpzmUH/RlrsgXyiHUGZv242dzJr+WCGZjOvBFJ0lIAxA/cm/0U9lPaoCahZJRxG6+n2Wu2uiz1C9t6aCM2zD5rk4eeGtlBx/w1xqwNmUznVfC+w9t6F+GQZtg7NM2j8y2H0JM6pptr4UAxlJ+E2xcxEfYakkJPQuEFWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752072929; c=relaxed/simple;
	bh=JjK37/7ou8Ub4yuQzbdrYu/+a8HXwLFQlJ7GCGIoSKo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uf/7mP0Lmqj4YK1mcht5MEpCt9LIrItREpU/gxpNGI0QtBx/5nIkM6OKJfAQ2jwVLY0a/WgY/8nvREwvOg9PazRX61nRDRccOfuoyL4jWMOKaboIl9Lr9eFWJdS7bVcV6bU2G/BTA4IbGOJ+Ut/KOoUHR309Pe2VfALFD//z144=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=G2/wTAhW; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-60867565fb5so9504963a12.3
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 07:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752072925; x=1752677725; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FqUnckrV2DHR0JIRkRD40uIY/f6Qb0J4rvTjJoaYqS8=;
        b=G2/wTAhWzSamOvQZZmw1tZalAIExmzLA92jJ4s96G2FxsX9D6IDLry+yOxzIPIiFkL
         cpbEwPnisAa89f0FULNEFxVtHK04GId/bjyb5Ith3GQFCmxLbYDXc95xl+RCwGM88146
         teocst8VOAlfrJPyLY1nI4IRSLz4MnYIHUJ3sU3/WN3qrXAgb/WVEkY0ppQsjAcoQnx/
         wMoVGaAhUVOV8Mc8+CeO0SKGSZrtll7RWwZrjUniH5mlioCtIKj0AukzKMcY9hIZOqvZ
         ZC8ub/Epl9gA5wnH1dp9L3ggx0a8lM0VzhxyxW80sSRC4269Wrp+YXAe8PbmeQJg2mic
         Gb7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752072925; x=1752677725;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FqUnckrV2DHR0JIRkRD40uIY/f6Qb0J4rvTjJoaYqS8=;
        b=Z928wlTVljxWHqxsgEXgvnmnOlIt//MS8KB1Z4Qg8S9PfLT2fXe8lcdxw7m/XmYPR5
         Sm5C94l6py5KS2fIW81qrVcB0xFdse+A2GLrFGjrzvaQrB7YI/uJMkmgLstYjN4v/lC1
         LsASpVIrpVt8cjfhEbiV6+J0Bgtb/QdVkvNBDicYmU1DFBcprZM7oe786n0vQ1rmoKa7
         Vlw2UB/PBTIxbIFdrH7B05Snzh0QwgPDqnBNI4xWQ5BVpmswhmLNthAd6/0Wm4tPldjY
         AeNUdSbywCr4QxmNPbIFbfegMYtfcJMWGxTvE2qHi1S/sBXpm9N0MBlPU8BZq+Of9JK9
         UEYg==
X-Forwarded-Encrypted: i=1; AJvYcCWN2uF/hai+oeAmQYP2q2jSKAYkVrLL+3IyesIx0n+BdUQul2MB3/7Z5LgiErCX9I15RGYQMr8J7bBl@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/NmfqumgVYNqfWc4x8WX0aVdDbBDEwdd4mbRGv2yMxdjg+Thu
	WC4dyAgbOyv1tvS1xXh49ZkA9ARhMp/SkEpbe3I8F87HS7x6/QxT485RbtP43q9VQPU=
X-Gm-Gg: ASbGncu81ViDn9NM/gSBSyflpTFBaG96siYbTlcLNxKh7tHBAMjhPuo0gL5qOzQ3vn5
	3QGEQA6+kCN05pR0zaCH+XMNXM5iywEHlJpaMdg8d3LOHtf9DxUsGcNCZDfpeB1SWChdjKQOs8m
	+8nvpVL1vSs3QvzTBmbs8DOvUrt594xvyz+18+sniMvf2KsBpDK5M4cy311n3L+ZjRoKz+7DkyM
	q3PG2v6qv0ax9D/pREBo4WWw/CzCJUCWnU6GFnb5DMNiowVjUHYa+M3gfSfgK2nZIWfOSWNx6fM
	DLAHzdGTVKwlojABEBsct6mXbOdzIwzdHM9QQ/8h+qcVwxFRguJVBZUhl58U4VzhZ6KqMrS9JQv
	CgrUMPTN9Kg1Zqs1qWPn7pHusGI4Lu8O5L2wl6Ih8G1E=
X-Google-Smtp-Source: AGHT+IHYj4k/qDDYaJjD9Pvlt5hW+aGvDzyWD8yDesgLcfq/4kuKmOi8Z6ujnsY58oHIu98v8zVcqQ==
X-Received: by 2002:a17:907:ea6:b0:ae0:c976:cc84 with SMTP id a640c23a62f3a-ae6cf6128f6mr309110666b.24.1752072925389;
        Wed, 09 Jul 2025 07:55:25 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b600ddsm1116795766b.158.2025.07.09.07.55.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 07:55:24 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 09 Jul 2025 16:55:15 +0200
Subject: [PATCH v2 2/4] phy: qualcomm: phy-qcom-eusb2-repeater: Support
 tune-res-fsdif prop
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250709-sm7635-eusb-repeater-v2-2-b6eff075c097@fairphone.com>
References: <20250709-sm7635-eusb-repeater-v2-0-b6eff075c097@fairphone.com>
In-Reply-To: <20250709-sm7635-eusb-repeater-v2-0-b6eff075c097@fairphone.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752072923; l=1187;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=JjK37/7ou8Ub4yuQzbdrYu/+a8HXwLFQlJ7GCGIoSKo=;
 b=a4O39biLPv1ckqefPreNqneOFtzOmXRAtTy90P3R2Po9bjTLgvaXw8O0srrHGpicIbkBCZwtq
 GMA3OKt/wNkAXcOlHdD0WJfhA5Q0vh5eGp6Mfjp75rWf3jKut3x0cbF
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Support reading the FS Differential TX Output Resistance Tuning from
devicetree and writing the register, as required on some boards.

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index d7493c2294ef23e37e484019a49ddf7b3d6a6a46..61594739e5b12706775622e1f76af6ad5d2d29bf 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -136,6 +136,9 @@ static int eusb2_repeater_init(struct phy *phy)
 	if (!of_property_read_u8(np, "qcom,tune-usb2-preem", &val))
 		regmap_write(regmap, base + EUSB2_TUNE_IUSB2, val);
 
+	if (!of_property_read_u8(np, "qcom,tune-res-fsdif", &val))
+		regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, val);
+
 	/* Wait for status OK */
 	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, poll_val,
 				       poll_val & RPTR_OK, 10, 5);

-- 
2.50.0


