Return-Path: <devicetree+bounces-242391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A69C89D15
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 13:43:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8EBC03B2EC8
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 12:43:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7684732A3C5;
	Wed, 26 Nov 2025 12:43:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SOf/2rY6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C413C329C60
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 12:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764160994; cv=none; b=J0JnPlBA9AOIak/NSbnO44oLFGcGPMA8E49aXC8uPUyM9lmP5SEDrSvfZLp1AoT+e8HSS+IPatLSyvkx3cY8jO4AnJVoFa8xmrColPERK7rKpd+86z2yRNtTEZ6PinyPyL9N36TEMOUilHcxcAwl1twKQ6xHVJ1ftWdsggwifOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764160994; c=relaxed/simple;
	bh=v9PIaHoOGqn87lRlESH/AuFgCy5K1+8Bo9hGHBVSeHs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=afT3qTgu7M5kPyC03jwOEwqaVeE++hM/OjqOEMIL41QWN/EWKVO9Na5ut6XGnwU3w99UWQBAPz1H7SNsSAjq60MDh4C+0qZQ2CGg3IP0TsT0+IhZY7x5EoA8UfqRQy0ywMNXk2hMl+Ze73rVu8JLzPxjn3NtGc+BD0nkPXQX9M8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SOf/2rY6; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-640a0812658so10738616a12.0
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 04:43:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764160990; x=1764765790; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xHtOrvUe+VoHbx7eNPs1dlQDZqVpXM8AHRrOkF3QMQM=;
        b=SOf/2rY6Wqi91A5TeWJwUcWgaK9y/7Q0w+IMRqylN+lZj8xeFh9tRSZxfV4AWLhQdz
         hNF55yQUT6npBjP0YjfkJlOmcOF2X6pN+LDOkR3ev0rP0m500MgP+RjjNgYQ0LlsoV6U
         Ogx5kjN4Mj9rTSO6G9Q5+DUFdiAJW82O6U87/ltUWecukH4cQF3bH8OJ0rVZdYscerOI
         qsvNyD96d0GIgWOiv96u2AkwlaCXxlTCJ2CiTPHEA5hrUJC0RxgV/DpKGqM7AN5RnJpu
         8GYTqIf58W4G8U9wwN5ZJqXa9Lzj98JWdGZbV5WTCrOdXdac2O4epr3+gq7Wc2ct55SQ
         e6zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764160990; x=1764765790;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xHtOrvUe+VoHbx7eNPs1dlQDZqVpXM8AHRrOkF3QMQM=;
        b=Bv7MfG4jozTxNpxytpyoXg0Ddz4GSLlbvIV/2ylDz8bucXDte7FPKphm+rrRFsZRhh
         j+2qlvmw/EoyC9IUEsKiUv5wLcTFudEt2oBvkpvgr5zdeJa+oyHLHMBe8Bm5/qqcn9B2
         gXhlOrQcX0FsVM9opvcwoscSh4Kqf3nQQaPGLb/mlw4Xn+FzsDF2WUXg+f/u8Y/+mXge
         L2ebMP+ADDP3FHattEirBwgBr3x9eM/jDttC3rJnzluRQiFZ7zEGnLmaL1DrjgHUzp5E
         IG8EPXvSi498QUfFwRz2EYDWR+EQtOCV6GO9p0BF6lprISUlwgRSA4KzTigwj3OTcBXz
         IcTA==
X-Gm-Message-State: AOJu0YwMHqY1tQMoc8/QofJvMc+cnM8Spf+2waitNxcqWjuM9rdzVeXs
	VnZr5sMoeZSse44SZiwOPTKLV+6J63f4QTdaN6KJgdJudR/FpYLVR+sM
X-Gm-Gg: ASbGncuJ2tvZx8E5F3dABOqOe4cP66fdCzsnZPFl4cKvPu2D26ovkJ0uoPOaSk3ocmm
	c4nJk2r2yQ6zyfNwCXo3nKBd/71Dujma3Cdn8aZYz0uHeV3xGRcm2nBheUVc3IZA31Caja3p85u
	Djrbn7wTqXtfv5kPn1PauqZdftkweXTJEcDOMg1OBrzbzljXw+tv2Y7EooDHzjaPG7eZJ+6qX2p
	bG8RL9Sh5Ci80iu9COQFzYcQ/rbuPvxrGjDTaCC3D2syLpTRVXuJqjpIH7sod5v8NR/B9tC4mrw
	6J9t86elh25YolSRvVqQ9s2TPXknvTpAxNIi79JurEEZjMMynYfsdtjFHmAikqagun8TeX7GXQe
	zvmehlFnxa0K8jmhfhZKTRd0ZJDht7LTdhk8kbrUijRke4aVeEjv1PsyNPMu//7w52hGZEHzYZp
	3cq/nkFtIkHCkvmZ7SWGY5ydWU3Q0UTkK1Nn8L4qqZKqc0hXU=
X-Google-Smtp-Source: AGHT+IEK+fAuFi2k4GaxIBNmbHYXMljUxG7zaiQpHjTkWdqeymuPQBHmktEsrElO+iqJPJnEFZWVuA==
X-Received: by 2002:a05:6402:5192:b0:637:ee0d:383d with SMTP id 4fb4d7f45d1cf-645eb223dbemr7038749a12.3.1764160989649;
        Wed, 26 Nov 2025 04:43:09 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64536459d92sm17654824a12.31.2025.11.26.04.43.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 04:43:09 -0800 (PST)
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
Subject: [PATCH v6 5/5] arm64: dts: imx8ulp: add sim lpav node
Date: Wed, 26 Nov 2025 04:42:18 -0800
Message-ID: <20251126124218.803-6-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251126124218.803-1-laurentiumihalcea111@gmail.com>
References: <20251126124218.803-1-laurentiumihalcea111@gmail.com>
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


