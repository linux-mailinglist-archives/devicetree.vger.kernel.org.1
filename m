Return-Path: <devicetree+bounces-186539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 92239ADC4B0
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 10:27:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 45FEE7AA0CD
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 08:25:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9498328FFC6;
	Tue, 17 Jun 2025 08:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="tT1zeNoo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DDB128ECC0
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 08:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750148814; cv=none; b=dTBPKSQn0BlHt/9vAfFDkmUPDlNRYPVcuaewkltBDzmAmJHL2e4hh2TH1wwXt9UTdNuzPIkiNNivEFdM/MDEO2tMIjxOnIGDeONGKaSERKdfNOPGynwXwNtjqQMHzJq79aceFeYqM4P/qs9/PhVQwQQvKSfCBG92UyW1aGVFkdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750148814; c=relaxed/simple;
	bh=A5GxHr710Py2e24QTu8TcBh/WJDiSncJIFM883A5ZMo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eC5UvMb7qoUIxFtO9FRWDirGtBCfu2DvZLqWqZa3wwCNA02OLXYTSofePkRyn23SzZK0zsoLe+n04VcPMMB6FhW4a0qwyetv81nA8MxHo9YWOqvyEDvy2fh0FlFlULcdVkaHw44dFYKdAQ0FbTxUj5+aUC7Qw+82WLv0IxtzvQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=tT1zeNoo; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ade750971f2so698757666b.2
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 01:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750148811; x=1750753611; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sX84cZ3SaMTPuPXdeTupdXKRRBNOI+FmBiR+Od8TZ3M=;
        b=tT1zeNooluyhiuSXy2texMyQDbHUVN3HoZc3QjqkJ9ENb64QxigA3FsYI293hTke5z
         C3IWW2XK2fYNen14y2j5PUyN3jlNOcVrvjUvtvr99BHrgBg9vbgpBwAgJENhzYmh7A5s
         V86VL2VQqVE8OdU8sqKCUPgX8esbZE6Wm+V4nl7vskbSLaprkgVKux6uP95wbVOfoCcO
         41q6Mhv7nSgpVDY3fAG3dKIBl0QTgqUULTFB61NNAfJBDV/0aDH8s9TRG0N3qxbkNQm1
         02686MV72j+DPfLfIjKBXOaax+QCfZmgMS7SKASUoraNA0BgA8ukvwfU3/n9nS5xSQmf
         EZgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750148811; x=1750753611;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sX84cZ3SaMTPuPXdeTupdXKRRBNOI+FmBiR+Od8TZ3M=;
        b=ruexUPXr+NzeANWULGTaZGY8J6o5MkBvLjHrNhhAlpGvcWOciPW52TkYyncbDNTlaM
         UJn7Zrg4cnDTDVVUM9ZlyP6PL43LmaQp5NAle0vaqq87oRA72gjcovVAkH7UAYu7qdCL
         KbqWAb2URBf0WjL0iR/nfhN7QDpEzC91TCAFdEhD+MI9Er33cPp775KeIoJQ1823XRIc
         MB9b58uW306RbKCWVYguciootvMvrpYXj8QrdAEeFKEajyZ+Z9HEZvzryB9DjBQMwOMo
         4V8K4H2n5rKyBh/hn9klG6n6x+WFqBk16/gke76f864xSiRPB7GR0xL+4izWeaHy6kxN
         Llqg==
X-Forwarded-Encrypted: i=1; AJvYcCWLt1RcJ66KHJJGSyIZeQ7yJTxEFV27HAGmSsYemRhRjYBRek52NYo+NErHBZoH/XXOTgkHsrb/7uSY@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/P6cwwgbZgwDVMOy70MeYuryW5K6G19v4fxr5vu42uMPLBmO+
	QcOP7UBcRjUrO51l9V+EG3k04X/w6IEdjsk9JhjlTGok+L5exV1IW9I935wuU8G4Xd4=
X-Gm-Gg: ASbGncszmO63x5/jiPQqaWRRLi8N9ZQfbr5SVqBLYvf5oE0N7JByGuK+ILUIzVmpxOi
	pnY62tqLlrx/x/mNy0Ov5jdK6zSIKIlWhR4L8fJzzqGQB5zSWMvAjyPom+AwgNKbUBvWyjwbQkq
	YL2aHcGoFQVifF0tZ1lAmnzSG9YgBuFfbLbmYdIm1osdMQD9NUs/SCv/9I23Ko9TC6quHJP+LpQ
	ahfuVEVSr8JwX3blVAspYb7Q9voKIuQoORSHJxeqDAzUXSordusnjhvbiZKOmTDEhYBvFXOlUPX
	TQDSpUEvhEprlc1LdUsGrCJG5SZSGLTx53/FFiIvRN//Kz9072WZu0CppkfvtfqlXTRNbazQPon
	Fvg6jLaZ3YwKE5n5lGlKnvdy2gLecmN2X
