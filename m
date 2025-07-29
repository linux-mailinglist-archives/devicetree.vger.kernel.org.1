Return-Path: <devicetree+bounces-200448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 279C6B14BA8
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 11:52:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0697C1AA4690
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 09:52:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 359AC288CBE;
	Tue, 29 Jul 2025 09:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="xbdUqbIA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 938AD28934E
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 09:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753782685; cv=none; b=GbROv1zi09v59dZB7dBcYzzqkD6mLITAK7vuFaQacs+f29ETMo9GVN3IzTXVGH/Gm0jangzyQCLlJBcb6NbzgO1UiX8jVF7o5P3YMhliI213tIwoYeoQgWtZWH+D/CjzRqfConLiqNVWuIY0/rTPqtwtRfPJy9n3f2ShUjwlAZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753782685; c=relaxed/simple;
	bh=ZJleRO/tmglmwyTY49Sq9b3ot5hWCGqXz2SxgsKeHM0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=N7E78/yqZKhaRYbBxtkz8VauPxYuW4QhxThKMK2z37Jg4oT+bvYONar9UKRBz74ONiAaEaW4tsRlwlv8uz+fUmQR3OzFGBxd5zNivtZE7vn5GmsZs1sJww3SRedg1wErdov3jOlRj2FAZJ+VaglpFT/OpQOgZR4fmksfl/Spgwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=xbdUqbIA; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-748d982e92cso3447229b3a.1
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 02:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1753782683; x=1754387483; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=raxziZYeCxjaEOuosKAOJnUNwj1BxHTM8ZCk+kqmL9w=;
        b=xbdUqbIAaQbF13zZPVNCJmcAok0d0UpeKNKK74+70f6F/cDUhZ15iVzht62vg5XNBG
         xtE4Sw2e5DltFg/GdIITkyCBC7+vjgDoLYZNqNEZ+VBFDA4F9jLT9aKFLGoLStiO7idw
         j1ts+3hbPjKTOPuGt+et0Kx12r3tELo9to0yVnKQoVFydOlszGIyXMCWAr+nJ1Yc1zQ1
         NDVMGrXgpCL9tWV7hQO4akrorSyNqEp3Nyct9Vx7Cn7q6lvNdDcHlxKype4jM2A4VQET
         nQwNK+QwkXjSLF3qmfSalV2qGQqNSWH50NvXyZcZsBo77aCV1HuPtU9pUqfa0iGzIRot
         SpCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753782683; x=1754387483;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=raxziZYeCxjaEOuosKAOJnUNwj1BxHTM8ZCk+kqmL9w=;
        b=SW+3bCzm3QPRg6ReWrLIprX2ZHh21pXuXbl3vKg8BG+g/PG8ffbjR39eVM+RpYbUO3
         nIsI98p4/xiOjIgvEzB7PTxvPcwbzIBNihyjHwp1iNpt+FMb1xBVctoZ9F0Hax4D1RSS
         9tyhP0TW58tz2Pla1Nvl7y/8C9fur7wIuwz6j1q53yMK4mVsMtnRhJKExaciIGdndBQ9
         M1ogZGcky6NEFnjy51mP42RNAmB9Tte89zW0UX6i94rbLIEh3lDc5zE6iIlsDkFYuKeJ
         WItT4BuCtKbpPLIh/BdSm9hrgZQtGuCgLLFNivON/JgluWl7xasRNrSgF6hiOBld1HPq
         CcGA==
X-Forwarded-Encrypted: i=1; AJvYcCUUTOC5NxsN5+FA05nyB33A3aRv6tNyh9d47TCbh0GOyzhBSBl23ul+l8C7ewAiYl+AwYYvsGu5IU9G@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8ILuOH/hjiZJcCtFcvJqns1andbAeqQcm7L3E4Ch0M3YqIwGa
	h/22gWPOK4ALWok8AyJl5fByjP/FrIN3og7NCvNyTm2ra6b8o7zeFO4YeiuNjklK4w==
