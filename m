Return-Path: <devicetree+bounces-243244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFFCC95D6B
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 07:31:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D2E6B4E1BDE
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 06:31:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF12A2874FB;
	Mon,  1 Dec 2025 06:30:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YbeK0RPr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QtAf/IJI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95E5028504D
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 06:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764570650; cv=none; b=evR4ofp2L7zwA65A4gYnyW3hvu2ycqaGpThXPuGAoB8Ucost8QzENMgnaTqF7MSioF6u4RAuTQp8/tpXiblDAONL9/ULPYd0CCN7GgK08i5YQpEFU4jjT8pA750WIvzLVQ/vi1GX5/de5S+/6MOxrs3z76IWbiCeAevC8rUJUC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764570650; c=relaxed/simple;
	bh=pnSQRgTAcT4d/8xmiBgrRJu6er1Xy3AhKk+QhB5IefA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nYcdN2qrk8YAQmIGr1Xna06MyAPfM7yCo52ELX5nZCSj1rRaMJVKGTNduPdmlLTCVymHgzN/xK0dO1i/UKylo6r/yNjzThocO4I1dvgdGCkaQRs14TD35m1Dy5VJ8jNvj//Tn80LhHS0qEMBs1T0mx6PCbO/kHMDjN6WViMhRuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YbeK0RPr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QtAf/IJI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AUNva1B3410954
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 06:30:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iFkqrJMXLTrSpGrWLHnZ1o+c2GoxdqOgiKNQ4mPlB8M=; b=YbeK0RPrG8NLi6L7
	fF7Rr/PRlaYGWfZZM/+89EJ1Uj7mbsDQwsd4eRgnfdY+b8UGcvfin8YuCuAPXZAL
	+NCY0yGZMq7AQmngzu6uDlmbkVobWeXQrhy3F4Y4uA0mM7pIOgbkVDLD7mbRpyQI
	ddjP6mcnosx4MKLZ1OV4AltzhFm/1IcBXUtOSGxMkxt1s/iiCMc6XLLvTQl0CEN6
	NFuXjMdKZborZntN1UvYjVxKTnmUVMblnf5Fycg+JgH9+yHwZ1a2Bfxp3wnXaPZ4
	FdWZt76u60N7VfaXSXgnh1nqdej4YPrIKThH9I5mw+Z9safTYHAo3j3GnAdLGjY8
	eMOHzg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aqqu63rmq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 06:30:47 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-bb27b422cf2so5451476a12.1
        for <devicetree@vger.kernel.org>; Sun, 30 Nov 2025 22:30:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764570646; x=1765175446; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iFkqrJMXLTrSpGrWLHnZ1o+c2GoxdqOgiKNQ4mPlB8M=;
        b=QtAf/IJIBAU+4+2qinQvOiwhHy5IjF8YCvg11GU04QAxAM/NESQCZhT21ua4dSzsCS
         vnU6I87ZB1kqA+pnSWQbhNBBCA2PRKFAuUC6MIIkresDm6jmC6S+KYCTK0P3yqb1tNx1
         CTDFS3onuWcp4JKAL2DSQDwPoBS/sQ+KsHPftL7deoYsQdqZPxfPb9VmcEdjUMG9v2QW
         y3laZn3EqozIo5RTAJ9B6dklzXtbvR6kJCZf+gT4fYwF4BKyPwzD++qvaVdZS/9cOQKH
         4e0Vabzxp3NSopD/EYEfhtuCmBLl46xaxh68DHOHFVXlO5bsEdY+zUwWSOPB7HSOfMuN
         FgDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764570646; x=1765175446;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iFkqrJMXLTrSpGrWLHnZ1o+c2GoxdqOgiKNQ4mPlB8M=;
        b=OA+QCYsz8VQgUEyklSKhKZS85JRqaOBDjkdcW45qQnHQ5GqxAlB3vftEcn7cdRsUa0
         2zR+g1cGrQxohQHFoIc/29av11wPLexVPGvR+LRaVdNsI9yJ+4wzi+ww+usqh0yJPQiL
         asoxj00j/jMaGuvPxqnoIqmwSxWMQ3cTkNAahZHs03tmTZpkZvSDPiRuPMbCqXsfHvFm
         9A1CnOM6zAR2PIbtU0+vrZwIbl2BcfRY1BE6Ayi1rfhubL1crZ3FrqnJIJ4bbsHvuXsr
         MlIddL9wsDzL4Jl8rP915d77VMfgrACYT4B2kYOpC5QBb4zeS27IKfWSsFaAMe/g4lOE
         //bg==
