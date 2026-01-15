Return-Path: <devicetree+bounces-255494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC48D23A51
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:42:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A503630B3408
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:30:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55C24389462;
	Thu, 15 Jan 2026 09:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B3AduXVj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="K4/XY2cS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48CD35E537
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768469355; cv=none; b=riZY15MnDuoBHxW+hUgOqDcCwgj9UZEpPd0PYyueHFt4qRBT0cCWy7+VA44B3yBy080EjTIC95/aX1gB/49a4C/ymLqI0ZNvQJfUFJaYb+m3usAa/nC104hsP//IelpKYToXg1IW7W9Tx4UdG3CGvG2IXppuyekR9mwASN5y0g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768469355; c=relaxed/simple;
	bh=s19WZGnVsjnU3CIa2pjMzvDcR1778Z6ip689C/D4ewo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kPScwbd8Yl4ukqJsXETwgY+Wd/sXwIMTSA8NoYxiP8DnDU4LXYEw9AxmvJEqhpq8kfkCc1iVYgYAFdYjQpmrug4/d1uw9QDTD4QqTP/X58RxEJ/xPMfUxCf4M8jysuQV9ttA9LvU8xSe5HacA08eShCZkAVkb4247OIN+lDNoQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B3AduXVj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=K4/XY2cS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6fw4b1991681
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:29:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=I87OukHNOgS
	eTgoOXQALSi1N6P0XQunpMCBrwQ4g5NU=; b=B3AduXVji1zoURleuuOhK3oQdx7
	6NRuvXB+sflMwvuDIv1ZbZwrMlthUaCrt+U4unJw/WxvIWFyNwrXg82klH8/5um2
	pPqulZV8fDFIXu4C0uAeQ7lwhEC3BHYelfi3xQII+X0dDph5cur20zGmuIJNIFjz
	sukWJw5FFfiY3hiUXzejcvu17NNZv7lEQ7+Hy181VvHmpO2zdXB6jtPXNgOa4NJp
	2GuM1PTYnV7tsRlcEtklwvSgdVR554fx3ultDjj1frl9uwGI+/NBDGSVcyK54zb1
	Oyaw2y6qyWIh9M6Lch2vmoBVfemxVw+c+pd+M3MpjH9mxvsAvQTsUOq3PGQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpbdbudkg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:29:12 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88a2cff375bso16207446d6.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 01:29:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768469352; x=1769074152; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I87OukHNOgSeTgoOXQALSi1N6P0XQunpMCBrwQ4g5NU=;
        b=K4/XY2cSGH2fB5+sZN6mhYPiHKqdjKeM6QptVMCD1+AoiLsr9wychy8Fx7NcpURJdG
         OfO3w4wnKcsyw2IFYX9cGoPvSYPX+sV7qGqEeJo0fyl7kl6AAHUqo0n5JFPB9Ef0nsno
         orp4BwUmM2kUgVe9O6GktufCpFk21KREtx8L8fD/RtHIvzOwyswj0vj2BSNfJHhpTn3E
         kk1Fb9u9ILWZMQX8ZWYVdZyre6/l2D19BKIWJseQxrW5OFYa33IYvigSF2Ay8eZD7bW5
         mELtoZAsV+R+Yl7VKVhxqS+TvWaukftlfSAo3fHE1rMDbqcGQLMLBl4Ae4gl/eos7c2D
         AcHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768469352; x=1769074152;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=I87OukHNOgSeTgoOXQALSi1N6P0XQunpMCBrwQ4g5NU=;
        b=Yj37c8SaXZdcZCs6A1hQAr8mEzTU3/4fJ4eBBN3GrYCZwZEy54oDyQxWnW7MubnBzI
         Exw21e4ZZ6VdRFXknlVYgTNjfoww4pEAozFoLUoM9lgXRMNp6eacW9H9fUeNKQspBuBb
         57n8uX0Yf3SGeZWyeh00QMhjLYBP5waAIm5AiKCdtr8OyfzWUIWfvq8ghFbqIOrv/LcS
         PJ6Vf8i9SGzg9ag/o+83uF03ScR2uh4rEiQucSpU97GFBJeLdG1SbZBKNOou7ye/7fG7
         /Z7+l0SyIiNwVaEukIDIgSoffxfoT75y9iMykZr11hemQ3lHTqMzH+Csgk9lQXyJXVMa
         6dAA==
X-Forwarded-Encrypted: i=1; AJvYcCXx/T+dc5AQRud+xrugVevltzzLYBlbeJ4J2iJQuS2KTbTtE/jzC2imy0my6tSvBjDUbVgAb/GCK9vv@vger.kernel.org
X-Gm-Message-State: AOJu0YyjUP39+P9DHgfnWrWlsvFh5IrommyYIgvK1qx9tIA09hZ6db2a
	LDHtnBACWod8zMwBqH1vLkAHT/LaeO8JTEBN/or7l+iLMeccThFAEXlKWV8XEohGaS48ce5tb/e
	nXUGtzgfdxwiKaQ0JdMlefCyYjikOBs40NmTATNO68stjL3BGajEZelAJZbRYvl8S
