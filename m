Return-Path: <devicetree+bounces-238560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 305AAC5C547
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:41:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A57C635C2EC
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 09:31:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D8533090E2;
	Fri, 14 Nov 2025 09:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="SvnjwB+r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E016307489
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 09:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763112679; cv=none; b=KLjcse4GHXDOks1lQvZY0YbEBhAX4m+3D2voA0qfD3+xKEDVuBmstXIwYL818BxtifKAMxviBz3mI9ClekYh1THNOWbRhO8QhTgrHpZXUU8jE6fNumZ5YIIaSWGl/pkIggGAq3kg/ixCvaKiMBFKYt6JfF6GtkTP0Sd/z1FN5zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763112679; c=relaxed/simple;
	bh=EXmlrAx8G+qEQXvn4Hjc2SxpukaT9VckUvipBtJ1isk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JANrVKKli1Ktc9Yy749NjTFiUe2WFSoVnEV/cswFDey8db0rrIWB2AjB13rMyAFc+ngcZcHgFaNwQWEZ6nGwlfKlp4C5n4Z0Xg/5umvuQOEAU0sInd0dqpCO/QGaRdWiBVQblxv7pEobNYuVrypiumUjGfQQJQ0etMLIr7OjTUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=SvnjwB+r; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-640aa1445c3so2847359a12.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 01:31:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1763112675; x=1763717475; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bjagkFHTl3ZcyROBN79dvzdfXtI/biV++zkJ6Wi3X80=;
        b=SvnjwB+rXaGh+yKxRpV4Mq1iY2MfxvdkgTRY7HMO4N2sMRGSjMIizbgVW5FG66svhc
         +bNZU6S5TJZgeAS8tXsAC5KwFpPjDUP+vtIebpHUU56LSDWkTOToxpkK+x4+jNo/vFHs
         lMdatv88qutTVM+Em51R+agNv4mjk5nUPKOXPhNAU/OKU/iZ3ztidejN2Ugig53q/6pn
         9GpUlyJnrIW5pH+DiIWhLBFe7TS8kNhrHTl+Xa/1jA0CZFqpa+88L3GCir8K2dZtUkru
         jwT7pdS2h8f0qPLj7TeqFopF0l+SIaOmfdKn4NN7OgPsuXwkfQwUfLwgvdm+cWx/3030
         SQdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763112675; x=1763717475;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bjagkFHTl3ZcyROBN79dvzdfXtI/biV++zkJ6Wi3X80=;
        b=DZXdBrvkkVDqwksjE+pSAuVb5pg0zt04Fauz3ca+d2qSb+PSsqJuwS2ERgf725rXKB
         tyFcdAjvSVl48wWm+AA0lWx0p+Dkcb+L7Paaiz5pB2f7z4MKAaxET4GHTQeIW09gj5RQ
         VDfcqXuXsGlS3MN0cGtD1p57wrqowpXmHhvA8g2JmbcZfNq0HLRkZ+zrLTbx57HlEsbh
         NV0LSz7GD4I/QiOZNEbDPMp+CyOouz1nfxLp/D2cPIAN9AyYDBd+9Hyecihp3yvse1EZ
         NT8Ljw9+Es98MNB2Y5jL1BVJM2YfDDwmhi6PU28Ui9S5TnSqxZv28mG8dTFUe9Ch9uRO
         d0pw==
X-Forwarded-Encrypted: i=1; AJvYcCUgSLSAvkq4kqW9NpQn6OlQYkD8+rpjquntcFFD6MOtL7gamF450spyrOE8seB7FEy3xFSXjWBUbejf@vger.kernel.org
X-Gm-Message-State: AOJu0YwAXDnweTuQsJcC3xL+3zXb1wJ2dQmsCs52+8EfRFFSKIZ9Rdh7
	9hamysyceKXf2KwI07U82YBrjXR3E4Hwqp6MN6Nyiup4Vddzs/4mNfWbcF600vNIA24=
