Return-Path: <devicetree+bounces-6767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 390857BCD4F
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 10:52:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C0DCC1C20895
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 08:52:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F039C8BFC;
	Sun,  8 Oct 2023 08:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92AD08820
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 08:52:07 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22883D8;
	Sun,  8 Oct 2023 01:52:06 -0700 (PDT)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 896A824E2C7;
	Sun,  8 Oct 2023 16:52:03 +0800 (CST)
Received: from EXMBX073.cuchost.com (172.16.6.83) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Sun, 8 Oct
 2023 16:52:01 +0800
Received: from xiaofei.localdomain (180.164.60.184) by EXMBX073.cuchost.com
 (172.16.6.83) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Sun, 8 Oct
 2023 16:52:00 +0800
From: Jack Zhu <jack.zhu@starfivetech.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Robert Foss
	<rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
	<bryan.odonoghue@linaro.org>, Rob Herring <robh+dt@kernel.org>, "Krzysztof
 Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, Laurent Pinchart
	<laurent.pinchart@ideasonboard.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>
CC: <linux-media@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-staging@lists.linux.dev>,
	<jack.zhu@starfivetech.com>, <changhuang.liang@starfivetech.com>
Subject: [PATCH v10 7/8] media: staging: media: starfive: camss: Add interrupt handling
Date: Sun, 8 Oct 2023 16:51:53 +0800
Message-ID: <20231008085154.6757-8-jack.zhu@starfivetech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231008085154.6757-1-jack.zhu@starfivetech.com>
References: <20231008085154.6757-1-jack.zhu@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [180.164.60.184]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX073.cuchost.com
 (172.16.6.83)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Parse interrupt resources and register interrupt handlers.

Signed-off-by: Jack Zhu <jack.zhu@starfivetech.com>
---
 .../staging/media/starfive/camss/stf-camss.c  | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/staging/media/starfive/camss/stf-camss.c b/drivers/s=
taging/media/starfive/camss/stf-camss.c
index f083bc0e6e97..373467322885 100644
--- a/drivers/staging/media/starfive/camss/stf-camss.c
+++ b/drivers/staging/media/starfive/camss/stf-camss.c
@@ -35,6 +35,12 @@ static const char * const stfcamss_resets[] =3D {
 	"rst_isp_top_axi",
 };
=20
+static const struct stf_isr_data stf_isrs[] =3D {
+	{"wr_irq", stf_wr_irq_handler},
+	{"isp_irq", stf_isp_irq_handler},
+	{"line_irq", stf_line_irq_handler},
+};
+
 static int stfcamss_get_mem_res(struct stfcamss *stfcamss)
 {
 	struct platform_device *pdev =3D to_platform_device(stfcamss->dev);
@@ -160,6 +166,21 @@ static int stfcamss_probe(struct platform_device *pd=
ev)
=20
 	stfcamss->dev =3D dev;
=20
+	for (i =3D 0; i < ARRAY_SIZE(stf_isrs); ++i) {
+		int irq;
+
+		irq =3D platform_get_irq(pdev, i);
+		if (irq < 0)
+			return irq;
+
+		ret =3D devm_request_irq(stfcamss->dev, irq, stf_isrs[i].isr, 0,
+				       stf_isrs[i].name, stfcamss);
+		if (ret) {
+			dev_err(dev, "request irq failed: %d\n", ret);
+			return ret;
+		}
+	}
+
 	stfcamss->nclks =3D ARRAY_SIZE(stfcamss->sys_clk);
 	for (i =3D 0; i < stfcamss->nclks; ++i)
 		stfcamss->sys_clk[i].id =3D stfcamss_clocks[i];
--=20
2.34.1


