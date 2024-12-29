Return-Path: <devicetree+bounces-134574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A689FDF6D
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 15:52:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E425E18823ED
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 14:52:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55CC919AD93;
	Sun, 29 Dec 2024 14:50:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="b3qVwohw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A422B199EAD
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 14:50:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735483848; cv=none; b=lxTGVVbmgOcauf9Hx/05V5c82IkUuQSZqe39va5qRrqRgDS5o4/X/eQY+pOqUAasaGn+ZZZJkJts2iXmAlvP6ouOI+8b0nMVRONTNuZ7soVY93OUxWaaG4uGtzgx2wYMc69PH+RWKillOb1CfDI4OdJy6qG5BlAlsedH41SAITI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735483848; c=relaxed/simple;
	bh=EfuJYR878rJ4Cw+YuO97nDjgeWj+F6WJVMj2hzhOd0Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MezVyqIte63irNGznlnWmaROImHgQzZ8idnsb4Rfjt8q9Q1dJw22Vf6+7uGdRNIz92u6JEBd0mgw6IpfaR6EsHAvdQzbQfc1+MKxl8SE/ZVFf6AKnO9t2/bcQNrC0fyvgMqf/CClK8mZZSDvhkBUhJpr3f0ulFPDo/uLvAriW9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=b3qVwohw; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-aaeecbb7309so709678866b.0
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 06:50:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735483845; x=1736088645; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JTseU8DWKtdHNNseUc2PJ1vcygpii+LlAX++fbmk+pc=;
        b=b3qVwohwnc1hMrHAgDEXZqLqrLo5CONkaEZjW8xrkDrbZEMj+/6K1VgSg8j/RPUVeX
         pS2gplCwj8M1YzggrCabBaljspesQus9wrI4mPgIHGX9aT5JUGYSwPPYmJjlbF+DXsLZ
         2ixhVvhSOvEwJlV1SZL8cgVb96V8NeB5BAKdQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735483845; x=1736088645;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JTseU8DWKtdHNNseUc2PJ1vcygpii+LlAX++fbmk+pc=;
        b=k4HSrXSv3e+8Fk2uSny/N1Q7PIRxXOqvjgjRZJhtpQ85LKrUMezDZQOCpgDWSnbhlN
         O9IDdc0g8+qrRsNbA6yIonMe3/sZudAWXVIFhYt2eGZx5PRAwoq9/Ot5SulESR0FFmKK
         4Cc7ApQgFNZ0LB51hIDxhk7cj9wywg2bK13Ywc0M8+y2XQhukqUSVi8f+F3yNQeQAObF
         sPscUpRI73y6OVmljNtXL1uP9iIR1zeZnQMlx6kQD57hfeZnurdV6gUDr1NgB7ijBXeq
         k/d4Q/dch3wEGl2K7TcGPahZR7bNCw5PS3MzUYMNCpdWC0z6V5hQ/A7EySXAukQ9Cwii
         mfaA==
X-Forwarded-Encrypted: i=1; AJvYcCWwFzwnpvE2KHHve3PY6RyF1GkNpcXqRv/D67rtKtSxR5QMNGnQBJp6vlHs75cJlgfujvqAiqp3Bon7@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2Hj9Ul/L91J+e7ZJGo74BwiOh6qBSxgfq6Uk2uDJp6UMWgKcZ
	J2+zZqveXGTgM9OWjnAYUcnfNoClIiHuzNEwlMevD6oUcSa24b9GRirK/dms4UA=
X-Gm-Gg: ASbGnctwf+HBLAn5vixqQSBzcJQ6UTtmzDw03hqsXT6EJfoEegkUOEYoqoOnbYG4Jgl
	A08sOJx6/GR+Ui2HybAAHtoWrC9sAPPKdFVz+7/7AfPkOrOEWOJUzWcSWjhNSG9D35U3UuchWd8
	OpcvVZARRCaJpR25Kj9sR4KYfpbpBvBZNPcgSUw0olT/MyIoYHYHafawMLaDNQEL3EWStQ7Ajcp
	h4UgeXIp1YLQ1cs14uHRgcAJSlsglZVb9WvkusbXtSjRszG4+EK2NXa5napwHeuyBS7LmVe+KdV
	nurvRBjYqtXAwrBf24i0dw==
X-Google-Smtp-Source: AGHT+IGIJCSLlNgA08GSB5oSqyndnsfBTf0pp87lM2OqXe192f2irVoeHNvImjIfNJtI9EF5Ka+UDw==
X-Received: by 2002:a17:907:6092:b0:aab:c35e:509b with SMTP id a640c23a62f3a-aac3378bee1mr2634088366b.55.1735483845025;
        Sun, 29 Dec 2024 06:50:45 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e895080sm1362084466b.47.2024.12.29.06.50.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 06:50:44 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v8 08/18] arm64: dts: imx8mp: add anatop clocks
Date: Sun, 29 Dec 2024 15:49:32 +0100
Message-ID: <20241229145027.3984542-9-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241229145027.3984542-1-dario.binacchi@amarulasolutions.com>
References: <20241229145027.3984542-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add clocks to anatop node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index e0d3b8cba221..0b928e173f29 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -709,6 +709,8 @@ anatop: clock-controller@30360000 {
 				compatible = "fsl,imx8mp-anatop", "fsl,imx8mm-anatop";
 				reg = <0x30360000 0x10000>;
 				#clock-cells = <1>;
+				clocks = <&osc_32k>, <&osc_24m>;
+				clock-names = "osc_32k", "osc_24m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


