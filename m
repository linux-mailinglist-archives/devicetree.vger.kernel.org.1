Return-Path: <devicetree+bounces-233513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 107F9C23196
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 04:00:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E0D874EBCD1
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 03:00:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A4493126A6;
	Fri, 31 Oct 2025 03:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V+9/4PUX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZMmJqbKF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C132530F52B
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 03:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761879617; cv=none; b=KP3K9pVET6ecQm/cLhYgRyYI6aSZKgz97gy71bzoLjRd7N7Uv9UKkJsxAwxZN+Q1xmVTvGQo1l27RNon6Pbw4R281sbF4FoiOeHqjNnceMAZPN/8njCf+zjhjEr0Xeh7A3IbDB09TsT+G4hRMYmzzcxobq/Dvb6mB6mQNUH2huk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761879617; c=relaxed/simple;
	bh=TzCikezoRb8YZPqX4gJvquc17E3NxM8qIn79vKmmi9U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pVU8hjBrlIyBuJUxBwn/DjyQyH9ALHEd0i9Zx1lByeF/PbW1sj2v0YajCBvWXV0tpzraZmgz+LT0t1qcS70DA3cEcoXdVq0188ZcW/vXBLmWwmNQaNLLY754r7wlt8eK4JX+/DQuJcAsTwarm4MYD60Un14E95jKMrlnenPUeR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V+9/4PUX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZMmJqbKF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59ULrOFF898100
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 03:00:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KsRPldSlUkMNAs1cF8LcZleWSjUF0Z6b6sQxevYn+vo=; b=V+9/4PUXadBNmWDI
	YQZUPLtSVzLApkaz2Okm0qBlnCR3ogbEtbXNskv2rBAP7XZQrn5olQ6KyBu7Gs+N
	Lj+Vm//Om17cVVn9gGHtM+mu4akLeftRAot462uC3AodO9BQyVkXqhLsA++a76kT
	BYAUz3y/AcmZzMnZ6afa3qxdw4IItBfPpmRSEpulwIKKr3WekxrlKihrBq6yfkZG
	aaUUt8UI1c2BWMhzSMv3smQigOcFf4p+msBQ0zJlnYtFo3AdUBcA2PktMb7Ga7xr
	Ly3YtTSVW8PQokDsXZohL4lATGPztp9TtqLwkNiMKPmK+Oh8BXUNQNBKjiZMe15+
	gwie/Q==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4gb20kh4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 03:00:14 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-78104c8c8ddso1770686b3a.2
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 20:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761879614; x=1762484414; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KsRPldSlUkMNAs1cF8LcZleWSjUF0Z6b6sQxevYn+vo=;
        b=ZMmJqbKF/HG+Lu/Aa37hotHxD3YpDwtW2MVFSpCiA/KEi9ySkg/y6BEc/gAm3icp4g
         2n9cLdo6GxUfegAvzXIBvG73DE1i7MzrmHzkKt5n8IFX6+UgXi0OUWajuM0gJwUgdFBO
         SQ9PDpMVHsthUjuz/cuFhP2LCtGd3mhc/q3ESqjWHhsXJcx5SAQQZXyZeKVqJFpPadT9
         BuHjVp+BB8PK4NjpFeDcjeOX0XWO2GHhqqv1tIBWhBKnYq0MLTyYNp/8DQPNescVN1uT
         lEpdvkmrD7AXjmvH9bQ1yxfPVXiD/tuoD9tIKh8G7xNVWJ8PFdNXrQ4P0aq02EDmxRIv
         c/Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761879614; x=1762484414;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KsRPldSlUkMNAs1cF8LcZleWSjUF0Z6b6sQxevYn+vo=;
        b=k5Ct/q9t4J7TD9mHS/GH688kZN2MU2ZfHuTA6+yTNHWUNyyxmJYT47VrUGvhJN0Ww9
         5GZo2NuxdiFXulC/YZbSRsmVDkGp+UcMQAJNnXDFV6ZtX2l/rcYOzkWJDeQNTu2jK8MV
         141ORgI50oqRAJeRl9QzkRI7T0Vf0wK1/iUf4v/ehFOb1z8v/DgEHY4+Hxf8aew8/GT5
         gbfnfMlkDbr/ppSKmhEx4fdoM9qJA0Kni6vzWUDAE+FkF94Bajeq1t46xMqZBl6sDXNJ
         947LaJ4uBfXECbO87tzuJ9Nj02uPZx596YX3KBYml5tXhfIfPrOKmgZ8JVcD5bp4sHr+
         J9QQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYceAJv2c2nXFw/k1Z938kLVU209XwHbv11yGJC7Iv6rx6gnSR2WT304YScnBeJjDGs4VNyY6wGAMi@vger.kernel.org
