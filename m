Return-Path: <devicetree+bounces-210802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF98B3CDAA
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 19:01:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7F7A616B15D
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 17:01:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 256AF2D3735;
	Sat, 30 Aug 2025 17:01:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iUzq/5X9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11794275B12
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 17:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756573284; cv=none; b=e2amm71WbcCOHX+W2lP+pCqm3H/4g23PS++Qc59tf598jWB7Qx/LFTHs5LZa87u0ZSjzYp3FGJ6deiblfX4+Il0735zFyJ5iC/ieU6hR9SGIKQfr6hIPEdOpU2h0upklEnmYvttfGwusgwpBaGUhvRHP1j+Y70N2m4RhmgwPrl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756573284; c=relaxed/simple;
	bh=QqWeYHPVLq//RwXvGMYa4TqqaGs9IG7D/NPVlveQnRw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Aw6KSqZWDHNa1DUqEPs7vpvhd9ccKpB2dKTKcyvLmJwRlK3vh5U4xNvqsXkQx6/gPZUQfBUmp+bZAqQDetFpVx9RgE0TpoDTzmUmTM7wj0acDP4F1cnYPAXlgJjLXVbIGc/PauBAA+rzjkCxmeJrotXDC7c5KhHCx2YNcYtWc10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iUzq/5X9; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-61cbf01e472so543420a12.2
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 10:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756573279; x=1757178079; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=us4cNYtwID9TjD04hpr8jvahpWc5vnsHqsFH+7B5S9o=;
        b=iUzq/5X9hNih7iqFPuvguQ7PFD4kSeI5uFGlsl2iNAQIUJodJfZI4N2cHpQi6VG9Jb
         XR7LqETcJxY9wAQJXh7tYEkTSbqjaDutnMiIkv7obGlcDX2/8xb85TiI114ogCm6UiCp
         JIQO9XbW5BLXHiMFlGY/vsBWhL14Iow2IR3NO54JB8wrLMVYSRfSGicS+cqv3fv27g5J
         xte+yj64uz30XRpvXE9G0oe9bYyfNNYxBKeZPk82YlMasBIeoQjfgT++xVdSGFjfM8po
         lQb0TXG1jlPt076XP2kaX/kHB8vba5HZ/LuaGdyYXLSGx0u7/1o5otvTIYm0iByWYTtG
         k+5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756573279; x=1757178079;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=us4cNYtwID9TjD04hpr8jvahpWc5vnsHqsFH+7B5S9o=;
        b=srCdHPTwRSmI84NL77QBEkWpDZq2qlSuGfmbW4PMdnXLZ6k0fT9Xq0PHBMi6lD7pMS
         7gqC85z35x/CpztUHjOYbWgjvy0AnDucuQM76rWADD7jWR7O/K7GVXt++py42ysq6sb8
         LSyCpt1ruZILYiFlC8+wszBy/jYMMNpCHg5ZoQuEDBZAqy4Y5ZKjFIy6Bcak8dtW0gto
         veebIdEfDQuG/yuQCsS//NZHPmOMHCh/xMk8sRs492giAd1muLmTcRkNgKO/4CNg+hEp
         Mxc5h6ifejTiwj4x3HyCYxbyrgOFf+BBIS6OotQeNAImZkEvdvGhZQHeKCNzBNF9DX7e
         Q4Cg==
X-Forwarded-Encrypted: i=1; AJvYcCVrKPwSGXOWABldCufUKwg0hmhDb07DBT8Wti3DHJFUTDg1T6xmOCD7kR6NNvn4b5GX+mbqcCWjx9gs@vger.kernel.org
X-Gm-Message-State: AOJu0YwSWAwS7BzCWcGI2mvvHpyKLfZCnvambwWpIpdKI8pQxf7MjHuV
	mEonI99nQ4/S3dJ7HYcTNE6wJB8k75k7vaoALwb0c7zHhW6uV7UDldglnKWoDc/Tu4I=
X-Gm-Gg: ASbGncujS6inlg/AGN/xh3FHiwDUjua9lB9vt7P4jOapsu1zCECTzWvf2LYjlnGXhyl
	pj0W5L69PkzzeF3h28hlmgw1JvLwvF+f9HoRay71OH68Q0nJx6D+PhKW9LbJkZ8P6h9MpqKYZwh
	G3B3MGTi6e0fCrN6xP50G+i50oXFy7bYlaFqfpxbepb+Ly5dlBWNwV1cHUUvpez9sZtWIVP8pz4
	MQj9pS6n0w6I+lN15EllgdCrJcmsPU72wrhXMvjFGHibIl0d2jBADpZPIxNqXzszpOsY8w7Tmxe
	nYcfus7z83dqKoRbBzH2L3NX9ffDgiuTjnskweauuO6oUtiGrE/j9Y7+wkLIiG01APuSDkKSDSL
	be5FkkhSgKuuO2imbX5OpQUqJGVRt6TxN0BAGLhR2t7afKolGvg==
