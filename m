Return-Path: <devicetree+bounces-249774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95989CDEE78
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 19:31:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 757243014A05
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 18:30:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1250A2737E3;
	Fri, 26 Dec 2025 18:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b1Ltf00D";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iTcRbMMw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6693F274FC1
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 18:30:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766773828; cv=none; b=fSLzD/5NAY6ZAs4IOrj5b73MGoOMIbYhzVKNNFLq++5fFcIESI/e0tJFYr2HgysIKxPlp1BGs8FTxxBFY5k6NMXZJNEF/LRsDfKp40OrSHe2G42aulnfgTl709tHi1kM2V6H/PsuP9SwDPD0gEvpx5e6OWVQ6G2KHNVh7JkaIhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766773828; c=relaxed/simple;
	bh=5dTgJd08Hj+VK9BytzXaVkvC+Zi8xcPYy36Mus4jT/0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pZdbV6HFMmXXMoHgeorWGVdEJNI1DHIQ+3vcC8qq+dZBhNzpUCWz1jujpnGaOim4PORKlemyQ5qwqro7H0FKDZ7J1vz1cBKmsQb8ZCf44IwIuarJBUW/e2dTEfyLC31d2BOEgSCsrwAlH/65dI+aSpi96hwc2Z2qL+t3tdVE4P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b1Ltf00D; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iTcRbMMw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BQ8bdDA164333
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 18:30:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RgAmFhI7swuPIf8WPcGiUXJ7Xp4sUyKMt3c/cd48bxE=; b=b1Ltf00DQDObPEQ0
	Q9M/2o+wTDuEwwnD58nUYRULQ7+WSl+Xgm0MjHxaJowksqHI8ObIFOAkDcSj3nkB
	iWlCOmDaTVYwM36mmANN7r8heDOIZ9oCwDqRuHnUgAVq80nFAnUo6yfWT6mvg22D
	QWR/h+dOhVd2sakD/VZxrhpHYwACyc8M1FhK2ckhpFwlzRp5eEY0elC3tmP0GrYy
	z7JoqPI0gRVZJX9eV5NbVedZ6y1R6z0XE0EalBSTa4R2amy9VVih8/QzGYzanVId
	79Eppc3uA0pJTBsJQOpp+wANE8BfGIt29D7+SqwearUF3xy7PFmf3vSjREd46blF
	gMRO5A==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b8vaabqb3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 18:30:25 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34c43f8ef9bso7806676a91.1
        for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 10:30:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766773824; x=1767378624; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RgAmFhI7swuPIf8WPcGiUXJ7Xp4sUyKMt3c/cd48bxE=;
        b=iTcRbMMwxay47hxhm3vwWK0bOS552iDF7q1/I3IbRjGCoi7EgTE8FRiDTP7xK73NjQ
         hYJJ4mBakC4NctISL8bgpuG+8hevpPdHMYsGPrQya8mx9Rua7jqBsBYfGstLmhbjU93Z
         iwUxeztY/OaSbWoJfgV1NfM812qI98I8RqciTZui7UWem5ddTcrWgsxebf8ZNmhEgdHV
         vJ/9nOcRhh8dOGbOwuSfI4jjtOd4s4lBZ9d7LOZjzzvMmde0HTWbwgbCI3E2q2YZFe+W
         kXGyIwqh4RJ/8tG6FZ5Omv9k5VqVZbFF7NLrFd3VFc9vezzPWPgbSyncuCBPA0cbB3Kd
         aLDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766773824; x=1767378624;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RgAmFhI7swuPIf8WPcGiUXJ7Xp4sUyKMt3c/cd48bxE=;
        b=vCkdTOT18Fa5rr+YQY6ajnsQ3gUY7hFnf/Tx6r5BLfCQ8oyay3WnDCwIqhG31/Ki+5
         aaALVaQPH3LRJ+ykpVccvBKrgl8KWkt1pGDJYjkM/Wwuc0l33HmXWXBT4WrXZYkm5x95
         K3wMMvSiNGks4KI9bs1DimwahcyX46dbwpGaQvPCcLfbp0Z86BLyfaKy/TtUfgm8t0SF
         nPXMYdgelZtbtMv31/Q55orVx8Olc7hkTOg3IRC5cx2i7LE3out7Bsk16XVDD66cx6MU
         lLuJu6PNz0HRnKM+y3YaW8V3LXX72C2eSo374RuIGZzqegbEd+j5R0n7XrxgSvoPSeqG
         FCow==
X-Forwarded-Encrypted: i=1; AJvYcCXtsp50oIuHZ9n2X+LM0UJotxWkGibl67G7Xl9twORz9f3AC10TeiS8BQgVNG6mOVLus/jzlbgi+b/a@vger.kernel.org
X-Gm-Message-State: AOJu0YwYCe7cCiqWjFfkYMnQscqlbFYZ1ul3tW+31w/+22z2OKLBfdXP
	HcMh4ErV9JdEkW7KNu3oUKHPAxZ+WT1j+SRtytR44NZS7dV2wZJj6QonwPClVmDiTpyTmt4kVlk
	ZP9sWTGP4i07PkepYfakOPOHeJY1SfDo6rNFi5KdslVUOPpITitpfmmPJjT/Hx5sL
