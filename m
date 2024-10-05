Return-Path: <devicetree+bounces-108049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB2B9915FA
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2024 12:31:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 70B021C21A17
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2024 10:31:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6169214C5BE;
	Sat,  5 Oct 2024 10:31:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XKnMFfsi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AADE51465BD
	for <devicetree@vger.kernel.org>; Sat,  5 Oct 2024 10:31:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728124275; cv=none; b=UemRpN6q54mGSDCUaEuiMxPJ98RFzgcJek5W6OGvs2HMeTApB6idfBFpv7z/O4gp65QZrI6iqX5hzPslemPpX7deoL/+Bc6C2nVVBYc/fS7MuQna25nDbySr7zkA+uuYXPzSS3QKj9SBBnCrrzj/eEj4ybqQ0e5cVkUsFN4fFz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728124275; c=relaxed/simple;
	bh=KuJYhS6BLwFHq2M3BsUApExs70W98G5/TG0tISRMP7Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=B/hp5vft+tTlrPPwaz/USdQ3XvkBMuYgw97tmCUdLo4CYlxO0WJAqoEpzHeZyD9zvwsFwHDzBmOQ93tlNd9PdIdHwGSyreF5N/uRBwbl52wUw+nkpM7ItVGTneNROLAqDLwSwuNZpDDJX7MLaCnEDQn/ytXimRI7nq/T5wSlIWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XKnMFfsi; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-42f56ad2afaso37189325e9.1
        for <devicetree@vger.kernel.org>; Sat, 05 Oct 2024 03:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728124272; x=1728729072; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wDWnOefZjmiIEjMknhotah0eI13dQMdxoD4kz7zvhSU=;
        b=XKnMFfsiTHJjgIdseT6Kn5dvPFbvqggbHyJftH7ZvxhXGplPDShhe+XHWLjnnyYxyz
         IZmMwHvssoiJLsrlI5/sviWLLrXUJwUX4FNbAMVxxQcd8Sq35HDqStZ73j2+LelQJDQM
         LavjZP+vjwimN+JJXvkrQmVMBEcIgNjA75IP1S98azEfdBPtZTYN1BaimRgj6rySbNYW
         wlo0pH1LyAfndEZkXCpU7AJlwRw0Vlp9rUykGTy6KWBBjuMpMCi9D6rcSonvAs/IkHxD
         8zGdwjQOU0sMGnsRQq3qWrG/adZsWYXRYzyHeIy3GMRAdPSgPdiURTgZllYZDFGxqSsH
         QhGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728124272; x=1728729072;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wDWnOefZjmiIEjMknhotah0eI13dQMdxoD4kz7zvhSU=;
        b=W2mWxjImk47VzRwE2ZS+H9emp0/I41CKzEmn4HwUgVCMr4jGW8CxSKTo/GBL075GLW
         cnWPN4Ihxn+f3f0lEkOmImXdLpo9uIxoTGNwVh2ZF67Y13bafnmCXvBd6cWI+GfVIard
         O8XPGJCjiieTi/Cj+n5MzoIDxlWiH/aOuM8knV5GoVhDKueJgMHLg0xaD4dQkyPLwV31
         7TNjTSjQME5d5Uyo5Xsc0EpaPms1eymLPrD/vRG+i7CfSCMbk7dwIHAp6K9gsOka6yFy
         b3rQAEr/+I3F6D6c9i0hwvJPr6akfwVyGUk7urL1ezoJtgTByqEMBXOdOdP82Xw+5jfr
         dh/g==
X-Forwarded-Encrypted: i=1; AJvYcCU0HpTNHqpAZQoXYqTsDMTncO7SOmhFHyyIbQpMFKR2thLEemGwUPGUN4E+CYTZRN5nWKGqEbbOl/Jz@vger.kernel.org
X-Gm-Message-State: AOJu0YyuiS73tTTDKKAqT89fDgAuxh4fZ4JQ+/bX5YFDFyQyurg0lmuA
	8j64qvXncNFm7Pl4HZpYrmb1Rg7xjJgx3ekri9K1WUwHxcsvQ5DPXS8c6uRiHLo=
X-Google-Smtp-Source: AGHT+IFTJaGLuVeiz/URrKiFMl/ObSaOX7rTRCjs+ik5O7L2vVG+w8UUYNMwtTMYka30+t859f4IYw==
X-Received: by 2002:a05:600c:293:b0:42c:b802:47bc with SMTP id 5b1f17b1804b1-42f8db3e896mr4351935e9.34.1728124272164;
        Sat, 05 Oct 2024 03:31:12 -0700 (PDT)
