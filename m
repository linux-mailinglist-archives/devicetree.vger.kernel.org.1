Return-Path: <devicetree+bounces-26593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C3C816FF9
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 14:13:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3DAE51F21286
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:13:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAC1C1D156;
	Mon, 18 Dec 2023 13:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="EqDtJLfJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0D61129EF1
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 13:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=s31663417; t=1702904842; x=1703509642; i=wahrenst@gmx.net;
	bh=/EmEIgukyUVV+mucYcoe5GswB6Vz+ZnkRMJbuAm5b4Q=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
	b=EqDtJLfJF/DoeuDfdtmEXu/+G66nrMzfmL+gHxllQO0ijl/Qq+eoZBd7DWGLi10w
	 bsLoqakw7eAh8IqIXTHvH+iYnz4feH5/AI2AEtxWXlT+lOkaCB/HYFfrdHryiZn5I
	 P7WOC8ZdUKv7DoLsWxADBzGT5FsnAJjOk1hC26GDeazJbiDCo7X+M57JXju/OMwe5
	 0GpKqP2EKizbkLPhvL6ibq3yGOh7/FhDH/yiqmDpOz+mYQytuetKKEB75buxigifs
	 Aq36skfufMwclB9gTbK+3tupBswRSTK2tP2MJRyZ18tbo0oFfj1rSEEob2az16Txd
	 eIn6Ipznzd2/4qxvpg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from stefanw-SCHENKER ([37.4.248.43]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mr9Fs-1qv3M41Tx0-00oGuy; Mon, 18
 Dec 2023 14:07:22 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Han Xu <han.xu@nxp.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Marek Vasut <marex@denx.de>,
	=?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
	linux-imx@nxp.com,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH 1/2] dt-bindings: mtd: partitions: u-boot: Fix typo
Date: Mon, 18 Dec 2023 14:06:55 +0100
Message-Id: <20231218130656.9020-1-wahrenst@gmx.net>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:g2XXFoLW07X6NELwc42+oN4U3EW3CCuZhhHVyAprnuMSVevkfGU
 8KpJ/8gS/go9jL1JbfacfrPIrEmHtoeAn6te5m5Uf3uwcKbQV+tf7EZ7DSqW4eU2vv+uRF9
 rWEAMWoJ9POQdlALiJgLNahvw8FcUS5wLeT1zOsm0dEJbWMbEW6WI0oNwnhCci8bB5jqnYe
 J/xXM9cpzSHt48mwcQIyQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:LFQ5K7s44Do=;8z25VehtrxK6n4FY7pIyBgFQX8B
 PoJzFWbtoNbQJlHLUKLQtizwspsx/T+npfI7MqTkLFG0762PEysahgzMXi9infv/JAL585VRz
 GUdewzX2L4XCn43A/JLXqlrGOzsmZezwV9+zi6ndDHOmNLEPgjdCuQR/4rzS1MtFtRwNkOn6d
 hUbR/8ep536im0DElSYGaefR8eD3e8R+NUwcOxefmDokCVjg3h9fJnTEUJzvgmTpLfwu5EpPo
 z+xnw3EqNOyTTMBfBCTQ8wa7fjSkDj2ogHhShtuhzQOyl/BBwqBS9vUbvH+8Dxbvgqujsw2RJ
 hLTfqtnbel9kM+dsx7+Zk25B0HN1JCK/8GEYZIdeJfeiI6g1apWigBYWA/lE7WYJmasGL7k7L
 2SyFrbwvX7UnVeU19QVVCrt0HMLOIaWkq0aJ314WN6u7E7BkOHYwprGeTtid4IIi++fqbgjyg
 pLe3mi/IQYy5Gc8WmOQFzQDyqtim3RaWN2u13uG+5RkA2zO260EjPILI/jm1NHpsu2mwSlT5M
 hHrw6zU5/XlJre3AWQigu/6S0xDNO3rMyWscl4QKn21yReGw9pdgR1i9DUOFMuXIpal6NFiMz
 PTfFJEzwCO26sfbR1eZPpQgSRTs7qtYMO21hOx2k3irwQClj1I5XQnYK4ldPCwK540UaEp3Dq
 OG+/xjoZeYnqC9qg7/W7OCl4rKFo7vAMcu1bmd9MeO6YBQKQCfdQAtCtDSB7/D/+xQrYno57J
 Ms58C3lTp8+WQGuScHlByeNHHOII6br33pLmsNo2XMhBZUjZAu6u54jor3lIasTm6H/M7BQC5
 PxQWAsIjMHjRNniLw1Lf4ZtuNHc/oTN33Uii4C6iqG6fTsaccdThHUhxqRSR8zrsBcfCGE+xN
 YR9loA+cYPXC1QGxxuteesznmlo7EAppuByAVba3wyYQMaYGfLW8ezcfW6FmOI12hiCXVlpcD
 wQTuYytU/Z6xiFyJH53TsoDfde0=

The initial description contained a typo.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
=2D--
 Documentation/devicetree/bindings/mtd/partitions/u-boot.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mtd/partitions/u-boot.yaml =
b/Documentation/devicetree/bindings/mtd/partitions/u-boot.yaml
index 3c56efe48efd..327fa872c001 100644
=2D-- a/Documentation/devicetree/bindings/mtd/partitions/u-boot.yaml
+++ b/Documentation/devicetree/bindings/mtd/partitions/u-boot.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: U-Boot bootloader partition

 description: |
-  U-Boot is a bootlodaer commonly used in embedded devices. It's almost a=
lways
+  U-Boot is a bootloader commonly used in embedded devices. It's almost a=
lways
   located on some kind of flash device.

   Device configuration is stored as a set of environment variables that a=
re
=2D-
2.34.1


