Return-Path: <devicetree+bounces-134416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C519FD63B
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 18:00:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D2A85188132E
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:00:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2E951F9EB6;
	Fri, 27 Dec 2024 16:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="RTBxdRLg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A59D1F9AB2
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 16:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735318668; cv=none; b=liO5opxq1crB6qhxr66/dU/WXqwZhw66JDSZGcSRHXCmaMnAPpN/YGVa0s7WTivrL7qxUPSO/S4LMLmZvS1+HTRF5ncvNQA0v8EobPTayLi5AyKwsl2HCOi5vdm+iwMsI9MZX9R3hT4bjsZ7dDmauCN+P5tyuQAueqbQVrDGVpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735318668; c=relaxed/simple;
	bh=yj5ENn5hd3kmikL4mIYyyYwweAh8ui9uop7PnQSXapw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=P9O+G5zFgoxfsTWTCaakGaHDllGZ8iy5p9+L2y4b6jU46nFN7y947+Sr9mn4Ya2izTHfCOXajncILEzKTthQc9XWXD2PILk1DCJVrZhuS23PQO9FFWjOhlNCvqSaxl2TJLi3QSCvI5jnYsH6S9UoeWec3+UV7n8h3rnanPipp2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=RTBxdRLg; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-aa6b4cc7270so1077874166b.0
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:57:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735318665; x=1735923465; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z/Q5xeJIoq5Ujssv/lVVpXyTtV/F6QlZNcPSL4YMIqE=;
        b=RTBxdRLgCf0RuLy3GvOV3hn4XDhzhIaVIJ8C7slqV59p2Jd+sUP3lJPopdxIbCkmuf
         gDx8RUGxbc4euVvGiASYnZqr2W1Hzz1FfTUedH0bfGr0LKNwpSmSSDhsuGkmEYd1hJHb
         Y7k78h9EaOzGdhD00Jl4jMp+6i6728lJvRm6w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735318665; x=1735923465;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z/Q5xeJIoq5Ujssv/lVVpXyTtV/F6QlZNcPSL4YMIqE=;
        b=VvK26P8CVDcPvQi92bnyqMCOoOrPD5KI/EjnWfH/LzObEdDbXqx3rPrxbLsKhArCT4
         gQBkFnHdoonau/FfUfvqwHDq6vfJIsWraJUhY/LfWAwYzEAvqrZAEfMtAl3JHtOoQtZj
         6BWGD3zlhtkEA20YyohiBuZVn4YjFN7XSRj2CjVw9jI3T7vHZ66LdLg6nNQP4Y+guqsd
         IyhSIjuVgRVnebWm2XloVW3a7O/iCdlMeFB1bkDSnSNy1Jztc866d1Xqtjydu7uApWE5
         cP4klIkaNhywGmwzVj2B6RXJL6Tgl8vDmsLP3Maw8jvlHjn7K6trvDGdkwJN82Eq+YxK
         h0xQ==
X-Forwarded-Encrypted: i=1; AJvYcCVxTVUVtNNskkUwomwjsbJ/V08kQnPlCLhfeZif6QpJWhUEe7NyAp7CS7acasK37jF8pDe9H424Cite@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5qpxIbvY4NmuzJ74GsYbEsLmMlMCCN0VhY3O+BKawTene4sy9
	ofbfgttjz5p6QiC9tUfqAljP8966bjE0XmK/luGRThFS5/9eKKXCrIlnzComPlg=
X-Gm-Gg: ASbGncuYdNMoiJAbAKBU5g6+BfYFulZpvWUUjGqcBl8Joc+bMU0M2VfU7v0J5sIZhh/
	wnf/sUsZzkJE6xerBWbwDL1GydJp/AJL0dlUHFqu1AjpJpiUoROMJJfCHxBXqWdmq8vqqwJWUvu
	A7ySTTZEgjnXAzAlBrk+lyOzXM4Xg+xYSiruAW7grC00TMfWv1a7lnss66HJ1NEiD3nr8tJ7mWH
	rcWTkiUhTNRmFCBjDxv8ohHAB3d8sOHKn1VuQQzkP3JkGR1eLSqIZ53S7wX6rTFxE6iXd9C0OQi
	jPbQyh9xDs3V1v79X3MpmQ==
X-Google-Smtp-Source: AGHT+IG7WGJrOsb7TyGRh1ACx7FW71ZyfueLA84uEuZp9U5n20JO6c7QeCVbSZ/v+tRXVp6Smkf9tQ==
X-Received: by 2002:a05:6402:2802:b0:5d3:cff5:635e with SMTP id 4fb4d7f45d1cf-5d81de065b8mr63355995a12.26.1735318665532;
        Fri, 27 Dec 2024 08:57:45 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f0159f1sm1130097266b.154.2024.12.27.08.57.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 08:57:45 -0800 (PST)
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
Subject: [PATCH v7 13/23] arm64: dts: imx8mp: add phandle to anatop within CCM
Date: Fri, 27 Dec 2024 17:56:16 +0100
Message-ID: <20241227165719.3902388-14-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
References: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the phandle to the anatop node within the CCM node. This makes
explicit the dependency of CCM on anatop for generating the clocks for
the on-chip peripherals.

With this change, it will also be possible to generalize the CCM driver
code, as it will no longer need the platform's compatible string to
retrieve the anatop device node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v7:
- New

 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 0b928e173f29..a1872b5d6e2e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -754,6 +754,7 @@ clk: clock-controller@30380000 {
 					 <&clk_ext3>, <&clk_ext4>;
 				clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
 					      "clk_ext3", "clk_ext4";
+				fsl,anatop = <&anatop>;
 				assigned-clocks = <&clk IMX8MP_CLK_A53_SRC>,
 						  <&clk IMX8MP_CLK_A53_CORE>,
 						  <&clk IMX8MP_CLK_NOC>,
-- 
2.43.0


