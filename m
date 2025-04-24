Return-Path: <devicetree+bounces-170177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2B5A9A1DF
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:26:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 73D0616E39F
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 06:25:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 308682046BA;
	Thu, 24 Apr 2025 06:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="mzQVgpBf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81EB5202C34
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 06:22:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745475752; cv=none; b=nOX9fivNnekn5pGc2sLK4YlUWtrKTNg4E66F68JiA58qAQLvmCGQfw/0BxUslWwe8KcMS8CDUnYgSZR4fnFld9VbtwHvlEomj5ZsulKWEZkdvonVm7PVtheJ73EM7MwzKMEMop+vq42NdSxRr39uA+AgB8xHZa6BHU+NG4UuHsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745475752; c=relaxed/simple;
	bh=HWXVCNEIxoZ2DGv2oUaqkHyisgW7GzYfA3+b+MP7RzQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eafScKQcyov8EePLbYrWSIISeKHJgGqgHdIfCuQwDpNqpS+5N+iaaUKjlKcedsgX/3M1m0nla9ssxRcOF+R5GeRnNG7wqwrLXpD64OEOwKtHN/jclvDKCqanAzZOHU9/cdk+cyjb3fRs/kv3xTrjtRD3jD2WfTr8AsO9Lhy5Jek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=mzQVgpBf; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43cfa7e7f54so3707085e9.1
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 23:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745475748; x=1746080548; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BCP5wX50ZPJSIbPo78DniGK7SxiDEu6J15Xy0lcbUzo=;
        b=mzQVgpBfTvh0yQvVjXdiLZduXtG2OfIcfTTcdyoyUDYuS/MpqzjAivCJ80DlHCXAxk
         Mq7WskJGRuGvHMositggatNafBLxukWhv75fRnnt+3m5XztbMlsn4RminQSPxdC7p3PC
         tipPGTfxWRwUSDGaZNAazebqbkH9fR8sD6vNk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745475748; x=1746080548;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BCP5wX50ZPJSIbPo78DniGK7SxiDEu6J15Xy0lcbUzo=;
        b=ja9eVcDefVwspyDyL86rumD45USfX7P52H97UFnVZ2eztQ/tYGDN/YzvJgZmXZRSqR
         qm/G2YkTmH8Lil7D+vLEVvpVb8VXiwlQW+9/FNRMOBUmSsPuEzaTHQ5tPsQGwS+kurYn
         vDr7Wqq3+f44pr9o9EbY9fZHiGd7Nf6Qjj4b7oumkMwUYgZM5NZ8aVb55ZIMvHzHzeuo
         4He+DXqw3O70MKacyGHGEqw9CCvEFnvUMciaNDN99Aetayp573du3WAzfBFBc67pdKH7
         hYKEdKz+Fmd5q+2E8b2LCG4vNcSIaVLUTKKj4IxC9+L5oSymXs/E7PvVlhjGP8yEARjh
         ZS8g==
X-Forwarded-Encrypted: i=1; AJvYcCWiIt24XtobUYya7ZIIycfHlP1LgHuvZgfAEGjIjsrEcLVMkhPIKP5KusuQ+Cyp9SKk4YAr17datLyo@vger.kernel.org
X-Gm-Message-State: AOJu0YxJLkAQwSmiQtfURcYH611F2fVN8aSxfWWxKlU2lc25fNEsqhpg
	5EvwtHpt4hv1WoOKKZdDvVQgPvfq9ZyDSzelrnXk85dA0rRmX3oDK5TzWvQdwtM=
X-Gm-Gg: ASbGncucvJWXukfdmtvem65jsOgzEjl5Kacb5YbjSFFuU4T2JRlitlhI9Twdh62iTR1
	uBKuRU+scmqBbCLwMZNu6qlN8NfU7nGDz+yvV0Trou469BSOBO9zAX/Z2Yl72MxPTAabpGv4zt6
	H4B4Cdf1EygztbUFh/DauxZHxLglixdFmYJpDHXMypTpaFYufIS7f9FDDHaD9FYSoNUpgxrozM9
	lhAGF/2kHNR1+Pk/YD8n9VoJLvwBmk297ppz7SYMw19Css4TJCwlnF+f3dnF3eUv5DT5y6AE1iX
	uth7SgxK0rfJN3CLkUDBVSaTTENCQF1oaLbnl77b4iTsgHnhccI3txSGQZtzV6gT2xO4867Fcts
	qPEx3
X-Google-Smtp-Source: AGHT+IFoHdGVBD8O1Hzz0CKgZ9opqhMg+ND/xcdm2+qcZWev45QsNCVd+jDdCasqwcizMo62oEm1gA==
X-Received: by 2002:a7b:ce14:0:b0:43b:baf7:76e4 with SMTP id 5b1f17b1804b1-4409c453b1fmr7692385e9.1.1745475747768;
        Wed, 23 Apr 2025 23:22:27 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.65])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2bf8dbsm7243435e9.35.2025.04.23.23.22.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 23:22:27 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Peng Fan <peng.fan@nxp.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	linux-amarula@amarulasolutions.com,
	Abel Vesa <abelvesa@kernel.org>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v12 15/19] arm64: dts: imx8mp-aristainetos3a-som-v1: don't replicate clk properties
Date: Thu, 24 Apr 2025 08:21:45 +0200
Message-ID: <20250424062154.2999219-16-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250424062154.2999219-1-dario.binacchi@amarulasolutions.com>
References: <20250424062154.2999219-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The clocks and clock-names properties are already defined in the same
way in the clock-controller@30380000 node found in imx8mp.dtsi.
This also helps avoid the need to replicate further changes in case of
any updates to the DT bindings for these two properties.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

 .../boot/dts/freescale/imx8mp-aristainetos3a-som-v1.dtsi      | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-aristainetos3a-som-v1.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-aristainetos3a-som-v1.dtsi
index 231e480acfd4..6c6c6f180785 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-aristainetos3a-som-v1.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-aristainetos3a-som-v1.dtsi
@@ -151,10 +151,6 @@ &A53_3 {
 };
 
 &clk {
-	clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>, <&clk_ext2>,
-		 <&clk_ext3>, <&clk_ext4>;
-	clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
-		      "clk_ext3", "clk_ext4";
 	assigned-clocks = <&clk IMX8MP_CLK_A53_SRC>,
 			  <&clk IMX8MP_CLK_A53_CORE>,
 			  <&clk IMX8MP_CLK_NOC>,
-- 
2.43.0


