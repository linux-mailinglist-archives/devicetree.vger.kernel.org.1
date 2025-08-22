Return-Path: <devicetree+bounces-208130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B0970B319D4
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:40:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E52D0B05940
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:33:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C6952FFDCA;
	Fri, 22 Aug 2025 13:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZcqbNw24"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85CB8305E05
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 13:31:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755869497; cv=none; b=dGzEC8UAimf9Ca6Pk+kR7qDji4i/X+K4qEZPsBOEY1D5Mjofn99Fe1mNIbVyHV5Yur/HyCUeKR+0g52bE6l/6mXnJ4HJJFYPpctjEXoyPz0a2JevTpY5nqfw8qfxEOUhLI47fMwppP+ASNS3GJqlnikGirmQXYge3wD3JTI+CyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755869497; c=relaxed/simple;
	bh=9aGPRqF3hU3LhHMJ5AKmjiN2YyxcsRNqdApXK8jOBCE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dnMwLFSOccj8907Y92xmDy18kvnScZqqFW5rkl71pbdixZt3K6U12lCX1n4jKHIU/273CNP88lFM6lgRzG3iTiCSeiNWxoSrzQGSMPnQv1MIGFFZdkIPV0Pzdwh9rmZlqNX5UbeL5rxSKiNkQ+YtfxCjX1yKAmsDH5G+cdwjn/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZcqbNw24; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-afcb7a5cff3so34375266b.3
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755869493; x=1756474293; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O+/3XqC9O5lqfeiA7jEpapMypPzqJuRm5i4h79cnVCQ=;
        b=ZcqbNw246ZoKNh4WzDBV+omkeJ+hId0d901CaX27XLOUxc2faDt4IBBlILP4eu9BAT
         SK8NqeWUR7zd7MD3ZtR004OJ1+B+5MFOhbaTDYG5rsSpBxSZHSXD2ejpuI9lUw2nFy8B
         q0tNbaPbJuRUZYOkOdoQmx/vo2UJd4LWUoeXvnx/zQYK+x4EuxOFbOUIP+xBoeIbH6v/
         kUI02DvYN+6TrnL1kF1GeIK3CLIYIiX6NP6xb3V+PtfkI/qP3uLu7CfwcXn/BcMIN9zb
         +d5VlD6chr8stXu+dNCiEraXiBUH84RHKs2wPndX31hQWmzXGZ1N97ToY+9mEQIx5Pjv
         Z/aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755869493; x=1756474293;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O+/3XqC9O5lqfeiA7jEpapMypPzqJuRm5i4h79cnVCQ=;
        b=gp91UDkfkGf4HN5ZWi0R8wM4Iq9c1iDHFdOFo9UHBzcYDQhvlv+nF5V3bv5AiXEZQi
         JtmVvpaZ90PFpN2P/li9dNcffuSDfGiLe8SSAWqN0unnBHEbNL9jG8Qp018zQPvdT5/g
         u0lM1201jYdmHKeLxZ0KYN3ihXCAJad8uP8kyvW5qvCtFXuEU2QMb7ospPg6jvjYw1er
         eDakUlg0asUY6Vfh56WSi0sN6MbQjXJPagM8MQAieTrvwLmswkh0bZneEjmf/fshZ7tT
         1x7/NLuxf4Xg9VWO95GLcJ7MS1qs+sbr8sFLGg0lfx6Ys258UhZSw3/sFYqIQy6I1XvZ
         9FHA==
X-Forwarded-Encrypted: i=1; AJvYcCWkbg2faldndkPxDgH4JaQ38amTwSkCU9OR3cbI1G1T2PaFK1TeX8b360Ecwn66F+4+JkSMDg1ykoeg@vger.kernel.org
X-Gm-Message-State: AOJu0YyQsZ6rnPqfbYy4PxxLdKAQPc3WBT0XpGvoFajzcWR5zIQ9hFW+
	cM7Q+v7NdXZhNqmmDgUWK/KZgB0/BhGGyCJB17TMsF08rt9puNci/zTZeOJ6H4Y6TFHF8cZ7Htg
	QRf1A
X-Gm-Gg: ASbGncvHjRny4CNDgHHCYfhJzpKa4bmN9ll7l8R6AnxFQt6D6s1MBU7zY5qOf7+xGlx
	U43AvNuH+Vntu5C4GzxkUL0XVPdFHGi1/xNJRweGcJRJP3oVJFGCcgl+98B9tc7OFKjVbRf15pJ
	1gMFUaxPVIdLU1wbc5hCDmbN5nKwouyHM4/b7I3iG2JdgJLmmWvKW1z4wdxsHVzTl9A2jdkyI9Q
	b7gyozcmhTRN7AqG7BNd7X+j/g4Wsej6jKbwaNmwNCYr8sfM0hT1+M+3rS+PxoS1G2e6WgZnhn4
	y+XGeMqYCc++ykhdvYsfLYvWeD95sMr9RG0XvZj8D/70Hn9HH/Qn7SAKbBidIPd0/TchNrBSKN6
	DFl4IYF1trIp6IR9ezNmRiKQY7sIrmcIIGP33TII=
