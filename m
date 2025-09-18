Return-Path: <devicetree+bounces-210088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C48B3A1FE
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 16:34:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EC605188558B
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 14:34:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA13030DEAB;
	Thu, 28 Aug 2025 14:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b="Rq+SzZon"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A14F431195B
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 14:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756391666; cv=none; b=sWmKFW4DAbc/gCLGFS6qZXLN05J/b4v+sB3L/PgjUzgtcStYq4rEzy0k8pNKZguOpvJuoqlL2dEuRTSep7d8rnE3NdvJgmPu2V2mTbDUNLPsPFH5bDOaUL59D8jql70cUQ3nD1oYzgysucvXSfGyXmtGO1vOJHHhin0kGM1r5Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756391666; c=relaxed/simple;
	bh=lt7GYsIU/hhO7MaErrnNFcyH46dVVQzQLMCIMc+j3sY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aSIdaTNFqBGT7ZB0Xjzx7pb5lzbq0crxGw5a8UkfzhMQ9rZXU1WRyFg8pN4A/md2Q3Y6tndm9pXdIB6wyFIEegv/vNJFno6o5YrXtOAGdXFOwsVmBnvN1PvoIgoZbg/0Rom2wg4wn6/IGy2ZNqCi8cdSSEo95CofZQ/ZK8dpygk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b=Rq+SzZon; arc=none smtp.client-ip=212.227.15.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1756391661; x=1756996461;
	i=markus.stockhausen@gmx.de;
	bh=lIfDIy7cOlaPJOL4q9TdLTO0Q6ENKMXTOYMEygKgPMc=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=Rq+SzZonPaLsKiaAzEGl6NjusMmmfziDK7Yl/ZcydgxP4rQrX5mgIPXrX61x5lxc
	 UsCm9JFiMuANumtieH5gY0biBHLwxQBg7uAO0jvsK//Iv6WKGpHR5YONAad7QYH57
	 kOvG9h86wfuDWdbEW3fcSuhsMOntJQhoAsWxH34NMAl7TQiVqu7rYklcDrl4ntxMQ
	 vtXTW8wdcP9lo/Kq635Og2Hd3HjdAqLTdnhZJ5TVEQlplem4vpJkhnjQ6qtMrsXPG
	 ZYB6vMNMVipGenONHCKQs+rcOm1PW2lgR12SrtDd1yCsvEzXu9i6BWMJokDKE3SdH
	 ebMRi2TAeoSUes2mfQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.55]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M4JmN-1uruou2F3R-003mnk; Thu, 28
 Aug 2025 16:34:21 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: miquel.raynal@bootlin.com,
	richard@nod.at,
	vigneshr@ti.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Markus Stockhausen <markus.stockhausen@gmx.de>
