Return-Path: <devicetree+bounces-232476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1E9C18586
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 06:46:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EB41C4EA52D
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 05:45:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A40BA30214B;
	Wed, 29 Oct 2025 05:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EMjgnXd0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kW12P2lR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A31F2FD1AA
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 05:44:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761716683; cv=none; b=OWOx5rc3DUOkx4TItCkhyyFRRKSgi6oy2U8Y1Qt52bdOS90b/r+aUtDHdlrF7sFvupYM88SCEF/yuaGh+d+yYHgzypnEN6VGu64LtU/Isb1mXjhazWEw1uGFIqNmRp8dQg4T+4Aqm0jlVf7caqUxIB2B0WfLwbDKFJaC/0ctnso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761716683; c=relaxed/simple;
	bh=p8ySBPeMhhgOjthdspe7wrGny1MNgnBjciz9CWlWZqQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EJS6bqIWfyO0PjmyGq8rcQovAUuXUVDOMr6QH/veHaNBRm+7MwsWzV6qIu2LaKqcXVKh4ZX3TAd6/korF7OU1J+6yDof9d7jsSgvMSLD4Mar5aryZ6DNei6Mj7HG/S/4rWNhwhTBdyg7+TY8TIuldVUN+ISfkhUrg228U0CPIoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EMjgnXd0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kW12P2lR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4usR33764268
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 05:44:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rGA6jyIhggMQN7nzJCboVgsPOrhbc0c0lh6rLgR6WNM=; b=EMjgnXd0HAQlHGtN
	GTy4vq4OMP3OlqZJL5apjN46DL5MlifMlyRhSCu0/AxWHetMLSeqQXN+Q27Mxhqr
	htgTahxy6uYnQCL2DGBJKUUULNeTUowtVregN2HDD81KcC+v0uov1QGSSBcL3vpp
	G6jVV8/NkoyT8EqWHdnoxfAvP3vlnvF5S1gY0Ls3nsjZCy5IoI0EAHWbl7vhtuJn
	Be7eIqRBmNOoKkHuRj2yXImvrd4wo2HaIy8M31bs4YVl9cVLJiRC++AS+a7c0XZb
	MqrtwAM6XuYJnce+LKgtVXoG46XiGqIVPuj64YO6Aw7zFVvVchz8xRr1xCjDQMSB
	8Ou9vw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a11ac5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 05:44:40 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34029cbe2f5so3773304a91.0
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 22:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761716679; x=1762321479; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rGA6jyIhggMQN7nzJCboVgsPOrhbc0c0lh6rLgR6WNM=;
        b=kW12P2lRpoo7JB+eF/Xu1LmeXd8nxvhZnNCQmgn+0U7lDtuN19pc/SJ1aVHvcs8PSL
         Xhjlg1V1C9a/EUxHWp0cUdv1s0HQEjuTiGAdhbrHZBdoYzWo+/a1wLq6dKuOraPlzngU
         kzXchWlz0w2KLiKDbE2+eWimvofh2fLrXgiUn1qQwO1ryH95E9e/r1c68DyyjSv90b2u
         vxpeTFtLzxecA0G/IDl50cBW3om0x8Po34ntdFn94E06o31v8fdSgE/WSnhaETAt/Mfy
         73TfMyue7i6/mGFD6yJbkZnh8ZtfopIHXXt9UKszSTfqsc9E3pOYDNrj5aX6s3/sL1CF
         V+uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761716679; x=1762321479;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rGA6jyIhggMQN7nzJCboVgsPOrhbc0c0lh6rLgR6WNM=;
        b=RTEaU65UvbhJ+6sAxOZgTkfLJDf66dRvGTmQJLaEkw4L4LaRLlEiGERIU9b/dwJHUT
         ITVJ+AffbKJhyETc7kv/bG94XN9TFYK4WfadQZCkxAV7BfRpokUx1noinVJHprIIzjdY
         83+B2FPE+REhSFjJUt3HS9ppajgguSA7xoj7rhUdZsoy2b5sLq8qE2cLACyLBEDNyqr+
         eWnORqrEu2AxWnuixlHcy2gc8fnuXqdowQBEwaithqQA0nrDeyzY8IGhZ8hOZNOy77BN
         F6VRvOmEQaSG4flXvtGA/f3B9upEy2POhCXc9oguC0GipuPxRjpncsRf5C7Vghcnc1ri
         G+Mg==
