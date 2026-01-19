Return-Path: <devicetree+bounces-256793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E7DD3A576
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 11:43:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 47ED130B96EF
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 10:40:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4986430E834;
	Mon, 19 Jan 2026 10:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mTSZCYGY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gJ3oAAjJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84F523382FA
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:40:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768819252; cv=none; b=IA0F++PZEYUMIh0FkVpsufDvdWQcN4VyWp/0NWIulFujZUrbeSiWgGJQr17/XBt1HONt96I1AssPBPitRJFTABQJ+V+RiRJKmLJ+eycNHcFby2P+CtB+UOEZTN3wmQXw+6NHp4zoIpqarj06Cn8bcko763AcmkxBFvs3i7QtVLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768819252; c=relaxed/simple;
	bh=tmOinQMvmCibhbCwHvJ3zmzJO/881x0pFZ+yeG4eMow=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bzB5ahw+2GEbmzJtD54C5qRGhwgzADLyrbEo4e+AHxIJU2lfOZFaWVlM9mSh1Rm3KrEUx+PPXmbhOPumtGMq9/iM7G8h6KYHCs76k+w0j+JUqFSvhukz1fgCno6nFrZqPzTiUXz8vSFTgsZLWYoEUj3xAWOeCJfFlyoTUXb4YNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mTSZCYGY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gJ3oAAjJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60JAJp3t1531330
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:40:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	b/LoGOYwYqu7kjSp48YkCIUHiMPCQCLxRjW5XuAafrI=; b=mTSZCYGYxAkevOo7
	gd8DhgvlCw2G+TF2YmU4ce2OqjAZgUp0h5R25s4At75ht5DXKZv+iD0ix6f7qJiQ
	hn8ilUHRcSTcU0kJIid2VO3wNM85z8XyXRBC0uLAychv0CYc99AFwGDEpOfAQsq6
	zFlZ1ZkBpP1hgsJCwDCESGtIspAXWq6IabqNX8wJMEvFaqs/Bu+ZqdQ/mRehwy40
	0DRW5dOdFJvWhyCDUhnlUKlnSMeCDpCFywyIyGchtzoUuJ4vFsFwiLYTYf1vkZEO
	sddrq+ni5yBTg5sz8+fix9mZQa9oZecG0nfR+yx40TVOCTiUDeU+WEO75A2s/Gkv
	JbXdFw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsjrxr20b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:40:42 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c277fe676eso1099354285a.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 02:40:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768819241; x=1769424041; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b/LoGOYwYqu7kjSp48YkCIUHiMPCQCLxRjW5XuAafrI=;
        b=gJ3oAAjJjK51HxkxZw7oxXaAYg4ERA8qHGP6IrPT/ZFF98r3PpLESevgvDjbmYOY7Q
         IS8643/8VKNyRCzrQi1y9V8nl9A0maePruLddwT0rhqzRdso3EmbPZUIgbPcJOJednIy
         gTGkEZKL+WZWS9FI5Pg1UF1KnDi50pPa7M6jrpL2wYld4SheBv+Thapog9DjJ+CZMZs2
         YAapKTrWXleasn7637xkfJ8XxKIZeHfhfcl4MwIvYsBvK0doc4SXcPxuqozw68OpiBK3
         LYRGbKfYNhT+ePgbaYTEU4KdfoHt3ptC0w2CmCd2rIII29W9HQ7LAXeTG6rcoszXtOAv
         pk0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768819241; x=1769424041;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=b/LoGOYwYqu7kjSp48YkCIUHiMPCQCLxRjW5XuAafrI=;
        b=CVEHo0SflDqiPjQeberQQxd2eaHAYI4I3rNbUi6sO8rE9IakOAVhT70aPJ5PHmbzG8
         tUTDnLMQ28BAwXNdhtnYmlJjGA0fntzcOmukJt3St0g5JVebB7B0Ik0ENolec2ItbiMU
         QDWUUzL17udM3PCHY36nivn0+LvBbxXf5u6o/kOj2ACWMv/IKV2Y0m53CjEbqEmjuMMQ
         JZLWQjZXoqzuMMd0aaIfDPRRldsx9URYn00RYLpZ+z0fOVkGk998E6WQICH/cmaVQwCI
         TNG+AljbOMgqJg2oDeX5m2JxtAOJO0OQUPqN0GvbSbzksLhVG3HyXLAlrlFJQkbIVt0r
         WB/A==
