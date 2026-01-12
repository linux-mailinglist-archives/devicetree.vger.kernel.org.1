Return-Path: <devicetree+bounces-253798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5559FD1167E
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:05:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D9CAE30C6646
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 09:02:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C45F349B1D;
	Mon, 12 Jan 2026 09:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cD07ERwF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AIi/jaCy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69523346E48
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 09:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768208568; cv=none; b=SyqFI1chex7PV1F/fO5f1D51pmiExxWjcv1ikAx4dvHcbgu9CuxQG0vGhJ2PPgzOb0ytckwwFNw3Iiwfbuqe++AgYFMN8icuswhHulU9HwdgbC4OhbidFSkvcIcFK2wBq2XHUa+ATWCJBab7IZprONmtlVFccHbBBajrbN+9Kik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768208568; c=relaxed/simple;
	bh=DgX6yku5CgRGY1IjtaneBwzypS1HrwIbUHjf3G7hfGI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ql2dLQCS8bxgiRvyyOKSOV/0wg0BV8PVJw5qpGKrEcynwIN+1eWyI5soKlEOybWe3EK1Q4UXxaqAmfhDPJgZ3TPgzMI+J6UFiwZwUOyMSfeSkpsSw56wkbGcps+OdJu8caew7fUF6rLRWdsxaDxDz41ZGmg9rBepVDtidH3AB/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cD07ERwF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AIi/jaCy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60C82KrX3130406
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 09:02:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hN2M7tMh6jnIYZFaygnzTExjO8HiF8yj7/+0P1lf4uU=; b=cD07ERwFGSIDlc0E
	B4/NAv3T8p02EB38sCMjU/43lhCq1Kem1+JW+VcoUBvyGh6m3UdPyYi6UKc0Xp4A
	2JPcXlW949EOBA31pqbZLwzR2BkMOhenOYLyqjnCN3M41U9I3om0Yg8Ht0Ve9DPq
	mFeke/dPBmfSru5qlnh73p0qU1cMeBBD8MmXad6jTbXB5X2Y4CFozH53nC2sSsUI
	ETGn12EokS8d4OAonh8msDfsRzXXQrnE2Kw4HiOZKU7W2wMTm2D3VuhlpI8MBXKD
	fatTZ4nY5qRvzWELzRlPDUWvfBh1zsjZUuHtj7gQqUqNsUxqhNpGzvSfR7+EgD5O
	/I0FSQ==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmkk41h56-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 09:02:43 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-121b1cb8377so9043131c88.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 01:02:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768208563; x=1768813363; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hN2M7tMh6jnIYZFaygnzTExjO8HiF8yj7/+0P1lf4uU=;
        b=AIi/jaCy2EQL7B/anSct+GOu/V2/c2nFKevi6kFSlKYYgG66k/UL8i9mdSBNruUer9
         bZdLjv0M44TyNQwiHfrPWzn/khcjh28Rp7ukS1OkhZy+5oPMQx3LsXUkYhWkIS1UeIjG
         eEoxJBbnuGNudb8aJBAGtRAJPBQLGx46nG8JgMpO0I6SxQtcVsl41/0MUP6UZohvr3Bu
         VlS5razYWaQMqH4ZRWgQ9+1oR6uo5SmwEjoZWJXB3p2bDi+9aM31bjngeY9pVAKVaeyt
         vv5cAUT7+2pVe9p2IDkCLVve9XENzbBbH2GKTZk2PACOGD9fbUC3J4hVF22yVPyDwhUi
         r8rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768208563; x=1768813363;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hN2M7tMh6jnIYZFaygnzTExjO8HiF8yj7/+0P1lf4uU=;
        b=TU4FzfSu73EVDGxm/vacK2f+6OHp5k5Wn2eadxV7Dd05/oOInxEVP9FusERZGUKGZZ
         L5TAzB7JEmm+V9Om3XoZK5zU4QfAaP4qVYXx7/vgX7OEM/a0Qaa/ZBvpLrH1l/QVghWQ
         gAD7PyJ1JG6CgI7yykIKoX08rxGM+MlxC2n4OCaqCTD9ImXkdp9HMDp97tTnd1+lRtQg
         avz3kpIk+lLZfDSy5dANT7qcFUR+a05rLfhnSVcvhYSS3j8MUv2yxc4EiM7r7PAKIuhm
         0JiCakel3d5GLTP9yL/OUceR6ZlIohESiGmABQ40jFoh5lmeng8v8Z5E9kRxCo3hexW5
         RRzw==