X-Gm-Gg: AY/fxX6IBewbb4NiWKzRuekrwfx3nddw9IzO4BY+v97eLjQxfeQ0DW0/S94rmgxzBys
	+BO+o9YqltWy30mzInxue+9G+9nhorxKG99QBf9YwVIAKObF4MHyRvzuBx9ufZLFxoltbDSYmcF
	fF/FrzHXot1sNm4fWAt5bbHgdKATW+mm46j/qOQZdjJo/wIiunCOuOTojk/J0oKEMM1y9l/fU54
	barOmGylM8X3hT5b/Xc8LlGJoMAdrRHWo0AnC+3UOZNxRoEY+rgZh4hxTtxIqckI9D4JJ1pYkJN
	rERyzvtmT2gVFh1HuR6AywhhfR+xvJmAEZLIdKFIrm2ThS86/bH/wFXFc2KYnKaX+NNTwuGeimt
	24RZLiG3KW35umx0c7am0x0HCPXNCxmoWoPIfWoUvK5Jl4nfmLFcvAx6hlkPSUv6mezs=
X-Received: by 2002:a05:6214:5182:b0:880:5193:10fb with SMTP id 6a1803df08f44-892743c8cc0mr83008286d6.54.1768469351669;
        Thu, 15 Jan 2026 01:29:11 -0800 (PST)
X-Received: by 2002:a05:6214:5182:b0:880:5193:10fb with SMTP id 6a1803df08f44-892743c8cc0mr83008096d6.54.1768469351265;
        Thu, 15 Jan 2026 01:29:11 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-892668a2419sm64388416d6.30.2026.01.15.01.29.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 01:29:11 -0800 (PST)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, jesszhan0024@gmail.com,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v6 08/12] drm/msm/dpu: Add interrupt registers for DPU 13.0.0
Date: Thu, 15 Jan 2026 17:27:45 +0800
Message-Id: <20260115092749.533-9-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260115092749.533-1-yuanjie.yang@oss.qualcomm.com>
References: <20260115092749.533-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=NvncssdJ c=1 sm=1 tr=0 ts=6968b368 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=RfJNy9JZAWTFlj1jTG0A:9 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: zj5DoJaNgzn6PJHnvwT6LJorjVIsYhJS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA2NSBTYWx0ZWRfX8Imb0pyrJ5rP
 IBLmjt9Q1H7zd3xnDXHumuKKloMH9Kg0H9UGtNC2SOmNom58+0LXRXwHdFNgb6hP+3/8F21XmWS
 uerqV7e4Ch/ge1KmTY6I5hEbWQVAxedxibhfgjeWQVckbfYDQdeiqcu/FdzivzHjVdifCXexIP+
 5FUwhIUkj7sB/NtxvN3PXVqcq91xU9gzsJnfrHPZ8wlsj1uNLZ3hWtBGgq/mtcPEsK2x+dmmJhq
 mHj+CcybAvo+TKmn0tolEPbl2Rh4YsaqF7itpfm5+5Te8w4iR/68wNaxyva5ZhqHQxQS3jcZtCk
 LqRlUFtGFHgaW4mwMtjjaCOwTO9d7bEt5/Qp4AejbGqu16bUjqQwz2bk6ZZZW140M1e1tTWaDPN
 FXpLBSI4PArR6jCn8HWPboi5xq41Cc/psEkKbHaBBHt8o0DeFbsLylbCTwFLEXCZg+E/QL7tnbK
 w+/KLO4STw8HS/6eD1g==
X-Proofpoint-GUID: zj5DoJaNgzn6PJHnvwT6LJorjVIsYhJS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_02,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601150065

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

DPU version 13.0.0 introduces changes to the interrupt register
layout. Update the driver to support these modifications for
proper interrupt handling.

Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 .../gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c | 89 ++++++++++++++++++-
 1 file changed, 88 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c
index 49bd77a755aa..5b7cd5241f45 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c
@@ -40,6 +40,15 @@
 #define MDP_INTF_REV_7xxx_INTR_TEAR_STATUS(intf)	(MDP_INTF_REV_7xxx_TEAR_OFF(intf) + 0x004)
 #define MDP_INTF_REV_7xxx_INTR_TEAR_CLEAR(intf)		(MDP_INTF_REV_7xxx_TEAR_OFF(intf) + 0x008)
 