X-Gm-Gg: AY/fxX4UqXDS1PG5yGZSwjnqmWBiAif9idO02DUp72Km+lbCLdgxew8lr/IQKOIIu6e
	Yp1x/n3K9H43dqqzWnDVP0D6M4wvHrLlbZBMuRWdO8ICn7RxPBbjQAJBJI7rGLI7pJqhPRf4pnI
	iXm7Z1rn67AeHJU2mfsgN0zjf2g2G43PlPZF4R6Na31MnNdhXdyOoqrhscXlxYzkgPr9JbqvQVH
	MdRWn7p3C6jWC0wJEUsSkYsMXeeRcW8CS0+TaHff+lIv1LQE2OnnSb29k4xdGuQna10mzyMtcVr
	J1IDuoHrKvpN8cGRqMNV6arFdSSMC3yXbyBnNz++kPtnmLgdMzobHJh22Hnt5ZhOYA+JSDdFJz0
	MYXaWVRF1o8+vxgPdLHzx/cXCLCrRmxX2Vw==
X-Received: by 2002:a17:90b:2803:b0:34a:a16d:77c3 with SMTP id 98e67ed59e1d1-34e90d5d6d0mr21217653a91.2.1766773824287;
        Fri, 26 Dec 2025 10:30:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFxqzDaOi7TeYzJ5Xh/GgEoe2tstfUdz928XPlxJaz216BBcTVVcEWqmIz4NI+E/Gqd0G21qg==
X-Received: by 2002:a17:90b:2803:b0:34a:a16d:77c3 with SMTP id 98e67ed59e1d1-34e90d5d6d0mr21217615a91.2.1766773823669;
        Fri, 26 Dec 2025 10:30:23 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70d65653sm23808883a91.5.2025.12.26.10.30.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Dec 2025 10:30:23 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Fri, 26 Dec 2025 23:59:36 +0530
Subject: [PATCH v5 3/8] dt-bindings: display/msm: gpu: Document A612 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251226-qcs615-spin-2-v5-3-354d86460ccb@oss.qualcomm.com>
References: <20251226-qcs615-spin-2-v5-0-354d86460ccb@oss.qualcomm.com>
In-Reply-To: <20251226-qcs615-spin-2-v5-0-354d86460ccb@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <jie.zhang@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766773796; l=1791;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=5dTgJd08Hj+VK9BytzXaVkvC+Zi8xcPYy36Mus4jT/0=;
 b=HfCwIXMsyvhrdpkseOTWeZc12Xt7mv13lFpk9j5FJ8oClUtZqBtZfMzvQFwJH4TcllMLqqcNR
 fyKNK+gYp/7DxfktVguqA9aUIreiPEJK+WPd/uleFx2amCvM7MPUJko
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-GUID: g6Lka2D-RnNTGIo61BbB1ddp5p77nAld
X-Proofpoint-ORIG-GUID: g6Lka2D-RnNTGIo61BbB1ddp5p77nAld
X-Authority-Analysis: v=2.4 cv=WMByn3sR c=1 sm=1 tr=0 ts=694ed441 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=SkoZtctDx9gcCqASqUMA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI2MDE3MyBTYWx0ZWRfXwT5qI2HNnvxa
 7eNnnRdHkiLkCgxLBHuHDQjmwtt2KaPNgSKtvXrLvLLpqM1JRt2z3pJAf30rDzJ5YEHU3Q6w1Gg
 phylfC1ydi7YuXXjW5ArNSdWY2efCjNBLlsIo/W99JEhyEBprLmpsB16uw1HWoC2qXOx2pjFK7p
 CqlF4jVEi+DVWAMvJF9Y5xu0+XjunZdn9tQfCac0es9avrd/XjmBVI5rCgQI7Y6UQQgU9iNrWnV
 JmCAWHA1ig1pK5d9vVOdqkTvAarKcyxnqPzW110rxEvAQpZAKGIARK45p6TF39m4XSO3INibBs1
 tpDPNQnWgLP/N+XvVYDMoFdeGvFFU0hnSpPAqV5L0bZx6DvPctrkUIL1QhgruSXfLfZIGNa/8sZ
 uzVP0kt+caurdPE3txkhvx/kfM3avqk73tAgAHNIxfTrPYxBOJCnMyPa8WSpSQml9+ySyg5X7Tt
 hLaEgcIwtu5o7X1jGVw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-26_05,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 suspectscore=0 clxscore=1015 bulkscore=0
 spamscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512260173

A612 GPU has a new IP called RGMU (Reduced Graphics Management Unit)
which replaces GMU. But it doesn't do clock or voltage scaling. So we
need the gpu core clock in the GPU node along with the power domain to
do clock and voltage scaling from the kernel. Update the bindings to
describe this GPU.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/gpu.yaml       | 33 ++++++++++++++++++++--
 1 file changed, 31 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/gpu.yaml b/Documentation/devicetree/bindings/display/msm/gpu.yaml
index 5c12b5aacf8f3ff64ca2ef97fb0dd6c3a26a71bc..27ce88766dc5c074ee81b8d3e5d68c2c531ed2cc 100644
--- a/Documentation/devicetree/bindings/display/msm/gpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gpu.yaml
@@ -45,11 +45,11 @@ properties:
           - const: amd,imageon
 
   clocks:
-    minItems: 2
+    minItems: 1
     maxItems: 7
 
   clock-names:
-    minItems: 2
+    minItems: 1
     maxItems: 7
 
   reg:
@@ -388,6 +388,35 @@ allOf:
         - clocks
         - clock-names
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,adreno-612.0
+    then:
+      properties:
+        clocks:
+          items:
+            - description: GPU Core clock
+
+        clock-names:
+          items:
+            - const: core
+
+        reg:
+          minItems: 3
+          maxItems: 3
+
+        reg-names:
+          items:
+            - const: kgsl_3d0_reg_memory
+            - const: cx_mem
+            - const: cx_dbgc
+
+      required:
+        - clocks
+        - clock-names
+
   - if:
       properties:
         compatible:

-- 
2.51.0


