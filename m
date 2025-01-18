Return-Path: <devicetree+bounces-139448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 103C0A15CEB
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 13:43:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4BF353A915F
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 12:43:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7B581DA10E;
	Sat, 18 Jan 2025 12:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="nDiWoxBL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA334192D97
	for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 12:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737204080; cv=none; b=h9JXEYCe5dMKcQr+P8IWa8T4Pks+BFhoio3V9X17SFBVNbz+phA/0CVb4LDZARhjy3eEYKbPvk0vJdNil8AveQ9xLwU05B1n6HyBffNfLY8x/Izbrp4sROgJ7p7ZENF6tS3yjTjnUsLJNb9rGW2GdMRvMkqA9OR4pUj2ADTT1gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737204080; c=relaxed/simple;
	bh=PC1buv5hYG2W3S8/eU+2VA2jywMzm7Vv3xQppQcKsGg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tHLuEG3GiElXDL2LsJTKmbZKm7Q29R5oWCs5MCtFCmXx490FoiUYH9V6O8Zj1ZGa3j+8hpzoEwYaD3u163kkfPQTrTPuBomETL0oWB7CYfbC4dGMtDVFDgP0q3QIJPuetX9gx3JpBkt9+FGyMmvkIY/+z9N0zleD9+yyTn3g8n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=nDiWoxBL; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-aa68b513abcso554493166b.0
        for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 04:41:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1737204077; x=1737808877; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7KTPitaOd10kqEMh4mWJPB1Bs0wTX2XDIfABV6gUcV0=;
        b=nDiWoxBLxvNZxITpmGXQomvWGEz/tQri0kFJJYwu9zJRvXQoH2ey0BmcwDRF9puCOo
         XofCkOxsyRcLKN/6QwQ9uTe/NiEvRsz1RMva8rfRXE5aTl0xU0GtLvCQdomI/9QOz1fQ
         SlXvaJTl8xHEQPFfhmB0oTHh14N84Oo2Vfv6M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737204077; x=1737808877;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7KTPitaOd10kqEMh4mWJPB1Bs0wTX2XDIfABV6gUcV0=;
        b=CYaQnNy+LDXcVXzICuw74DBdF9Gvp23BKVNOfCn1a4r+zoFdhk5bE90wtb2P/bd5ZY
         j04h8yTFOBkkWe6KZcdRXGCfoArQXMu+CAXwKbMKaUC3qoPoh7mZ5v5br3oKFpulTVL1
         4tqTRATKRq8C6TxxnbFXYf07rCVvMytXN+gLrsbDq4xt0WuxRalB9O7/GNCYsvxzrgIV
         jYTJsEfIvoRl2Phtx9CnPhVPXcgA0LwxOAY0LCNyYvj6/3H5dgXpSpVpsKHT2fSWPDlt
         lH5iuTkr84FAnqXGPiQ2dQ8IqwNZtmaZNImVD0mcukLl4p3OnNb3//wYHev+3nga2ses
         sLiA==
X-Forwarded-Encrypted: i=1; AJvYcCXXnWeLda2wCsNLhziEP/I/1wMQdbTv2ZaJ+OHfQR+dgEep7VAU0O0/DIHti1LEOtEhrDz4VQOC9/2L@vger.kernel.org
X-Gm-Message-State: AOJu0YzIBmpwWnpD4ob/LsTprGHlWeX+15W9fyDda2gSXu6TgPj2KXwN
	VwrNoObh2PjgV6CSz70RweQOwGmHczNYlCHsgieFvuNJOo3MgdEJ41jSTCI8rPU=
X-Gm-Gg: ASbGnctFwTx/W3ujX0IrhccxuNjwX/6h/N/9dZ+2Gzf+aD/0O5AI/V8OkpHl1ibEBcz
	yP+YDPy2gOQuX2vhAp77UBBEwhsGgwgsGcO7q6cIRrvJYWjDIsxE30IXzDucD8hFUlZF5IIUJlA
	M8xpAOAdOSgjna4z9VnJdh+Dvr543goaFFuBgTLJoKzWiKuw7WrgeoO/C4P4XbpoHXwYTSFEiCO
	HeVtZa5CntP7ODIVvxvJD/84rxM5Bv0fcG2k4t4mlfNn9ddUdiWqZuIgM5cVJIpCuEMTXlAdeir
	c2aOVCwMB50+hH8XPXVUsaN90ttpGyfLoMh7/M38enXXtXlV1n3iuPPEiWrhD8WWhvxWYhydcoe
	fDrLB8cU8AnHjo0oI7s9V9q6rA8jh1MFuEUD+
X-Google-Smtp-Source: AGHT+IGvRuBDTrgB3PprQD6w2u9+mzwWfpkPjZcj1dwHV6lzx8agn+y3iE8FE3Y65FW5ji3NNLG1Xw==
X-Received: by 2002:a17:907:3da4:b0:aa6:7933:8b31 with SMTP id a640c23a62f3a-ab38b3707bdmr608638566b.46.1737204077049;
        Sat, 18 Jan 2025 04:41:17 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-30-28-209.retail.telecomitalia.it. [79.30.28.209])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384fcd73dsm332562366b.178.2025.01.18.04.41.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2025 04:41:16 -0800 (PST)
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
Subject: [PATCH v9 15/23] arm64: dts: imx8mp: add PLLs to clock controller module (CCM)
Date: Sat, 18 Jan 2025 13:39:58 +0100
Message-ID: <20250118124044.157308-16-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250118124044.157308-1-dario.binacchi@amarulasolutions.com>
References: <20250118124044.157308-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the PLLs generated by anatop to the clock list of the Clock
Controller Module (CCM) node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 0b928e173f29..eab05170442d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -751,9 +751,14 @@ clk: clock-controller@30380000 {
 					     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
 				#clock-cells = <1>;
 				clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>, <&clk_ext2>,
-					 <&clk_ext3>, <&clk_ext4>;
+					 <&clk_ext3>, <&clk_ext4>,
+					 <&anatop IMX8MP_ANATOP_AUDIO_PLL1>,
+					 <&anatop IMX8MP_ANATOP_AUDIO_PLL2>,
+					 <&anatop IMX8MP_ANATOP_DRAM_PLL>,
+					 <&anatop IMX8MP_ANATOP_VIDEO_PLL>;
 				clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
-					      "clk_ext3", "clk_ext4";
+					      "clk_ext3", "clk_ext4", "audio_pll1", "audio_pll2",
+					      "dram_pll", "video_pll";
 				assigned-clocks = <&clk IMX8MP_CLK_A53_SRC>,
 						  <&clk IMX8MP_CLK_A53_CORE>,
 						  <&clk IMX8MP_CLK_NOC>,
-- 
2.43.0