X-Google-Smtp-Source: AGHT+IE1KdvEzFDJ50Blvw8RRapFgbU1vb3QXm2KGvBTd08g0S8rGE5KDmFA84KI0+LHpMrERmOUIA==
X-Received: by 2002:a17:907:7fab:b0:ad5:a29c:efed with SMTP id a640c23a62f3a-adfad4181f0mr1236100266b.33.1750148810832;
        Tue, 17 Jun 2025 01:26:50 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec88fd993sm840343166b.94.2025.06.17.01.26.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 01:26:50 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 17 Jun 2025 10:26:36 +0200
Subject: [PATCH v2 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: Don't
 zero-out registers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250617-eusb2-repeater-tuning-v2-2-ed6c484f18ee@fairphone.com>
References: <20250617-eusb2-repeater-tuning-v2-0-ed6c484f18ee@fairphone.com>
In-Reply-To: <20250617-eusb2-repeater-tuning-v2-0-ed6c484f18ee@fairphone.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750148807; l=5504;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=A5GxHr710Py2e24QTu8TcBh/WJDiSncJIFM883A5ZMo=;
 b=NLVDwJceLeVh2CyY4RVOJ2w1bVSH89L0XBbHwU6333cyzpMfLbdJ26mUh4I6AXhR6OfQ7Vfop
 aVUPMGbgwyNBuYqFB64O1xnLl6Jr8WKGgjjPmUXuguwCFENib0h4FH0
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Zeroing out registers does not happen in the downstream kernel, and will
"tune" the repeater in surely unexpected ways since most registers don't
have a reset value of 0x0.

Stop doing that and instead just set the registers that are in the init
sequence (though long term I don't think there's actually PMIC-specific
init sequences, there's board specific tuning, but that's a story for
another day).

Fixes: 99a517a582fc ("phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 83 ++++++++++----------------
 1 file changed, 30 insertions(+), 53 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 6bd1b3c75c779d2db2744703262e132cc439f76e..d7493c2294ef23e37e484019a49ddf7b3d6a6a46 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -37,32 +37,13 @@
 #define EUSB2_TUNE_EUSB_EQU		0x5A
 #define EUSB2_TUNE_EUSB_HS_COMP_CUR	0x5B
 
-enum eusb2_reg_layout {
-	TUNE_EUSB_HS_COMP_CUR,
-	TUNE_EUSB_EQU,
-	TUNE_EUSB_SLEW,
-	TUNE_USB2_HS_COMP_CUR,
-	TUNE_USB2_PREEM,
-	TUNE_USB2_EQU,
-	TUNE_USB2_SLEW,
-	TUNE_SQUELCH_U,
-	TUNE_HSDISC,
-	TUNE_RES_FSDIF,
-	TUNE_IUSB2,
-	TUNE_USB2_CROSSOVER,
-	NUM_TUNE_FIELDS,
-
-	FORCE_VAL_5 = NUM_TUNE_FIELDS,
-	FORCE_EN_5,
-
-	EN_CTL1,
-
-	RPTR_STATUS,
-	LAYOUT_SIZE,
+struct eusb2_repeater_init_tbl_reg {
+	unsigned int reg;
+	unsigned int value;
 };
 
 struct eusb2_repeater_cfg {
-	const u32 *init_tbl;
+	const struct eusb2_repeater_init_tbl_reg *init_tbl;
 	int init_tbl_num;
 	const char * const *vreg_list;
 	int num_vregs;
@@ -82,16 +63,16 @@ static const char * const pm8550b_vreg_l[] = {
 	"vdd18", "vdd3",
 };
 
-static const u32 pm8550b_init_tbl[NUM_TUNE_FIELDS] = {
-	[TUNE_IUSB2] = 0x8,
-	[TUNE_SQUELCH_U] = 0x3,
-	[TUNE_USB2_PREEM] = 0x5,
+static const struct eusb2_repeater_init_tbl_reg pm8550b_init_tbl[] = {
+	{ EUSB2_TUNE_IUSB2, 0x8 },
+	{ EUSB2_TUNE_SQUELCH_U, 0x3 },
+	{ EUSB2_TUNE_USB2_PREEM, 0x5 },
 };
 
-static const u32 smb2360_init_tbl[NUM_TUNE_FIELDS] = {
-	[TUNE_IUSB2] = 0x5,
-	[TUNE_SQUELCH_U] = 0x3,
-	[TUNE_USB2_PREEM] = 0x2,
+static const struct eusb2_repeater_init_tbl_reg smb2360_init_tbl[] = {
+	{ EUSB2_TUNE_IUSB2, 0x5 },
+	{ EUSB2_TUNE_SQUELCH_U, 0x3 },
+	{ EUSB2_TUNE_USB2_PREEM, 0x2 },
 };
 
 static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
@@ -129,17 +110,10 @@ static int eusb2_repeater_init(struct phy *phy)
 	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
 	struct device_node *np = rptr->dev->of_node;
 	struct regmap *regmap = rptr->regmap;
-	const u32 *init_tbl = rptr->cfg->init_tbl;
-	u8 tune_usb2_preem = init_tbl[TUNE_USB2_PREEM];
-	u8 tune_hsdisc = init_tbl[TUNE_HSDISC];
-	u8 tune_iusb2 = init_tbl[TUNE_IUSB2];
 	u32 base = rptr->base;
-	u32 val;
+	u32 poll_val;
 	int ret;
-
-	of_property_read_u8(np, "qcom,tune-usb2-amplitude", &tune_iusb2);
-	of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &tune_hsdisc);
-	of_property_read_u8(np, "qcom,tune-usb2-preem", &tune_usb2_preem);
+	u8 val;
 
 	ret = regulator_bulk_enable(rptr->cfg->num_vregs, rptr->vregs);
 	if (ret)
@@ -147,21 +121,24 @@ static int eusb2_repeater_init(struct phy *phy)
 
 	regmap_write(regmap, base + EUSB2_EN_CTL1, EUSB2_RPTR_EN);
 
-	regmap_write(regmap, base + EUSB2_TUNE_EUSB_HS_COMP_CUR, init_tbl[TUNE_EUSB_HS_COMP_CUR]);
-	regmap_write(regmap, base + EUSB2_TUNE_EUSB_EQU, init_tbl[TUNE_EUSB_EQU]);
-	regmap_write(regmap, base + EUSB2_TUNE_EUSB_SLEW, init_tbl[TUNE_EUSB_SLEW]);
-	regmap_write(regmap, base + EUSB2_TUNE_USB2_HS_COMP_CUR, init_tbl[TUNE_USB2_HS_COMP_CUR]);
-	regmap_write(regmap, base + EUSB2_TUNE_USB2_EQU, init_tbl[TUNE_USB2_EQU]);
-	regmap_write(regmap, base + EUSB2_TUNE_USB2_SLEW, init_tbl[TUNE_USB2_SLEW]);
-	regmap_write(regmap, base + EUSB2_TUNE_SQUELCH_U, init_tbl[TUNE_SQUELCH_U]);
-	regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, init_tbl[TUNE_RES_FSDIF]);
-	regmap_write(regmap, base + EUSB2_TUNE_USB2_CROSSOVER, init_tbl[TUNE_USB2_CROSSOVER]);
+	/* Write registers from init table */
+	for (int i = 0; i < rptr->cfg->init_tbl_num; i++)
+		regmap_write(regmap, base + rptr->cfg->init_tbl[i].reg,
+			     rptr->cfg->init_tbl[i].value);
 
-	regmap_write(regmap, base + EUSB2_TUNE_USB2_PREEM, tune_usb2_preem);
-	regmap_write(regmap, base + EUSB2_TUNE_HSDISC, tune_hsdisc);
-	regmap_write(regmap, base + EUSB2_TUNE_IUSB2, tune_iusb2);
+	/* Override registers from devicetree values */
+	if (!of_property_read_u8(np, "qcom,tune-usb2-amplitude", &val))
+		regmap_write(regmap, base + EUSB2_TUNE_USB2_PREEM, val);
 
-	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, val, val & RPTR_OK, 10, 5);
+	if (!of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &val))
+		regmap_write(regmap, base + EUSB2_TUNE_HSDISC, val);
+
+	if (!of_property_read_u8(np, "qcom,tune-usb2-preem", &val))
+		regmap_write(regmap, base + EUSB2_TUNE_IUSB2, val);
+
+	/* Wait for status OK */
+	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, poll_val,
+				       poll_val & RPTR_OK, 10, 5);
 	if (ret)
 		dev_err(rptr->dev, "initialization timed-out\n");
 

-- 
2.49.0


