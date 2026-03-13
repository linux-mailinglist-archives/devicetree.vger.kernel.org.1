Return-Path: <devicetree+bounces-275244-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PXYBpsQtGlvfwAAu9opvQ
	(envelope-from <devicetree+bounces-275244-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:26:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C4E283E41
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:26:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2136632BAA22
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:21:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F60E39182D;
	Fri, 13 Mar 2026 13:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f5tjYT0i";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="drYOrDxc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABED397E93
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773408048; cv=none; b=UzPve7YK9FnPRpk8++mz1vmOMalrSeYY8lG5J8cv2MJWLOZzBZCnM94ezOHAArhT2BHd046zN6MGa011GKFPDDcCf5PO7aIgOXcv4PltS8UlvUJlPwZMU+V7j+Ph1uoi20LzlOe2f4i7g9xf5HZ3RKQoaBjV4klWuNKn0szsDEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773408048; c=relaxed/simple;
	bh=4cpK+rYSKMeDiyBq3UdtWW7Lob7DBlHMDZuSeWAVS50=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KYER2F03c3Rj/dJwn1cyi4p5j9cG63cj1lvy1geaM3QK6LtiOWc81ZR6L1kAa1XCQArF/lURHqLLC0cOmRx0+Or8qEKritbdQUpnjhgiFb1x1Cb07ZLxh+glfsSaN1jMzHSH6WzZvZVbGa4g1D1ag78ZkcYGKpDUIJ0OoVxNark=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f5tjYT0i; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=drYOrDxc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D7JNXV238441
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:20:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+XJtZ8JERmoHl90VOho+Ves1mxqLVsGuyUf8eQ5EWEA=; b=f5tjYT0i8mmhD4cZ
	+ctPemXVYi12YEPcf163V3xtBrgo4Dl/5tlIpNn21Q31Vu8OJyHX0uy1Sy8dg+VH
	CIYw/K3/zqfA5nCGpgX3aZBu+0ofHVOZRkFh+8CYRmz8YmUmtYMAFOtjgV836CBw
	/5u1Kf6kOGUgtf5TrtzDb0rYVMZilaqv44fmq/q8ziyBhwUpVJxqUM0GZX031cO1
	aEMrid8jmItvCep/FAp6JfkYN7dyMdUox9BMm8SkqbJTAxW1JEi7HMGC6g33SSy3
	AzX0PSlTkSI81RTwLRNtqEuBK81ifQ1dtQhR9BQzbM8s2PRB8Xki0w2CHz0rrUSH
	Mqhq/Q==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cve3d985n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:20:46 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-829fd367abfso1158870b3a.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773408046; x=1774012846; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+XJtZ8JERmoHl90VOho+Ves1mxqLVsGuyUf8eQ5EWEA=;
        b=drYOrDxcBmK/OZfpfTcAmGdvrC6Bmn2ThGBRCqlmo+mlPLDr52PhBSWZvZ9CEOHE4h
         JIGgDLcMsEHunJteU+Ob92kgd+ERXkmnOepnBG+23ZMCA2KxRpBJhcs117JWtFcEtW57
         NWFFEGrd+yN8BQfr5i4QkTpYfgL/w2Nh+5FYu+hgZGLIF4o3c2pn1pj43wZseWey/Dox
         LQ1igDnhOsZnIpvIE3Zo3zP6gANC4IJeVbTCKB9geryRANbHxThrNcmG8tyhw+NhdkSW
         ndNQJshcWuaSBokl+DWJsxxHE6WUZDe0IqQn7pdbMWIQgn/Dg44x8WKzqzD9gxYsAY7C
         VDEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773408046; x=1774012846;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+XJtZ8JERmoHl90VOho+Ves1mxqLVsGuyUf8eQ5EWEA=;
        b=A9QDM9XGxSaNteGzcE8imZLfNYXV9/93ZFy1emX1n3eTBSVAhkjIenPXsvqFxJ62w1
         DZzu2pBwXC5lDuoCklsnkYMytEp0Q39/xy9EFhWfqzv+tOjm046Ej+w4otY41HxfwCeI
         yQlFq6hMggE9B1BJMzCdRuPBpth+81zlXchFq3wYzKB6ZbzHbe2jxh1Vkvh5bvghKzeW
         v4FwaM936JBIXBoZf6iw6PfE6i1qZMQZx5fYl6RbWT7nMbVbtSTwowz1V/C8eq36AuD1
         SSnxKOw189fSLxa4PLYFnlnNDdwZeGdT4+RrLypfGWj0bGRQYIXG32x5svk5l2eU3CrJ
         YGRg==
X-Forwarded-Encrypted: i=1; AJvYcCVRjrF9IEvvta27N4HuDfmYNbeTaBbzKpncVtxNNNMy95PjVhnBSPM4/hImFUdrSDm5+MTjPs1B6uKs@vger.kernel.org
X-Gm-Message-State: AOJu0YxEQh6NxfjeFOoq0RTamupxplVjkYBduijQdVkNcUsd0lJh6iM5
	3sEO3U0i0cA5wXTyDw0IVh/4hElQXz83+gAUryQc9R1usW1vl+j15lVmx0+CHRAVG20YdoTo8s1
	qapMZ0HaegliQjSd8eGhJtBCiKtrY/NS0b5jrQ9atWimX43jjNgamNBQpK5+XOZYx
X-Gm-Gg: ATEYQzzerKg07fp6cyi07JqyWHUu2xN5m3eS8ZTaiJMGZCDygbq0dYPmF8O1Xe4wedN
	aAtNZKSewr979vR2rKCMP1+r5I+/2Lf2SToCztcKNNjv+cSIyvmDe1YQ0H6KGIeRK9vDgHvxwKU
	ojaXJIhY1Fm08Zc3AoheA92sFQmYl7PO7b+Bd2pS78RbCtJMZRaPugvFBG65ve/jkk8e7LBiRwD
	rKOR4l+D/rEEfp5/K5wQ/7/d83H4vKPfqcDnlBlpiYsPIA8kCXIFbIcLPyisQtfpIb8IawYn0fw
	5ZoRMMufURhysWzMvZcyD9gns7FqtL6YytYRw787Sl4cYrNVffLU48aLrOw9y0vAkVqi/QFGhT3
	93aIGvwZ6I1BLYevtxaa7RvMWybHeSafOgr8jSVVo5YY6Fnlvzwk1UTIk
X-Received: by 2002:a05:6a00:94e8:b0:829:6f7d:3093 with SMTP id d2e1a72fcca58-82a1990bcb8mr2879860b3a.48.1773408045702;
        Fri, 13 Mar 2026 06:20:45 -0700 (PDT)
X-Received: by 2002:a05:6a00:94e8:b0:829:6f7d:3093 with SMTP id d2e1a72fcca58-82a1990bcb8mr2879816b3a.48.1773408045070;
        Fri, 13 Mar 2026 06:20:45 -0700 (PDT)
Received: from hu-vgarodia-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a0724407csm5775254b3a.8.2026.03.13.06.20.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 06:20:44 -0700 (PDT)
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 18:49:40 +0530
Subject: [PATCH v3 6/7] media: iris: add iris4 specific H265 line buffer
 calculation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-kaanapali-iris-v3-6-9c0d1a67af4b@oss.qualcomm.com>
References: <20260313-kaanapali-iris-v3-0-9c0d1a67af4b@oss.qualcomm.com>
In-Reply-To: <20260313-kaanapali-iris-v3-0-9c0d1a67af4b@oss.qualcomm.com>
To: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773407994; l=4313;
 i=vikash.garodia@oss.qualcomm.com; s=20241104; h=from:subject:message-id;
 bh=4cpK+rYSKMeDiyBq3UdtWW7Lob7DBlHMDZuSeWAVS50=;
 b=kPpvlinusoZu/UwTxqT8WAUNw2mdn3r4dPJcxzKn143eGjy/VdW0j3HptWkRtMAdt0E6ZUBRG
 WlBPThAYLuzCMORnp/lP/eEOyPDgscnD6qn8TOS/vgzo+ZufJj1jORT
X-Developer-Key: i=vikash.garodia@oss.qualcomm.com; a=ed25519;
 pk=LY9Eqp4KiHWxzGNKGHbwRFEJOfRCSzG/rxQNmvZvaKE=
X-Proofpoint-ORIG-GUID: 6f9N0YQEK2iPWKBLRyg2Dmh350GV4LQD
X-Authority-Analysis: v=2.4 cv=FLwWBuos c=1 sm=1 tr=0 ts=69b40f2e cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=MVHsPVnmqsIq8L41Ef0A:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEwNiBTYWx0ZWRfX83dARnx5cTD8
 HVkzdEW52Tc8FAl+By7eawHYOUiqgdH7geZFtEVGUmQilwoKeV3rOMz2wmAEUtAM10UENtS0VcH
 A/V3lVUDQ8v6hQHCJ14hVT2QG/Vy7u4ZJCSUhHzNVJuGE0u/j6O1B5qBgBlgiHjBPRv1SSZfY2X
 b28cg7rNMSdeZjGgjMg1ngPO+LRzj1iekYjFPjnzYIEEtSsvTt106Sf//OBDXjP7dQMuAYZ3ZDe
 cod09up7SUnkeVnKd0sl9VLM00zab7sW0W9T4mUc6oQlsYF/XOpTkz3mzr4ef1edCxXZsJHhJqE
 4fT8BwBfueXYfBcNt6M9Yw2j5E4FW/4Ze0iLTSs8Lmcxzv40d+xTWg+hCr4bKcfBW+OVs6f2DRF
 YlR7gn4AJ8kVdL03nTYbqW8v27njksr1Q3L0PMXy9Cy80N0uhjco2XmsnsKOKLfkXOgUEmsbpsi
 yqifknuBUoJcrgi9ZPQ==
X-Proofpoint-GUID: 6f9N0YQEK2iPWKBLRyg2Dmh350GV4LQD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 bulkscore=0 malwarescore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130106
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275244-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 70C4E283E41
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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


