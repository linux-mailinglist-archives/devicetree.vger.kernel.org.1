Return-Path: <devicetree+bounces-133381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CA09FA713
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:08:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A43837A259D
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:08:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4836E19B5B8;
	Sun, 22 Dec 2024 17:05:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="hRca9JP6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 784741A08CB
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 17:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734887158; cv=none; b=Atsm0Vc1fJuZ9EAW/1hnOquQnrWe5TKl2IZcTgQ3uOREx76TdKXeUfYSv0sAXgxJt6EvQptV7NwAHt0T2UUH5mOltCkLkkax/2UbG0wMIae9nKQPWilyEI8PUg+yD4zIij/WbTy6CwWQIGPCW5HDn+sormV9dDcPDV1FOpR9dNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734887158; c=relaxed/simple;
	bh=vc25/TFqvg0Ekr2Sm4G/VkkviBdPeMF5e7FdTWNCvAE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TE+jaY+JX9ukgLVc/QWVjNXhRUDBQXADlaXY7J/2dT1gXenLQfn3P3mu3m/baDPU4Iz7D+ZwsERTojeYaBDPMapJyxzpm5aMEVevWYy3ps2Hwyr3MgrR82MSdOQT80LxlWvgPpLd4qU/SgdmOjy1CZEUS/34Flr7APJZjWXfUwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=hRca9JP6; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-aa5f1909d6fso542004766b.3
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 09:05:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1734887154; x=1735491954; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BHj8xJJDjB/nn7+FV+WNgNcGZHPneQlK/63TZumKERk=;
        b=hRca9JP6/gJPj2+ioBwE8P9xXzhXyNB9Wfha4pb2goL2W3MWAZqyLXWVezOn7fW2Bh
         XUnjTiEi18sMr9FpQNi0vuU/PTmonZwEdYMwG1EIria86AOHTxjw1W5POBa3TUIYO6pk
         +wweoOPsxYkV/NtkO9vs8aPRLIymMeNhq1NEk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734887154; x=1735491954;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BHj8xJJDjB/nn7+FV+WNgNcGZHPneQlK/63TZumKERk=;
        b=a2S+qNAVqN+FzextgR0dXkuj6Bh+vKbVQz8W38AC55dq58brvArOt3mET8UjR38xny
         vD3WEoVqEhzCZ+dO4Vj6I2GaMz751Op9n+uiOOJBsO9pBec3Ay1Vx5nO/2EpYLX1HFTy
         n6VevuQa5zXUCa4z+HA/VJEA1YOlHQXMH+fSEg4EYBrJYkLAe6I8TDnfVY938yFF2hB7
         br+b78KYRmHSUvbbsTxOdlUrf/MLN3Dhy42tlsKy3y4kaIeK2X5kZkm80OpLzaKIPGxE
         sUbbgaHkHX2OJtyLwEYq6exWlKNJqeRymAl8P2lVVtnleq7eUAgMpbUY+ILhaZ6OUOT6
         0bdw==
X-Forwarded-Encrypted: i=1; AJvYcCWxc5PWxxAeFqmZ0tt3LU4NtJFgCgpwCsKW845PCYmxv3KTjS8fGy6UPAaoBEqL4RkrPRru+Ws/6Jng@vger.kernel.org
X-Gm-Message-State: AOJu0YzZMkt00deGlWj9fWfujk1+wuYLAQQkjaZGhw2Spa145b/P2P80
	PBiiJLYC3hiIP6rsknEtWPjoFrp8qrKEDCiHFroo3s3RLpmUJ0q8ErwmMqUL0qA=
X-Gm-Gg: ASbGncsTsJ1b6RK/aeXpa7GHOrStd8RDYKdv+1VbrzjtL7+/o8FmwgEXqOLiYW7a3mZ
	mbutyGrBI+FVu5EwgZ7A118wzo2B5kVM/w0mZQidLki4uijvjpmumP7ca6Z9OMxesGyRY0CKW55
	McNO0xkPwl4TCt3tzM6RBNlVVJZvfqcn25ZMOYATTOGichImWvVrp3IeNGO37FgIm00D+6WzJo1
	tXjFHUYhnI4ullkJVa/DPXmmbqEgFUgaBtWBcHfFjp8L1gB2b5Nqmg31GAxTyInY0Rivd0dvgTx
	VvQhg+FnoOds/VghinpZUhQpsvH5+47QUZUXZnTrczEVFw==
X-Google-Smtp-Source: AGHT+IGmc/BFMwzoPcErEXEsdL9IB2KUs9/DBYyOmaS8SczXlODqnRL3cXLq/GR+YIHofpcPL2PYcA==
X-Received: by 2002:a17:906:478f:b0:aa6:6c46:7ca1 with SMTP id a640c23a62f3a-aac27038e93mr909112666b.10.1734887153951;
        Sun, 22 Dec 2024 09:05:53 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.41.87])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe48d6sm414056566b.127.2024.12.22.09.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:05:53 -0800 (PST)
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
Subject: [PATCH v6 09/18] arm64: dts: imx8mq: add anatop clocks
Date: Sun, 22 Dec 2024 18:04:24 +0100
Message-ID: <20241222170534.3621453-10-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241222170534.3621453-1-dario.binacchi@amarulasolutions.com>
References: <20241222170534.3621453-1-dario.binacchi@amarulasolutions.com>
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

 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index d51de8d899b2..1d1424a136f0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -817,6 +817,8 @@ anatop: clock-controller@30360000 {
 				reg = <0x30360000 0x10000>;
 				interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
 				#clock-cells = <1>;
+				clocks = <&ckil>, <&osc_25m>, <&osc_27m>;
+				clock-names = "ckil", "osc_25m", "osc_27m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


