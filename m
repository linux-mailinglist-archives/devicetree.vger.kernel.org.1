Return-Path: <devicetree+bounces-189412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0038BAE7C62
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:21:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C42763AA063
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:21:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BADC129E103;
	Wed, 25 Jun 2025 09:14:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="YnwXMN7d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BDF52DCC1F
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:14:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750842886; cv=none; b=u85W8R76bLvV5sA+0HWyqC/mR1MGh6bSc+79lSYS3PYT+XFRanlX6ZHp4us47CCgDM0WTOJn+CrsrXKJaeJAKagNK8txxlmtyrs0bYyPv+PS5E/BKqP5T/XtTn4ZeLpHQjbMvjpASmsfsbMWppNz8mOvGwwtXxWKjcuFJK+2lqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750842886; c=relaxed/simple;
	bh=+GSUprlWx6WJefoJvkEn+TwLdVvC5fox0gg5Y+LwfHw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XNMtRD5g6rgbX0bCyaqhKvSyPJZiALfFGdnI075b/i9XTzq1EHrRKmrWIy582RWET/tUzX6Xifltq3UGccrEqKMLfqR8+Hkb51uHmjM9ipP6sztEKW6dehecpF6LbqOv6AR8ELQmJNDJysWhRN+m0V1apsCHxyHcbd2uPOq/oXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=YnwXMN7d; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-606b58241c9so10031335a12.3
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842883; x=1751447683; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ezrrvemh3BSb8JW/T0pKm8QnZFPlbno9UW9Wh0XmVYM=;
        b=YnwXMN7d5HK1HMLjK4Z5acbA1qZ8PKRrwaLBPco/GAg+h/LmH59RUwm3ZBGOHJxC3I
         1txu43uesvpQUNlzv/AFqEMvMs3ttyV+Zc02K4OH9MeCecIkMz37yS521mciS+bXdZma
         OkmbOYyJFBHuZbeYlIIe9PDap5V6QDDKY7pHieVg4z9Phn2hRFVfW9QRz7UZrJu2kCuj
         o2a+a/sodsoknLG3jD0oaJb9y2VSwWH3NmrmPNS2Yr4SV4T9WkMOqkKSuHCr/S/VBdWQ
         YOq1649euFmhX/ia1MIFs5o/7Ss614HxwNeFeFieRgKogcOrGpkXBK/PdsvJ/aJYw+cg
         SIrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842883; x=1751447683;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ezrrvemh3BSb8JW/T0pKm8QnZFPlbno9UW9Wh0XmVYM=;
        b=I4jGxbxCaFhYH5FIQV6y4FNmNootvv5QEfXCkj0JdRTWlsRz/VoAQYdGb7YqDXVTLu
         a1y5Kxv8DGvUVuhtvzLjcVZt+8rVthdpFTEyD5ek6hLYygFsk5XNpSRAa6M6KzG494qp
         JkBB6+eixIFNqY/bkl7uasmd4UPVQXEtG92zGl0HYkX7ADN6icp6c7jRsrteUBQ4gNBQ
         u66ityJShHisrOv9pXTRlQpBwG4Vae+ndt/1xhOkgRiRw54ObVzXQ6xsLGk99zW9Six8
         BPengfjm9a7eSAXNUCzF76QRahN4rJZERg7OhutM2mlFiffbnHhY2G/Vlq+3I4kbENjA
         98EA==
X-Forwarded-Encrypted: i=1; AJvYcCXZjjiQF771zFTgFDPV1aRtvTZGbb7m4F2P9IuLMQ8+robIRV4jiTB6k84epwq2G6Sleu5w5s9FvJ+z@vger.kernel.org
X-Gm-Message-State: AOJu0YyJzIj7cCv4jNf9rl7DV4dkWqTqWHxl/Rx4QMAOtQspbqPRHDxm
	TpoIV7esxubA7t4Y6RNSuy00kmdP1ziXMBRJTW7Pnq0Wq8OGNCaasGPsfxAiSlclIfA=
