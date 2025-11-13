Return-Path: <devicetree+bounces-238083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A0AC57063
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 11:56:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5013F4E63A6
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 10:50:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBED1333453;
	Thu, 13 Nov 2025 10:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="s9Ta2mEW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay47-hz3.antispameurope.com (mx-relay47-hz3.antispameurope.com [94.100.134.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87F492D837C
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.236
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763031005; cv=pass; b=NmIniFpRhGrAOyb8JxynT1CZpFIjmEBJDWen+WD/i13jLnjUquqmeBoDuQh2Z6/24wlDE/D67XmcJT/vR3NH/4+c9M/U7ckKglbY49vm+gGj6wfaPp1vmezA/pxEGqQ2ifIlEIh7SZ+EnPVJxZ2ogRD5H+z0fvFoUKAXWMNHo6E=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763031005; c=relaxed/simple;
	bh=mXl6UpWBiKHfYNnaiMBr2mKsHAe4lVsCCB+hpvDbOyg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uQLPC/zi3F7PR9JdF6hNFsFKkBysw7eJLeAZhfkqmlU390sNZnxKC+6ku/D3vbpUr9zQTKaAHrgEXcZM+TbA7J6828xyu0eJXxW0Gv8LulAIL2+HWE47FQsqKenbZyAvQqdnJbeTxWfMePOSQyJApkUO3ILdY21+4DW+QNiLcWk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=s9Ta2mEW; arc=pass smtp.client-ip=94.100.134.236
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate47-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=e0hk/9oKjZpX3yolBpPlN0u54kAbbIh38AdbzQ0+tRw=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1763030954;
 b=kfYHsTCi+sSTv6YTvoaCXNcpbc7zjqb9S2oYkBVqvwyPoIInq2l1bURm2QNgF9CbHLf50kWK
 3/SILatkVxhrsdcFXOyK4XhF/c+bc7+rldcR99/bJqCLG4+W8KQp4bmL1shKjxQumCAxmKJOsXp
 1G0/LXcJyKVs7I3swNZ/KomJB6rL5CuBsIlxo6E5iO/abwG2j9xZcbfb0/jJmKVO+Tvy3X4skmk
 hLvKfa040pQJ7qxiCQLrGssjqzFHDH5w3/xRABeeUOyitvXmMLoNwObXMXA+0aORwcDAih2f0Wx
 i5Ws6e3PZJkDslkGkSA5fvpPmjLVNymovuEzFAeYkfn1Q==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1763030954;
 b=Rv6e7POA97DzCYwzlmNWGJfkNQGXBZ4waUd+mXbtnQD/9eEzkt4e7dWuhaNVuXXN48u1MKw9
 XKiUqCx+J7589FPr2RS8Dm5eHib6aoIw2vxeiqq6CTRZxb5aJK+fQg7uh9zt8VfxNBQ1EbiPSto
 uJOZ5cRrJ88gz8ldLYbHGaKw7QwsVoz2VmDCwtBTqGBr4zqRjUAcAdXXr2zOA9Fx36q2o448Tao
 h6h5Ido178w4J1QuElbk/Zc0/bxkO1cFFqC8PLNtnJzHuiqSSgSrLD+PB3oUNJ4iA07xbhdTwVj
 oe8rMDx1+FMSJjNQVSARiEQqRTmjGowOHxU7+QKUBrcZw==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay47-hz3.antispameurope.com;
 Thu, 13 Nov 2025 11:49:14 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 7DEC75A0FB5;
	Thu, 13 Nov 2025 11:49:05 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux@ew.tq-group.com,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: mba8xx: Add MicIn routing
Date: Thu, 13 Nov 2025 11:48:55 +0100
Message-ID: <20251113104859.1354420-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113104859.1354420-1-alexander.stein@ew.tq-group.com>
References: <20251113104859.1354420-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay47-hz3.antispameurope.com with 4d6cTG256Zz4MJ2w
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:38de7fd8ba10c26054d70621dd57a3ee
X-cloud-security:scantime:2.335
DKIM-Signature: a=rsa-sha256;
 bh=e0hk/9oKjZpX3yolBpPlN0u54kAbbIh38AdbzQ0+tRw=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1763030953; v=1;
 b=s9Ta2mEWuUDa/0jjR7uIbPBSdot6WLfGkbuZHOEPBN5gedlBciVfSNq98xzO90a9PjINBTjl
 gOttxR//VdDkbeKjiLpF7IFuRXOG+I938kpD+mcturpFKecvK5Z/ttlNvAGnGqiOwX9FUgjCfF8
 L0xEREMEhdM/H8vYHVP1pb38/VBAttzr7dy7TEMUk9AX0pgGzsBIz0PAkEMH8Zn916ET6GaEgWo
 WUj+CpGLsP1SJWoDuynrjnDp8aIQzJPh/ee3EJrdn0e+miud/QhR1ORO4ACe6wFOuuBH9eFuZyK
 vh9qHwxirg585Z9yZIdLkxmTiSKQ419i6IAGw7a+XwrFA==

MicIn is connected to IN3_L. Add routing including the Mic Bias.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/mba8xx.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/mba8xx.dtsi b/arch/arm64/boot/dts/freescale/mba8xx.dtsi
index c4b5663949ade..f534dab44e8ed 100644
--- a/arch/arm64/boot/dts/freescale/mba8xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/mba8xx.dtsi
@@ -128,6 +128,13 @@ sound {
 		model = "tqm-tlv320aic32";
 		audio-codec = <&tlv320aic3x04>;
 		ssi-controller = <&sai1>;
+		audio-routing =
+			"IN3_L", "Mic Jack",
+			"Mic Jack", "Mic Bias",
+			"IN1_L", "Line In Jack",
+			"IN1_R", "Line In Jack",
+			"Line Out Jack", "LOL",
+			"Line Out Jack", "LOR";
 	};
 };
 
-- 
2.43.0