X-Google-Smtp-Source: AGHT+IEa1VI1o8sCudVEZfhZ3gaC0zyMofPPT2ZBfSOCrdhwJHioZOMNxGzq3r24F58nX/VQxYQy5w==
X-Received: by 2002:a17:907:7e99:b0:afe:af91:2e54 with SMTP id a640c23a62f3a-aff0f15c2c2mr290241666b.9.1756573279207;
        Sat, 30 Aug 2025 10:01:19 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aff12a6b404sm309038766b.88.2025.08.30.10.01.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 10:01:18 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sat, 30 Aug 2025 19:01:10 +0200
Subject: [PATCH 2/4] dt-bindings: mtd samsung-s3c2410: Drop S3C2410 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250830-s3c-cleanup-nand-v1-2-05b99ef990fe@linaro.org>
References: <20250830-s3c-cleanup-nand-v1-0-05b99ef990fe@linaro.org>
In-Reply-To: <20250830-s3c-cleanup-nand-v1-0-05b99ef990fe@linaro.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Russell King <linux@armlinux.org.uk>
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2133;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=QqWeYHPVLq//RwXvGMYa4TqqaGs9IG7D/NPVlveQnRw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBosy5Yy3SpNOt0HGF2AczXJ3AfabDf8t8/xXbJl
 wARVHKMzUqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaLMuWAAKCRDBN2bmhouD
 179DD/9+2t3OdNYd4i3brhoOrz4Kyz/N483Dm/aOqEzp3IwdOT6Jo+xN65Iw6AYjfqprAWKoy8Q
 4Wb0iynxRE7k+s0vA4+B+Oz7PB88lqEIrVPQyv8qRuRrUXV2tMUMB3Lyl93ky8xPOVoI36Dg8W8
 ATsAenaLvUrsH6Dt6xn1Ivx0Au5J3cnA420wk5GAK/Wtapt1rj+o0WjKL/15V9nIehpsY9qO5Hr
 ZG9w8rv/vZuNdlqrvv9JKvpqWniEcdj88JcjyzuxFkKSlTPrSUU/M4lLJpc0BY2nTJWpaXHh1XI
 GVxWW12/Mqeru3op0jgKXZW1ffB/36DS5koHwuQOkIx8vQ8FA7jc5e76pL8R7vFU2f29iqtyDsc
 2BmKuq/m391sk3V/C6GCUeP1LaFgiaFLsi5hJZ3ml49u4lnyXcBH5c+ZhjjlTJ6KNiD1XBStNcI
 exXQrh9LaigQgHWkI6kFbAwoU8tuDjcUzZAWrlSbV3JP/wGvDk5O4n4pTTNmrQxrQv3/hauBQ13
 PLdI7t355zMZna0djeTokra2SWNBuqEMRAx4fO8vYHNEogO9yyXMQ43u/Ax1nwFOqFPEnydUV8Z
 RDhoecH3Oc+LKFPgdCbAJZV8a3O7P1lFx8hFBUdvgwKAzhoyzdFv0SU4VdhyConflzyjHdFozOy
 hSPZD7UNMnmIdPw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Samsung S3C24xx family of SoCs was removed from the Linux kernel in the
commit 61b7f8920b17 ("ARM: s3c: remove all s3c24xx support"), in January
2023.  There are no in-kernel users of its compatibles.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/mtd/samsung-s3c2410.txt    | 56 ----------------------
 1 file changed, 56 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/samsung-s3c2410.txt b/Documentation/devicetree/bindings/mtd/samsung-s3c2410.txt
deleted file mode 100644
index 6354553506602d452acd02dbac48c854b8b59cbe..0000000000000000000000000000000000000000
--- a/Documentation/devicetree/bindings/mtd/samsung-s3c2410.txt
+++ /dev/null
@@ -1,56 +0,0 @@
-* Samsung S3C2410 and compatible NAND flash controller
-
-Required properties:
-- compatible : The possible values are:
-	"samsung,s3c2410-nand"
-	"samsung,s3c2412-nand"
-	"samsung,s3c2440-nand"
-- reg : register's location and length.
-- #address-cells, #size-cells : see nand-controller.yaml
-- clocks : phandle to the nand controller clock
-- clock-names : must contain "nand"
-
-Optional child nodes:
-Child nodes representing the available nand chips.
-
-Optional child properties:
-- nand-ecc-mode : see nand-controller.yaml
-- nand-on-flash-bbt : see nand-controller.yaml
-
-Each child device node may optionally contain a 'partitions' sub-node,
-which further contains sub-nodes describing the flash partition mapping.
-See mtd.yaml for more detail.
-
-Example:
-
-nand-controller@4e000000 {
-	compatible = "samsung,s3c2440-nand";
-	reg = <0x4e000000 0x40>;
-
-	#address-cells = <1>;
-        #size-cells = <0>;
-
-	clocks = <&clocks HCLK_NAND>;
-	clock-names = "nand";
-
-	nand {
-		nand-ecc-mode = "soft";
-		nand-on-flash-bbt;
-
-		partitions {
-			compatible = "fixed-partitions";
-			#address-cells = <1>;
-			#size-cells = <1>;
-
-			partition@0 {
-				label = "u-boot";
-				reg = <0 0x040000>;
-			};
-
-			partition@40000 {
-				label = "kernel";
-				reg = <0x040000 0x500000>;
-			};
-		};
-	};
-};

-- 
2.48.1


