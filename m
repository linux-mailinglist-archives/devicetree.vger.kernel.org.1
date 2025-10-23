Return-Path: <devicetree+bounces-230349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B37C01A9F
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 16:11:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 51E3056889C
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:59:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A775E32AAA8;
	Thu, 23 Oct 2025 13:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="SEUJpxC0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFDEE328B4B
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 13:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761227918; cv=none; b=AkcssKedoUsHJfFN1mTK5K9kldn2R9lBCpQvCKQRuXLQGxfZAUQ4JblIwhNUDjmbb5NsHmtDMqPR+6R0Ut+dmQpY5EFsNfmMjxpG3CZh08zLfIiQ4lvjkKdY9e14weZLlpHrT/V3fyvhnkFr1gqwVGU9kMom21KaY/+HGPVhi8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761227918; c=relaxed/simple;
	bh=gVMp9OKX1E6FMgxJQra5Aw6qeOKI1S5qh1QZpcnn0XQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MSAS+ajS01bvhGDVDUuBGyReiY/NS3LaPiPYRyt/pGhZpY+o6SkxrmnzVugKPJTDg6AoI47H71whlCJsPv7lSRSei9g+e6+SCFNX9sFhp2GmEXvj23Pvt6eG0Xaww9jDZgiAv2VYBBcEEU6dT305vBhHOFFMj+CH3aMSAJG3weg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=SEUJpxC0; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b3c2c748bc8so108861166b.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 06:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1761227915; x=1761832715; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5v6y+GjI1vQGPmK5PBayMgAyAsV46MUdg+BfNU35YfE=;
        b=SEUJpxC0r/cPOhFuwwpx3ViQU5kUen49/A9U/sBcUlS7VfOUUcOCxSq0lCBnfY3jH5
         RLg/f51wS2Z5yY+1q5KdS8+WdetyiElV5VyFcXdeNRZKDOaVG61Z1mFzzxyFxqsQvJ3r
         Axus2iLrSjaPPedHHNKajwQ5ARTL+usYv3Gkb4oRlaS34WroSM6F4lS+ZvA1gYJQzxcm
         aBDtq6+UKquCRzNO42/3AinDwgvXL5qMJDWezrWzs8MbulLEU3Amnnapd7WLE3iJ80Dg
         zAzzyDrpFJsdFb5b7SNiL2cwLJX4mymJKg1d2wRHxvVsvcwE/caPSwXGpL5N4tx0172F
         J7qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761227915; x=1761832715;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5v6y+GjI1vQGPmK5PBayMgAyAsV46MUdg+BfNU35YfE=;
        b=n3RNQ/s/ItSrgwsAy77+lgZSdY4KXfIySzturefqtk7KEq1Khqd6sLBgYFuKpDp985
         N5p1k3q+CRYmYe0Ir1nZfMfpu8e2uSko+ViKCTZP4xoDw/ZoZ1wJnHa8hHVxM7VctBc7
         iG8vHbvUfGHTvzhrq7zc2HciIa7RcHy5er6av5pDWGa8oag9JkM4hLUSP2jyzmUWilhM
         TTolyE9LA6j3W9un2ZoOugrrpfwuRG0TTKTDcREiM2MtPzVlAz3/SjdwLlertD+flnD9
         RFmL2qPoAFCX4ZNGSQChSGAwXR0omSUeEOPeODzYlMqD32AG8PysXBgyYrbjy71vyiO0
         1D6Q==
X-Forwarded-Encrypted: i=1; AJvYcCW5hb6UyCm+tNdwaRCrPWnP6KGckXZ95JCG7p225m4i2cgNxLtrfUMLEqUze80uW+jq27Bts80/vR8O@vger.kernel.org
X-Gm-Message-State: AOJu0YxdIQqcRECL6zA1xq6yN8dG80pjSbC+Vf/CKl30lhSL7WkVa4uL
	S4q/WLl2CUctoG1tAPQ74/DRlQCxV6ORbG9YHTOJ7GMLCB2UWhMqtnB2vmizktoAE1w=
X-Gm-Gg: ASbGncsvocJsAbKWklEAAAiHNisMQtXFP/H0EHXIv7YbZ9kqAr4wH/4jyRYJYD3KvtW
	asHsPXf0cV0ZtsFkr4RmowZ585smxCbltcXiGkKH+PRW0Ib+L/N3PCqrDLnfoQseOMTTHgkNhCU
	hR+06/2gZu9JxCCvSZOzROryrDVTLexJZ0LdmHnyDK1jSO37sLnJeyOIwlGYtIOfEBTVeClgzrS
	tNrgidIoBtTt8J46J6V3tAZw1gsPRDqLuwoCeR+St0FM0Xn6PE2GXYX54LWoL6JLdviWGwti9iA
	Qmj3nuvpg4XJ8xCDFZJuc3xS++GqTF+wA4NWDjADqp2Rq+3UbI1BslL8wFD7RjEwLGV/zkOlKa1
	KiZGyphaAwxTwyPnHTI+Nu6Uog09xyjjYYQihQx/wjbbOVthPFHiy9CXxWBhl/VTwPHtRJpP4B3
	KMaTnxsNsWPKhl4UHjCOUJqYzVstHD9Q==
X-Google-Smtp-Source: AGHT+IEC+rYJG36/rC4PJVSPAIdX4Lo/ftVglMxpEkizTmYDSbvRujYXusVRK/4v8s9FHkKuEzGgrA==
X-Received: by 2002:a17:907:74b:b0:b3e:5f20:88ad with SMTP id a640c23a62f3a-b6476ccc0c0mr2866186366b.28.1761227915106;
        Thu, 23 Oct 2025 06:58:35 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.151])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d511f8634sm226114066b.29.2025.10.23.06.58.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 06:58:34 -0700 (PDT)
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
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v8 5/7] reset: rzg2l-usbphy-ctrl: Add support for RZ/G3S SoC
Date: Thu, 23 Oct 2025 16:58:08 +0300
Message-ID: <20251023135810.1688415-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The Renesas RZ/G3S SoC USB PHY HW block receives as input the USB PWRRDY
signal from the system controller. Add support for the Renesas RZ/G3S SoC.

Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v8:
- none

Changes in v7:
- none

Changes in v6:
- collected tags

Changes in v5:
- none

Changes in v4:
- none

Changes in v3:
- none; this patch is new


 drivers/reset/reset-rzg2l-usbphy-ctrl.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/reset/reset-rzg2l-usbphy-ctrl.c b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
index 57350764be25..1c0424639e66 100644
--- a/drivers/reset/reset-rzg2l-usbphy-ctrl.c
+++ b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
@@ -96,6 +96,10 @@ static int rzg2l_usbphy_ctrl_status(struct reset_controller_dev *rcdev,
 
 static const struct of_device_id rzg2l_usbphy_ctrl_match_table[] = {
 	{ .compatible = "renesas,rzg2l-usbphy-ctrl" },
+	{
+		.compatible = "renesas,r9a08g045-usbphy-ctrl",
+		.data = (void *)RZG2L_USBPHY_CTRL_PWRRDY
+	},
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, rzg2l_usbphy_ctrl_match_table);
-- 
2.43.0


