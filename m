Return-Path: <devicetree+bounces-79960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FFF917781
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 06:42:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6974F1C21DC3
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 04:42:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D14E13C81C;
	Wed, 26 Jun 2024 04:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="g3aBTX5U"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-225.siemens.flowmailer.net (mta-64-225.siemens.flowmailer.net [185.136.64.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B47313C3F6
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 04:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719376937; cv=none; b=CNDcth6i4KqPjkeBIf9Y2bkgaubh3jgXu4xxF1jmbpPUR7kiHzAm1UwD7FS/LdZIPvdMrODThXobaGQETWSg1PIY/U2+Cn760pGw1tRRIoHUrTKdzdtJTVwT/VMT1S+H/bw3D/8QBCN4be8Qzh6eAulGPJmi4hWGQshDH0IBems=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719376937; c=relaxed/simple;
	bh=EBuIz6wjhBj7acTbwC/yGLjIBSyvxY7djPzeN0y63HE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KGU1XHdppCfaMkwRuH882EBMwnVXJdH7tuIvjfclELQtzm/98Z1fhDwstsPK1VoSMIEhQbabZgGt7s/S1jTfIPahbjr+fL0Y154SvEQxMQydQ9gawwlIcM7WnXoB2oTchMwxkcA+4VtssOOT6NiN0dPdanY6e24t5434njxQXpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=g3aBTX5U; arc=none smtp.client-ip=185.136.64.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-225.siemens.flowmailer.net with ESMTPSA id 20240626044210696d737dd9196b6bfa
        for <devicetree@vger.kernel.org>;
        Wed, 26 Jun 2024 06:42:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=kUG2okvif4MtDlMPatXnIN9gC8f+y2NMeqlJRdmBa7I=;
 b=g3aBTX5Uhf/2EJw34V+OHMfDhGMPLxW7gcHVKJ2fdjRkJRCZxi95pDRzaHCCgIG/hiAfj0
 1+rJYcLY0LcvwYIuevuJ/GN5wdHOuWlTGsWtFv5R9Ia+2kvs1iZH66sKNYOcZU8h2WjQF3ja
 8JoaHS9xil+imis4FJdjkOho15MF0=;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Diogo Ivo <diogo.ivo@siemens.com>
Subject: [PATCH v2 4/4] arm64: dts: ti: k3-am65-main: add system controller compatible
Date: Wed, 26 Jun 2024 06:42:08 +0200
Message-ID: <50012fe2faadd99ddafe1e5fbb711367d4dbc508.1719376928.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1719376928.git.jan.kiszka@siemens.com>
References: <cover.1719376928.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

From: Jan Kiszka <jan.kiszka@siemens.com>

Now that the TI K3 AM654 system controller bindings also cover the usage
in the main domain, add its compatible to address dtbs_check complaints:

  k3-am654-base-board.dtb: scm-conf@100000: compatible: ['syscon', 'simple-mfd'] is too short

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index b08f43812384..258f73fa9b1f 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -471,7 +471,7 @@ sdhci1: mmc@4fa0000 {
 	};
 
 	scm_conf: scm-conf@100000 {
-		compatible = "syscon", "simple-mfd";
+		compatible = "ti,am654-system-controller", "syscon", "simple-mfd";
 		reg = <0 0x00100000 0 0x1c000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
-- 
2.43.0


