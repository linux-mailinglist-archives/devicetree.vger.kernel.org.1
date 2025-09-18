Return-Path: <devicetree+bounces-218693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38051B83319
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 08:49:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D2B504A6E94
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 06:49:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77D112E2EE4;
	Thu, 18 Sep 2025 06:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lpCRIwvr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B33BE2E2DD8
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 06:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758178163; cv=none; b=JbzNHb4Gwvhc8MUpFOPyvD/pJKr1OC/ojJIAihKoqqF3Q3uKrglq46n5B5F1Oy3qFrLEzT8PDuIpHlk1PyXlQByHJ7MY5fdhOo2yz/bSFRzrhfClHP1uqkLaNK557xKfwQPzCfh9qoxMQ3lGEd8vvUV84phw7zrDa915B1ZVcYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758178163; c=relaxed/simple;
	bh=9tMx3D8608utTcEpPMnkdtIuK+d8YCm/4QGWcLPlEvU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CmmYFnLofm9EmAk7mtPcyqToE6PX/LEd93+CByiDvEVishJ1aBwgmgKqGPASRXpjARMvi4BlSSNPGqRcMF9PUM1+dKrhBhklFPaR90pkG6sdrJ+XJsPRDsadjFgs4J49cBZReQQbonJ5M+yNKS8RC7KpGDp2m6f/m3P0QKD6A0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lpCRIwvr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58I6UpXp027129
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 06:49:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=52JKwdjjF6T
	43Z0oK2sV6asg8JQDNCAzfJwR0DaXYts=; b=lpCRIwvrlF5jvz5ky4P+wUYnUIm
	9Sw7IR8bWV/rvlV0SZv8xj19g0/on0ieFVUWtkbZkqE+xjaZp9699ZulAueWDQxd
	c+ISZws0qItbnCa6v5IE+jMkfym5nCBYqMfhCzceEcT3Y9T2Ks48pJsn4zf9KcTE
	xMWxo6pRlMPjk9NUDg1R+Rea/1iB8eDlAFFgLJLc/H0YBSEZz1ynK71CkCHHlnlQ
	HQ1pAA07ImBLagn+PMTfhSa3VGgvPh/9BffDtb4blf8hWUEyaKia8zkhPFHBJMtA
	OSDJMRiTiTpsGBiKPBRXQULGKxkzqtcSvd3jtJoZApkWXppSz7REbUS/VNw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497v1jb7bj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 06:49:19 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-77b73bddbdcso743018b3a.1
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 23:49:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758178158; x=1758782958;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=52JKwdjjF6T43Z0oK2sV6asg8JQDNCAzfJwR0DaXYts=;
        b=J6/jD/NzflKUhTcy3CqCu4mOXto4pB5qdrg61vwexl4WGD/Um0li3kmgO8jFv3CgJO
         Fu0CPlw969hW1DwZzSl8RjoafhYmJUcFo3qAcJ5GSS62/o4STXBlYjFn2mJGjDp9Eg4l
         j0XhYgUE6iAflqRcTH1WsLgkGlKHV43IMMRkCqfcat0WW3BypxCn5fLzBd4ET7GwsF1F
         j2lTsTQEDYYqM0hxFhnx2RD0l7obwDiefuv+niZxdkWdq6myZXDcS+nABCDowhh9kWAc
         T+TPd6Z91tcaBBMX4/ubIkXHhGtP3dzPRR/+mSV1O/BU93BhhwGJ06+x7ez2VNr6pRNa
         tLAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWDnCTxLJMZqB5xhPnuDYFTMolqfEY10XhwkXhJraXKl8Iui0/8x0nDaccZPHjP7zM8BcbbXPrfzTUE@vger.kernel.org
X-Gm-Message-State: AOJu0YyKuDxpBU0uL/BnkbpvoEVScshNS/LWMug47Q8dKKeOxamVfwzy
	uMdE8OoREDdSPUH4Z2FJ99RzY/bUVCFPmm9Hjt1Uv385Hd5Or5ss0ERZ2Nw88DkaSc7QMniJ8ra
	CKHutieavxBbQ+Z1kJ0JNb0wCgwCNWhbQG1dlUnD/Y0abX1zvegOn6RZ3KObkm1du