Subject: [PATCH v2 2/2] mtd: nand: realtek-ecc: Add Realtek external ECC engine support
Date: Thu, 28 Aug 2025 10:34:08 -0400
Message-ID: <20250828143408.2511086-3-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250828143408.2511086-1-markus.stockhausen@gmx.de>
References: <20250828143408.2511086-1-markus.stockhausen@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:POTDHmCBSG2WfpqRr5X8EKZJyUQwHdbK8w8LCgMVq5jl/K9QBhI
 3LGiPuyhhncTOQzgjCpKK5DBNsW6MH+SvMkqkTLVMtaN2Gr8kYiK/XoI9XKryiQEqVPWV++
 M26/t9Yk6TmxXSDoI7pvN9oAoDSvMJb+cCSCJCPoIBMhAZvmvhH72XGknnAW7e29i2SZEn9
 5yl+qGFb2rL6DI0/qrgRg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:92xdAynrCMo=;6CFW71967vYUsPgv5YidK2QD8LA
 CQP1iIAjTjQLZQMGh0W21aFQhM30K9RrM46emFMwMjsDUIMbcwbdPgG8NPYnXxVX7VbxJuO6N
 6fF2bHe3jTc8SjUWZQjXoyo0v9jbsjPG9+oh6mIOPALezQ2cVo6BoRTYsgLDAEpJUo+mqTAwE
 fMmk7J2F/yfbPSUCOztu1+3S6dMORxrCNFa64lI+FX0FJ2APjqt/Wmez2+ecbTL66Yzlhqxmo
 lA25PejKeV2mZN0nRm4n1MitlnV5FWZHLuYBSvvbayoVkYJB4SZ9lIQgSdeihrt6BGSslh3/j
 vo45lfEj2vJ65Q73W7kg3PuYxE7ZKJj8AqoQEiErY1d/HnjVt03L6ObYkDjrmjgO5Y9rd2idp
 bE5uIUlzEjtOtLLSBTNXx7WFFexOKDMqle8C6RAjEFex5sgXJrHLGgO8oNkkARG+W5PNiw4BX
 4NQV/LfLMSoXxlLhG0oA8P84jeZ5fttWCC//DZB5kcALaA72dvBhMNgtVlzUbNlO8YJBzkmgx
 MIEwueR3PjgWmzEoDk0ygpj/0qqdyehwfb2ze2aGEQGvz2Yk0llZ5ZA596+OGBYrAWVVkk+I4
 ITrIgfcQO83Ux0LiLlrGD4q2hmYsDxYMMqSZ/eOTx7opyhdhT7HtCJ41EKVnm42+5cNEChDcD
 F3uDyeIX1jgo0Y9RxtZjdzNfd1CLI1R1kZ75GPTZcIegmPfit81MvJPGeAbDcV9mOmWGZT4w7
 HZs/hbF9eROBKAab1Bp5hSpwoae6NDynICDTWgFo4vOCPt+6O+TgU4OXfm99yKqoiC164CBQF
 B7fnJxCaGAI+5OAEHl7Twc/bvJUTkBjl47S4OyRTi+I1wW+QI5pSnSy8wP29leMWcmxiXe2TI
 iDmV2uSxhghE8kdTCkX8nQH3AASjQ/jCRjYyEgZh0xi0lFrBQE5Jpx5ND8o2JDhsJssd7FstW
 /UTBIWyNRgyFr+IN6JZWdOpByMRTW4Sqb/2RzjpbOUxp6dnwY8PuEzKiFK8iSn+3Zs/sCpy/G
 lcXn9Jcq8I43LzatKsDholN7Y78fqyK4QyNmpSP8yEoYpfeIuEgqA2J4W6zTf5KmnIgFwTs9D
 HVahHR/4z7l4H58kE86nMabWUtuprTKDldeBQFBNkDykVzTkE4U6qmWyYQ/GbrEJC24oauVo6
 0p5Iaq9PX4xLEUgFkFjuweE1pcJSDYHLczvPve96oMb6QC2u3ZEERPlexZmYwGR59FedtRqrx
 VgEXUOykuyOlPmbD8cJO+HoJv0cqfs7SANf8w7dQye9PPzljMEpGC4tnqNWfky6CQ3np6O33n
 KjG37ngFWpbA2Qn8NP3ihmwEFvPt1Lm94ZCO7ULDlEKtqWVH5Yc4hxSzZFKSE4ng9r9iGsw36
 1w14T26v04ZVaZA3/7obAObFU+FSiSW8lZn063wY2jMX3zKUY9wrZQjx2LcSP6UL8fleEvGxo
 jTfL5cUnnlQlNqbklHg4T+b1reAHiqD7mJ5PTJsL3RqkNQrCIUtiVb+E29Ux6Clr3JWnVUCXQ
 TcRpc9PaXG593pqhOmoyYpADKPfo3JtVaamh4ZbiVvCWaCUwmN/rJtforRy0PLCccB5f5gThV
 o7IcdrW29Jo+gbjiL4EDtdIG0/sgOlqIwXzTsqx/XovAkWSqpzUJnmXQ2iGUh8UYOyRajzxhV
 Y6YvqGAYaPHejYIatrFEAckwLkXVGK1goUiBbMb0zRGHzGzrX3fj935pq0QrIBvOAs29iPGvt
 TuTCyZtdIFQQ2UajBZ6fzkD7Hluhjb/oOJK1fLWW5uAt9HQ56Gy76rFn/qrlMlW6/vp8YipqE
 5spTAJzdzNl0HaF9Z3t2tktNG/m3dZrDfPQH7jj0mlNI1m2cJaxgHEde5bHH+2Uydxl8937aC
 Pzb2ZarnFurJD3TfFS0LOzf1jTH5OtCZb5D8CVQJF9ARqQq5t4uAU8MnbS6CWPuo1tV3la68z
 LY93HpVfrEv95AkvNvFxb8fqgSF6cYD6rYStGeIgTJ6DEKN849IoWTrgcylBboI/SEyycrll3
 tX6sMJN4Rg8TM6/VPtibQJqIs3YUnRi8B8g73V/mIDT86AJzqet+nFbRD6r7e8pLHfmS5aDd8
 NZzhgvuoleAn+UXpJ4OhbDPjRtneoDu/K+sEQlGhZT6ZwEpAULWQ80loBCWqk2/vB86d4jDRR
 XBppkcet+LoyJLXAtBurxfeKa9lF+Stxa2+scTr4ialvAHtR/hlEzoSnpQi/tHt6JqOGI7JOF
 c/zh/lJEeYL/8k8mCCceECHuuUtgl9tTaC959ZK1/ZySb5WPAemZawECcH4hkuu2nm49qz0st
 RYHk6FfbAy4q5CgyYJeWqmitf1auXV9RKlCfbVw5snKh71DzhU8Krg4pAGsY0W4Fn+TQj/Vcj
 Lmd8sFdDA91llneS5oOywRtqXayG1foLFQMaWjYOoIKkYsMzyJgcEIfP//HN7A3FOkcQO1xjI
 obAlLlwA8OK9pXX0nvU+aeRQMVKIpak4SXYg6vxQ/nNn6flR3YtsCLzVFDEdytnPmCC57eUKh
 xFCswwrbCMIn2ATgp8ND/0Hh6foFVqsAO5hTulmkZEt+Mb2yRNfZjrIXJ4FfuJEmlAmfmck87
 K9d5TTjtAtmbGzlko316gVHhQO1UuZaK5EItchfFLS7tmaY7maPYjaGW+kixw9C66nz1UvRXx
 VqPSPTkxq3G7B9qkb5B+mb4QDfDugbRBJkkoWr9a9QYuiemKdLP8Opf0A+zSg+YDvE8iORa55
 2hOBkB2SQSTEOhO4YoDFrTn7vPX2tXVORCAaOPjwA0fuOdVGLFeUSUXcLfkaBENe89cGSRGa7
 CXq2XAdKwrVjZTln20m7gBChk7RLZpCxnLakpY9Yu3MAb4w6KPRGkW2h9yeVqvni3QGVSxfWi
 5SHp6MpVVZRjkdP/hrsJpKfgmT0jtyWfBL79kIdcPrMpMVi6uNQjAJ3LVIUPCZIc8TfSmHWmw
 bzROW+gRfHcPx+ZTVvsDSCfaJH45VNtwvz3VoNVkCBeyBEvMP+rJ1iWKHNIiNzDif0CGcqfwb
 DSBdSeXZlAOGAXL5BfnsNoSzg28cOJdOXsbCscSPZoYy4nUjdGOLYipyCRTZ3oIt6JngaKgk8
 B6Zn3RHAfW1O6y3y/OhLtX1LvZXdmwix52Y6FbsUOHbm5usqQzEwfH+NH4lgLSh7buQxON30A
 6hq+jc24oXKuG/gpmRBWNyk/wtY/gItNzifbzyy0xJnwwmnkWjHdZSIrkBSiiPtj9v1xS/4op
 mH3tcjPk0EdP3GNpIFElthNZfV38rMax8YigUvQxuC0EH16ggkcs34Ph0EmPFbIxCknICH3es
 6RfSYMZT46/oDb/CCDLK8AEsASFS+RnXcvP7DFr3VbgCzhNTSJO+76X8AEVzDnZSQay+ToEma
 acS95QKZm1CEt8WBi3zXC3WxWgdkABc4Ml3BRb17Q2/m8/UdeoTTe9zmWlk8HJiJSiJ2oXAXa
 u3NebAEfPk6GOIdpIgZPq158u6WUJWi1p0Wqap5cgXCB7s1N8JDXQxMQv9aNkOLBkRoJuoaMT
 wGcXCkZw/sas+idVi+XbTYlFitFu9o+Ni63T4GY9twhoJRZfmaMFEpQsCK6vJeMfanUtL7rxO
 6seBZ2z+9uDOpkahDsyI/NbkqkiJn7fhqC/s45mdb9NMA89dJjJVyn6zBqAxt2DTWCNnNnEHY
 EU/s2h+FHTfjM0TSjkfY4BEWlN2dls+XMk+oWvB3bMlwVQ1uE8YFxFgcsQ4FkzzAEDgP5SFGv
 Qd1Bb4bj0ArJzfH8ubMVyjG1TIYSGpSBksX3tXPNl4tQ5Xe8kNmL1kwmKHovMXw9QQnFj6Oa2
 B+QO2+idZu3Xhcjtw+nM9d8yaBoS2XimZc7XKxW7tVacP1Jc+gbP5JMJH5wgtEG0sWhtSrIS2
 V1rznpPvhjrVSwB9ISkCi5UFQMgt8/dGs8oCiJwFUjftMc+i0Ew1wUA9kSY6zEw+8azAaRWih
 MKIYGO42p1PQ8iVx7mtd8azcNqg10JwjrrRokTEhCvLn26+wMw9fuoJfC4FSMKyI+FVCuPSOs
 WQMZHujfiDeTZUgWLifAsuZzN0Co3Gvg7ygOii2dfmodmsV9NZQd94cI+2sppRAYX8xbncJfe
 wZhzzuTREgniq3PvMyeb2jlSrI00mEzRNUCY961fKI9mZaB/U4EKN4cZsA1wn2l5mFdI0sIkQ
 aFFIxqNl/aIvvn89wHyfkyA7Cz1B/Ick5ozORw+sRRvl4HcMHwNgpbjuI4TamIsdYJlh3WgCN
 0FX/xHqWRvQWNduDWqvfFcxIEVqKEJIzMQXYHA1XG2rNTKCTP7miKUMAgJnCb3UsE0AQDyC6n
 c7wxHvRjuCcF1UPEtvT+Kb/djiqyTjyqNGTFzzChUtlKSeo5mw6wBLC4QRJfK1JCF2NcIiZX+
 p3LGwWDOJB+OrWYRD3DREchWbB/VRT9DemmdDBnVKcktGqyHc9y5BvKQ8QVfYg3YckjC4Fxv3
 7SjHao9zvZb2zsV/Vq/OCcZAQfzyHRXm7HOIFMceZhQqqzuSx+IEfbtrjNepeHi8mhF5mzbhl
 KYzrGmV1mUdufVIgRkr7Ci8fZwxzxsnoeF+LpbXkzcwAThjmZa0NGfYbAYGmI/RxUcD/wp0RF
 IrNmikuXAS/cbNMDw+4Ff3EPGClACFH2i6ZZLgQfLkHadxaQPbcNLLTKSjsgXJK7v4hb+ajU0
 tOQwgt562P9jsbvr83pclR1LtmeJApmkua/cv2Z1RUlOrEDcLaFRSN5h8di/DfAhQTScC+2Sw
 oLUr4gu/rpXxrambIPLrnd0HAAFbkyqN890yj9Hh6d2L4+wKMJtsCZ+WQGjFU9HQ7RmUIEzXd
 ZpmAqGDlOMce9W6heNbmyOYCM3t3TKqw==

