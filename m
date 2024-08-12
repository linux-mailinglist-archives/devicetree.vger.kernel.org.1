Return-Path: <devicetree+bounces-93040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6460294F7D3
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 22:04:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 211D3283CB1
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 20:04:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E45A5192B73;
	Mon, 12 Aug 2024 20:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="NRyV7bkb"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E254B1922D8
	for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 20:04:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723493077; cv=none; b=TQyZe6f4q2Su1RPvRgou8Dd2X11vJ3zcsfQGce0GqAfbE8jDaY/Sht+naPRVwlce/lVIUSlEvZigylyu6P29JMHegibm+IOXW2ceaBMPQmuRFCLngcCEKyDIHX7Kyy9hxX4DUOa7Z/2mwq/eU8pa8eLFmuJ/P3/QFtvzCaerxGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723493077; c=relaxed/simple;
	bh=3qwZmE6oYZtUQGwURfuIVPIdyqkZiFqh8peK2lPv5/g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Ffnud8BtvBJ7WM0vkhWo9QNhCRrZR4eqiIO5LkpHFrbmNd/AAKCkRFJMMupZ0QCbShwYVSbQCGmglJ5y+wWpXF7sGfvP8R+hXzzfAIjkBcQ4cUw6+rLBeA5tlWn/1vf1D32Hpi2cXDWiCtGcLHaGDjcqjNcsvFJxnBWLjRw73oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net; spf=pass smtp.mailfrom=gmx.net; dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b=NRyV7bkb; arc=none smtp.client-ip=212.227.15.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1723493054; x=1724097854; i=wahrenst@gmx.net;
	bh=X+yHI1RwfqKGeFeDMAcuSDj34uctL82kpPe2GZDjx9Q=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=NRyV7bkbZktPYSRnvLXWA2ejJ4v1Vk3SXnqLkQ6CiZUTZKLIAN+zNcRKMLJTGCA/
	 t51IrMbMlSo1B64HnEmp9QUZOyun66KfpeSUtlepK9bIOvDJ02Z/Q91UtKGhH8WMd
	 gjIYXUjH0ETb7uWuQXYppz8xOL5O5Jk3pcnnJW9FsbBdoJ7qOuoBVOcjVzI/3uw84
	 nxhQskBkyoZxD5zlwkkXTp729IRU6V1sAvOIG8wLU9ipsVft0dGQpGZxBCl8mpItC
	 8t5K9HvqwI1l7n3KKWEevL49iS3qkoCUPIojtxyCiqUGuElWLDut5pz0GVlmePRw3
	 8PeoS3gZF21uedJPBA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from stefanw-SCHENKER ([37.4.248.43]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mplc7-1rqUjL10W5-00pMll; Mon, 12
 Aug 2024 22:04:14 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	bcm-kernel-feedback-list@broadcom.com,
	linux-arm-kernel@lists.infradead.org,
	kernel-list@raspberrypi.com,
	devicetree@vger.kernel.org,
	Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH V3 RESEND 4/4] ARM: dts: bcm271x: add missing properties to local_intc
Date: Mon, 12 Aug 2024 22:03:58 +0200
Message-Id: <20240812200358.4061-5-wahrenst@gmx.net>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240812200358.4061-1-wahrenst@gmx.net>
References: <20240812200358.4061-1-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:25iRptNP+UMCfwoQcrqHvYF9odB7wutRxGZwuM2iINX5NNYJXAJ
 d8Vuixx3k7SVd7J8mxcg3pjBqof7E+QAe5U3YdABD61BvAc115OvmmkUOxMCFnn5vli8CCB
 jPGeqP5FSUa+eB+MqHDSLt4TZjAv0jRKIZC+7+M3G0aG8ZJIj3N8HzvSF3I7A3YS+md1VOD
 b0WlTLVNr/NV3rG8wvEbg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:ACqlgHSleg0=;gpTyx7ilFF4CK5EaxcYgTekeSjm
 T9KPQHZdGWN6EPH94hFMcnd4+8s+58ZUFOvknA3c9UnK1E5ktegCz9ZgGzpzlpTGQn+GHLzxR
 2KAnKji3QR2xaubJ7qnp1uDwzWQmFeYTaNjMq+2btPQ+hKfQFcvcn1UFHXI4PojVUVrvLrq1Z
 UdjvfcrIhKVwGp4z/tfClQ6xo3v3ygSlPKYPGldhS1IVLXkY+EkM7ZnhNoNjFqVjToIzgix59
 hA+7h+trzUhjfN7AQW5Kjo5cr3aq/8iOtmGPfOz1yVs6jjGlG7TXwF2KBXw3z7wCU+Ij4PKqH
 j+FMePIQyNxF9aQxoB7sbbk4ChUPLnJ5eL0AdGWApv04yll5fvSI0DJN6LtDgK3sA2FPtOFeY
 5vUhoYj5QCbNoRRh2Dwrh2bS3pBC4qcAHcczcXhuNJ+utGD+CjL+bde4oWQZ3ycdYtbpPpvIK
 bE06rwl2hYBFQVEB5T4cMrJVE9Ap17RGbvPfOlGX9+xJ/QbHdys8uDgW/8++Gt7Eq4NKEBMnM
 P8Amtw/ig9mLXiPvm/EKT30dy7t3etAcotCLoxgeEryT2gwkxF9ohSqA0Pkx6QOEPvsjgyBLh
 T8HPbIeC9GsGMv3lJ8QF6POp4Cs1VQJUbcYy8G5vy1BBe+mb6XUX6d+esXlvHRHiuEoyCmObu
 rQ0sR28/zetTmtldCuKhusFYfDA4FgHD0+twPNDbpserMEYgCozk0JcAHC3cTqBgiG5hKprsS
 K0cq/xc/rwnSAHn+mfiPyaffmmMnuQTgtbGWVJRaWkct14eoVCZO2blLDKqGbTcRFgehKG+Jf
 qEm7Jk5lF4TvItfDyhiHolXg==

After converting the bcm2836-l1-intc DT binding to YAML, the DT schema
checks gave warnings like:

interrupt-controller@40000000: 'interrupt-controller' is a required proper=
ty
interrupt-controller@40000000: '#interrupt-cells' is a required property

So add them accordingly.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
=2D--
 arch/arm/boot/dts/broadcom/bcm2711.dtsi   | 2 ++
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm2711.dtsi b/arch/arm/boot/dts/b=
roadcom/bcm2711.dtsi
index e4e42af21ef3..313b1046d74f 100644
=2D-- a/arch/arm/boot/dts/broadcom/bcm2711.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm2711.dtsi
@@ -51,6 +51,8 @@ soc {
 		local_intc: interrupt-controller@40000000 {
 			compatible =3D "brcm,bcm2836-l1-intc";
 			reg =3D <0x40000000 0x100>;
+			interrupt-controller;
+			#interrupt-cells =3D <2>;
 		};

 		gicv2: interrupt-controller@40041000 {
diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/d=
ts/broadcom/bcm2712.dtsi
index 6e5a984c1d4e..7d192a5be851 100644
=2D-- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
@@ -224,6 +224,8 @@ mailbox: mailbox@7c013880 {
 		local_intc: interrupt-controller@7cd00000 {
 			compatible =3D "brcm,bcm2836-l1-intc";
 			reg =3D <0x7cd00000 0x100>;
+			interrupt-controller;
+			#interrupt-cells =3D <2>;
 		};

 		uart10: serial@7d001000 {
=2D-
2.34.1