X-Forwarded-Encrypted: i=1; AJvYcCV4lJLhyjz9kYKT4Q7R+HETfBZq4z1NPmEI9XKCBgHVbdmNvtqNytItAzFtq7IofJNpmt6HzrGqMk5p@vger.kernel.org
X-Gm-Message-State: AOJu0Yxkanv8aezWWb/Lvo6aZ3hfAXlgjhTYAgD6Zc+agbiLyfjJl7DO
	BNsHCrSLFWDpU0G4HpCr5ecNvHSXumFP1gvOkfh9IunFLFWe4UDIgOIOILK6M5ojYLjocFI0xy9
	Nwvt8BG7zMZIGielGwXJuZndKRHNsUv9lYU5SQ/uuzASlFPtsfwki+KEUqa1YclU7
X-Gm-Gg: ASbGncsD+W0LLAgvDsxEoELAPW4Rd5QeRMBkvZ94UuTs1qmztEUqNXg4yFJGQKJdqEX
	Zxcjvj5D3aSg6SKEgFGvL/9uLokYwAV5j+gClOalAzu1QwHrWO7V4gqNqSxziaaIALOL7RGNs05
	Tb6YaIM0MwRcj225znS4v01FOulfHQQFJYa6A8siGq7SWM1nPEPRYjncjHH5uMLnwtFKPMvybBE
	Njy0XYVmg7IlbFpGVOcB0By/8Zm/xPXymVlWaZVDKXSyTAu5HSiAFG0Gkq00/1hx1N49kbTLeBX
	cysGoNJ3T50uLbIAt5bcerXZi2kGJVXFjhyIe/j7lsu/kvFfzkzA6KvmYbyy9N76417k26kRBwn
	xVEKH6ONxWn7LaZ/jqDUvTpB5qvJVBoS6dhe90bYkBycozbXLtZ4V5w==
X-Received: by 2002:a05:6a21:3384:b0:343:70a2:bca9 with SMTP id adf61e73a8af0-34654128d42mr2160042637.53.1761716679189;
        Tue, 28 Oct 2025 22:44:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFHL/mDvAsHrsYqZ3mKEmdPc4gs2fnr0PGSPRIa+7ron2IPWKz1ls32Vwt7lsvJWtlBKEzRPA==
X-Received: by 2002:a05:6a21:3384:b0:343:70a2:bca9 with SMTP id adf61e73a8af0-34654128d42mr2160019637.53.1761716678692;
        Tue, 28 Oct 2025 22:44:38 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed7d1fdesm14280643a91.5.2025.10.28.22.44.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 22:44:38 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Tue, 28 Oct 2025 22:44:12 -0700
Subject: [PATCH v4 3/6] media: qcom: camss: Add Kaanapali compatible camss
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-add-support-for-camss-on-kaanapali-v4-3-7eb484c89585@oss.qualcomm.com>
References: <20251028-add-support-for-camss-on-kaanapali-v4-0-7eb484c89585@oss.qualcomm.com>
In-Reply-To: <20251028-add-support-for-camss-on-kaanapali-v4-0-7eb484c89585@oss.qualcomm.com>
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
X-Proofpoint-GUID: zC3mxfdjoMzWBMRbEUNqOS1Sz4Bltxu5
X-Proofpoint-ORIG-GUID: zC3mxfdjoMzWBMRbEUNqOS1Sz4Bltxu5
X-Authority-Analysis: v=2.4 cv=A5dh/qWG c=1 sm=1 tr=0 ts=6901a9c8 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Eph36bqoL6-XvbZcx_wA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA0MSBTYWx0ZWRfX8+K0n4Z2Mwek
 Y9RHUN/ruoeYTYQJEkscccnNKu51x0IvC7V2eEOT6dOssp9KBazV4Hkq2TYBzNpTfdbwKicDGQm
 vOLi9BrvAqc0qVHuMMZoTOU3r4x2kYeeiB/R1BI1oJAyjWL8sN61XUjuHS2rsG/IEWqlyGVJVSG
 2PXSJ1a8gXfijLRD8dg9NApHh+kpjNd6TWdtEpUQzc6JRSdK2iijHlmQBEteXBbd5eeV3kh3ZQY
 MGfn1TjkimzDrcufVfGUImPO5wYikcdCeQ7bizbSTxVxGMB3uGiAqYMVaMJLR98i7lOgwijM9SC
 Xp4MXSroM8tHXzRbVW6FptkF/orECB74gfYon0SMXGoL7FFDx4F5simWaWB99JsMahzQfN0ePQp
 9+0BO+wJRVbjSuOFxgW0koy17d9bKA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_02,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 bulkscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 adultscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290041

Add support for kaanapali in the camss driver. Add high level resource
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


