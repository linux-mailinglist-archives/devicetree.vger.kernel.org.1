Return-Path: <devicetree+bounces-159964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A80A6D1F7
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 23:41:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 15BB716F640
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 22:41:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3AF71EA7F9;
	Sun, 23 Mar 2025 22:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CFuCW/qi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428E11EFF83
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 22:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742769591; cv=none; b=F1+NdOLEQ6whNefKov1FL7yJnSz3wFdmwe4P4NxveSDGx7HsY6ZkeR4mxcIcnP6BCFArKgy/lrgcXJ3z0pW6U1+45APhMlqTjipP+P0G1W3eYS/UzOHGVZ8d4L1/6iOqb5fLGw/0HQ5pO+z6J/4uS1dxnhiWhLLUa7tQgbrhTjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742769591; c=relaxed/simple;
	bh=wFMuIyuQV4OeONZ1CTvvoJlBLS9yPymppIm/9Rg9fR8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kKH2ZRcXk+OnYDX84N6n+B1UBQEg+iIzqMObr33PaNfxrqi+bVEsXOoHEMPJEqAozalSHPg3sbWANvZuMoNFBZ6/rTQJSqIiReow+kb3WDFAce9eDGQtndZgRwaizGwNoz1bzEOKIrQprzGcfoG93SqMhelgZq7xDEco8KzvZkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CFuCW/qi; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-ac41514a734so155215666b.2
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 15:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742769583; x=1743374383; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qB2B+UaRvhzRZZ5Wx1Ln6+NaDhGt6Oe4sLGxlVN20j8=;
        b=CFuCW/qire8aywCE8R2nF9KA3js6JnqRjYn0LxXqEbLMqqh7gljrc1Op+LWpPpz45+
         nzeHo60ZbYx7hfxaW6PPbDGGL+2YfYb/J0n51c9SPiMhge0z7JKYD+WjSpwdGeJYGTNa
         rNQsoK5zJjgWkTUgINrZyBDXgUIE+XUVFIzMPG011L5tTLUEmtg31J6QxPCn72ykhYec
         p/vqLmTB/ZJP4g1WqtgCc3OzI3MfhfTPQeEj+4UcgigbR5Sz3iOi6pEu96uT6XI8NsV5
         lGZjddAI4UHYxZJYjL3YlbXMiLNNqSdDaE9XH1YU3iE/p/2C2Kl2Qc4SOzEvzMKH5+H9
         LX6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742769583; x=1743374383;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qB2B+UaRvhzRZZ5Wx1Ln6+NaDhGt6Oe4sLGxlVN20j8=;
        b=M20IewhxMgPeEbUZa/iRCWBpLqggxZQQlGu/3VWpkyyYq43hCxQzp2rdNSUu77xx9E
         ZxZvO1ftomU9biv+Rtn3lut8aMVBq6aTlSGWXXjJ3X4A0d91WpcVwVIUFnId759Ub2eR
         +kW3p95mOIM0oyxhts0yVMFNXTWjUAaEq+PzVf+qWnRnGRnJZfsJZYr/FNUH5sllyXSp
         vIabdxQqjnnLTFMXwJUepFGo5b45nuBwd+8BQJvso9xOQgknIUcW7t6MIXwfAU2IRz4N
         amyspeH0PEB/Ss/upy4pRtlu8aT+PgxSOUUzfQKEXuYqoC3pXqL/M9BPKSJrv1jkwr87
         eNpA==
X-Forwarded-Encrypted: i=1; AJvYcCUSeYsVA9M+K1DY2kzZo+38n6kY41LeMkYNtUOT5IY+QdrPoJObYJSFIwrQIBDALXbKFCybgvSre/eu@vger.kernel.org
X-Gm-Message-State: AOJu0YzKKNUv9FtTLonPBZDtiLejtV92/GzR27ynEegULkcz7eL3IK3v
	MD7yAc62heTDaVgV/JWAhjF7kXjQPvMjDC0n5o29VDE1SMZrPTkZ+cAijgWN21w=
X-Gm-Gg: ASbGncsWYpNCRZzGsFfeRPhBzxaZ02WBuuu0ZU9XtBovwBHBS09DD9DWb/SXF0PLzaq
	Ua8M69ZgQTeU9Rn+xveZv1bdiZyLZ/fAK2VMXrRtLc2oUAC4Xe0YFCn6HScVYk1uvipbgSzErGt
	rDvdoijQ9I99+rQkBmoRgB6XIJWIIDXffWkLy0IRlZohJplh3krjDAe0iLqp9Ke7gLLExmGKXmV
	cvzAMZE8qdYz5OGBd3k+54fGO7F81b5fO4oCTiZYR9V2KpcxFUJU2vGeRpQogjh3MU4IolU4CpR
	w2rWt8UEiU0FlqZ4GzQ6bA+2rieAIzoH04qrl/CFZQxYE1NslV42/wYbceyJ0cdmJqf1Sc2d47n
	nQkdOI/zlSMIWRauMb3uulkC6OjRS
X-Google-Smtp-Source: AGHT+IEqdMFkeJB9L19k5i2T9SHkqV7HBIih5q+Sk1+mGJp+qYtrcbGq+req37UQlXtoOfZvy9bw1w==
X-Received: by 2002:a17:907:da0c:b0:ac3:f683:c842 with SMTP id a640c23a62f3a-ac3f683c845mr1099102666b.42.1742769582647;
        Sun, 23 Mar 2025 15:39:42 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3ef86e44dsm559686666b.31.2025.03.23.15.39.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Mar 2025 15:39:41 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sun, 23 Mar 2025 22:39:48 +0000
Subject: [PATCH 32/34] rtc: s5m: replace regmap_update_bits with
 regmap_clear/set_bits
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250323-s2mpg10-v1-32-d08943702707@linaro.org>
References: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
In-Reply-To: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

The regmap_clear_bits() and regmap_set_bits() helper macros state the
intention a bit more obviously.

Use those.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/rtc/rtc-s5m.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/rtc/rtc-s5m.c b/drivers/rtc/rtc-s5m.c
index e8e442c503064eb4e570af5bf7dcff6bfa7f4656..fb65a8e439d72d9070751c00f5826a403ac0b416 100644
--- a/drivers/rtc/rtc-s5m.c
+++ b/drivers/rtc/rtc-s5m.c
@@ -338,8 +338,8 @@ static int s5m8767_rtc_set_alarm_reg(struct s5m_rtc_info *info)
 
 	/* On S2MPS13 the AUDR is not auto-cleared */
 	if (info->device_type == S2MPS13X)
-		regmap_update_bits(info->regmap, info->regs->udr_update,
-				   S2MPS13_RTC_AUDR_MASK, 0);
+		regmap_clear_bits(info->regmap, info->regs->udr_update,
+				  S2MPS13_RTC_AUDR_MASK);
 
 	return ret;
 }
@@ -351,10 +351,8 @@ static int s5m_rtc_read_time(struct device *dev, struct rtc_time *tm)
 	int ret;
 
 	if (info->regs->read_time_udr_mask) {
-		ret = regmap_update_bits(info->regmap,
-				info->regs->udr_update,
-				info->regs->read_time_udr_mask,
-				info->regs->read_time_udr_mask);
+		ret = regmap_set_bits(info->regmap, info->regs->udr_update,
+				      info->regs->read_time_udr_mask);
 		if (ret) {
 			dev_err(dev,
 				"Failed to prepare registers for time reading: %d\n",

-- 
2.49.0.395.g12beb8f557-goog