X-Gm-Gg: ASbGnctCPnmNy/GDKwD8fLVDB+l72FvG/+8jHnIpatmv/KEfzx92MrlRujKMH5smUUi
	/zBf8eM1KOU9hARLcv4kvakriXK/w6VzNX3QuU/fgnVWy6N0EyNHmrbjJdmsAFMSsucS+uBd5Bw
	zW01sGnL332Tj+1KA+bmpGSCtfnMBAB6a9KCbaFXn/Nyh/zf5IvcZuL1RvVh2IXMZwgpXejmQZ1
	tsii/ngsH3EcbtQMX61YFZOVzunYhnujYnIfx0cArZqLpZ3vcJTRmBtS7cqqawzTL1OBcqNabJZ
	VRmMSsqogGA0crVaWlCRFqWj/xc7i9X1vInNd6rSB7peNV1m7ZL2iH68+nfbp155uvjt9OKJ9+B
	41U2CUFQgLPWDnZHvzIHySlZYe+3vzB/c+PVpDdBl14NmCbq9c8SJVjK2ajXhnO2J7Yp9lO0CUl
	IQXwV6wE1s9i0RRUz47viI0/3PJqYUwN8Z3r/lrQrnk5cM2XRGLHWp4s/B2B4bsBA+jorIM1DET
	ztKds7rImmHcjxXRfDKD2o=
X-Google-Smtp-Source: AGHT+IF93Hcmy+2QpI1Usg+qVaNay64indlpTI/ams9EhdWoqHHpowSpmlonp+hK3sYc2L//Ct4xhQ==
X-Received: by 2002:a17:906:c10b:b0:b3b:5fe6:577a with SMTP id a640c23a62f3a-b73677ece6fmr210520666b.8.1763112675373;
        Fri, 14 Nov 2025 01:31:15 -0800 (PST)
Received: from [192.168.101.179] (2001-1c04-0509-ec01-156d-fa6e-7f19-0b67.cable.dynamic.v6.ziggo.nl. [2001:1c04:509:ec01:156d:fa6e:7f19:b67])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fd80841sm352104366b.41.2025.11.14.01.31.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 01:31:14 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 14 Nov 2025 10:31:10 +0100
Subject: [PATCH v2 2/5] interconnect: qcom: icc-rpmh: Get parent's regmap
 for nested NoCs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251114-sm6350-icc-qos-v2-2-6af348cb9c69@fairphone.com>
References: <20251114-sm6350-icc-qos-v2-0-6af348cb9c69@fairphone.com>
In-Reply-To: <20251114-sm6350-icc-qos-v2-0-6af348cb9c69@fairphone.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763112672; l=1698;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=EXmlrAx8G+qEQXvn4Hjc2SxpukaT9VckUvipBtJ1isk=;
 b=Yz/vL8tGTL2oSQMgT7z1ixGoz4iaaPuz42Yx+czSB0njpQPU2HdbrCP2DQwyMtej+3iMSF5Ge
 J7XNWTAR7w2D7rA4AS/afTP/WyeDvLj4F4qaBNh9dKkKfnpqudsWjw9
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Since commit 57eb14779dfd ("interconnect: qcom: icc-rpmh: Support child
NoC device probe") the icc-rpmh driver supports initializing child NoCs,
but those child NoCs also need to be able to get the parent's regmap in
order to enable QoS.

Change the driver to support that and support programming QoS register.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/interconnect/qcom/icc-rpmh.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/interconnect/qcom/icc-rpmh.c b/drivers/interconnect/qcom/icc-rpmh.c
index f90c29111f48..3b445acefece 100644
--- a/drivers/interconnect/qcom/icc-rpmh.c
+++ b/drivers/interconnect/qcom/icc-rpmh.c
@@ -308,14 +308,19 @@ int qcom_icc_rpmh_probe(struct platform_device *pdev)
 		struct resource *res;
 		void __iomem *base;
 
-		base = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
-		if (IS_ERR(base))
-			goto skip_qos_config;
+		/* Try parent's regmap first */
+		qp->regmap = dev_get_regmap(dev->parent, NULL);
+		if (!qp->regmap) {
+			base = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
+			if (IS_ERR(base))
+				goto skip_qos_config;
 
-		qp->regmap = devm_regmap_init_mmio(dev, base, desc->config);
-		if (IS_ERR(qp->regmap)) {
-			dev_info(dev, "Skipping QoS, regmap failed; %ld\n", PTR_ERR(qp->regmap));
-			goto skip_qos_config;
+			qp->regmap = devm_regmap_init_mmio(dev, base, desc->config);
+			if (IS_ERR(qp->regmap)) {
+				dev_info(dev, "Skipping QoS, regmap failed; %ld\n",
+					 PTR_ERR(qp->regmap));
+				goto skip_qos_config;
+			}
 		}
 
 		qp->num_clks = devm_clk_bulk_get_all(qp->dev, &qp->clks);

-- 
2.51.2