X-Forwarded-Encrypted: i=1; AJvYcCWpFPtycQfT2C1w1bt9atzYI3ikmtWLXBAd9TThdcOH7+W2UbcJChl4JyIXtu45QnlfTwRF0g3kCj/E@vger.kernel.org
X-Gm-Message-State: AOJu0YwoWHBgfalZrDhJssYtC0b67QNPsxAo/5M3ERsz3DbW+WzjnmAx
	zK5rMjSR/nuUu2brmoCotZclSd4hGgcGDrFpDmSV9YeqTcrb4jEAxDiPqz/qriszsm+Etrz8UaW
	OtoFHVE51Crv/ICIQ0P36/uSjoSgb+wCluiNM0PZPskKBC5xNf7OXFKUNCYEi3yGo
X-Gm-Gg: ASbGncssKE8Hc2/6+oqCpwGHRJobgP1het0Jg1P+wzJQUm1T6MmxlVrWU+4Ylhog1uR
	LZ19RgBb2p7o31TGLokzQQo2rncxBiZmbfF8s05DVoAHjen9Ka8aPnGBNEAyBdqDGR1nRF4dpmV
	aJ5h2fSB8u8YFTJbUYYXrIFghtkmCaXSkrL39sxqqdlfbC9sFfGxlY9S4hpLb/PTz/MaVmoezH7
	oRkQEZ0rzzQue3ipWQSSyQFUILY3L9tTm7Ub8Osdaoe0z1NjB1Blsiw3FuSpQpiPjkhHJaiCmQB
	XGxf4QqrNxW30VeoAT/v4EvKsvHWr80ZyJnOHr9IL20e887s8MouzTlpdGiXPSx3NP7SXDNgZz4
	1Os5jYVpGlNsAiYhkaFCOmSt7y2EqAwNlc+ZePa3eowCNsMFrge42qj+PjuYF96zW
X-Received: by 2002:a05:7301:b0d:b0:2a4:4bb4:4712 with SMTP id 5a478bee46e88-2a7192e5b06mr19529444eec.39.1764570646144;
        Sun, 30 Nov 2025 22:30:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEx1fUJZGXaIarHvZTR3R5yIcNzvCtthUbDp8Di8f/VfT6HfotkU4+aCfr43rruVLASXRK+pw==
X-Received: by 2002:a05:7301:b0d:b0:2a4:4bb4:4712 with SMTP id 5a478bee46e88-2a7192e5b06mr19529424eec.39.1764570645588;
        Sun, 30 Nov 2025 22:30:45 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a96560986csm62713689eec.2.2025.11.30.22.30.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Nov 2025 22:30:45 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sun, 30 Nov 2025 22:30:41 -0800