X-Google-Smtp-Source: AGHT+IGv7fFkgXyf3+soUZrw4vUGsNAYnhF5jPzx8yt72j1BLMthgE61ET3nwo62H4P4NqEQzXSWRw==
X-Received: by 2002:a17:907:2686:b0:af9:3397:ee9d with SMTP id a640c23a62f3a-afe28f60bfamr149944766b.3.1755869493213;
        Fri, 22 Aug 2025 06:31:33 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afdf24bc40dsm554863066b.109.2025.08.22.06.31.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 06:31:32 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 22 Aug 2025 15:31:16 +0200
Subject: [PATCH 07/10] arm64: dts: imx8mq: Add default GIC address cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-b4-dts-interrupt-address-cells-imx-v1-7-f1b479da9340@linaro.org>
References: <20250822-b4-dts-interrupt-address-cells-imx-v1-0-f1b479da9340@linaro.org>
In-Reply-To: <20250822-b4-dts-interrupt-address-cells-imx-v1-0-f1b479da9340@linaro.org>
To: Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1401;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=9aGPRqF3hU3LhHMJ5AKmjiN2YyxcsRNqdApXK8jOBCE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoqHElcNZBJwVVoVferD3+Ha+vRMM/Yxaj3iOuX
 ndH63U9FAaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKhxJQAKCRDBN2bmhouD
 10X/D/48aejT48pDsDMcPM2RnZNjcDN50dVq1bQ31lwG1aErEMVxN7xy/aIU54uRE8a1JAdMWL4
 pVQKTkVJzM9DlzkY83kNNUh5agl27PtDyQ+pM27g3ZNU3uQQIGF7EDt1Nzlc9MGKtJN0DQ63qcC
 Qmyj0yLBCpSuyD5wh/CUh8Re08HOJvxdWKghvffYt1NNHnm3K1kP1fyR1PfHNhImMcmhpNc85zR
 Kp5gLcNSxsWFa9VEYXHhZuFNUi2+UPoFdrsTgbJAzSfapIxW3g8BbQ4CzZGkTrI3KtQ29kPyM+D
 bP0DC0vMAiOmkG9CLT+AujHSVUi364vqMFOOZ2GOSpvLNOTXHLipnwdHJkBDMjYEo5UJmq+xhLt
 fGblRgCLiQm7Weav9a9TR7xdjXB7aLrnSAKB0j3eeqblgZEE2iYG9KnIVyfEpnDPeV8D050knca
 xyJN4Cx6rB61FPv9KxFVCLL7IvDPwk0PRrQHaTjgfNw8WHWmssVH5yQjPQK5CJH2NVwRNWBqnxa
 QF7Jrs2hGiGAFvnmdYFgp7AbjOzbfnGe/Ya0HSzbRq4ANwnmGT9KAUN5YrtLyq6iBQK0/8JZCvT
 JyaPu35vcRb8esRoFPgb6m5Ev4KQHv+qDKFQiDJa9SJ9i/N09E6EG4XPGAkaXXKYATRRP69svZG
 +h0aCa505lvd3jQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add missing address-cells 0 to GIC interrupt node to silence W=1
warning:

  imx8mq.dtsi:1746.4-1749.43: Warning (interrupt_map): /soc@0/pcie@33800000:interrupt-map:
    Missing property '#address-cells' in node /soc@0/interrupt-controller@38800000, using 0 as fallback

Value '0' is correct because:
1. GIC interrupt controller does not have children,
2. interrupt-map property (in PCI node) consists of five components and
   the fourth component "parent unit address", which size is defined by
   '#address-cells' of the node pointed to by the interrupt-parent
   component, is not used (=0)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index c9040d1131a80941474806da0741df18bd36b2c8..607962f807bebe52d55976019a210738fa6bb339 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -1890,6 +1890,7 @@ gic: interrupt-controller@38800000 {
 			      <0x31000000 0x2000>,	/* GICC */
 			      <0x31010000 0x2000>,	/* GICV */
 			      <0x31020000 0x2000>;	/* GICH */
+			#address-cells = <0>;
 			#interrupt-cells = <3>;
 			interrupt-controller;
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;

-- 
2.48.1