X-Gm-Gg: ASbGncsxDvS+rmx5toMPXsQxQcJXlJnNKHTkBKWSdqVcUa1hz89fNsufpYcTg8mYgwb
	yL/Lzt5kknHeY65guYcarXAZph4k+EreHcOD1g+CiIe0VChvNgbQ0NgFd8DI7BASc07JSJ7oiJY
	zTBfLGev8+wWn1TbbRStDWxyS9JaJiwFsJoXM96C0MHHJPEn6mkWRDf7v27ZkXvOObjYECvaBy5
	OI2RKbYGjayvsntbsvA/a5YPCP8r17IY4ownUb6fMJXuOwoY5d8yUEkgs3qdjxFbVNtj5KR+6ad
	xmPu4JANcC6TOFYt3UQRciAORJb7nU6XqGR70SEy1OrzaO6VZxV2PFkWVq5V33eKB0l/7BbAs/0
	X
X-Received: by 2002:a05:6a00:1992:b0:772:736e:656c with SMTP id d2e1a72fcca58-77ce08f1da6mr2829208b3a.5.1758178158215;
        Wed, 17 Sep 2025 23:49:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF2kkg02uaYOUUhEq86hfNm5J/NW9T+ioVe19n0K9h1inWY8Fam9TzKjtqjjwIZa2L3rdigNg==
X-Received: by 2002:a05:6a00:1992:b0:772:736e:656c with SMTP id d2e1a72fcca58-77ce08f1da6mr2829189b3a.5.1758178157749;
        Wed, 17 Sep 2025 23:49:17 -0700 (PDT)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77cff22bdb5sm1356789b3a.94.2025.09.17.23.49.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 23:49:17 -0700 (PDT)
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: mkl@pengutronix.de, mani@kernel.org, thomas.kopp@microchip.com,
        mailhol.vincent@wanadoo.fr, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linus.walleij@linaro.org, brgl@bgdev.pl,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com,
        Gregor Herburger <gregor.herburger@ew.tq-group.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: [PATCH v4 1/6] can: mcp251xfd: move chip sleep mode into runtime pm
Date: Thu, 18 Sep 2025 12:18:58 +0530
Message-Id: <20250918064903.241372-2-viken.dadhaniya@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250918064903.241372-1-viken.dadhaniya@oss.qualcomm.com>
References: <20250918064903.241372-1-viken.dadhaniya@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: DCjZxoxuz7tDwkWczGkFkp-XVN5EfjfY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDExMCBTYWx0ZWRfX0GzaHnTBj5Wv
 jqnCV4t2kr51oeTIBSTgkA/UVra3lIZM3NgNej5tqqtILwUxv3+gnfEUQklSP82tXrux/fAt5l8
 jS+0FClF2vKR4hn1ngGLHC978MadfAFGvCc3uhRzvZKJjh96qElfktD2UP73JJSNlewoOQuWegV
 FxRlGOjorl30GG1ebL2wdkXWJsL5KVDRJ117uTafaasl8QH9rWf0SS6/CFgkTqP42YFLgg2FCfG
 MxTkRCHaCCobwpjy11HTaVRCpJtzxZjtdz8DFK3Jva10e8jEMgL514wQxVeBUaFkyM78yymwSJH
 2JxuT5bJNueZRAQWXh8l8OGAfbevNLfev8DSX6E4MK8EGJg2kRAjcB0iaJQcFpLzcSz7cUGiu0H
 kk+ewVmn
X-Authority-Analysis: v=2.4 cv=AeqxH2XG c=1 sm=1 tr=0 ts=68cbab6f cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=yJojWOMRYYMA:10 a=8f9FM25-AAAA:8 a=EUspDBNiAAAA:8 a=6KGlMJUpO0AhJANn3KQA:9
 a=IoOABgeZipijB_acs4fv:22 a=uSNRK0Bqq4PXrUp6LDpb:22
X-Proofpoint-GUID: DCjZxoxuz7tDwkWczGkFkp-XVN5EfjfY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-18_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0 adultscore=0
 impostorscore=0 priorityscore=1501 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509170110

