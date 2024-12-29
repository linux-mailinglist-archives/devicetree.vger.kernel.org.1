Return-Path: <devicetree+bounces-134571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F489FDF68
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 15:51:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4984E1882292
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 14:51:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49CF31993A3;
	Sun, 29 Dec 2024 14:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="cH70o92a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABF331991D2
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 14:50:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735483845; cv=none; b=GBZaVwUvt8QbAMatFRYFjxBKACA3V+JyktH4KcvksSWkemFrMhbujcUM7N1GhE5H9F9tGqnkva2khn5d+oEO/Y9vvr6ya5B28Z9+kuV7BC39Kae16M6kGCTaaiHdeeThJKvqWAEURZmHZ77bLslRENtVpbNFRp2BkRuxCGuL9Bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735483845; c=relaxed/simple;
	bh=4JJzIfTPYd1xwS7ML8LLTZkwdWqlo3aofGz7RuYx0M4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SR7TcFflMPS5y9SRf50nDCY5ZcX1n9T3kO/ypW+/szeEnIjX6ymH5CsMrdYhjQJBVhPZGU6DP/KrZMyLEYh5t4JIan0KLo4ObbrQkosFtaYhytDpYq268M58B+P7PqayvX0z46yOjy9OMa2Z3rWIEQWHnZ1kWoemcroFHnP8Wto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=cH70o92a; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-aa689a37dd4so1278898266b.3
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 06:50:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735483842; x=1736088642; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hOYk7rkhvjRCnvuEcjwAqfr4aBzSa8a4sxHUvLuLnTs=;
        b=cH70o92aOcHncub04Z3LfhDm+jq0MazCkHQaxYGRy1nzhHVnZz0ULwMvEqzk5z4/ig
         laWzNV2uTh/4+8arx4RDzLq/nOcPySqfHeaxQLSUcvwbozPZ4cLmMETeKBeBuiO2+qPB
         67QY7gCKw/5YU1vTtx/FROBDEkpVF9fki9gQ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735483842; x=1736088642;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hOYk7rkhvjRCnvuEcjwAqfr4aBzSa8a4sxHUvLuLnTs=;
        b=D6lTz37W6fUFpxfEEImUgdAehXiG+eNWbkx/YwdQnP8xRqvjPUFJUMnfDXb7vuCMoV
         mBJMaTNTQWd0oQ7/2Yfqi9bul0AIgFmAfs0H3bl671ladq33aIqlGUqacXexACC/isiA
         eB8kc35sKNWJk88CRufEVWBLKNHrF2s/lCccFSmeJLUUQIUdThD+sVr23UKnm2hUIeV/
         d866Z5FP6wZcEhGZTIAnv2urvu1G2Yklx29GddfSw1hg4M5ZFLJzPG7w6muWHzaceDLb
         4J60VIyIQhoWgeECKKpUZsuQMEIImZGi12S/HT+nytD0fzkqs/yspdlX7Tzkf6bdDyJl
         igPA==
X-Forwarded-Encrypted: i=1; AJvYcCXc0k1NXdzNzUGCJ70K784QzBa1TsAqVdku7K02wkUtTQ+h4F3rHIrJJA+tCY48MBgFtBriISU9aVSG@vger.kernel.org
X-Gm-Message-State: AOJu0YzJ7AEh8W+IPGcE+7DaJDf5M9+B+RSE0YgjR7VNfwh9fFI26Jmr
	brQqB44UrgqO1NMItB5EyTwKsZMYzabobptWMR51juZeMUR4TYWdMa82Oo6zBNs=
X-Gm-Gg: ASbGnctsz1YYghquqZ2QTl3lNIbaAC8tJO0Ynpopz0bTnb5c95svjT968n5x+Bxn4OW
	ysoBJtFXyOWtqY/zWuSBdnP3rFEDv+TGZwZKLX9qq1jqnv87c/ZgWypSFB32EZKhrLJJmZMdAq6
	LDvQoiWdJeVZJnFfkMLp20dL50oM/It7+rvZVPhnavVXRSn4C0FHaqwEALwbDuJ6MdFTgbaXuVl
	yGzId1YpEUDjc3/SxSq6Kd9gykBgsiAbbsP7gag8AHTUI4V+wxCl/zpfDMA6B7hRqKC+p0owjoB
	95uwgye7pdQ3LySDBiS/og==
X-Google-Smtp-Source: AGHT+IG8CGrpEMFqA78kdByEQ0DjHHHYHTWphQaqH/VG7Rp9eeX5oN0WentSYeXyG9/fSH2aOKu83Q==
X-Received: by 2002:a17:907:2d2c:b0:aa6:8b38:52a3 with SMTP id a640c23a62f3a-aac33787557mr2382830166b.50.1735483842145;
        Sun, 29 Dec 2024 06:50:42 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e895080sm1362084466b.47.2024.12.29.06.50.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 06:50:41 -0800 (PST)
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
Subject: [PATCH v8 06/18] arm64: dts: imx8mm: add anatop clocks
Date: Sun, 29 Dec 2024 15:49:30 +0100
Message-ID: <20241229145027.3984542-7-dario.binacchi@amarulasolutions.com>
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

Add the bindings definitions for the anatop node. The patch is
preparatory for future developments.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 4de3bf22902b..597041a05073 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -600,6 +600,8 @@ anatop: clock-controller@30360000 {
 				compatible = "fsl,imx8mm-anatop";
 				reg = <0x30360000 0x10000>;
 				#clock-cells = <1>;
+				clocks = <&osc_32k>, <&osc_24m>;
+				clock-names = "osc_32k", "osc_24m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