Subject: [PATCH v8 2/5] media: qcom: camss: Add Kaanapali compatible camss
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251130-add-support-for-camss-on-kaanapali-v8-2-143a8265e6e8@oss.qualcomm.com>
References: <20251130-add-support-for-camss-on-kaanapali-v8-0-143a8265e6e8@oss.qualcomm.com>
In-Reply-To: <20251130-add-support-for-camss-on-kaanapali-v8-0-143a8265e6e8@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-GUID: 0A3_iZ2TIjVhlxay_bPH5aoBFdDm_hH2
X-Authority-Analysis: v=2.4 cv=CM0nnBrD c=1 sm=1 tr=0 ts=692d3617 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=Eph36bqoL6-XvbZcx_wA:9 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 0A3_iZ2TIjVhlxay_bPH5aoBFdDm_hH2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDA1MSBTYWx0ZWRfX2aOq5/u/zcl2
 luut5pEYq9vF8W2w9H6BMZD3nujL9rzlE00E3xbEEXuhf3+7Wnaj5w2T3ftwqz3X8SbC3T6WkSa
 OqMFWs74GH1UBFkpBEXIR4P/N9M9ayNMyLS7oiTvd6/Yg69HjbWv/Izz8AD0mzZTfRunhpKixah
 +rfhAhtGTdpvUgAhmCZjXR+pAWOXLDYIP0rm9kg6Cj0VaVcxMUbeAmglIMAykbLu+MeZlksc8tD
 ZWWpqhIld9CwzuYt3WaXRwMQXY6hFnUL8Vraer/JKL4vNel5IAh73slI0MsY3UqDzoVkgDFoIWp
 g/YvA7Zhf+NQ36OCUTHNCodBA+4fbK5sRV0zh9bppyO6+Ff3vJhP67qJod5PuwuojmviI2pErBQ
 lDkGyKNaqCYLPinPchFEzmtKHUFzRg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 phishscore=0 priorityscore=1501
 bulkscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512010051

Add support for Kaanapali in the camss driver. Add high level resource
information along with the bus bandwidth votes. Module level detailed
resource information will be enumerated in the following patches of the
series.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 22 ++++++++++++++++++++++
 drivers/media/platform/qcom/camss/camss.h |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 2fbcd0e343aa..658d9c9183d4 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -34,6 +34,20 @@
 
 static const struct parent_dev_ops vfe_parent_dev_ops;
 
+static const struct resources_icc icc_res_kaanapali[] = {
+	{
+		.name = "ahb",
+		.icc_bw_tbl.avg = 150000,
+		.icc_bw_tbl.peak = 300000,
+	},
+	/* Based on 4096 x 3072 30 FPS 2496 Mbps mode */
+	{
+		.name = "hf_mnoc",
+		.icc_bw_tbl.avg = 471860,
+		.icc_bw_tbl.peak = 925857,
+	},
+};
+
 static const struct camss_subdev_resources csiphy_res_8x16[] = {
 	/* CSIPHY0 */
 	{
@@ -4291,6 +4305,13 @@ static void camss_remove(struct platform_device *pdev)
 	camss_genpd_cleanup(camss);
 }
 
+static const struct camss_resources kaanapali_resources = {
+	.version = CAMSS_KAANAPALI,
+	.pd_name = "top",
+	.icc_res = icc_res_kaanapali,
+	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
+};
+
 static const struct camss_resources msm8916_resources = {
 	.version = CAMSS_8x16,
 	.csiphy_res = csiphy_res_8x16,
@@ -4467,6 +4488,7 @@ static const struct camss_resources x1e80100_resources = {
 };
 
 static const struct of_device_id camss_dt_match[] = {
+	{ .compatible = "qcom,kaanapali-camss", .data = &kaanapali_resources },
 	{ .compatible = "qcom,msm8916-camss", .data = &msm8916_resources },
 	{ .compatible = "qcom,msm8953-camss", .data = &msm8953_resources },
 	{ .compatible = "qcom,msm8996-camss", .data = &msm8996_resources },
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 901f84efaf7d..876cd2a64cbe 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -90,6 +90,7 @@ enum camss_version {
 	CAMSS_845,
 	CAMSS_8550,
 	CAMSS_8775P,
+	CAMSS_KAANAPALI,
 	CAMSS_X1E80100,
 };
 

-- 
2.34.1