From: Marc Kleine-Budde <mkl@pengutronix.de>

This is a preparation patch to add GPIO support.

Up to now, the Vdd regulator and the clocks have been managed by
Runtime-PM (on systems without CONFIG_PM these remain permanently
switched on).

During the mcp251xfd_open() callback the mcp251xfd is powered,
soft-reset and configured. In mcp251xfd_stop() the chip is shut down
again. To support the on-chip GPIOs, the chip must be supplied with
power while GPIOs are being requested, even if the networking
interface is down.

To support this, move the functions mcp251xfd_chip_softreset() and
mcp251xfd_chip_clock_init() from mcp251xfd_chip_start() to
mcp251xfd_runtime_resume(). Instead of setting the controller to sleep
mode in mcp251xfd_chip_stop(), bring it into configuration mode. This
way it doesn't take part in bus activity and doesn't enter sleep mode.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Gregor Herburger <gregor.herburger@ew.tq-group.com>
Tested-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
---
 .../net/can/spi/mcp251xfd/mcp251xfd-core.c    | 91 ++++++++++++-------
 1 file changed, 57 insertions(+), 34 deletions(-)

diff --git a/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c b/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c
index 7450ea42c1ea..f9eabb1810cf 100644
--- a/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c
+++ b/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c
@@ -767,21 +767,13 @@ static void mcp251xfd_chip_stop(struct mcp251xfd_priv *priv,
 	mcp251xfd_chip_interrupts_disable(priv);
 	mcp251xfd_chip_rx_int_disable(priv);
 	mcp251xfd_timestamp_stop(priv);
-	mcp251xfd_chip_sleep(priv);
+	mcp251xfd_chip_set_mode(priv, MCP251XFD_REG_CON_MODE_CONFIG);
 }
 
 static int mcp251xfd_chip_start(struct mcp251xfd_priv *priv)
 {
 	int err;
 
-	err = mcp251xfd_chip_softreset(priv);
-	if (err)
-		goto out_chip_stop;
-
-	err = mcp251xfd_chip_clock_init(priv);
-	if (err)
-		goto out_chip_stop;
-
 	err = mcp251xfd_chip_timestamp_init(priv);
 	if (err)
 		goto out_chip_stop;
@@ -1625,8 +1617,11 @@ static int mcp251xfd_open(struct net_device *ndev)
 		return err;
 
 	err = pm_runtime_resume_and_get(ndev->dev.parent);
-	if (err)
+	if (err) {
+		if (err == -ETIMEDOUT || err == -ENODEV)
+			pm_runtime_set_suspended(ndev->dev.parent);
 		goto out_close_candev;
+	}
 
 	err = mcp251xfd_ring_alloc(priv);
 	if (err)
@@ -1907,53 +1902,53 @@ static int mcp251xfd_register(struct mcp251xfd_priv *priv)
 	struct net_device *ndev = priv->ndev;
 	int err;
 
+	mcp251xfd_register_quirks(priv);
+
 	err = mcp251xfd_clks_and_vdd_enable(priv);
 	if (err)
 		return err;
 
-	pm_runtime_get_noresume(ndev->dev.parent);
-	err = pm_runtime_set_active(ndev->dev.parent);
-	if (err)
-		goto out_runtime_put_noidle;
-	pm_runtime_enable(ndev->dev.parent);
-
-	mcp251xfd_register_quirks(priv);
-
 	err = mcp251xfd_chip_softreset(priv);
 	if (err == -ENODEV)
-		goto out_runtime_disable;
+		goto out_clks_and_vdd_disable;
 	if (err)
 		goto out_chip_sleep;
 
 	err = mcp251xfd_chip_clock_init(priv);
 	if (err == -ENODEV)
-		goto out_runtime_disable;
+		goto out_clks_and_vdd_disable;
 	if (err)
 		goto out_chip_sleep;
 
+	pm_runtime_get_noresume(ndev->dev.parent);
+	err = pm_runtime_set_active(ndev->dev.parent);
+	if (err)
+		goto out_runtime_put_noidle;
+	pm_runtime_enable(ndev->dev.parent);
+
 	err = mcp251xfd_register_chip_detect(priv);
 	if (err)
-		goto out_chip_sleep;
+		goto out_runtime_disable;
 
 	err = mcp251xfd_register_check_rx_int(priv);
 	if (err)
-		goto out_chip_sleep;
+		goto out_runtime_disable;
 
 	mcp251xfd_ethtool_init(priv);
 
 	err = register_candev(ndev);
 	if (err)
-		goto out_chip_sleep;
+		goto out_runtime_disable;
 
 	err = mcp251xfd_register_done(priv);
 	if (err)
 		goto out_unregister_candev;
 
-	/* Put controller into sleep mode and let pm_runtime_put()
-	 * disable the clocks and vdd. If CONFIG_PM is not enabled,
-	 * the clocks and vdd will stay powered.
+	/* Put controller into Config mode and let pm_runtime_put()
+	 * put in sleep mode, disable the clocks and vdd. If CONFIG_PM
+	 * is not enabled, the clocks and vdd will stay powered.
 	 */
-	err = mcp251xfd_chip_sleep(priv);
+	err = mcp251xfd_chip_set_mode(priv, MCP251XFD_REG_CON_MODE_CONFIG);
 	if (err)
 		goto out_unregister_candev;
 
@@ -1963,12 +1958,13 @@ static int mcp251xfd_register(struct mcp251xfd_priv *priv)
 
 out_unregister_candev:
 	unregister_candev(ndev);
-out_chip_sleep:
-	mcp251xfd_chip_sleep(priv);
 out_runtime_disable:
 	pm_runtime_disable(ndev->dev.parent);
 out_runtime_put_noidle:
 	pm_runtime_put_noidle(ndev->dev.parent);
+out_chip_sleep:
+	mcp251xfd_chip_sleep(priv);
+out_clks_and_vdd_disable:
 	mcp251xfd_clks_and_vdd_disable(priv);
 
 	return err;
@@ -1980,10 +1976,12 @@ static inline void mcp251xfd_unregister(struct mcp251xfd_priv *priv)
 
 	unregister_candev(ndev);
 
-	if (pm_runtime_enabled(ndev->dev.parent))
+	if (pm_runtime_enabled(ndev->dev.parent)) {
 		pm_runtime_disable(ndev->dev.parent);
-	else
+	} else {
+		mcp251xfd_chip_sleep(priv);
 		mcp251xfd_clks_and_vdd_disable(priv);
+	}
 }
 
 static const struct of_device_id mcp251xfd_of_match[] = {
@@ -2206,16 +2204,41 @@ static void mcp251xfd_remove(struct spi_device *spi)
 
 static int __maybe_unused mcp251xfd_runtime_suspend(struct device *device)
 {
-	const struct mcp251xfd_priv *priv = dev_get_drvdata(device);
+	struct mcp251xfd_priv *priv = dev_get_drvdata(device);
 
+	mcp251xfd_chip_sleep(priv);
 	return mcp251xfd_clks_and_vdd_disable(priv);
 }
 
 static int __maybe_unused mcp251xfd_runtime_resume(struct device *device)
 {
-	const struct mcp251xfd_priv *priv = dev_get_drvdata(device);
+	struct mcp251xfd_priv *priv = dev_get_drvdata(device);
+	int err;
+
+	err = mcp251xfd_clks_and_vdd_enable(priv);
+	if (err)
+		return err;
 
-	return mcp251xfd_clks_and_vdd_enable(priv);
+	err = mcp251xfd_chip_softreset(priv);
+	if (err == -ENODEV)
+		goto out_clks_and_vdd_disable;
+	if (err)
+		goto out_chip_sleep;
+
+	err = mcp251xfd_chip_clock_init(priv);
+	if (err == -ENODEV)
+		goto out_clks_and_vdd_disable;
+	if (err)
+		goto out_chip_sleep;
+
+	return 0;
+
+out_chip_sleep:
+	mcp251xfd_chip_sleep(priv);
+out_clks_and_vdd_disable:
+	mcp251xfd_clks_and_vdd_disable(priv);
+
+	return err;
 }
 
 static const struct dev_pm_ops mcp251xfd_pm_ops = {
-- 
2.34.1