X-Gm-Gg: ASbGncvLWgL6gvMdUQrIWE7eAm4r/2zTr4QoZHT/ufR17c+SpOAQ/XC/QBXL8CIEQKz
	KyDtQjeL44JzqLDjPu34K32iTZs64s1OBKca6HbH+zTdYeNO3HFSvitg/jH8Mughh4S83AFcT6c
	Pcdi52hdchvDKx/CjrV9DQjzlw0CRaEH+a5EcdxT10qmsHp9c16ekKbyZqUTTyKlepHU8PNnr7H
	dqvAOiuXXhaOYex73OKSY0ILxnGh9WwAMn74An5DmXY2FHYRhNX2IrWpm0J/1tKhibyoQcbE+2d
	zz0OthN7t0e+79fT2B9vGvSSKRwLCA66mnsHIl8tzv87xv1BnDf4cfKSju5yxhR0oR7NJExGVSP
	0IQTIVkFj+N/KZtvRYsjwPDDH4kVpNH0C
X-Google-Smtp-Source: AGHT+IGIywmz9c5XNOpnohiRqMmd+RNf51s0QULoylL6obp0kqvk2eHNYG2CNGxRWX+GPIx78Dn6iw==
X-Received: by 2002:a17:907:3e0e:b0:ae0:c7b4:b797 with SMTP id a640c23a62f3a-ae0c7b4b8e3mr100658766b.45.1750842882736;
        Wed, 25 Jun 2025 02:14:42 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054083c95sm1021480166b.91.2025.06.25.02.14.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:14:42 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:14:32 +0200
Subject: [PATCH 4/4] phy: qcom: phy-qcom-snps-eusb2: Add extra register
 write for SM7635
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-sm7635-eusb-phy-v1-4-94d76e0667c1@fairphone.com>
References: <20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com>
In-Reply-To: <20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842877; l=1373;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=+GSUprlWx6WJefoJvkEn+TwLdVvC5fox0gg5Y+LwfHw=;
 b=8aIZ42DeUTJeCukpZfv88iXrxjGwzYcqNfO5sNCK9ORjM8K3L17YRcY5g2wj29GmvQjrgUBYa
 BV2F3Lnv+80BG6IJxhPKu4aj13he04SrDoqxPjnggGeb9t40K8Jf55v
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

As per the downstream devicetree for SM7635, add a register write for
QCOM_USB_PHY_CFG_CTRL_1 as per the "eUSB2 HPG version 1.0.2 update".

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
The downstream driver supports an arbitrary extra init sequence via
qcom,param-override-seq.

volcano-usb.dtsi has the following which is implemented in this patch:

    /* eUSB2 HPG version 1.0.2 update */
    qcom,param-override-seq =
            <0x00 0x58>;
---
 drivers/phy/phy-snps-eusb2.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index e232b8b4d29100b8fee9e913e2124788af09f2aa..6122fc797c7fd3011936edc3ff4dafe6a58e6583 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -420,6 +420,12 @@ static int qcom_snps_eusb2_hsphy_init(struct phy *p)
 	/* set default parameters */
 	qcom_eusb2_default_parameters(phy);
 
+	if (of_device_is_compatible(p->dev.of_node, "qcom,sm7635-snps-eusb2-phy")) {
+		/* eUSB2 HPG version 1.0.2 update */
+		writel_relaxed(0x0, phy->base + QCOM_USB_PHY_CFG_CTRL_1);
+		readl_relaxed(phy->base + QCOM_USB_PHY_CFG_CTRL_1);
+	}
+
 	snps_eusb2_hsphy_write_mask(phy->base, QCOM_USB_PHY_HS_PHY_CTRL2,
 				    USB2_SUSPEND_N_SEL | USB2_SUSPEND_N,
 				    USB2_SUSPEND_N_SEL | USB2_SUSPEND_N);

-- 
2.50.0