X-Gm-Message-State: AOJu0YyokrS1Vw+OnqoofEED9muracYvLn+k2rfuMFEM7yNx4Hs/IJw3
	ijv+jth1x2QHuFIqRdT1XKb5WzKuElrbHADkFAgoV2tfYvUgJug+X/1RsPJpey2gLNlEUMQSeLf
	btFnHNQ23AzyblyRgC/fTmKSt+POnfwVzO+bhgGbPZKSTpHW+z6iQcdNSyKTUXxh9
X-Gm-Gg: ASbGncsTOucefnpC61BDkkdp5mEtO4GmWrw9XyiJbW2cdx8CFzjRUAgrRJdqwKpECrq
	OgGJ0LuDn2ZKGT0yV2MXLwCyl4tQZKojR86gdb3+5nl5wBASzDryc8EEqRZShVFWqI6vq0kXrBm
	jK2hb7atMBXErMv7ZUd1UuVjTDxr4/5BJbyt73RivsBKbN2Cau2D4J2Pp6+1rCqSCn9THAZmXdN
	4TzSSZstH27Luxxn8HR52KoqCTKKW9dZfqfPjPB2iryYZsTY1Q8LxRlMhUZWgidZVdMDoqDVIbt
	w6F4opFPJkbuf1lOG9oVlYWP313DLZ75Tb7PaeZyHG7IZXQZlEbbAwu6Cn/69t0uHl7aqfxvtr2
	stKqGJUk/XfOLK8zd7rq9M9nn94Tj95VfROZho5uGyv17fic/E4QOng==
X-Received: by 2002:a05:6a00:188e:b0:7a2:6474:f86f with SMTP id d2e1a72fcca58-7a777760bf7mr2388465b3a.6.1761879614031;
        Thu, 30 Oct 2025 20:00:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE+uH8uZfk4iNZ4q9rsi10JrIQrjOPeeZkXMJPeDGql8NO4shm6mtDRRlgVtj3gr8iSqv0H8w==
X-Received: by 2002:a05:6a00:188e:b0:7a2:6474:f86f with SMTP id d2e1a72fcca58-7a777760bf7mr2388345b3a.6.1761879612949;
        Thu, 30 Oct 2025 20:00:12 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a7db67cbdfsm352570b3a.49.2025.10.30.20.00.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 20:00:12 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 19:59:50 -0700
Subject: [PATCH v5 3/6] media: qcom: camss: Add Kaanapali compatible camss
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251030-add-support-for-camss-on-kaanapali-v5-3-f8e12bea3d02@oss.qualcomm.com>
References: <20251030-add-support-for-camss-on-kaanapali-v5-0-f8e12bea3d02@oss.qualcomm.com>
In-Reply-To: <20251030-add-support-for-camss-on-kaanapali-v5-0-f8e12bea3d02@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=efswvrEH c=1 sm=1 tr=0 ts=6904263f cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Eph36bqoL6-XvbZcx_wA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDAyNSBTYWx0ZWRfX9enahPv60FzY
 4EgcnceW/IY0lm1SSNIqPERYs0wtzZr1On5QrRjAH4sM+eKO7jFBWU7wQd+ZFnXbQmltJSmY/Zk
 XixHWp10Bt7y4nM7yVajACU6cLHsJJh7/XpWxkyZ90MqAyedc9mXAiluXYZGQsWNirrXVdmHWty
 I8954Qcr9/p7gUZp2S/LpCsj2Ys/2m6m/5RiU2M3EDdK7T2zzaiQP15QTpAVV/QIaUTZdETLFth
 o1U3euIDbNbAQNa+sqc8DEbCmMPzNdVoPbPWm4fnMb5Ame0xi24+ewG6E7fG/zYqDqinBCj66M/
 nM+LAukxfmm/3tKkydQD3Fj+sQFOTYanO1n+DtLxyUVMQf1EQqoRsRt6xcLIyf3utRBsOMZ377u
 2rXHyO5EOO2Q3lQJdYy038ja2S9NYQ==
X-Proofpoint-GUID: IhybDSMVp8mr-dJ5RS5Jo7S4W3M7ho2k
X-Proofpoint-ORIG-GUID: IhybDSMVp8mr-dJ5RS5Jo7S4W3M7ho2k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_08,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 clxscore=1015 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310025

Add support for Kaanapali in the camss driver. Add high level resource
information along with the bus bandwidth votes. Module level detailed
resource information will be enumerated in the following patches of the
series.

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