X-Forwarded-Encrypted: i=1; AJvYcCUoIq4uZ1tDb3R5we8UO6OsHOGjF1cTAkQKNwxwzks5KDh4WZ15ObvVYp/eBsM0klbQ1IiExPdFkh0G@vger.kernel.org
X-Gm-Message-State: AOJu0YyXnt9bq4z1w5JYNPO4p8Yuz6NZjXebKWLaPTS5TBdWIZoqbL2Q
	AlpZdCwNsEfZDX9E31Zwt7GbVIqC7KZyTQbM1jXvY5vWIdXRw8tGHZBHmkD68A2SJlLkFFFOqYd
	C1ptZGsSNEqvrPt3t7MEa2drHj8g9EA5g2HpAB5dquqln6eSkRGO8z9sV6YqFBggcCtwJ0MjbAT
	s=
X-Gm-Gg: AY/fxX5oGLgtjXV8sZE5Opj5djpfCxZRpdl9gbFwUPNOqlPP0EzYvG6Dq0AbMbftmBe
	X4vGgiUYS4tYMyz3xqWW4KVcsW7G/FYByoHhZiv/vE0pwWcm/JH/QP+omnfOkQTtbsFgwCLZx3d
	Fm9ekHnm8XR5S2z3zgs0wRjsIrTqgU/WOV7502uKxxRQ9hUajkRA1gzuCIIxWtLu1Iw5hJ1QYtT
	87ivCA44PTucv7VNZHNorF8DD0WbuhINqoCjiXy9oJs45cHuD5YbYKoALNCYOx1kjjRrL3i58Lx
	9sBUa8nfpb1OLn/OkebV12sJDUiea5XvuaV4WQyLyJtdEya3hxn9ZZ9uujO54kSn6mPTmcptSYA
	g+BlRfUI+SkT1/t8nQTrxpoKGVcP6Lt0Yvc3etaYg/7rSvcxtqhR0TB3KqGv+WiTX
X-Received: by 2002:a05:7022:e0c:b0:11d:f44c:ad97 with SMTP id a92af1059eb24-121f8b7b3efmr15176913c88.24.1768208562711;
        Mon, 12 Jan 2026 01:02:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEE4XTsezGLjgIim8+smNlhgstBstVNPPZeOCdKjnEZYOuZhd1WXvNQ2KPtloKBq1Aylojuqw==
X-Received: by 2002:a05:7022:e0c:b0:11d:f44c:ad97 with SMTP id a92af1059eb24-121f8b7b3efmr15176887c88.24.1768208562087;
        Mon, 12 Jan 2026 01:02:42 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121f23b798asm18888500c88.0.2026.01.12.01.02.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 01:02:41 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 01:02:30 -0800