+#define MDP_INTF_REV_13xx_OFF(intf)			(0x18d000 + 0x1000 * (intf))
+#define MDP_INTF_REV_13xx_INTR_EN(intf)			(MDP_INTF_REV_13xx_OFF(intf) + 0x1c0)
+#define MDP_INTF_REV_13xx_INTR_STATUS(intf)		(MDP_INTF_REV_13xx_OFF(intf) + 0x1c4)
+#define MDP_INTF_REV_13xx_INTR_CLEAR(intf)		(MDP_INTF_REV_13xx_OFF(intf) + 0x1c8)
+#define MDP_INTF_REV_13xx_TEAR_OFF(intf)		(0x18d800 + 0x1000 * (intf))
+#define MDP_INTF_REV_13xx_INTR_TEAR_EN(intf)		(MDP_INTF_REV_13xx_TEAR_OFF(intf) + 0x000)
+#define MDP_INTF_REV_13xx_INTR_TEAR_STATUS(intf)	(MDP_INTF_REV_13xx_TEAR_OFF(intf) + 0x004)
+#define MDP_INTF_REV_13xx_INTR_TEAR_CLEAR(intf)		(MDP_INTF_REV_13xx_TEAR_OFF(intf) + 0x008)
+
 /**
  * struct dpu_intr_reg - array of DPU register sets
  * @clr_off:	offset to CLEAR reg
@@ -199,6 +208,82 @@ static const struct dpu_intr_reg dpu_intr_set_7xxx[] = {
 	},
 };
 
+/*
+ * dpu_intr_set_13xx -  List of DPU interrupt registers for DPU >= 13.0
+ */
+static const struct dpu_intr_reg dpu_intr_set_13xx[] = {
+	[MDP_SSPP_TOP0_INTR] = {
+		INTR_CLEAR,
+		INTR_EN,
+		INTR_STATUS
+	},
+	[MDP_SSPP_TOP0_INTR2] = {
+		INTR2_CLEAR,
+		INTR2_EN,
+		INTR2_STATUS
+	},
+	[MDP_SSPP_TOP0_HIST_INTR] = {
+		HIST_INTR_CLEAR,
+		HIST_INTR_EN,
+		HIST_INTR_STATUS
+	},
+	[MDP_INTF0_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(0),
+		MDP_INTF_REV_13xx_INTR_EN(0),
+		MDP_INTF_REV_13xx_INTR_STATUS(0)
+	},
+	[MDP_INTF1_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(1),
+		MDP_INTF_REV_13xx_INTR_EN(1),
+		MDP_INTF_REV_13xx_INTR_STATUS(1)
+	},
+	[MDP_INTF1_TEAR_INTR] = {
+		MDP_INTF_REV_13xx_INTR_TEAR_CLEAR(1),
+		MDP_INTF_REV_13xx_INTR_TEAR_EN(1),
+		MDP_INTF_REV_13xx_INTR_TEAR_STATUS(1)
+	},
+	[MDP_INTF2_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(2),
+		MDP_INTF_REV_13xx_INTR_EN(2),
+		MDP_INTF_REV_13xx_INTR_STATUS(2)
+	},
+	[MDP_INTF2_TEAR_INTR] = {
+		MDP_INTF_REV_13xx_INTR_TEAR_CLEAR(2),
+		MDP_INTF_REV_13xx_INTR_TEAR_EN(2),
+		MDP_INTF_REV_13xx_INTR_TEAR_STATUS(2)
+	},
+	[MDP_INTF3_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(3),
+		MDP_INTF_REV_13xx_INTR_EN(3),
+		MDP_INTF_REV_13xx_INTR_STATUS(3)
+	},
+	[MDP_INTF4_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(4),
+		MDP_INTF_REV_13xx_INTR_EN(4),
+		MDP_INTF_REV_13xx_INTR_STATUS(4)
+	},
+	[MDP_INTF5_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(5),
+		MDP_INTF_REV_13xx_INTR_EN(5),
+		MDP_INTF_REV_13xx_INTR_STATUS(5)
+	},
+	[MDP_INTF6_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(6),
+		MDP_INTF_REV_13xx_INTR_EN(6),
+		MDP_INTF_REV_13xx_INTR_STATUS(6)
+	},
+	[MDP_INTF7_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(7),
+		MDP_INTF_REV_13xx_INTR_EN(7),
+		MDP_INTF_REV_13xx_INTR_STATUS(7)
+	},
+	[MDP_INTF8_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(8),
+		MDP_INTF_REV_13xx_INTR_EN(8),
+		MDP_INTF_REV_13xx_INTR_STATUS(8)
+	},
+};
+
 #define DPU_IRQ_MASK(irq_idx)	(BIT(DPU_IRQ_BIT(irq_idx)))
 
 static inline bool dpu_core_irq_is_valid(unsigned int irq_idx)
@@ -507,7 +592,9 @@ struct dpu_hw_intr *dpu_hw_intr_init(struct drm_device *dev,
 	if (!intr)
 		return ERR_PTR(-ENOMEM);
 
-	if (m->mdss_ver->core_major_ver >= 7)
+	if (m->mdss_ver->core_major_ver >= 13)
+		intr->intr_set = dpu_intr_set_13xx;
+	else if (m->mdss_ver->core_major_ver >= 7)
 		intr->intr_set = dpu_intr_set_7xxx;
 	else
 		intr->intr_set = dpu_intr_set_legacy;
-- 
2.34.1


