Return-Path: <devicetree+bounces-233753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A11F9C2520C
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:57:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D80F405BE5
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:56:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBF1934C805;
	Fri, 31 Oct 2025 12:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hV203SNC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340A534B1BF
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761915373; cv=none; b=kZzIBmwFfxdytX1pDWWl77+9KvMrQJgU/J2c6pJ8WU76Opp5jYw6g5EC+ct4oHR5jZpMc1aqkHrlTcxX/JcELPt9f/W+92NW6J83FqJ/OafOwHpFloA/9SmKqMankRymb8si2RcAYB//9Zrqs/ixqkMbOVVi9pfb81OPGSX457w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761915373; c=relaxed/simple;
	bh=2b2RMRAbQHJoSplfNlNFCrm413eCNhV1Uu0eYavspbw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gxMwtDh5jWK7kDZyJAaJL0pxtovgQrwVjbjLGSugAsL9yWp7IBzCtz8fPxzrgGwaevoA6v0FNtCV+mI6847EdXWak+2J8WZ8AnKrMW0txGf4wofjBteMIPl9KyTdH8GtHOOZ5iGpbh6BmOcxnhWG7UbqjevDSJ0sHnSUA4nl1II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hV203SNC; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-475dbb524e4so13378315e9.2
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761915368; x=1762520168; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=itYhsB6fPdpzra7msCKHByUBTLvmx3RYWl3MrAXGf0w=;
        b=hV203SNCoqGVtfoMSp/Pz4x50UyUpYWd989qiWmNNiHOXZZjEjBxysdXydfd/0OKLI
         PxXiW34dqJxl5xJlqg0yZDOqAyrPf0/ICQ7efOUpdJ8kGuzybSE/aQqEc7REPdsSr1T+
         M/wvdEseoqyqTb7CvwzqyufhZH54wYguJkK6Tq/LgeUucpIUxhLAfG0Q8Zv3B1ILESeU
         L2CqNu0yKg0/nbKvDJBhBG3MMpf6TEKUlDzIlndIIUcIHij1VFw8FnS+Kpy44IzIuq+k
         DN4lk0MqTmPNywUtGSQPos310Q6nlONJQFOeh1lFUbLSaPTPDNOHu6aYat5EmgTtN62C
         80cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761915368; x=1762520168;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=itYhsB6fPdpzra7msCKHByUBTLvmx3RYWl3MrAXGf0w=;
        b=Vk+VVFnMVLJL6zBcGQAq6tmk85EPW/HpL18cA23n3CSaFravWvX3ITk/iF3qu7x+Sv
         GLSWS44AS+68EFjc5xyxBLa/Nap5B93mAfkCYPgWCIFtr1/AZN9SAwziWsQ5Fsae27H7
         3pMxPWDS7MkhQgh1fh9FoNs082jBOceEDKWu7ZuyCI9J5NYAgAXITPN2sws7w9XTy4p+
         MexaQ/HM1LToL6u8P4dw/MPvWKJeoqTBffM5+6tawyXBfb7zG3cOHbEBz90PQlFXrcNU
         ypHt5kys8CZJBlDM4iGgd479PHhNB5KwjZuxbjMDst+pQL0XN/iGnc/8Kji350vPBVY9
         SPNQ==
X-Forwarded-Encrypted: i=1; AJvYcCUWMbSIlQmxJ1ObXFf3AXZufiatkg3LL+qRBsi3YfwR6CEaQE8AVSqMbZlnTKKz43rSppYAte+PlcyM@vger.kernel.org
X-Gm-Message-State: AOJu0YyW+BoIiJjr6KTdFkIr9988IDUi9tGBVgoCAf/EFgE3L1jJRGDO
	lRJ154fmdjKSjWZRdlZwv5BbHs2CNDHZDbAzu9gjYJqvb4lXSwEKeFM1FCy3QaLlBlk=
X-Gm-Gg: ASbGncsGFU9xrkCcaey+31iUcL2veXfWShjqquprUGFabyHjsGybZDvewnh7peptYHs
	ReuwCPNntmtlgSBAjQAvph6yfPRMSD1IFboAlunMY6LgeVERFeem7o5q+zxjZeII3iSAwbuhFiL
	FcAbfY+Dgs1wJkC7a1O9Fp8LbMkAZPNXpxQA9WnXZIiqxiHZzN4ByvxAuiTQly7me5IaFah4EQ3
	tInAMgMLkvGuQM3hSFFsFiv7q9MPK9+fAKUyLv/C/f7SygGZ0HKjSbIAaM9egWosuly07XMsNhc
	I93BKN2ADpYe9p2qtwM9FPYSaqul+NCLMDPdyxwaEGqE4TVxf/gJV3hsGWNAbmvXrIgVLojcZcO
	V0l/AO4NxuJU6sTaDREMkhvAAPrzr/B1n/BpyE08VGZY3YEkDvk1FJWpyAK9jquEqCPSfPtwf/8
	BI/WNaIB/QVYgLi5tWRp933R2B+/OXxbJPgsKmP5rO0WvwcVeIvOi+XVJbqpDm/Xs=
