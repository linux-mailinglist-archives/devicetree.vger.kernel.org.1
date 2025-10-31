Return-Path: <devicetree+bounces-233755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E963BC25279
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 14:03:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AE99F4F981C
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:57:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A33434C9B2;
	Fri, 31 Oct 2025 12:56:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Kkrpuh+m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5B8C34C150
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761915376; cv=none; b=TFq+knLPG/wYGFWO/JLgIfL8zBDuGTDRy6MHYVKIe4g2Gx0SIAUaPVBxPePeJaKGqusfZ94jviXaeFgjOYrJ7U3AytJ1XN5U+DQZgwJ8zfUurGibV+PVeG4dtbADgOpHQCoMmc33WtO1dhKrhpdis+hPwF4ROvNJzHuwyvd+eI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761915376; c=relaxed/simple;
	bh=6z7Q0cvkHq4tbrD8eYT1HprLcsjew57f94vW5406IBU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JzWvsY3uj5SITzs/wVvgji4DHiaIvpMlSyw6R11d3Idacy/WMPw+NW+gi0OG/SCrjo1fTmeJ8sOkVpjvHu1NJIOrR503uZ38VmJLEkKyFwe+7Wv7ojB9XjKfdy6vjkogrFgrkx1PwLK0ZQBJSCIV8emq2iok0fwR3Mg9TTHeGOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Kkrpuh+m; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4770e7062b5so15925995e9.2
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761915372; x=1762520172; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pb2pqqKjiQQF/REmK83pr0aP945mNb4ceVK9gk57rPM=;
        b=Kkrpuh+mCAiuLEikgkQ09AEby3RFHS/bua6DrVqlOOVvJN/g2GFlh7RzKbxUO1X4QI
         6s5DtKD8pwnxh4TE+3/wLW7xjwfWU9kFXJgdkgzwSx5gx0gsEM1+cQp4rgvH275u63n+
         YOye8KkBZqw14djlWQ/jADCR2zbQU8nfO9sq5UoaUVV58+s9F3Q9R/7f+dqLEM/L1I+m
         iOTzAgMMrhKqxG0c2cYJbZVPd+qLoFbgsJ8jCFr4D815jqRaJH4lfq/72HsyJ5RrWCUB
         spy8Bv53/Ycqi/Awf8/Zq5GJgBfxYr0N5NXAHeoe9rJIoflYf0a7E5+LgZWsnL/EF9LJ
         gXKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761915372; x=1762520172;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pb2pqqKjiQQF/REmK83pr0aP945mNb4ceVK9gk57rPM=;
        b=RhAb76b6qEdJAhLxgNsFJRz13PrQVFhblesTt7CTXBKvQQMXucj9olzKjotDog14od
         UzJawo3e5YGPrNMRw5ML6fwIcV+8nM9FuyhHIJaRtwAdLFWmfps4ic2EkIK2MnhQeJq1
         uE0pSQgiSfdwDoqp6e9RkMEyEtE1o6p8vmwLZSCjBteIILWGsHYE8fZAOu9y5/wy3NYQ
         lucL/lP5WR9824YfYF6HHZ4JmfC5nK0+s49OlY95moLNly/D0Ij0OHRN8D14MU/SOA6w
         7Gq5chp0skUvNFHOr0U7TgB3sUWnho+v7edemanIsJlHific6GZyTi3V0lfcR/gLFydx
         WFwQ==
X-Forwarded-Encrypted: i=1; AJvYcCXXlZHArGSVSKfLqsmN46ZuXguMEcW+7r9+e+uiAWuIrEmC1DUSzBZe18r9CiSFpZye8+jTN3j8pJld@vger.kernel.org
X-Gm-Message-State: AOJu0YyECB7ce7v3kz/ngggpyLRqOT3ICulmQM4XggXA34A/bYv5mrgQ
	VUFGwJ60Hoq9mj/eWFzdBIDb1qYOqZnm4CUzxWdwCo++21ua/DUeciAvlj5w12D8itk=
X-Gm-Gg: ASbGncuQZKcU8MhHonSdE3cwj9IfB5q2Pom+DcAtckg2H0lcwe4MkLGvI+PVT0u3D4k
	POwNjlv2BEDM4k2BgADr/RXJXi0+Un+Eb21Yjf/Gf3WQ1b9P01hNR0G2KsJ0oveGEXSxk2YISIF
	ikVTnEJj2aURkn23OBs0jpixiLhYtIYtqM90OYopMf4ZMMXYUnWuPRq0grH7+TyGBBtWBU3CE+S
	P+bm6Y3+TGbKbZOYY7SxWjroeCxtoQ2E8+lAWsLXpIwtSh87FWkK0IpHgDZxfpuB1qt4+n1uMCX
	px3D7F8TXoDXUCE85jr29oJsaqdfsyWQ+pgH12M947egvZmkpU+uhXRot1vUrdSfVBj7Oe0MXiF
	WxqNMt+Jv2IHVHcMlbw2C11KVNYI4uFopQe+6d3Xi3t1qap3+V6QGmkPJQNFzMkJV1U3LX1NLgX
	pWxAFv1B8Oikdf6BH0g/GwXgsiI3fzdlPkJLjWffV0wNanxjE9cxLvEbot2SwR0nM=
X-Google-Smtp-Source: AGHT+IFe9Oi7mS4HMXpo7MbmxHbms/ri8FM7ao6gprXy7xsckpCCyc1QnNO/QiFb7+3HO3HyI8NMYg==
X-Received: by 2002:a05:600c:530f:b0:46f:b327:ecfb with SMTP id 5b1f17b1804b1-4773082d988mr30938645e9.9.1761915371964;
        Fri, 31 Oct 2025 05:56:11 -0700 (PDT)
Received: from ta2.c.googlers.com (213.53.77.34.bc.googleusercontent.com. [34.77.53.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47732fe1075sm31814585e9.11.2025.10.31.05.56.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:56:11 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 31 Oct 2025 12:56:09 +0000
Subject: [PATCH 10/11] arm64: dts: exynos: gs101: add the chipid node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251031-gs101-chipid-v1-10-d78d1076b210@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761915362; l=805;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=6z7Q0cvkHq4tbrD8eYT1HprLcsjew57f94vW5406IBU=;
 b=yYQOtlOsyfkQ+MckjcC3btLUJDkAj1qpgBndKzNfjoyKIYZHO8SXE786LHd7AVTIyfk2xLLcu
 xQlA5cf1F31D9ReKrE2i5sQrvXX/xPObullG3soA9LrWoUzwPegkidt
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add the chipid node.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index d06d1d05f36408137a8acd98e43d48ea7d4f4292..11622da2d46ff257b447a3dfdc98abdf29a45b9a 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -467,6 +467,12 @@ opp-2802000000 {
 		};
 	};
 
+	chipid {
+		compatible = "google,gs101-chipid";
+		nvmem-cells = <&product_id>, <&chip_id>;
+		nvmem-cell-names = "product-id", "chip-id";
+	};
+
 	/* ect node is required to be present by bootloader */
 	ect {
 	};

-- 
2.51.1.930.gacf6e81ea2-goog


