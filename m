Return-Path: <devicetree+bounces-238705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF64C5D6B1
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:47:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7FC8935B437
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 13:39:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8ECC3246EC;
	Fri, 14 Nov 2025 13:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nzg6AjxU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 856A93203AE
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 13:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763127513; cv=none; b=eAzBqYW4J8C9AWeZEm9Y46GPHwWL/egpIi57t6U+3Lk326/ubicQMBuJrcwug0TbGDU23fIeO4/EAHVsl3z/hNZ8VRIytiEV+kcdj1/quMXgbEhjiz2DKqNJugSQWMzZ94u6Q+cLwjZyFxV6j5xELq8sK2Rs5ryyh5is6fL4W10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763127513; c=relaxed/simple;
	bh=v9PIaHoOGqn87lRlESH/AuFgCy5K1+8Bo9hGHBVSeHs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bwD8HgIAdBXpuc0XinMZ8ef5rg3BKvWHqNqBSA5ZSU8w0Uj/kq/xUHvcKU3gvllDJ4qfqrCtMLP5g/rBvBoXJDmz/+lis3bnS4ES/xguvLE2Qev4V/ScK+uyYH9E5SJic+C7hWDOhBvpaE8GLknhAfYEJAgX1pgtrtJ9fbEDzWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nzg6AjxU; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b736cd741c1so110535966b.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 05:38:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763127510; x=1763732310; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xHtOrvUe+VoHbx7eNPs1dlQDZqVpXM8AHRrOkF3QMQM=;
        b=Nzg6AjxUBqpCFV/maypliDagi3X0n2Hh3qXbRIdwss3SUjmgv+NLL9ok/nPaEN/q3p
         D6IPtT72yaJsTdMp9+qarT4u3LHQ+S7KTg+geqdhNZUOEzonLKTCl5KLqubSHNVhxx1O
         wfI/EYSRoDaTDThLCyn4a4mVQELIuq5OlO4boWMWQANeBmNHccH69kEYhkIoSTS1FK4P
         D4n6qcwrzyFh+nr4be69Q8jPFF3Npk1V1zlXfR1kkoen4qFCabQFVTaAXYdlXZLBMwcB
         l8ZOebKSTZnmwI76dfOQSysBkVnKDuPF0/mhWnShm+8FGQyeh1yv3Ux2agHsaT9ixDDj
         5aMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763127510; x=1763732310;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xHtOrvUe+VoHbx7eNPs1dlQDZqVpXM8AHRrOkF3QMQM=;
        b=Xz3n6+AL695slVzFd1LX9Y+cWh9lXEYoHEdh2WqAZcWOOLhELtkBPcZ7Cr02jTxxB5
         U7og0iYZxTdBVejRRsPNCdELRDA2HjrOgzzmddKXgg67jD0ROB8DEVGDa7mrpjxpdf85
         lPS45HJeWcud+sa0MFma/UR3LH5FMXnWbfFq0ba/3XfWJnp6lGNe7lPjs0EJnEliv9w5
         MK1PkJqPIJMzsxD8zJlvQNiTs4pIFR62xJXgKyeh6K5RZO/RN58WlShbcgoh+NnI9StZ
         MW/LpRRYTUTzCS6U5PE+H8ch6GJj2B1pFdHr/NM8UmnussH+lwLDncU20XU46tRm9DqQ
         PmMQ==
X-Gm-Message-State: AOJu0YxS/+OIRyD5Ol0/yqcRrQ+t4jnIyh6B+f0A2/FO56VPBnENfhgi
	N3arGeqQERXAx6s7I4P3Hcv/qMLXA1+/p+nKP78ZsS24x1FWxSuI0BoT
X-Gm-Gg: ASbGncsLTrHIJaXwiHC4UFpRq1+0xjbKL/IgkoC//xBuZQe8G5zaeKVIB52VRN0zL4N
	6+xAVwqQGeYzGoSrJjd9K0MDNd9S+R53ozEyX/AhjlvzIKj0LufIjTNZWcTChfohq3bImY39+7c
	3WoRTecHiNCR1yCm96rdUkmdZtVtaM9MQw8nH1CT0eKlNV5RBYhYBOG9Me1rpTsvyuvTIAkVkkI
	M/p6C6tmKHLt+2/rGo4ETDSNOni9wFyKoy31vOVrDl0zmcT22r3QlkhafH7/2NNOE+OmCligm8X
	uYB1eEcDric1KWVqRj9D1x0qHnSBaleQPWq/zVkLV/TNZxZ7Dh9Vx16OWaAoOAwC8TVrOaVCoOi
	FtldsBRzNwxyxpGZBQZVxCI/DXW0PQocCS4YpCBeNIn+96rf7s4ey+fMrswP3PwwZhvsRqHHmNU
	AzVpOxE1YY87Z67cGAAbuvJ+TsD7E=
X-Google-Smtp-Source: AGHT+IH8dRTU8oBtJVQfEpqvTrilhZpOv3fQsxhq77CfNcpisTXOvodnBkppi6eij0qssBp+fixOiw==
X-Received: by 2002:a17:907:9405:b0:b73:75ea:febf with SMTP id a640c23a62f3a-b7375eb040cmr72289266b.55.1763127509603;
        Fri, 14 Nov 2025 05:38:29 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.158])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fedb2cfsm385330666b.71.2025.11.14.05.38.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 05:38:29 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	Frank Li <Frank.Li@nxp.com>
Cc: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v5 6/6] arm64: dts: imx8ulp: add sim lpav node
Date: Fri, 14 Nov 2025 05:37:38 -0800
Message-ID: <20251114133738.1762-7-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251114133738.1762-1-laurentiumihalcea111@gmail.com>
References: <20251114133738.1762-1-laurentiumihalcea111@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

Add DT node for the SIM LPAV module.

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8ulp.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8ulp.dtsi b/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
index 13b01f3aa2a4..9b5d98766512 100644
--- a/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
@@ -776,6 +776,23 @@ edma2: dma-controller@2d800000 {
 						"ch28", "ch29", "ch30", "ch31";
 			};
 
+			sim_lpav: clock-controller@2da50000 {
+				compatible = "fsl,imx8ulp-sim-lpav";
+				reg = <0x2da50000 0x10000>;
+				clocks = <&cgc2 IMX8ULP_CLK_LPAV_BUS_DIV>,
+					 <&cgc2 IMX8ULP_CLK_HIFI_DIVCORE>,
+					 <&cgc2 IMX8ULP_CLK_HIFI_DIVPLAT>;
+				clock-names = "bus", "core", "plat";
+				#clock-cells = <1>;
+				#reset-cells = <1>;
+
+				sim_lpav_mux: mux-controller {
+					compatible = "reg-mux";
+					#mux-control-cells = <1>;
+					mux-reg-masks = <0x8 0x00000200>;
+				};
+			};
+
 			cgc2: clock-controller@2da60000 {
 				compatible = "fsl,imx8ulp-cgc2";
 				reg = <0x2da60000 0x10000>;
-- 
2.43.0