X-Google-Smtp-Source: AGHT+IHji7cnPXAM99TSnbeTgigh5KRVC5HbAljjx4ZpeP0cWM3VaZ+C9Ae0FF2SW0ZbMs1zBgOQJw==
X-Received: by 2002:a05:600c:3b26:b0:477:19b7:d3c0 with SMTP id 5b1f17b1804b1-477307dbbdemr33249365e9.2.1761915368337;
        Fri, 31 Oct 2025 05:56:08 -0700 (PDT)
Received: from ta2.c.googlers.com (213.53.77.34.bc.googleusercontent.com. [34.77.53.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47732fe1075sm31814585e9.11.2025.10.31.05.56.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:56:07 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 31 Oct 2025 12:56:05 +0000
Subject: [PATCH 06/11] soc: samsung: exynos-chipid: make asv_init opt-in
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251031-gs101-chipid-v1-6-d78d1076b210@linaro.org>
References: <20251031-gs101-chipid-v1-0-d78d1076b210@linaro.org>
In-Reply-To: <20251031-gs101-chipid-v1-0-d78d1076b210@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761915362; l=2276;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=2b2RMRAbQHJoSplfNlNFCrm413eCNhV1Uu0eYavspbw=;
 b=Y7M8VEUe8Ma3wIFBHexvsVQYqz1qW9K3xn6HQU8oL0V54u5FhpPmhqkF0rW372bcl2eRdsAb/
 mahZ6Jb2R/0AW1hOGjVtZBKdJz6HTZeH+NKyzbFB+XoMLLo+kDS0/zg
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Current ASV handling is tightly coupled with a specific Product ID
(0xe5422000) - only one from the list of Product IDs defined in
the soc_ids[] array.

Since the implementation is highly specific, make te asv_init opt-in.

Note that the exynos850_chipid_data was intentionally filled with
.asv_init = true to not add any change in functionality, even if ASV
bails out early for these chips. We can follow up with a patch to
remove the ASV init for these chips, or better, to update them to use
the nvmem API that GS101 will use, as I suspect they reference OTP
controller registers too.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/soc/samsung/exynos-chipid.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
index 7b1951f28e8d4958ab941af91dab4b0183ceda5f..5678bc85c4d93547e446caade64a0b650d06a332 100644
--- a/drivers/soc/samsung/exynos-chipid.c
+++ b/drivers/soc/samsung/exynos-chipid.c
@@ -39,6 +39,7 @@ struct exynos_chipid_variant {
 	unsigned int rev_reg;		/* revision register offset */
 	unsigned int main_rev_shift;	/* main revision offset in rev_reg */
 	unsigned int sub_rev_shift;	/* sub revision offset in rev_reg */
+	bool asv_init;
 };
 
 static const struct exynos_soc_id {
@@ -163,9 +164,11 @@ static int exynos_chipid_probe(struct platform_device *pdev)
 	if (IS_ERR(soc_dev))
 		return PTR_ERR(soc_dev);
 
-	ret = exynos_asv_init(dev, exynos_chipid->regmap);
-	if (ret)
-		goto err;
+	if (data->asv_init) {
+		ret = exynos_asv_init(dev, exynos_chipid->regmap);
+		if (ret)
+			goto err;
+	}
 
 	platform_set_drvdata(pdev, soc_dev);
 
@@ -193,6 +196,7 @@ static const struct exynos_chipid_variant exynos4210_chipid_data = {
 	.rev_reg	= 0x0,
 	.main_rev_shift	= 4,
 	.sub_rev_shift	= 0,
+	.asv_init	= true,
 };
 
 static const struct exynos_chipid_variant exynos850_chipid_data = {
@@ -200,6 +204,7 @@ static const struct exynos_chipid_variant exynos850_chipid_data = {
 	.rev_reg	= 0x10,
 	.main_rev_shift	= 20,
 	.sub_rev_shift	= 16,
+	.asv_init	= true,
 };
 
 static const struct of_device_id exynos_chipid_of_device_ids[] = {

-- 
2.51.1.930.gacf6e81ea2-goog


