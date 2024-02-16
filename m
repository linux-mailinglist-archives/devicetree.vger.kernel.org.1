Return-Path: <devicetree+bounces-42631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B072857EA1
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 15:06:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D241B288E6D
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 14:06:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D798212E1D3;
	Fri, 16 Feb 2024 14:05:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aZklj67X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F21D12DD91
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 14:05:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708092304; cv=none; b=JCKTQ1YdUYdOvbhxo3pFCb5BDkpto/Mqrs4y/w+rcdhvEdOQwpFLZdGY9tX6zKRkLc2LZEL8pTBg8fIUYFNPKBw/qq+BbP0Zfd/t4rA2h00KC7Pzi9SISLN49GFIcvxM0v045AcOoFs71fN3C3h8WR7SHksILmtXy2UzaGewfW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708092304; c=relaxed/simple;
	bh=MPIoxg6ZsE8V3IB/f8KQxlfXB8BNlui5VDNVbrKXF7s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=K/9z4eKO47qYhDZpxRiJj8N807WQK4G0fuSjxAsXhu5JZt4z0w2Sz35F9l6MAFu96cESjm+phIRcZI72cMu0lCIgIze1OriLNMo++VC9IOxUdwqNf9Y97nX7KA5MbPxVw8eJfbzK3CmxRD04h1VlHqBVJQlV2cemz8Y8XgoIrMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aZklj67X; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2d11d17dddeso10768581fa.3
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 06:05:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708092300; x=1708697100; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RbGJP+YKDixbbzCcRIYDKINkev1dPGC8gZdZqgvk7Rg=;
        b=aZklj67XlzUu9g92nur5d4DPOd/WzpBFN6C1AUQeAbtN1WY3bXM6HReuux7gWIWEeS
         AP+KIafQcTm7irScqyXCklcRacsEQnHaRu9PJ0evxxmBeppGnP9OfbsJs78Hl5k6cG0W
         YQb6ut3P0f+YaToGKhqgBluSbms/rwQKCOu38V5CYNXjf2EC1COecqeNnnvGGTbHw5EY
         C04zQ4/BvnA6ow/7Ist04YXSEb6wq4Hg+23aiT23zBzAfymBhbW0TL4DK9wTaefCO02F
         683LkqbKSnFMa222NvINVYDjnzQO2FfcoAZpTV8R+pT8G9yTyNpnObeT6FgiqJ2CbXno
         aL0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708092300; x=1708697100;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RbGJP+YKDixbbzCcRIYDKINkev1dPGC8gZdZqgvk7Rg=;
        b=DgbbGswQlQqFDYPEvlCd7d8g5BEaYsriV2rWVcBNQfbb61b9TV6w8k1J4+qu4IfICG
         oRqUjGvJ/atWPzbitk/cJpXsyRIxCH9cdOIETFFsX5TYWjHCZwvVfp2O5vH3a1z5fTcP
         PRLQZxwCMdZQnhnpvOpHgBRTbo7SxeAmAzCg90bBqSwG7zMYZthJgHHDAHpG8cks6/7O
         6nj2FzNKmsgbC/Tp0pIX0u35dkq3Cedwc8u5qZhWYXBGr3631eJMwjhZHyPlYjVA0CON
         /5gcAVy4uNQ8+SlGWbwH4MJ02QBMdP0FyAHKoeJuxGVtHta6r0D7dsLWyMK75moxEP65
         VVRg==
X-Forwarded-Encrypted: i=1; AJvYcCXIl9nD0RZxJveT1zQJIP8jnAKxB4In5Ty3z+1Kxyd8iI1r1UW0hhaZQST0YrMSbx8fnr1kPghdERjIqK63O6aH1043EVUk3Rp5Sg==
X-Gm-Message-State: AOJu0Yy0HB0fy7DNuGqBMFieW0m4yUEHYgChl3EmdlofdoQK+7ohB5mv
	2Wit5ru3sJxsvILSzmrfk6RXNJ6FpakVf409AK/8f1MNCZ1nAhyq/QPQVVFyBNs=