X-Gm-Gg: ASbGncu4r1gDNT1tvUjnTCiWClYo0u4LKG9TVMSaPCNPwCOc7J8U87XdChfoSbh0bsj
	p1eI4KiGupK5PrFldYJ7mrgcUy+8gOcy6RT4ZOVrwllUuF5GR9gEjSt6qDzNDScjLpY+notif5j
	U8EKYcvlGSSeEQOq2qQSrycpaDFLBer1N5SPeMIyvlEp+B1R2U8239kbpCoNZOvBMDaU+nPQ5z/
	1ot+c0vY4boiemw3zms80ErHGPbs4LPd+pc/GVviqauWZ6Jf15n1jcktTljDjpYwpWoX3X/RNtg
	hNbAmz3C3rnmoEFgaduNOKXfDdiZwysFXBWjKpkanZZwGAxHeYRvEeelR6aSZNzaVE5TiCM3qQY
	h6rxvdUIDtrQbe27D5Yn5zfjxbZ1kZHg=
X-Google-Smtp-Source: AGHT+IE2RNQrcZCxXmokA9dyXQMFoBXEA0vRnDeOHhDng0bNoTGMD2776/VKoUU8/Hl6rSF49pdk3g==
X-Received: by 2002:a05:6a00:1305:b0:748:fb7c:bbe0 with SMTP id d2e1a72fcca58-7633965f00emr22424727b3a.24.1753782682881;
        Tue, 29 Jul 2025 02:51:22 -0700 (PDT)