The Realtek RTl93xx switch SoC series has a built in ECC controller
that can provide BCH6 or BCH12 over 512 data and 6 tag bytes. It
generates 10 (BCH6) or 20 (BCH12) bytes of parity.

This engine will most likely work in conjunction with the Realtek
spi-mem based NAND controller but can work on its own. Therefore
the initial implementation will be of type external.

Remark! The engine can support any data blocks that are multiples
of 512 bytes. For now limit it to data+oob layouts that have been
analyzed from existing devices. This way it keeps compatibility
and pre-existing vendor data can be read.

Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
=2D--
Changes in v2:
- include bitfield.h
- fill mtd->ecc_stats.corrected
- Reduce chattiness with dev_dbg()
- Convert return codes from context based to function based
- Add more documentation about vendor specifications
- Convert variables from vendor style to kernel style (e.g. tag)
=2D--
 drivers/mtd/nand/Kconfig       |   8 +
 drivers/mtd/nand/Makefile      |   1 +
 drivers/mtd/nand/ecc-realtek.c | 457 +++++++++++++++++++++++++++++++++
 3 files changed, 466 insertions(+)
 create mode 100644 drivers/mtd/nand/ecc-realtek.c

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 5b0c2c95f10c..4a17271076bc 100644
=2D-- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -61,6 +61,14 @@ config MTD_NAND_ECC_MEDIATEK
 	help
 	  This enables support for the hardware ECC engine from Mediatek.