X-Google-Smtp-Source: AGHT+IHLbf9UoTbHMIz+MPqAto7rRkZzzSQiT2w1FzpGtfCZRcoC2pHvx/TYWav/ViOE3PNAXvqMGA==
X-Received: by 2002:a05:651c:23c:b0:2d0:e5d8:d33d with SMTP id z28-20020a05651c023c00b002d0e5d8d33dmr3539136ljn.30.1708092300695;
        Fri, 16 Feb 2024 06:05:00 -0800 (PST)
Received: from ta2.c.googlers.com.com (105.168.195.35.bc.googleusercontent.com. [35.195.168.105])
        by smtp.gmail.com with ESMTPSA id az5-20020a05600c600500b0040e4733aecbsm2516628wmb.15.2024.02.16.06.04.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 06:05:00 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	conor+dt@kernel.org
Cc: alim.akhtar@samsung.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	broonie@kernel.org,
	andi.shyti@kernel.org,
	semen.protsenko@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	andre.draszik@linaro.org,
	peter.griffin@linaro.org,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v2 6/7] ARM: dts: samsung: exynosautov9: specify the SPI FIFO depth
Date: Fri, 16 Feb 2024 14:04:48 +0000
Message-ID: <20240216140449.2564625-7-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
In-Reply-To: <20240216140449.2564625-1-tudor.ambarus@linaro.org>
References: <20240216140449.2564625-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Up to now the SPI alias was used as an index into an array defined in
the SPI driver to determine the SPI FIFO depth. Drop the dependency on
the SPI alias and specify the SPI FIFO depth directly into the SPI node.

There are no SPI aliases defined, thus the FIFO depth was determined by
matching the FIFO depth of the I2C node of the same USI parent.
No functional change expected.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/exynosautov9.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
index c871a2f49fda..0248329da49a 100644
--- a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
@@ -435,6 +435,7 @@ spi_0: spi@10300000 {
 				num-cs = <1>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				fifo-depth = <256>;
 				status = "disabled";
 			};
 
@@ -526,6 +527,7 @@ spi_1: spi@10320000 {
 				num-cs = <1>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				fifo-depth = <256>;
 				status = "disabled";
 			};
 
@@ -617,6 +619,7 @@ spi_2: spi@10340000 {
 				num-cs = <1>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				fifo-depth = <64>;
 				status = "disabled";
 			};
 
@@ -708,6 +711,7 @@ spi_3: spi@10360000 {
 				num-cs = <1>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				fifo-depth = <64>;
 				status = "disabled";
 			};
 
@@ -799,6 +803,7 @@ spi_4: spi@10380000 {
 				num-cs = <1>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				fifo-depth = <64>;
 				status = "disabled";
 			};
 
@@ -890,6 +895,7 @@ spi_5: spi@103a0000 {
 				num-cs = <1>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				fifo-depth = <64>;
 				status = "disabled";
 			};
 
@@ -981,6 +987,7 @@ spi_6: spi@10900000 {
 				num-cs = <1>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				fifo-depth = <256>;
 				status = "disabled";
 			};
 
@@ -1072,6 +1079,7 @@ spi_7: spi@10920000 {
 				num-cs = <1>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				fifo-depth = <64>;
 				status = "disabled";
 			};
 
@@ -1163,6 +1171,7 @@ spi_8: spi@10940000 {
 				num-cs = <1>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				fifo-depth = <64>;
 				status = "disabled";
 			};
 
@@ -1254,6 +1263,7 @@ spi_9: spi@10960000 {
 				num-cs = <1>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				fifo-depth = <64>;
 				status = "disabled";
 			};
 
@@ -1345,6 +1355,7 @@ spi_10: spi@10980000 {
 				num-cs = <1>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				fifo-depth = <64>;
 				status = "disabled";
 			};
 
@@ -1434,6 +1445,7 @@ spi_11: spi@109a0000 {
 				num-cs = <1>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+				fifo-depth = <64>;
 				status = "disabled";
 			};
 
-- 
2.44.0.rc0.258.g7320e95886-goog