Subject: [PATCH v11 5/5] media: qcom: camss: vfe: Add support for VFE gen4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260112-kaanapali-camss-v11-5-81e4f59a5d08@oss.qualcomm.com>
References: <20260112-kaanapali-camss-v11-0-81e4f59a5d08@oss.qualcomm.com>
In-Reply-To: <20260112-kaanapali-camss-v11-0-81e4f59a5d08@oss.qualcomm.com>
To: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-GUID: q1wBoSwT7nLUMwdqIjLUXPsWQdD6Zsjl
X-Proofpoint-ORIG-GUID: q1wBoSwT7nLUMwdqIjLUXPsWQdD6Zsjl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA3MCBTYWx0ZWRfX3TGdInw30Vx1
 3G+oszGI4N3B25BVQWA7OScR7M59v2yX+dtvH6LiSEWzBh+UFP/TYMiZPWQmrMFshRc7SOYOsXX
 MWX8YSLWUtokTaeDZr3/kVt9bIAbE+K3Gd8Lmik9HRIhTFHt7e2ut0JJ6XeFCXLPTosqoR5uGmi
 05wbUNAuvWGoYrT9x3HiN84B6Cm/NpJUSYkH6+/0cRpVmO2OjjKS8S4KRYUxUwBRwMaFE3x2Oth
 huvUrar2HYwy0/vkD6k2jqus+lQmfDwVMIj8FTpQFwgJkRMxNx2xExZh3Bc+yp6Ya27OGkX/lpA
 G/fTRXBvyD9c5XYKturl7QbgVgOo0TmoE7vehUQBcStjfUB5gCQ7iwr6iisZcwAc2Oo1peznvxw
 mmmpvFZlv2XKa+GP80afXgEpka0OGYkAN90MF0wQd3c8XyUXhPQWBDidPeB6u0yI1ODg+TwX8ZM
 hpqs1w4RPrenrCginZw==
X-Authority-Analysis: v=2.4 cv=cs2WUl4i c=1 sm=1 tr=0 ts=6964b8b4 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=4o9gmvoekZ77T9ZvDsgA:9
 a=QEXdDO2ut3YA:10 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0
 malwarescore=0 priorityscore=1501 suspectscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120070

Add Video Front End (VFE) version gen4 as found on the Kaanapali SoC.

The FULL front end modules in Kaanapali camera subsystem are called TFEs
(Thin Front End), however, retaining the name VFE at places to maintain
consistency and avoid unnecessary code changes.

This change limits the VFE output lines to 3 for now as constrained by
the CAMSS driver framework.

Kaanapali architecture requires for the REG_UPDATE and AUP_UPDATE to be
issued after all of the CSID configuration has been done. Additionally,
the number of AUP_UPDATEs should match the number of buffers enqueued to
the write master while it's being enabled.

Although the real time data from TFE goes through the RT_CAMNOC, we are
required to enable both the camnoc_rt_axi and camnoc_nrt_axi clocks for
the PDX_NOC, that follows both the RT and NRT NOCs in this architecture,
to ensure that both of the latter are idle after reset.

Co-developed-by: Atiya Kailany <atiya.kailany@oss.qualcomm.com>
Signed-off-by: Atiya Kailany <atiya.kailany@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/Makefile    |   1 +
 drivers/media/platform/qcom/camss/camss-vfe.c |   9 +-
 drivers/media/platform/qcom/camss/camss-vfe.h |   2 +
 drivers/media/platform/qcom/camss/camss.c     | 143 ++++++++++++++++++++++++++
 4 files changed, 153 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/Makefile b/drivers/media/platform/qcom/camss/Makefile
index ba9faa635bd7..ed8001ef90a6 100644
--- a/drivers/media/platform/qcom/camss/Makefile
+++ b/drivers/media/platform/qcom/camss/Makefile
@@ -23,6 +23,7 @@ qcom-camss-objs += \
 		camss-vfe-480.o \
 		camss-vfe-680.o \
 		camss-vfe-gen3.o \
+		camss-vfe-gen4.o \
 		camss-vfe-gen1.o \
 		camss-vfe-vbif.o \
 		camss-vfe.o \
diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
index 9c7ad8aa4058..399be8b70fed 100644
--- a/drivers/media/platform/qcom/camss/camss-vfe.c
+++ b/drivers/media/platform/qcom/camss/camss-vfe.c
@@ -351,6 +351,7 @@ static u32 vfe_src_pad_code(struct vfe_line *line, u32 sink_code,
 	case CAMSS_8550:
 	case CAMSS_8650:
 	case CAMSS_8775P:
+	case CAMSS_KAANAPALI:
 	case CAMSS_X1E80100:
 		switch (sink_code) {
 		case MEDIA_BUS_FMT_YUYV8_1X16:
@@ -523,7 +524,8 @@ int vfe_enable_output_v2(struct vfe_line *line)
 
 	spin_lock_irqsave(&vfe->output_lock, flags);
 
-	ops->reg_update_clear(vfe, line->id);
+	if (ops->reg_update_clear)
+		ops->reg_update_clear(vfe, line->id);
 
 	if (output->state > VFE_OUTPUT_RESERVED) {
 		dev_err(vfe->camss->dev,
@@ -550,7 +552,9 @@ int vfe_enable_output_v2(struct vfe_line *line)
 		output->gen2.active_num++;
 		ops->vfe_wm_update(vfe, output->wm_idx[0],
 				   output->buf[i]->addr[0], line);
-		ops->reg_update(vfe, line->id);
+
+		if (!vfe->res->reg_update_after_csid_config)
+			ops->reg_update(vfe, line->id);
 	}
 
 	spin_unlock_irqrestore(&vfe->output_lock, flags);
@@ -2009,6 +2013,7 @@ static int vfe_bpl_align(struct vfe_device *vfe)
 	case CAMSS_8550:
 	case CAMSS_8650:
 	case CAMSS_8775P:
+	case CAMSS_KAANAPALI:
 	case CAMSS_X1E80100:
 		ret = 16;
 		break;
diff --git a/drivers/media/platform/qcom/camss/camss-vfe.h b/drivers/media/platform/qcom/camss/camss-vfe.h
index ae9dad353a37..c402ef170c81 100644
--- a/drivers/media/platform/qcom/camss/camss-vfe.h
+++ b/drivers/media/platform/qcom/camss/camss-vfe.h
@@ -133,6 +133,7 @@ struct vfe_isr_ops {
 
 struct vfe_subdev_resources {
 	bool is_lite;
+	bool reg_update_after_csid_config;
 	u8 line_num;
 	bool has_pd;
 	char *pd_name;
@@ -249,6 +250,7 @@ extern const struct vfe_hw_ops vfe_ops_340;
 extern const struct vfe_hw_ops vfe_ops_480;
 extern const struct vfe_hw_ops vfe_ops_680;
 extern const struct vfe_hw_ops vfe_ops_gen3;
+extern const struct vfe_hw_ops vfe_ops_gen4;
 
 int vfe_get(struct vfe_device *vfe);
 void vfe_put(struct vfe_device *vfe);
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index d292364d1701..2bd4e0934c09 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -217,6 +217,147 @@ static const struct camss_subdev_resources csid_res_kaanapali[] = {
 	}
 };
 
+/* In Kaanapali, CAMNOC requires all CAMNOC_RT_TFEX clocks
+ * to operate on any TFE Full.
+ */
+static const struct camss_subdev_resources vfe_res_kaanapali[] = {
+	/* VFE0 - TFE Full */
+	{
+		.regulators = {},
+		.clock = { "gcc_axi_hf", "vfe0_fast_ahb", "vfe0",
+			   "camnoc_rt_vfe0", "camnoc_rt_vfe1", "camnoc_rt_vfe2",
+			   "camnoc_rt_axi", "camnoc_nrt_axi", "qdss_debug_xo" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 360280000, 480000000, 630000000, 716000000,
+				  833000000 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 200000000, 300000000, 400000000, 480000000 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "vfe0" },
+		.interrupt = { "vfe0" },
+		.vfe = {
+			.line_num = 3,
+			.is_lite = false,
+			.reg_update_after_csid_config = true,
+			.has_pd = true,
+			.pd_name = "ife0",
+			.hw_ops = &vfe_ops_gen4,
+			.formats_rdi = &vfe_formats_rdi_845,
+			.formats_pix = &vfe_formats_pix_845
+		}
+	},
+	/* VFE1 - TFE Full */
+	{
+		.regulators = {},
+		.clock = { "gcc_axi_hf", "vfe1_fast_ahb", "vfe1",
+			   "camnoc_rt_vfe0", "camnoc_rt_vfe1", "camnoc_rt_vfe2",
+			   "camnoc_rt_axi", "camnoc_nrt_axi", "qdss_debug_xo" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 360280000, 480000000, 630000000, 716000000,
+				  833000000 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 200000000, 300000000, 400000000, 480000000 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "vfe1" },
+		.interrupt = { "vfe1" },
+		.vfe = {
+			.line_num = 3,
+			.is_lite = false,
+			.reg_update_after_csid_config = true,
+			.has_pd = true,
+			.pd_name = "ife1",
+			.hw_ops = &vfe_ops_gen4,
+			.formats_rdi = &vfe_formats_rdi_845,
+			.formats_pix = &vfe_formats_pix_845
+		}
+	},
+	/* VFE2 - TFE Full */
+	{
+		.regulators = {},
+		.clock = { "gcc_axi_hf", "vfe2_fast_ahb", "vfe2",
+			   "camnoc_rt_vfe0", "camnoc_rt_vfe1", "camnoc_rt_vfe2",
+			   "camnoc_rt_axi", "camnoc_nrt_axi", "qdss_debug_xo" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 360280000, 480000000, 630000000, 716000000,
+				  833000000 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 200000000, 300000000, 400000000, 480000000 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "vfe2" },
+		.interrupt = { "vfe2" },
+		.vfe = {
+			.line_num = 3,
+			.is_lite = false,
+			.reg_update_after_csid_config = true,
+			.has_pd = true,
+			.pd_name = "ife2",
+			.hw_ops = &vfe_ops_gen4,
+			.formats_rdi = &vfe_formats_rdi_845,
+			.formats_pix = &vfe_formats_pix_845
+		}
+	},
+	/* VFE3 - IFE Lite */
+	{
+		.regulators = {},
+		.clock = { "gcc_axi_hf", "vfe_lite_ahb", "vfe_lite",
+			   "camnoc_rt_vfe_lite", "camnoc_rt_axi",
+			   "camnoc_nrt_axi", "qdss_debug_xo" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 266666667, 400000000, 480000000 },
+				{ 0 },
+				{ 200000000, 300000000, 400000000, 480000000 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "vfe_lite0" },
+		.interrupt = { "vfe_lite0" },
+		.vfe = {
+			.line_num = 4,
+			.is_lite = true,
+			.reg_update_after_csid_config = true,
+			.hw_ops = &vfe_ops_gen4,
+			.formats_rdi = &vfe_formats_rdi_845,
+			.formats_pix = &vfe_formats_pix_845
+		}
+	},
+	/* VFE4 - IFE Lite */
+	{
+		.regulators = {},
+		.clock = { "gcc_axi_hf", "vfe_lite_ahb", "vfe_lite",
+			   "camnoc_rt_vfe_lite", "camnoc_rt_axi",
+			   "camnoc_nrt_axi", "qdss_debug_xo" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 266666667, 400000000, 480000000 },
+				{ 0 },
+				{ 200000000, 300000000, 400000000, 480000000 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "vfe_lite1" },
+		.interrupt = { "vfe_lite1" },
+		.vfe = {
+			.line_num = 4,
+			.is_lite = true,
+			.reg_update_after_csid_config = true,
+			.hw_ops = &vfe_ops_gen4,
+			.formats_rdi = &vfe_formats_rdi_845,
+			.formats_pix = &vfe_formats_pix_845
+		}
+	},
+};
+
 static const struct resources_icc icc_res_kaanapali[] = {
 	{
 		.name = "cam_ahb",
@@ -4948,10 +5089,12 @@ static const struct camss_resources kaanapali_resources = {
 	.pd_name = "top",
 	.csiphy_res = csiphy_res_kaanapali,
 	.csid_res = csid_res_kaanapali,
+	.vfe_res = vfe_res_kaanapali,
 	.icc_res = icc_res_kaanapali,
 	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
 	.csiphy_num = ARRAY_SIZE(csiphy_res_kaanapali),
 	.csid_num = ARRAY_SIZE(csid_res_kaanapali),
+	.vfe_num = ARRAY_SIZE(vfe_res_kaanapali),
 };
 
 static const struct camss_resources msm8916_resources = {

-- 
2.34.1