=20
+config MTD_NAND_ECC_REALTEK
+        tristate "Realtek RTL93xx hardware ECC engine"
+        depends on HAS_IOMEM
+        depends on MACH_REALTEK_RTL || COMPILE_TEST
+        select MTD_NAND_ECC
+        help
+          This enables support for the hardware ECC engine from Realtek.
+
 endmenu
=20
 endmenu
diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
index 44913ff1bf12..2e0e56267718 100644
=2D-- a/drivers/mtd/nand/Makefile
+++ b/drivers/mtd/nand/Makefile
@@ -3,6 +3,7 @@
 nandcore-objs :=3D core.o bbt.o
 obj-$(CONFIG_MTD_NAND_CORE) +=3D nandcore.o
 obj-$(CONFIG_MTD_NAND_ECC_MEDIATEK) +=3D ecc-mtk.o
+obj-$(CONFIG_MTD_NAND_ECC_REALTEK) +=3D ecc-realtek.o
 obj-$(CONFIG_SPI_QPIC_SNAND) +=3D qpic_common.o
 obj-$(CONFIG_MTD_NAND_QCOM) +=3D qpic_common.o
 obj-y	+=3D onenand/
diff --git a/drivers/mtd/nand/ecc-realtek.c b/drivers/mtd/nand/ecc-realtek=
.c
new file mode 100644
index 000000000000..4cbef7ca2c59
=2D-- /dev/null
+++ b/drivers/mtd/nand/ecc-realtek.c
@@ -0,0 +1,457 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Support for Realtek hardware ECC engine in RTL93xx SoCs
+ */
+
+#include <linux/bitfield.h>
+#include <linux/dma-mapping.h>
+#include <linux/mtd/nand.h>
+#include <linux/mutex.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+/*
+ * The Realtek ECC engine has two operation modes.
+ *
+ * - BCH6  : Generate 10 ECC bytes from 512 data bytes plus 6 free bytes
+ * - BCH12 : Generate 20 ECC bytes from 512 data bytes plus 6 free bytes
+ *
+ * It can run for arbitrary NAND flash chips with different block and OOB=
 sizes. Currently there
+ * are only two known devices in the wild that have NAND flash and make u=
se of this ECC engine
+ * (Linksys LGS328C & LGS352C). To keep compatibility with vendor firmwar=
e, new modes can only
+ * be added when new data layouts have been analyzed. For now allow BCH6 =
on flash with 2048 byte
+ * blocks and 64 bytes oob.
+ *
+ * This driver aligns with kernel ECC naming conventions. Neverthless a s=
hort notice on the
+ * Realtek naming conventions for the different structures in the OOB are=
a.
+ *
+ * - BBI      : Bad block indicator. The first two bytes of OOB. Protecte=
d by ECC!
+ * - tag      : 6 User/free bytes. First tag "contains" 2 bytes BBI. Prot=
ected by ECC!
+ * - syndrome : ECC/parity bytes
+ *
+ * Altogether this gives currently the following block layout.
+ *
+ * +------+------+------+------+-----+------+------+------+------+-----+-=
=2D---+-----+-----+
+ * |  512 |  512 |  512 |  512 |   2 |    4 |    6 |    6 |    6 |  10 | =
 10 |  10 |  10 |