X-Gm-Message-State: AOJu0Yz5Pjmoi5UwGmHetxCP7Y9B3/MjWdaWCprEH2PvgU2Qf7XThHnz
	+MEl+oE0MFvwRPWcapfkzkCxrYy7rBdwLaIKb500jW65x4JJsFPRsXF9tTVg6+lfwLa2JeMazzj
	2DXfdGHr3QuCm6RtUPn8qPwPwHswc7zBKRDUC+kj18UEW76aZqyKZT1HghOom8axV
X-Gm-Gg: AY/fxX5eXL6bR9jRdcUtxqVtntf8WZ6UbD6a+Bk2u2VZraiiZ1vzk/rqno9QK8BGQTA
	CwThRgMv5xx7Qk2RFpvj+0lLnJHY+jISfF7c2EhuFH08uBbtq94udTIE/GdM9q15isKBvUCFTdl
	QMv9Abv+aRSdaAJzdJMkc0elI1WNoq8OOx7adgN592zo1FgQ3mpmvkhCSNyJgOw9mHiukeXd4GK
	Xw5CSCITMK/VTOPVwyw9F9w2D55hGj5GJaISyKpbPrha4iuKR8Tphsyt/4mIbyUuV7Uvgos78JH
	+n5LihqzhKtZKzZ7T2Pd5uS4lUToyUBof8JvbWKn9MWhdKCazPdmtFrFLkncGaHRzkdVMmJJPyd
	5UFbhGhxAzYo7LElaaS2XHW3Igvpdyn+eTvIPQzKd
X-Received: by 2002:a05:620a:f12:b0:8a4:107a:6772 with SMTP id af79cd13be357-8c6a678a15fmr1447748485a.76.1768819241224;
        Mon, 19 Jan 2026 02:40:41 -0800 (PST)
X-Received: by 2002:a05:620a:f12:b0:8a4:107a:6772 with SMTP id af79cd13be357-8c6a678a15fmr1447745785a.76.1768819240809;
        Mon, 19 Jan 2026 02:40:40 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:4f55:d102:7129:1a8f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e8c9cbcsm185185245e9.12.2026.01.19.02.40.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 02:40:40 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 11:40:17 +0100
