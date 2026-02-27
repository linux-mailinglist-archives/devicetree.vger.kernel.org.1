Return-Path: <devicetree+bounces-269280-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMhYHreooWm1vQQAu9opvQ
	(envelope-from <devicetree+bounces-269280-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:22:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCAB1B8CD4
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:22:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3E98D30FE1DD
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 14:14:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7226C421F12;
	Fri, 27 Feb 2026 14:12:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QbPqp2ll";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JMHCO3+2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D53C410D20
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:12:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772201549; cv=none; b=ikvAGx0xbsDq4MBV1wu3TLU/5M0jdUbbBmItKXNvMMCpO4VG/CfGvlk/UUahX+QDU7dJXVjwYUeFfdakKd8vADnQ/I7rlp9HrtKBx5LgFDDnABizRo48Mi8a5DLGZYimqKJy/y8QPQ7wtAHrGuFLvXFKmpB1AqHDqllNNdC9V+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772201549; c=relaxed/simple;
	bh=4cpK+rYSKMeDiyBq3UdtWW7Lob7DBlHMDZuSeWAVS50=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=icx+xpR0YdYAy5K0WOf7yY4wHHv1YSg8IEetwdG0lTKSS73BjQSBuZnUpN2ZwQh97u+2wyKzFWw5x8plU/ijviIwrb5h5encZnWjHMtIquUbSdcHY5fGxVTGhqt64jKxZdIcIw2Un0hK2E+sIYO4wXwdrxsr9Uv16g7GQcV0w/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QbPqp2ll; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JMHCO3+2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61RBLpKq2663260
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:12:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+XJtZ8JERmoHl90VOho+Ves1mxqLVsGuyUf8eQ5EWEA=; b=QbPqp2lliuebePFr
	j1Pm47ToXDjuk2g9Uy8Tq0WQ6+LMO2fGnOA09rhk3UrD2qMSGpW0xjRfihzmJMUX
	ZLuHBPkVw96exgl7EUcfd0WWfIDiyqr6pmC29Q39idf7zrF/3fytdjXOEkmZ0/Ar
	0m9cjdG37S2TEgMVabnVp9RQPrQambmCaopQRKANBh8chzaz8YNVnA2MU3r0SDqJ
	zvCdDMPTEW+yg2hiYIOq3ni35KoAcj0+O1G4Nu5f3WHOREB5iB8V1L13MTA3W8jT
	71UJIvMzgFpglQ/tzNrM8lTW15aNtK/oukw5Zb7tl5VzG0AZzBtV9rLKWDQx0Cn7
	YGvkDA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ck43r9t1v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:12:27 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a9638b0422so12231155ad.3
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 06:12:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772201547; x=1772806347; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+XJtZ8JERmoHl90VOho+Ves1mxqLVsGuyUf8eQ5EWEA=;
        b=JMHCO3+2BaCRfeq1TVU7t7AvtUm0HwrgKUTZmwDRelAum30fYQ8R9/ho44WBn05K7B
         w2wGfa+qvOT9YauGwGZalWysvx71l9lOoWeVfs4tgbX5rXY3LKHZ5ulei7pUhzQ946yS
         nMVvhj0fL4z++xUUXZyjewJ/fvm+rZG/yBMJ5WttBvLjAqHr1/KboBGTEbHjXOy/XIgT
         QueeAJcqCXo4XUbryJRUZSLShw4/t2RMeqR0P6MrslRC5SRzbyo66qj2VvCgElyEw4tF
         Dzr8r5KufaQD+3JZOZHlbixelxHJXbjk5199gEfmarI/PUqPrgMCODLGLkDSwpyPbHuK
         jwWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772201547; x=1772806347;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+XJtZ8JERmoHl90VOho+Ves1mxqLVsGuyUf8eQ5EWEA=;
        b=GWjsPL5BTWmUnjf9NjL5Pipt73AQdyvx+4bOWskMBaz/7zCHtlyZcPxJjIfWIT7R8Z
         xeIbznVE8dgmlYOl7YBuJNjxFHORtciSxAxiTUvTOGDhtQUAsY1fpm4Eqpmlf3HLsSwM
         bEuz9B+QM7hKOzM5e4oXh3RzUnLxjGfrIyDumIT/bFxU5a6uKCkdQ61WjX35PmY2/ZC1
         X1ACHpfdMVLe3J5my8xS8AC4c/QrT+PZJl9lPfm0PCYYhwVFe4XF6Mbbo2jxYNwWfyE0
         /ZIPtw2JYYfDn6bocuEbpLQc7TGm0QksKOjY8YfkFqTseTnkKsBf4AABxDN123DfGP+R
         KYIQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4IGGP1ojl+qw6UPxvGO/3+LRejzp9doVQ8NVRehZ1L56sTwU3M+9BCXCLyrqfrjy6HZktgY+BfBj4@vger.kernel.org
X-Gm-Message-State: AOJu0YzjP0LAAOl25ysKqdoX31v3oY1h9lBFNaTfr8tKkoMyGUhpSASo
	+rvzWDfjSK1NZ2W5j1MMfi4Ns4rQrmlpZ6ahuGfZZCiZD0PoKFR5V0MF5nqA1oEV6mmwkwkjP/R
	hIHuiOJcbgQR3XOF1Co6yUGJRpmtPkpEIfP8ikTAhrZ+31umUno1UvcLMBXqFAzBH
X-Gm-Gg: ATEYQzyQ8n/X/qg2S+pXbjmCht72FGUVWRZwFO/SRn76w559G1uALDtSP5y2mJbQTOn
	USljb8IeObuZNsesODnQWFEgfZ5GJ7AM9nTFD6efs77FBkNr+FjG6bO8eYr7NjwQBzxNxpataFA
	+r8ZQEKzd6/BqovXLtd2NoLNZE6BtC7oTg0nFbzddeP/C7uFL3tZahWBeyr4/kr27RU8lY5XqoN
	Fdq7I7wD0yD2IDw9o96H7w0UhldYLepgLjg6KKzNOmOTDNwpDnPmOESHzWYQQ2xYKkOO40dCcio
	c+8IB9FSVIzkWMrmdo0vRFY3XDwcndIheibMUjTMP2i28b71SK2U2FtkzMikUUtm7dq6R6ZJ4a8
	TXs5kVR1gicGfIzxWTOOm9CZOIpBhBfXgzAoOJxH+HfrH2CWdOlym6J6Z
X-Received: by 2002:a17:903:1ae8:b0:2ad:ba04:40d3 with SMTP id d9443c01a7336-2ae2e419166mr28838935ad.24.1772201546723;
        Fri, 27 Feb 2026 06:12:26 -0800 (PST)
X-Received: by 2002:a17:903:1ae8:b0:2ad:ba04:40d3 with SMTP id d9443c01a7336-2ae2e419166mr28838415ad.24.1772201546192;
        Fri, 27 Feb 2026 06:12:26 -0800 (PST)
Received: from hu-vgarodia-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb5c183bsm60960865ad.24.2026.02.27.06.12.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 06:12:25 -0800 (PST)
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Date: Fri, 27 Feb 2026 19:41:22 +0530
Subject: [PATCH v2 6/7] media: iris: add iris4 specific H265 line buffer
 calculation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260227-kaanapali-iris-v2-6-850043ac3933@oss.qualcomm.com>
References: <20260227-kaanapali-iris-v2-0-850043ac3933@oss.qualcomm.com>
In-Reply-To: <20260227-kaanapali-iris-v2-0-850043ac3933@oss.qualcomm.com>
To: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772201499; l=4313;
 i=vikash.garodia@oss.qualcomm.com; s=20241104; h=from:subject:message-id;
 bh=4cpK+rYSKMeDiyBq3UdtWW7Lob7DBlHMDZuSeWAVS50=;
 b=BUknAXG+k+86NFxEHwE9YE7QULGUx4cd71iL+7BDqbDgKfbc2uMwUqNcyto4ytlqfXZ6fLPuK
 Gw/mcauF2+yBXckzNPGrhfLNxiqFNOwzbiyamBwOk4QW+IJ4rbpEeam
X-Developer-Key: i=vikash.garodia@oss.qualcomm.com; a=ed25519;
 pk=LY9Eqp4KiHWxzGNKGHbwRFEJOfRCSzG/rxQNmvZvaKE=
X-Proofpoint-ORIG-GUID: 8vSlOWNUI89VA1D85BAbdqlQfuc8jYu7
X-Proofpoint-GUID: 8vSlOWNUI89VA1D85BAbdqlQfuc8jYu7
X-Authority-Analysis: v=2.4 cv=DOqCIiNb c=1 sm=1 tr=0 ts=69a1a64b cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=MVHsPVnmqsIq8L41Ef0A:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDEyNSBTYWx0ZWRfX8i/rvTnAVUID
 pnkiHr/wF90HEPYk/B+Hn4KdEOa1e++2qZxI1yZz1hN1n1LYHuUqv5jNEgRUzSWWvgFoShPt2x2
 sJQoDLdG9QzonKJzLp+kCpGPAzebo6vNAzTIvBLhQiN/aNZlmUwoT1YaFwHrgU6x2k3gZ/qD0t8
 wBQxrMfMRjNAd9GS1RmspkRYL18rO4N+rWW+Kh0ivgDG+2qFrmayfLM6oeui8XWwmZM/imggEoe
 0bo05XXHuKOS2gr+45dazlv+Fra+mgTitzAkKbLlzW/kQARCWtUYfwyUAGOnGbZo+Ho5sK2imi3
 8nHVpXWjaQ/Fvr+pdNmsTG4t/JBM8qfGy9kmh6BzFSlSe5bGYuHxE8ql0u5Onw5HYQxdnbf/OLv
 ePVqav90k1y3w+cyp/mzQdyPPqlcx1+GD5FlcJ0bI+N0cHcBNF/8SqCwryuTmuv0F40II+w8o0P
 +o2b9xg6Z/rQ886lC3w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_02,2026-02-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270125
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269280-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EBCAB1B8CD4
X-Rspamd-Action: no action

The H265 decoder line buffer size calculation for iris4 (VPU4) was
previously reusing the iris3 formula. While this works for most
resolutions, certain configurations require a larger buffer size on
iris4, causing firmware errors during decode. This resolves firmware
failures seen with specific test vectors on kaanapali (iris4), and fixes
the following failing fluster tests
- PICSIZE_C_Bossen_1
- WPP_E_ericsson_MAIN_2

Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
---
 drivers/media/platform/qcom/iris/iris_vpu_buffer.c | 51 +++++++++++++++++++++-
 1 file changed, 50 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/qcom/iris/iris_vpu_buffer.c b/drivers/media/platform/qcom/iris/iris_vpu_buffer.c
index 9270422c16019ba658ee8813940cb9110ad030a1..a4d599c49ce9052b609b9cedf65f669ba78b5407 100644
--- a/drivers/media/platform/qcom/iris/iris_vpu_buffer.c
+++ b/drivers/media/platform/qcom/iris/iris_vpu_buffer.c
@@ -1755,6 +1755,55 @@ static u32 hfi_vpu4x_buffer_line_vp9d(u32 frame_width, u32 frame_height, u32 _yu
 	return lb_size + dpb_obp_size;
 }
 
+static u32 hfi_vpu4x_buffer_line_h265d(u32 frame_width, u32 frame_height, bool is_opb,
+				       u32 num_vpp_pipes)
+{
+	u32 num_lcu_per_pipe, fe_left_lb, se_left_lb, vsp_left_lb, top_lb, qp_size,
+	    dpb_obp = 0, lcu_size = 16;
+
+	num_lcu_per_pipe = (DIV_ROUND_UP(frame_height, lcu_size) / num_vpp_pipes) +
+			   (DIV_ROUND_UP(frame_height, lcu_size) % num_vpp_pipes);
+
+	fe_left_lb = ALIGN((DMA_ALIGNMENT * num_lcu_per_pipe), DMA_ALIGNMENT) *
+				FE_LFT_CTRL_LINE_NUMBERS;
+	fe_left_lb += ALIGN((DMA_ALIGNMENT * 2 * num_lcu_per_pipe), DMA_ALIGNMENT) *
+				FE_LFT_DB_DATA_LINE_NUMBERS;
+	fe_left_lb += ALIGN((DMA_ALIGNMENT * num_lcu_per_pipe), DMA_ALIGNMENT);
+	fe_left_lb += ALIGN((DMA_ALIGNMENT * 2 * num_lcu_per_pipe), DMA_ALIGNMENT);
+	fe_left_lb += ALIGN((DMA_ALIGNMENT * 8 * num_lcu_per_pipe), DMA_ALIGNMENT) *
+				FE_LFT_LR_DATA_LINE_NUMBERS;
+
+	if (is_opb)
+		dpb_obp = size_dpb_opb(frame_height, lcu_size) * num_vpp_pipes;
+
+	se_left_lb = max_t(u32, (ALIGN(frame_height, BUFFER_ALIGNMENT_16_BYTES) >> 3) *
+				MAX_SE_NBR_CTRL_LCU16_LINE_BUFFER_SIZE,
+				max_t(u32, (ALIGN(frame_height, BUFFER_ALIGNMENT_32_BYTES) >> 3) *
+				MAX_SE_NBR_CTRL_LCU32_LINE_BUFFER_SIZE,
+				(ALIGN(frame_height, BUFFER_ALIGNMENT_64_BYTES) >> 3) *
+				MAX_SE_NBR_CTRL_LCU64_LINE_BUFFER_SIZE));
+
+	vsp_left_lb = ALIGN(DIV_ROUND_UP(frame_height, BUFFER_ALIGNMENT_64_BYTES) *
+				H265_NUM_TILE_ROW, DMA_ALIGNMENT);
+
+	top_lb = ALIGN((DMA_ALIGNMENT * DIV_ROUND_UP(frame_width, lcu_size)), DMA_ALIGNMENT) *
+				FE_TOP_CTRL_LINE_NUMBERS;
+	top_lb += ALIGN(DMA_ALIGNMENT * 2 * DIV_ROUND_UP(frame_width, lcu_size), DMA_ALIGNMENT) *
+				FE_TOP_DATA_LUMA_LINE_NUMBERS;
+	top_lb += ALIGN(DMA_ALIGNMENT * 2 * (DIV_ROUND_UP(frame_width, lcu_size) + 1),
+			DMA_ALIGNMENT) * FE_TOP_DATA_CHROMA_LINE_NUMBERS;
+	top_lb += ALIGN(ALIGN(frame_width, BUFFER_ALIGNMENT_64_BYTES) * 2, DMA_ALIGNMENT);
+	top_lb += ALIGN(ALIGN(frame_width, BUFFER_ALIGNMENT_64_BYTES) * 6, DMA_ALIGNMENT);
+	top_lb += size_h265d_lb_vsp_top(frame_width, frame_height);
+
+	qp_size = size_h265d_qp(frame_width, frame_height);
+
+	return ((ALIGN(dpb_obp, DMA_ALIGNMENT) + ALIGN(se_left_lb, DMA_ALIGNMENT) +
+		ALIGN(vsp_left_lb, DMA_ALIGNMENT)) * num_vpp_pipes) +
+		ALIGN(fe_left_lb, DMA_ALIGNMENT) + ALIGN(top_lb, DMA_ALIGNMENT) +
+		ALIGN(qp_size, DMA_ALIGNMENT);
+}
+
 static u32 iris_vpu4x_dec_line_size(struct iris_inst *inst)
 {
 	u32 num_vpp_pipes = inst->core->iris_platform_data->num_vpp_pipe;
@@ -1770,7 +1819,7 @@ static u32 iris_vpu4x_dec_line_size(struct iris_inst *inst)
 	if (inst->codec == V4L2_PIX_FMT_H264)
 		return hfi_buffer_line_h264d(width, height, is_opb, num_vpp_pipes);
 	else if (inst->codec == V4L2_PIX_FMT_HEVC)
-		return hfi_buffer_line_h265d(width, height, is_opb, num_vpp_pipes);
+		return hfi_vpu4x_buffer_line_h265d(width, height, is_opb, num_vpp_pipes);
 	else if (inst->codec == V4L2_PIX_FMT_VP9)
 		return hfi_vpu4x_buffer_line_vp9d(width, height, out_min_count, is_opb,
 						  num_vpp_pipes);

-- 
2.34.1


