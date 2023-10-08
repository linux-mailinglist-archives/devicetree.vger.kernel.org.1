Return-Path: <devicetree+bounces-6766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6E67BCD4B
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 10:52:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9328A28175A
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 08:52:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFEC38BE8;
	Sun,  8 Oct 2023 08:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2811263D1
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 08:52:05 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39FE4CF;
	Sun,  8 Oct 2023 01:52:04 -0700 (PDT)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id D1CD224E2A4;
	Sun,  8 Oct 2023 16:52:02 +0800 (CST)
Received: from EXMBX073.cuchost.com (172.16.6.83) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Sun, 8 Oct
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
Subject: [PATCH v10 8/8] media: staging: media: starfive: camss: Register devices
Date: Sun, 8 Oct 2023 16:51:54 +0800
Message-ID: <20231008085154.6757-9-jack.zhu@starfivetech.com>
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

Register ISP sub-device and video devices for StarFive Camera
Subsystem.

Signed-off-by: Jack Zhu <jack.zhu@starfivetech.com>
---
 .../staging/media/starfive/camss/stf-camss.c  | 97 ++++++++++++++++++-
 1 file changed, 96 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/starfive/camss/stf-camss.c b/drivers/s=
taging/media/starfive/camss/stf-camss.c
index 373467322885..b2e0f5b3c910 100644
--- a/drivers/staging/media/starfive/camss/stf-camss.c
+++ b/drivers/staging/media/starfive/camss/stf-camss.c
@@ -123,6 +123,85 @@ static int stfcamss_of_parse_ports(struct stfcamss *=
stfcamss)
 	return ret;
 }
=20
+static int stfcamss_register_devs(struct stfcamss *stfcamss)
+{
+	struct stf_capture *cap_yuv =3D &stfcamss->captures[STF_CAPTURE_YUV];
+	struct stf_isp_dev *isp_dev =3D &stfcamss->isp_dev;
+	int ret;
+
+	ret =3D stf_isp_register(isp_dev, &stfcamss->v4l2_dev);
+	if (ret < 0) {
+		dev_err(stfcamss->dev,
+			"failed to register stf isp%d entity: %d\n", 0, ret);
+		return ret;
+	}
+
+	ret =3D stf_capture_register(stfcamss, &stfcamss->v4l2_dev);
+	if (ret < 0) {
+		dev_err(stfcamss->dev,
+			"failed to register capture: %d\n", ret);
+		goto err_isp_unregister;
+	}
+
+	ret =3D media_create_pad_link(&isp_dev->subdev.entity, STF_ISP_PAD_SRC,
+				    &cap_yuv->video.vdev.entity, 0, 0);
+	if (ret)
+		goto err_cap_unregister;
+
+	cap_yuv->video.source_subdev =3D &isp_dev->subdev;
+
+	return ret;
+
+err_cap_unregister:
+	stf_capture_unregister(stfcamss);
+err_isp_unregister:
+	stf_isp_unregister(&stfcamss->isp_dev);
+
+	return ret;
+}
+
+static void stfcamss_unregister_devs(struct stfcamss *stfcamss)
+{
+	stf_isp_unregister(&stfcamss->isp_dev);
+	stf_capture_unregister(stfcamss);
+}
+
+static int stfcamss_subdev_notifier_bound(struct v4l2_async_notifier *as=
ync,
+					  struct v4l2_subdev *subdev,
+					  struct v4l2_async_connection *asc)
+{
+	struct stfcamss *stfcamss =3D
+		container_of(async, struct stfcamss, notifier);
+	struct stfcamss_async_subdev *csd =3D
+		container_of(asc, struct stfcamss_async_subdev, asd);
+	enum stf_port_num port =3D csd->port;
+	struct stf_isp_dev *isp_dev =3D &stfcamss->isp_dev;
+	struct stf_capture *cap_raw =3D &stfcamss->captures[STF_CAPTURE_RAW];
+	struct media_pad *pad;
+	int ret;
+
+	if (port =3D=3D STF_PORT_CSI2RX) {
+		pad =3D &isp_dev->pads[STF_ISP_PAD_SINK];
+	} else {
+		dev_err(stfcamss->dev, "not support port %d\n", port);
+		return -EPERM;
+	}
+
+	ret =3D v4l2_create_fwnode_links_to_pad(subdev, pad, 0);
+	if (ret)
+		return ret;
+
+	ret =3D media_create_pad_link(&subdev->entity, 1,
+				    &cap_raw->video.vdev.entity, 0, 0);
+	if (ret)
+		return ret;
+
+	isp_dev->source_subdev =3D subdev;
+	cap_raw->video.source_subdev =3D subdev;
+
+	return 0;
+}
+
 static int stfcamss_subdev_notifier_complete(struct v4l2_async_notifier =
*ntf)
 {
 	struct stfcamss *stfcamss =3D
@@ -133,6 +212,7 @@ static int stfcamss_subdev_notifier_complete(struct v=
4l2_async_notifier *ntf)
=20
 static const struct v4l2_async_notifier_operations
 stfcamss_subdev_notifier_ops =3D {
+	.bound =3D stfcamss_subdev_notifier_bound,
 	.complete =3D stfcamss_subdev_notifier_complete,
 };
=20
@@ -217,6 +297,12 @@ static int stfcamss_probe(struct platform_device *pd=
ev)
 		goto err_cleanup_notifier;
 	}
=20
+	ret =3D stf_isp_init(stfcamss);
+	if (ret < 0) {
+		dev_err(dev, "Failed to init isp: %d\n", ret);
+		goto err_cleanup_notifier;
+	}
+
 	stfcamss_mc_init(pdev, stfcamss);
=20
 	ret =3D v4l2_device_register(stfcamss->dev, &stfcamss->v4l2_dev);
@@ -231,6 +317,12 @@ static int stfcamss_probe(struct platform_device *pd=
ev)
 		goto err_unregister_device;
 	}
=20
+	ret =3D stfcamss_register_devs(stfcamss);
+	if (ret < 0) {
+		dev_err(dev, "Failed to register subdevice: %d\n", ret);
+		goto err_unregister_media_dev;
+	}
+
 	pm_runtime_enable(dev);
=20
 	stfcamss->notifier.ops =3D &stfcamss_subdev_notifier_ops;
@@ -239,11 +331,13 @@ static int stfcamss_probe(struct platform_device *p=
dev)
 		dev_err(dev, "Failed to register async subdev nodes: %d\n",
 			ret);
 		pm_runtime_disable(dev);
-		goto err_unregister_media_dev;
+		goto err_unregister_subdevs;
 	}
=20
 	return 0;
=20
+err_unregister_subdevs:
+	stfcamss_unregister_devs(stfcamss);
 err_unregister_media_dev:
 	media_device_unregister(&stfcamss->media_dev);
 err_unregister_device:
@@ -265,6 +359,7 @@ static int stfcamss_remove(struct platform_device *pd=
ev)
 {
 	struct stfcamss *stfcamss =3D platform_get_drvdata(pdev);
=20
+	stfcamss_unregister_devs(stfcamss);
 	v4l2_device_unregister(&stfcamss->v4l2_dev);
 	media_device_cleanup(&stfcamss->media_dev);
 	v4l2_async_nf_cleanup(&stfcamss->notifier);
--=20
2.34.1