Subject: [PATCH 6/8] soc: imx9: don't access of_root directly
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-soc-of-root-v1-6-32a0fa9a78b4@oss.qualcomm.com>
References: <20260119-soc-of-root-v1-0-32a0fa9a78b4@oss.qualcomm.com>
In-Reply-To: <20260119-soc-of-root-v1-0-32a0fa9a78b4@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Danilo Krummrich <dakr@kernel.org>,
        "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>, Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
        imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
        linux-sunxi@lists.linux.dev,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1293;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=tmOinQMvmCibhbCwHvJ3zmzJO/881x0pFZ+yeG4eMow=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBpbgoaZOGeOF3pZEl3wpwrdehCCmMNVv6rHvvj2
 g07QncJEh2JAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaW4KGgAKCRAFnS7L/zaE
 wz8FEACDVYRrHBRKEwgRYeyUXqwuQGeHjxuvsicgXR5w4UxuqTDgb0S9TMOw1/OAzHqh5MnQ+uo
 SqYW14DnPr/qJhN380jD8sAf8m3c07rptk82vjB1r0jHMCs0UsC2gz3ktaurpass1/AEuTDdvab
 MExkeCuTIysQtYDTbg/2EfpqCQ9JYZQsh2cdTFKmpcvX9hVISz1qRZsR8IMGkpjw8KrLrCLoBIM
 hXvWYhNU1p9jDJyHH7FKxXN+Us8so79s6rOzbuF42lE9nkgxP18Lnxom9VX9k9Y0gkSYISww/ez
 ln4P/IFjl1XjnZEqPqgQxd4nfyIAQpDderdrJRGyn7MC01KY26tW9CBw4Ayt2M+d1JZcIFeQIzD
 u5uUSJwFdn+0NGon9ZP6E0sXrH8pj4I4lUmJ8AQuHuCbKdZqRyM0RUs+q1m/+Kp6i6frVvsSdrT
 3UlFqtsGaTy+i8THnuEBeU4z5v4tXOZgk+94+Pcy/mrrdP/KD/7ZXcGaZpqyKWiKdrt/jnbkTpi
 AgE3o52+zKsYE7rokrf+02gSJLlQ0zijKVDMy3XsghwGIuq6CweA1TeEIXUw5OnhjOP2hDvF3xv
 45rvFr/C6WMXDFx+cLMS8zPk7RktSKJvCzwdKo3eimTJgJRx+K+rrHK262ROsfP5hz7ckmP8pM4
 5oM+qWGXbSGvkjg==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA4OCBTYWx0ZWRfX4Zy6dz0Il0F1
 iMhyjRI1JmQbxF0CehSwKQIc+9hJtBaR5oahxQWtAmp4ScCKZSIKbekXZohT690LvF8Asqj8sIf
 k+mXWcc/uteRJ0rFRJwXVl911+sCAiP08R28TeCTUcntKTVutgalkr8f684LOvRqpAUWdrMQTUc
 IfL8OVOCWWRy9hgl7SotAGhzvGPmfnaF5FvtTA4SLNsxIYdAFmDhmEM64TUM9BDpF7+9c99xkBO
 rUOM8FBbaa4AOOgnsZomRq7t1/dvdZakntMeExFQcJwgZXc/OvORsyRK/lRrg5eISBUp2onSv7k
 mUiEE7ohGR5w8USUbwVNfxyFxHQJQzSLeGRo+ZjvV55r3oN+y+0WCvNTlCWkfkKsWrfkaaW2VnU
 DPhyuwXnOSacvVN7oe7WeFWP1WU9mIlUkB5eiSJLaG8fAJ8cg/qkm0ca65v5VmneRvs9v+IJu5b
 dpgpE9CfhElmtj1sMDg==
X-Proofpoint-GUID: YEUBQw4lWhdLzZKUMdPLRziUYaHLqXvu
X-Authority-Analysis: v=2.4 cv=PPUCOPqC c=1 sm=1 tr=0 ts=696e0a2a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=PMAhrox8fQbXPR-8CfIA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: YEUBQw4lWhdLzZKUMdPLRziUYaHLqXvu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_02,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 impostorscore=0
 adultscore=0 spamscore=0 bulkscore=0 suspectscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601190088

Don't access of_root directly as it reduces the build test coverage for
this driver with COMPILE_TEST=y and OF=n. Use existing helper functions
to retrieve the relevant information.

Suggested-by: Rob Herring <robh@kernel.org>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/soc/imx/soc-imx9.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/imx/soc-imx9.c b/drivers/soc/imx/soc-imx9.c
index b46d22cf0212c3f40f61ec5be85ca11e5d3207ac..0cea4307ac3923f416a63bca793a78835d868448 100644
--- a/drivers/soc/imx/soc-imx9.c
+++ b/drivers/soc/imx/soc-imx9.c
@@ -29,7 +29,7 @@ static int imx9_soc_probe(struct platform_device *pdev)
 	if (!attr)
 		return -ENOMEM;
 
-	err = of_property_read_string(of_root, "model", &attr->machine);
+	err = soc_device_get_machine(attr);
 	if (err) {
 		pr_err("%s: missing model property: %d\n", __func__, err);
 		goto attr;
@@ -103,7 +103,7 @@ static int __init imx9_soc_init(void)
 	struct platform_device *pdev;
 
 	/* No match means it is not an i.MX 9 series SoC, do nothing. */
-	if (!of_match_node(imx9_soc_match, of_root))
+	if (!of_machine_device_match(imx9_soc_match))
 		return 0;
 
 	ret = platform_driver_register(&imx9_soc_driver);

-- 
2.47.3