Received: from [127.0.0.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a992e7856bfsm116315566b.138.2024.10.05.03.31.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Oct 2024 03:31:11 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Sat, 05 Oct 2024 11:31:05 +0100
Subject: [PATCH v5 3/4] media: ov08x40: Rename ext_clk to xvclk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241005-b4-master-24-11-25-ov08x40-v5-3-5f1eb2e11036@linaro.org>
References: <20241005-b4-master-24-11-25-ov08x40-v5-0-5f1eb2e11036@linaro.org>
In-Reply-To: <20241005-b4-master-24-11-25-ov08x40-v5-0-5f1eb2e11036@linaro.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Jason Chen <jason.z.chen@intel.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sergey Senozhatsky <senozhatsky@chromium.org>, 
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1588;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=KuJYhS6BLwFHq2M3BsUApExs70W98G5/TG0tISRMP7Q=;
 b=owEBbQKS/ZANAwAIASJxO7Ohjcg6AcsmYgBnARVp5Gj1nry9lNTa8Pb3pZfveRm/Y1XwWca4P
 l80hK1hq7+JAjMEAAEIAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCZwEVaQAKCRAicTuzoY3I
 OhsREACsz83KNPTLwh6GOaVyVHVFSyU+OW6Ws4BItgxBfGhIxAygKNKYlFt3ZakuK90k9s6f82V
 co152IJh6OfHhgGnAxcBA01TU+IrYnC2b4eUkLryXSq+jk/XRZdbWI2xsWTIJBNm2gUcbTjQtiZ
 rjX0a/GfjD0vv+TUZyX/JrnH13oO31GesrqdLtaBSh5dbHl2yudou3//+rqGil1xL8tMbhsMKY5
 8jpoJI6MmQiGYm98UIn36eBeBE6lBnPF6J80UVfBs0ce96Zrg8ZWmhM1w86XRKKZYJwThgKUXFN
 Khl8ifOzXpBirKsMCrJxNVJS0uh/cKkgjRVF/5uM5+XXV08m07G32apN+xvCxMAK67LAoFCuxSA
 8W9X394by5pTS0n1Ty82AqI4U+xKHrhp4H0xkaL1LilkPuTulq2WQsz906ziUmoXTA8V4C60Jf2
 cngUSoN3oVDh6tVx7v390/7LYACheVZgV+gx0mMsjVYGf61WLRBPs+tc+/xYo7gqvqRSfzxFzWg
 Ifc0vURWgRuHdtYQP3esDXcobsI1v6qNd5GE+y1MLV0b036exW0TuzvtW3xZkUWkEsX+2n3Uw2n
 PQqQUdMLO5Mh7nSwZxseZI+goV3+KeaP8dGBuzaiYyYxyOOrtzhNM4dlMrLCZiPY1PEg2HiQYOu
 uzotZ/poXcPbEUA==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A

The data-sheet and documentation for this part uses the name xvclk not
ext_clk for the input reference clock. Rename the variables and defines in
this driver to align with the data-sheet name.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/i2c/ov08x40.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/media/i2c/ov08x40.c b/drivers/media/i2c/ov08x40.c
index be25e45175b1322145dca428e845242d8fea2698..3ab8b51df157af78fcccc1aaef73aedb2ae759c9 100644
--- a/drivers/media/i2c/ov08x40.c
+++ b/drivers/media/i2c/ov08x40.c
@@ -1215,7 +1215,7 @@ static const char * const ov08x40_test_pattern_menu[] = {
 /* Configurations for supported link frequencies */
 #define OV08X40_LINK_FREQ_400MHZ	400000000ULL
 #define OV08X40_SCLK_96MHZ		96000000ULL
-#define OV08X40_EXT_CLK			19200000
+#define OV08X40_XVCLK			19200000
 #define OV08X40_DATA_LANES		4
 
 /*
@@ -2081,21 +2081,21 @@ static int ov08x40_check_hwcfg(struct device *dev)
 	struct fwnode_handle *fwnode = dev_fwnode(dev);
 	unsigned int i, j;
 	int ret;
-	u32 ext_clk;
+	u32 xvclk_rate;
 
 	if (!fwnode)
 		return -ENXIO;
 
 	ret = fwnode_property_read_u32(dev_fwnode(dev), "clock-frequency",
-				       &ext_clk);
+				       &xvclk_rate);
 	if (ret) {
 		dev_err(dev, "can't get clock frequency");
 		return ret;
 	}
 
-	if (ext_clk != OV08X40_EXT_CLK) {
+	if (xvclk_rate != OV08X40_XVCLK) {
 		dev_err(dev, "external clock %d is not supported",
-			ext_clk);
+			xvclk_rate);
 		return -EINVAL;
 	}
 

-- 
2.46.2


