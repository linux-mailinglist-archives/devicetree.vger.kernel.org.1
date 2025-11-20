Return-Path: <devicetree+bounces-240645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id ABBCAC73C1D
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 12:35:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C6EA84EDC73
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 11:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49DA73314A0;
	Thu, 20 Nov 2025 11:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j8twkoKf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC94D33031A
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 11:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763638186; cv=none; b=dwNuYPToKVr9WAFGeYN6Tjy5uQGlGkAZ7VlbEwvG7wNawoxT8c6KslTWBVccyAoDM0B2unqjnoHHPE2j4HzEoYzUci7kGSD/xXFuFHB+9yk4L7B+pFulOIYH/VjAPnjJSBEGIhZRFZ47KmYhESL2gXMS1CIY3CqpVUU1eKM8ZfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763638186; c=relaxed/simple;
	bh=QuLzD1mgISg4zkjQX+NNcW0jz68RwUFmOx017oxWLlg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Xlgw7CjEqxC4p1bEcRlH7gVA6+dae4flPEKnbto6t5mLJr2Fxf+5Wb/Rj/IYiJBQ8pNEHxySAZLg99AhpNaTHgkOWwLQ2w09IMesX2zsm0YZqQy8wbvPA1QsArGjqZe7s5X4lbSrXeKnUky+f73+61Hyg8iO1plv8WLp3xEURQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j8twkoKf; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42bb288c1bfso487323f8f.2
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 03:29:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763638182; x=1764242982; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vrfTebO8rNsGDrFrDajdUyVNoAVMli4DcnLnNa0zpcw=;
        b=j8twkoKfdnQ9GWW7GDaJldMC00UajzS5AivPA7Fc8gjZFpSoPpiKMOmo5dnSdxxRYL
         UGe41LbHENmdTNkvixXtX17gv064qCnWp/EDTzObvlYNkOya/cArlGDoQzNGksk1aw2l
         87nK/ZC8xwB+WrAiFTVpNIboV5Vyo95oX5/SMpcBtbJMg/idsGWavozjDto54GcgJp1U
         3MSZ77IndXUAhP+m3axtTuDJmUExIn1BWpIn7J2BOmsa7AjXjcYn4uNU9JhpczNZvdye
         z1x+12RWiO85PfIWVgCGzCghIyZInO2XQSyuIFMKHMD89nACfnLft9vcFCz04UcdeVoE
         NkOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763638182; x=1764242982;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vrfTebO8rNsGDrFrDajdUyVNoAVMli4DcnLnNa0zpcw=;
        b=H5hZ/opKZ61mLfgoQMZIRTJfhQIFCxnptj1YZG0rMrAoSbqL2hBbQkrb1DyJte0MWZ
         GP84rUS4nv0o4ChhQzR1PoPsNETQXQVOQunZFTA3j0MQvJRtyRS2H0RzlL+BpJGzosj+
         7JpyRZFuSQLrzJ5iGkufiArF5JEtDM6hJ+eXg3h1pPw/04YSDfgMmnAIg5XptbPhZ9r5
         JY7rc0SPFVlqnltKTLHyod2o1n17zClsOWYE4Rc2jyHo2SpkQGMZqE+t33HM8hMsrwnb
         CjYkCDHtRZEeq2xVqvL1xNhQUmu3Z4m+HA16aEj+CpbEd91/ljWEEuhS6hm8DxdaYdZh
         UJcw==
X-Forwarded-Encrypted: i=1; AJvYcCXm6HaFs3ft/HiQwjZ5Y/v8Tas9JxExSjsHa6AdCRVcRaiK0ChttpqelVSyxCewpccLQHT0ASzSast5@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+okmFe9Gi/yR7JqqGztW3TJMgvSDWIydV+x0WGiq923+p/8ny
	ascMTk7a1ECLjhMYIZM8DWPuFRG9IaBD+LIa2utAcJPvjiLjCezYBJoJCJSFYWa1kBUAZXD2jRm
	RjZeP6Y4=