+ * +------+------+------+------+-----+------+------+------+------+-----+-=
=2D---+-----+-----+
+ * | data | data | data | data | BBI | free | free | free | free | ECC | =
ECC | ECC | ECC |
+ * +------+------+------+------+-----+------+------+------+------+-----+-=
=2D---+-----+-----+
+ */
+
+#define RTL_ECC_ALLOWED_PAGE_SIZE 	2048
+#define RTL_ECC_ALLOWED_OOB_SIZE	64
+#define RTL_ECC_ALLOWED_STRENGTH	6
+
+#define RTL_ECC_BLOCK_SIZE 		512
+#define RTL_ECC_FREE_SIZE 		6
+#define RTL_ECC_PARITY_SIZE_BCH6	10
+#define RTL_ECC_PARITY_SIZE_BCH12	20
+
+/*
+ * The engine is fed with two DMA regions. One for data (always 512 bytes=
) and one for free bytes
+ * and parity (either 16 bytes for BCH6 or 26 bytes for BCH12). Start and=
 length of each must be
+ * aligned to a multiple of 4.
+ */
+
+#define RTL_ECC_DMA_FREE_PARITY_SIZE	ALIGN(RTL_ECC_FREE_SIZE + RTL_ECC_PA=
RITY_SIZE_BCH12, 4)
+#define RTL_ECC_DMA_SIZE		(RTL_ECC_BLOCK_SIZE + RTL_ECC_DMA_FREE_PARITY_S=
IZE)
+
+#define RTL_ECC_CFG			0x00
+#define   RTL_ECC_BCH6			0
+#define   RTL_ECC_BCH12			BIT(28)
+#define   RTL_ECC_DMA_PRECISE		BIT(12)
+#define   RTL_ECC_BURST_128		GENMASK(1, 0)
+#define RTL_ECC_DMA_TRIGGER 		0x08
+#define   RTL_ECC_OP_DECODE		0
+#define   RTL_ECC_OP_ENCODE		BIT(0)
+#define RTL_ECC_DMA_START		0x0c
+#define RTL_ECC_DMA_TAG			0x10
+#define RTL_ECC_STATUS			0x14
+#define   RTL_ECC_CORR_COUNT		GENMASK(19, 12)
+#define   RTL_ECC_RESULT		BIT(8)
+#define   RTL_ECC_ALL_ONE		BIT(4)
+#define   RTL_ECC_OP_STATUS		BIT(0)
+
+struct rtl_ecc_engine {
+	struct device *dev;
+	struct nand_ecc_engine engine;
+	struct mutex lock;
+	char *buf;
+	dma_addr_t buf_dma;
+	struct regmap *regmap;
+};
+
+struct rtl_ecc_ctx {
+	struct rtl_ecc_engine * rtlc;
+	struct nand_ecc_req_tweak_ctx req_ctx;
+	int steps;
+	int bch_mode;
+	int parity_size;
+};
+
+static const struct regmap_config rtl_ecc_regmap_config =3D {
+	.reg_bits	=3D 32,
+	.val_bits	=3D 32,
+	.reg_stride	=3D 4,
+};
+
+static inline void *nand_to_ctx(struct nand_device *nand)
+{
+	return nand->ecc.ctx.priv;
+}
+
+static inline struct rtl_ecc_engine *nand_to_rtlc(struct nand_device *nan=
d)
+{
+	struct nand_ecc_engine *eng =3D nand->ecc.engine;
+
+	return container_of(eng, struct rtl_ecc_engine, engine);
+}
+
+static int rtl_ecc_ooblayout_ecc(struct mtd_info *mtd, int section,
+				 struct mtd_oob_region *oobregion)
+{
+	struct nand_device *nand =3D mtd_to_nanddev(mtd);
+	struct rtl_ecc_ctx *ctx =3D nand_to_ctx(nand);
+
+	if (section < 0 || section >=3D ctx->steps)
+		return -ERANGE;
+
+	oobregion->offset =3D ctx->steps * RTL_ECC_FREE_SIZE + section * ctx->pa=
rity_size;
+	oobregion->length =3D ctx->parity_size;
+
+	return 0;
+}
+
+static int rtl_ecc_ooblayout_free(struct mtd_info *mtd, int section,
+				  struct mtd_oob_region *oobregion)
+{
+	struct nand_device *nand =3D mtd_to_nanddev(mtd);
+	struct rtl_ecc_ctx *ctx =3D nand_to_ctx(nand);
+	int bbm;
+
+	if (section < 0 || section >=3D ctx->steps)
+		return -ERANGE;
+
+	/* reserve 2 BBM bytes in first block */
+	bbm =3D section ? 0 : 2;
+	oobregion->offset =3D section * RTL_ECC_FREE_SIZE + bbm;
+	oobregion->length =3D RTL_ECC_FREE_SIZE - bbm;
+
+	return 0;
+}
+
+static const struct mtd_ooblayout_ops rtl_ecc_ooblayout_ops =3D {
+	.ecc =3D rtl_ecc_ooblayout_ecc,
+	.free =3D rtl_ecc_ooblayout_free,
+};
+
+static void rtl_ecc_kick_engine(struct rtl_ecc_ctx *ctx, int operation)
+{
+	struct rtl_ecc_engine *rtlc =3D ctx->rtlc;
+
+	regmap_write(rtlc->regmap, RTL_ECC_CFG,
+		     ctx->bch_mode | RTL_ECC_BURST_128 | RTL_ECC_DMA_PRECISE);
+
+	regmap_write(rtlc->regmap, RTL_ECC_DMA_START, rtlc->buf_dma);
+	regmap_write(rtlc->regmap, RTL_ECC_DMA_TAG, rtlc->buf_dma + RTL_ECC_BLOC=
K_SIZE);
+	regmap_write(rtlc->regmap, RTL_ECC_DMA_TRIGGER, operation);
+}
+
+static int rtl_ecc_wait_for_engine(struct rtl_ecc_ctx *ctx)
+{
+	struct rtl_ecc_engine *rtlc =3D ctx->rtlc;
+	int ret, status, bitflips;
+	bool all_one;
+
+	/*
+	 * The ECC engine needs 6-8 us to encode/decode a BCH6 syndrome for 512 =
bytes of data
+	 * and 6 free bytes. In case the NAND area has been erased and all data =
and oob is
+	 * set to 0xff, decoding takes 30us (reason unknown). Although the engin=
e can trigger
+	 * interrupts when finished, use active polling for now. 12 us maximum w=
ait time has
+	 * proven to be a good tradeoff between performance and overhead.
+	 */
+
+	ret =3D regmap_read_poll_timeout(rtlc->regmap, RTL_ECC_STATUS, status,
+				       !(status & RTL_ECC_OP_STATUS), 12, 600);
+	if (ret)
+		return ret;
+
+	ret =3D FIELD_GET(RTL_ECC_RESULT, status);
+	all_one =3D FIELD_GET(RTL_ECC_ALL_ONE, status);
+	bitflips =3D FIELD_GET(RTL_ECC_CORR_COUNT, status);
+
+	/* For erased blocks (all bits one) error status can be ignored */
+	if (ret && all_one)
+		ret =3D 0;
+
+	return ret ? -EBADMSG : bitflips;
+}
+
+static int rtl_ecc_run_engine(struct rtl_ecc_ctx *ctx, char *data, char *=
free,
+			      char *parity, int operation)
+{
+	struct rtl_ecc_engine *rtlc =3D ctx->rtlc;
+	char *buf_parity =3D rtlc->buf + RTL_ECC_BLOCK_SIZE + RTL_ECC_FREE_SIZE;
+	char *buf_free =3D rtlc->buf + RTL_ECC_BLOCK_SIZE;
+	char *buf_data =3D rtlc->buf;
+	int ret;
+
+	mutex_lock(&rtlc->lock);
+
+	memcpy(buf_data, data, RTL_ECC_BLOCK_SIZE);
+	memcpy(buf_free, free, RTL_ECC_FREE_SIZE);
+	memcpy(buf_parity, parity, ctx->parity_size);
+
+	dma_sync_single_for_device(rtlc->dev, rtlc->buf_dma, RTL_ECC_DMA_SIZE, D=
MA_TO_DEVICE);
+	rtl_ecc_kick_engine(ctx, operation);
+	ret =3D rtl_ecc_wait_for_engine(ctx);
+	dma_sync_single_for_cpu(rtlc->dev, rtlc->buf_dma, RTL_ECC_DMA_SIZE, DMA_=
FROM_DEVICE);
+
+	if (ret >=3D 0) {
+		memcpy(data, buf_data, RTL_ECC_BLOCK_SIZE);
+		memcpy(free, buf_free, RTL_ECC_FREE_SIZE);
+		memcpy(parity, buf_parity, ctx->parity_size);
+	}
+
+	mutex_unlock(&rtlc->lock);
+
+	return ret;
+}
+
+static int rtl_ecc_prepare_io_req(struct nand_device *nand, struct nand_p=
age_io_req *req)
+{
+	struct rtl_ecc_engine *rtlc =3D nand_to_rtlc(nand);
+	struct rtl_ecc_ctx *ctx =3D nand_to_ctx(nand);
+	char *data, *free, *parity;
+	int ret =3D 0;
+
+	if (req->mode =3D=3D MTD_OPS_RAW)
+		return 0;
+
+	nand_ecc_tweak_req(&ctx->req_ctx, req);
+
+	if (req->type =3D=3D NAND_PAGE_READ)
+		return 0;
+
+	free =3D req->oobbuf.in;
+	data =3D req->databuf.in;
+	parity =3D req->oobbuf.in + ctx->steps * RTL_ECC_FREE_SIZE;
+
+	for (int i =3D 0; i < ctx->steps; i++) {
+		ret |=3D rtl_ecc_run_engine(ctx, data, free, parity, RTL_ECC_OP_ENCODE)=
;
+
+		free +=3D RTL_ECC_FREE_SIZE;
+		data +=3D RTL_ECC_BLOCK_SIZE;
+		parity +=3D ctx->parity_size;
+	}
+
+	if (unlikely(ret))
+		dev_dbg(rtlc->dev, "ECC calculation failed\n");
+
+	return ret ? -EBADMSG : 0;
+}
+
+static int rtl_ecc_finish_io_req(struct nand_device *nand, struct nand_pa=
ge_io_req *req)
+{
+	struct rtl_ecc_engine *rtlc =3D nand_to_rtlc(nand);
+	struct rtl_ecc_ctx *ctx =3D nand_to_ctx(nand);
+	struct mtd_info *mtd =3D nanddev_to_mtd(nand);
+	char *data, *free, *parity;
+	bool failure =3D false;
+	int bitflips =3D 0;
+	int ret;
+
+	if (req->mode =3D=3D MTD_OPS_RAW)
+		return 0;
+
+	if (req->type =3D=3D NAND_PAGE_WRITE) {
+		nand_ecc_restore_req(&ctx->req_ctx, req);
+		return 0;
+	}
+
+	free =3D req->oobbuf.in;
+	data =3D req->databuf.in;
+	parity =3D req->oobbuf.in + ctx->steps * RTL_ECC_FREE_SIZE;
+
+	for (int i =3D 0 ; i < ctx->steps; i++) {
+		ret =3D rtl_ecc_run_engine(ctx, data, free, parity, RTL_ECC_OP_DECODE);
+
+		if (unlikely(ret < 0)) {
+			failure =3D true;
+			mtd->ecc_stats.failed ++;
+		} else {
+			mtd->ecc_stats.corrected +=3D ret;
+			bitflips =3D max_t(unsigned int, bitflips, ret);
+		}
+
+		free +=3D RTL_ECC_FREE_SIZE;
+		data +=3D RTL_ECC_BLOCK_SIZE;
+		parity +=3D ctx->parity_size;
+	}
+
+	nand_ecc_restore_req(&ctx->req_ctx, req);
+
+	if (unlikely(failure))
+		dev_dbg(rtlc->dev, "ECC correction failed\n");
+	else if (unlikely(bitflips > 2))
+		dev_dbg(rtlc->dev, "%d bitflips detected\n", bitflips);
+
+	return failure ? -EBADMSG : bitflips;
+}
+
+static int rtl_ecc_check_support(struct nand_device *nand)
+{
+	struct mtd_info *mtd =3D nanddev_to_mtd(nand);
+	struct device *dev =3D nand->ecc.engine->dev;
+
+	if (mtd->oobsize !=3D RTL_ECC_ALLOWED_OOB_SIZE ||
+	    mtd->writesize !=3D RTL_ECC_ALLOWED_PAGE_SIZE) {
+		dev_err(dev, "only flash geometry data=3D%d, oob=3D%d supported\n",
+			RTL_ECC_ALLOWED_PAGE_SIZE, RTL_ECC_ALLOWED_OOB_SIZE);
+		return -EINVAL;
+	}
+
+	if (nand->ecc.user_conf.algo !=3D NAND_ECC_ALGO_BCH ||
+	    nand->ecc.user_conf.strength !=3D RTL_ECC_ALLOWED_STRENGTH ||
+	    nand->ecc.user_conf.placement !=3D NAND_ECC_PLACEMENT_OOB ||
+	    nand->ecc.user_conf.step_size !=3D RTL_ECC_BLOCK_SIZE) {
+		dev_err(dev, "only algo=3Dbch, strength=3D%d, placement=3Doob, step=3D%=
d supported\n",
+			RTL_ECC_ALLOWED_STRENGTH, RTL_ECC_BLOCK_SIZE);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int rtl_ecc_init_ctx(struct nand_device *nand)
+{
+	struct nand_ecc_props *conf =3D &nand->ecc.ctx.conf;
+	struct rtl_ecc_engine *rtlc =3D nand_to_rtlc(nand);
+	struct mtd_info *mtd =3D nanddev_to_mtd(nand);
+	int strength =3D nand->ecc.user_conf.strength;
+	struct device *dev =3D nand->ecc.engine->dev;
+	struct rtl_ecc_ctx *ctx;
+	int ret;
+
+	ret =3D rtl_ecc_check_support(nand);
+	if (ret)
+		return ret;
+
+	ctx =3D devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	nand->ecc.ctx.priv =3D ctx;
+	mtd_set_ooblayout(mtd, &rtl_ecc_ooblayout_ops);
+
+	conf->algo =3D NAND_ECC_ALGO_BCH;
+	conf->strength =3D strength;
+	conf->step_size =3D RTL_ECC_BLOCK_SIZE;
+	conf->engine_type =3D NAND_ECC_ENGINE_TYPE_ON_HOST;
+
+	ctx->rtlc =3D rtlc;
+	ctx->steps =3D mtd->writesize / RTL_ECC_BLOCK_SIZE;
+	ctx->bch_mode =3D strength =3D=3D 6 ? RTL_ECC_BCH6 : RTL_ECC_BCH12;
+	ctx->parity_size =3D strength =3D=3D 6 ? RTL_ECC_PARITY_SIZE_BCH6 : RTL_=
ECC_PARITY_SIZE_BCH12;
+
+	ret =3D nand_ecc_init_req_tweaking(&ctx->req_ctx, nand);
+	if (ret)
+		return ret;
+
+	dev_dbg(dev, "using bch%d with geometry data=3D%dx%d, free=3D%dx6, parit=
y=3D%dx%d",
+		conf->strength, ctx->steps, conf->step_size,
+		ctx->steps, ctx->steps, ctx->parity_size);
+
+	return 0;
+}
+
+static void rtl_ecc_cleanup_ctx(struct nand_device *nand)
+{
+	struct rtl_ecc_ctx *ctx =3D nand_to_ctx(nand);
+
+	if (ctx)
+		nand_ecc_cleanup_req_tweaking(&ctx->req_ctx);
+}
+
+static struct nand_ecc_engine_ops rtl_ecc_engine_ops =3D {
+	.init_ctx =3D rtl_ecc_init_ctx,
+	.cleanup_ctx =3D rtl_ecc_cleanup_ctx,
+	.prepare_io_req =3D rtl_ecc_prepare_io_req,
+	.finish_io_req =3D rtl_ecc_finish_io_req,
+};
+
+static int rtl_ecc_probe(struct platform_device *pdev)
+{
+	struct device *dev =3D &pdev->dev;
+	struct rtl_ecc_engine *rtlc;
+	void __iomem *base;
+	int ret;
+
+	rtlc =3D devm_kzalloc(dev, sizeof(*rtlc), GFP_KERNEL);
+	if (!rtlc)
+		return -ENOMEM;
+
+	base =3D devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	ret =3D devm_mutex_init(dev, &rtlc->lock);
+	if (ret)
+		return ret;
+
+	rtlc->regmap =3D devm_regmap_init_mmio(dev, base, &rtl_ecc_regmap_config=
);
+	if (IS_ERR(rtlc->regmap))
+		return PTR_ERR(rtlc->regmap);
+
+	/*
+	 * Focus on simplicity and use a preallocated DMA buffer for data exchan=
ge with the
+	 * engine. For now make it a noncoherent memory model as invalidating/fl=
ushing caches
+	 * is faster than reading/writing uncached memory on the known architect=
ures.
+	 */
+
+	rtlc->buf =3D dma_alloc_noncoherent(dev, RTL_ECC_DMA_SIZE, &rtlc->buf_dm=
a,
+					  DMA_BIDIRECTIONAL, GFP_KERNEL);
+	if (IS_ERR(rtlc->buf))
+		return PTR_ERR(rtlc->buf);
+
+	rtlc->dev =3D dev;
+	rtlc->engine.dev =3D dev;
+	rtlc->engine.ops =3D &rtl_ecc_engine_ops;
+	rtlc->engine.integration =3D NAND_ECC_ENGINE_INTEGRATION_EXTERNAL;
+
+	nand_ecc_register_on_host_hw_engine(&rtlc->engine);
+
+	platform_set_drvdata(pdev, rtlc);
+
+	return 0;
+}
+
+static void rtl_ecc_remove(struct platform_device *pdev)
+{
+	struct rtl_ecc_engine *rtlc =3D platform_get_drvdata(pdev);
+
+	nand_ecc_unregister_on_host_hw_engine(&rtlc->engine);
+	dma_free_noncoherent(rtlc->dev, RTL_ECC_DMA_SIZE, rtlc->buf, rtlc->buf_d=
ma,
+			     DMA_BIDIRECTIONAL);
+}
+
+static const struct of_device_id rtl_ecc_of_ids[] =3D {
+	{
+		.compatible =3D "realtek,rtl9301-ecc",
+	},
+	{ /* sentinel */ },
+};
+
+static struct platform_driver rtl_ecc_driver =3D {
+	.driver	=3D {
+		.name =3D "rtl-nand-ecc-engine",
+		.of_match_table =3D rtl_ecc_of_ids,
+	},
+	.probe =3D rtl_ecc_probe,
+	.remove =3D rtl_ecc_remove,
+};
+module_platform_driver(rtl_ecc_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Markus Stockhausen <markus.stockhausen@gmx.de>");
+MODULE_DESCRIPTION("Realtek NAND hardware ECC controller");
=2D-=20
2.47.0