Received: from [192.168.1.6] ([2401:4900:8899:25fe:4fe5:6353:8b2b:942c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7640b4c8762sm7614498b3a.117.2025.07.29.02.51.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jul 2025 02:51:22 -0700 (PDT)
From: Ayush Singh <ayush@beagleboard.org>
Date: Tue, 29 Jul 2025 15:21:02 +0530
Subject: [PATCH 3/4] spi: Handle spi bus extension
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250729-spi-bus-extension-v1-3-b20c73f2161a@beagleboard.org>
References: <20250729-spi-bus-extension-v1-0-b20c73f2161a@beagleboard.org>
In-Reply-To: <20250729-spi-bus-extension-v1-0-b20c73f2161a@beagleboard.org>
To: Mark Brown <broonie@kernel.org>, herve.codina@bootlin.com, 
 luca.ceresoli@bootlin.com, conor+dt@kernel.org, 
 Jason Kridner <jkridner@beagleboard.org>, 
 Deepak Khatri <lorforlinux@beagleboard.org>, Dhruva Gole <d-gole@ti.com>, 
 Robert Nelson <robertcnelson@beagleboard.org>, Andrew Davis <afd@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Ayush Singh <ayush@beagleboard.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3211; i=ayush@beagleboard.org;
 h=from:subject:message-id; bh=ZJleRO/tmglmwyTY49Sq9b3ot5hWCGqXz2SxgsKeHM0=;
 b=owEBbQKS/ZANAwAKAQXO9ceJ5Vp0AcsmYgBoiJmHEyTSX0+657ez+U7jHg14AHd1oQdKmCcKJ
 2DJCbkRHsKJAjMEAAEKAB0WIQTfzBMe8k8tZW+lBNYFzvXHieVadAUCaIiZhwAKCRAFzvXHieVa
 dL2JD/9w08i6TbVyoTBn8FP0rTkWX1zJK1RaCp4Aj7s+B5GLVwvaaJ+SiTvw6dlA7kycMTwk2BZ
 Eq0tAmrseYxoEbhu8agaodyi90eNjmDL0kto+R14YpH2biXEgK79z7GlSaDbyp4jL+8y9G0DMBv
 5rwpfo0UXUilXMTzJi9tgDsYsl8cYZKdWHPCq/v3qiJkYfTNVkVWEr6CUeaiaoLrykxNyw9vhvQ
 AwPdyRbuc/M47eVgKf8Yl1qzTAhTsynZy/vkyacpFsaOcPFre8lmyjUme0DozfQcCvaNs+xQ02e
 mE/jyyS/VtQ8onzYkFjRP7YdQBxjJdLhk6EKra1bQDWtA6c3wFAakuHZzaPY5FEOBdAQukON2j4
 2Me4XZguAoyPsJqiZMFFVdDQI9kYltaWawOYAI7w75ONzc0g9fcvfvX057IKVsWpBCYEkPFp+Vw
 jX6jDWL2qgnYlXo1jlzVJb1t+qa1CYjDaniF/doeWThz7rCsOTbHnFH9ujUM0oj38b/LIdBLOfA
 y70TW3DeobvIWUcjVkM8H++d9MqEM+XVB77emED1Y/ze74iD6J7pTNwrekAKjFiZ4zI7yV09qkJ
 2J3wP11fGNm0Rqfot3wMvx+xT+R7REoU3ozXNRDM9S+uDhn8VAeektMTklQkOppxTt51+NCZ3aM
 KccXA+vx7DnidJg==
X-Developer-Key: i=ayush@beagleboard.org; a=openpgp;
 fpr=DFCC131EF24F2D656FA504D605CEF5C789E55A74

spi bus extensions were introduced to decouple spi busses when they are
wired to connectors. Combined with devicetree overlays, they introduce
an additional level of indirection, which is needed to decouple the
overlay (describing the hardware available on addon baord) and the base
tree (describing resources provided to the addon board).

For instance, the following devicetree fragment, available once
overlays are applied, is legit:

```
spi1: spi@abcd0000 {
    compatible = "xyz,spi-ctrl";
    spi-bus-extension@0 {
        reg = <0>;
        spi-bus = <&spi-ctrl>;
    };
    ...
};

connector {
    spi-ctrl {
        spi-parent = <&spi1>;
        #address-cells = <1>;
        #size-cells = <0>;

        spi-bus-extension@0 {
            reg = <0>;
            spi-bus = <&spi-other-connector>;
        };

        device@1 {
            compatible = "xyz,foo";
            reg = <1>;
        };
    };

    devices {
        other-connector {
            spi-at-other-connector {
                spi-parent = <&spi-ctrl>;
                #address-cells = <1>;
                #size-cells = <0>;

                device@2 {
                   compatible = "xyz,bar";
                   reg = <2>;
                };
            };
        };
    };
};
```

Current processing done when a spi adapter is registered registers
spi clients described at the adapter node level.

With spi bus extensions, the process needs to look also at
extensions to register devices described in those extensions and so
connected to the adapter.

Extend of_spi_register_children() to look recursively at those
spi bus extensions.

Signed-off-by: Ayush Singh <ayush@beagleboard.org>
---
 drivers/spi/spi.c | 27 ++++++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index ea271e37c72d3dc099c5147ec404050ee0bbf046..015f86c6f3228a8746dc517112d466051b50e3db 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -2528,9 +2528,17 @@ static void of_register_spi_children(struct spi_controller *ctlr,
 				     struct device_node *node)
 {
 	struct spi_device *spi;
-	struct device_node *nc;
+	struct device_node *nc, *extension;
 
+	/*
+	 * Register device directly described in this bus node before looking
+	 * at extensions.
+	 */
 	for_each_available_child_of_node(node, nc) {
+		/* Filter out extension node */
+		if (of_node_name_eq(nc, "spi-bus-extension"))
+			continue;
+
 		if (of_node_test_and_set_flag(nc, OF_POPULATED))
 			continue;
 
@@ -2541,6 +2549,23 @@ static void of_register_spi_children(struct spi_controller *ctlr,
 			of_node_clear_flag(nc, OF_POPULATED);
 		}
 	}
+
+	/* Look at extensions */
+	for_each_available_child_of_node(node, nc) {
+		if (!of_node_name_eq(nc, "spi-bus-extension"))
+			continue;
+
+		extension = of_parse_phandle(nc, "spi-bus", 0);
+		if (!extension)
+			continue;
+
+		/*
+		 * Register children available at this extension possibly
+		 * walking other chained extensions.
+		 */
+		of_register_spi_children(ctlr, extension);
+		of_node_put(extension);
+	}
 }
 
 /**

-- 
2.50.1