X-Gm-Gg: ASbGncsl23NEkOpSSfQDTX5t+IRU36nporIRWZ3ekLd0Tz8I4j66j5mb1IHDQ/fwH8t
	ZcB6ZHFG1uYx0reG1c45dWTzzlRFjf1Nv+Z7YmVAk+gC95zDzAIfQBdy1WhnyGIJXUImrFu6EDm
	f8/WZoBn3stvTyWmLEtzgAMoHpsG+0AbcQARWie6+31lFzIOPrJzb8sqZdqORGm1CIxbFFpoxBE
	9jp3uHw361vt+Q8WqDr7z1Gt2f2w26dRd+ZpOkIHp5gKUASnn4up2VyTdo0bh9j0RqAIgqolMAP
	5gGAkvzwON9XZHgH1vrp6/cpKWUq9FSoIErKdq3p5sibmWnjq+i3r5w0QWArfaaoTX7q6ibI24G
	fLosWYm2TAVADeTOKslVyp+uHNIrbAjxhmwe3XDsM/3LNZX0tSCYHn/lRlG/uejqclTWN/92hjV
	siRRAzBkOw/fHCHz9XaLmfmI6ef1uAQAwfXEhypTc0nsyo8GxYC0oq3r9PgKUr5+4eGMasxh5bg
	VM3Zg==
X-Google-Smtp-Source: AGHT+IGMAZHNjJ7KaxZQW1CKSy0e9pKm4Sui3wq/A13ZWcUF9r4m0xVl2YKFgMjFczOXBPsIBVjfGg==
X-Received: by 2002:a5d:64e3:0:b0:429:c2fb:c268 with SMTP id ffacd0b85a97d-42cb9a7091cmr2496273f8f.56.1763638181851;
        Thu, 20 Nov 2025 03:29:41 -0800 (PST)
Received: from ta2.c.googlers.com (17.83.155.104.bc.googleusercontent.com. [104.155.83.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7f34fd1sm4961040f8f.11.2025.11.20.03.29.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 03:29:40 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Thu, 20 Nov 2025 11:29:37 +0000
Subject: [PATCH v3 3/6] soc: samsung: exynos-chipid: rename method
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251120-gs101-chipid-v3-3-1aeaa8b7fe35@linaro.org>
References: <20251120-gs101-chipid-v3-0-1aeaa8b7fe35@linaro.org>
In-Reply-To: <20251120-gs101-chipid-v3-0-1aeaa8b7fe35@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Srinivas Kandagatla <srini@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763638176; l=1404;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=QuLzD1mgISg4zkjQX+NNcW0jz68RwUFmOx017oxWLlg=;
 b=QwrG8SY+YQBiiH7MPcJkxfx1Dq3aLNOQbU0oxhLO628nA25GYuZ2PBNpZnlbdqR+mDmqspLbe
 gtSnFLhRo5TDgGu+KU8rF/8hHzrHdNmGF12KCR3TWXjovKn+lNDkDqn
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

s/product_id_to_soc_id/exynos_product_id_to_name.
Prepend exynos_ to avoid name space pollution. The method translates the
product id to a name, rename the method to make that clear. While
touching the code where it is called, add a blank line for readability
purposes.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/soc/samsung/exynos-chipid.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
index b9a30452ad21c326af35c06a341b28491cee6979..88d264ef1b8835e15f774ff5a31f5b3de20f74ea 100644
--- a/drivers/soc/samsung/exynos-chipid.c
+++ b/drivers/soc/samsung/exynos-chipid.c
@@ -71,7 +71,7 @@ static const struct exynos_soc_id {
 	{ "EXYNOSAUTOV920", 0x0A920000 },
 };
 
-static const char *product_id_to_soc_id(unsigned int product_id)
+static const char *exynos_product_id_to_name(unsigned int product_id)
 {
 	int i;
 
@@ -150,7 +150,8 @@ static int exynos_chipid_probe(struct platform_device *pdev)
 						soc_info.revision);
 	if (!soc_dev_attr->revision)
 		return -ENOMEM;
-	soc_dev_attr->soc_id = product_id_to_soc_id(soc_info.product_id);
+
+	soc_dev_attr->soc_id = exynos_product_id_to_name(soc_info.product_id);
 	if (!soc_dev_attr->soc_id)
 		return dev_err_probe(dev, -ENODEV, "Unknown SoC\n");
 

-- 
2.52.0.rc1.455.g30608eb744-goog


