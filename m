Return-Path: <devicetree+bounces-248773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 602F9CD59B3
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:34:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2E94A30572ED
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FEF1330B2E;
	Mon, 22 Dec 2025 10:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VA0o8Cvp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gL6u0voY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E589F330B08
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766399068; cv=none; b=EekTsgqHrWNKKudL9eTLQIdSHwzrPFs33rgqwa7bP8/nE1XdV7ni7RGR4RW7r9KCXyYih7X+635jbJKTkGIOhUziDpkFtM++xPTGCxeb52ZJGBwPhKR81TtmsXOfaKm41aJoPUseuGf18bxJD/thv/PM5y380u6vGrLtUdc59NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766399068; c=relaxed/simple;
	bh=lT56rcO/2wjclbI67SuJRUAAr4AVOFYX1OPiKxP0VqQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=hxzYrj2Q8mBFD/ilUNnzrI/PinZ/pd0cH6sGM8ELs74w7d1oqLRaHZJHwoAqHLyfpNvlxhfzwgNwK86Bs1Sijgz9jGcmOit6seJTMCtGF3B4ovtqGwJnA3ASAZuovaICJyCTpx/WxmC+cmk8VoGOW1sT2GbUH4VSQfiIBnLn6qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VA0o8Cvp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gL6u0voY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM83fAu3823070
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:24:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Z3dXAwZWQrX
	iznkoQcO7REoUwgPXToMeXoe6XzLEAy4=; b=VA0o8CvpqBBiQvYYUPjvXzDQRAT
	Zf5hGMXfJIzFt7pgD59l9GVH7m65k7ba5Xomzkwx+hLTZ0w5EouGU3voEqn8IGkk
	MHlfXqOmrrVTTnrRXi6Sx3bLaMEKL8kAhlJVkWLi0j63WjVvTpDZiLfJDWzQJ00R
	HcnY/7Cn+XZHS8wbEaOWdnTOUIj7HFVmfGt27zf6iRq8YvRGd33ieNdePJ2Y99S8
	g6nVanlLNjkw7Esv9pY1JhLr9xftJUYHKeXq5HLk0eD5eRo54gDh+MNbWy5m7HhY
	q6RTflWF1CTYkf49f8Dog7nvIuVuqwuEy+k5j0G3FWtLxRRBnR/PzBQgu7Q==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mrtcnun-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:24:25 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88a3a4af701so95103076d6.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:24:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766399065; x=1767003865; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z3dXAwZWQrXiznkoQcO7REoUwgPXToMeXoe6XzLEAy4=;
        b=gL6u0voY98bzl3grUiX17qovAdea1o9u4q4DrezFNv3vwPRGaQGRcWMDgd617zcCqv
         JC8zyexFbGv56fdgQCuHI3GkQ9vin+3PHUXlanPUtXtgb2AHySQy23KPNNaJKR3aPaey
         U0S8e/pwWGB1eEmEyzT87VTkJ1cP70e/VerxhHMeg9oi7b2FjKXFK7A4U+mPcaegx38g
         rj/VKcyohazwrWCqVkpTvPWS0GloMNl0z/A5LivDgDUU/kKgHjxHpr7qEbKXkfTuVZNp
         eFfa7NmHE/SW+d4MyN60Btwge/6ZL2VxfrtxrvVvrSp2IBcefgCnzdB7it2TqYRbKg9j
         HRsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766399065; x=1767003865;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Z3dXAwZWQrXiznkoQcO7REoUwgPXToMeXoe6XzLEAy4=;
        b=D6uY1TJMxvywWdPopQD7dZGx0RBMZfrw0mQNSZ7AWpplCKzY7jC2eLxrUp1mgB/1gS
         sgj9Ev9plG1PK3Ztv3DDV/lppw+oaErhO5AtRn3FGSQFCBfxKJEJzCcXnGbdq/fW6IWb
         FaqgNx0IaDzApC/3TWMtDn0eUdH/kSWqT/sMxgbqdDeVhjMBranp6q/aNoRPI7fg0SFL
         pFgzfp7Y0NwM8NmOaYuQkSKKhQvsLWQ0fxPLVi0quRYNqGn67ANWufaOIXxHSU6t56oH
         nj9kW9nRxfmUiXMMu1yNYpjQssAuEx1xogCzZ/N/i6xP0I4GG40gTKbLa0JK3vTJCFY/
         YZnQ==
X-Forwarded-Encrypted: i=1; AJvYcCWM38RLRpWoUPCJ+brFoTDWx0lsG88L4qg3GvOmkFGhtgwQFSyAxoQr/7SVPnaUKcjpsoH3SkhPxtNX@vger.kernel.org
X-Gm-Message-State: AOJu0YztQ/1GRO3SBiTiPqZDg4Rmlc26VLKbTkzDIRRv+qEojotMX5pF
	durwjFMbQWcNMBS5/7bCEzVy2UgIUwyr3fYirnwqJ9GViE8/o3RPVyPJNwCtuSmTXcuDFKiysDO
	BkQhDk42rwgXYkJsBAn4BJx25Nh9NZFLOPjLgFNeRaHMgI7DiLt6FraR/mmtIvVbs
X-Gm-Gg: AY/fxX4Hg8xIxSx/I52+PwUgTwqrzlTMtqm02Asd8zMgqI75rxYkaockCqvxkj1WlCa
	jnjGX8yoNxgf7FUxgLYDD3uA608UzN08yBFFnAil9D2bhlW9lm9ZUJLnKZ1/ylJSXu2glnLd7m8
	9UuEc0qLMzqgll0B/ZMiGlaRkvEBaizvwvvcg9SDaBxYIVdOUykYab9vywmCOjaZaD8M8O3h4lb
	HvSw0bHrxts4hHrKgspuQq5WKG6m0YgMHW9It7+ovCdjgRBxtUe6wlvDTQNCLp4KX6skePIYpCR
	5gOMK8UbMif7qwbP240QhQJJkjyOCYP2R4qKiBhnhAv1czN5U9Kz4aSyn2zr58GosxqW+JedaIj
	3/iMn3jWJ4jXVfUH7aZoqOSQiVEN3itQOwvITS37bITsB51T+aPSZ03tWQK2m36R5Qhg=
X-Received: by 2002:ac8:5fcf:0:b0:4ee:1dd0:5a53 with SMTP id d75a77b69052e-4f4abde9f30mr150903921cf.78.1766399065045;
        Mon, 22 Dec 2025 02:24:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG+T6m91+oGsjfriTmuX3mj6iu58uoeeqOFMGa6SnGVr/aTF4HD9oscEnMvSP7CWfajySBoLw==
X-Received: by 2002:ac8:5fcf:0:b0:4ee:1dd0:5a53 with SMTP id d75a77b69052e-4f4abde9f30mr150903641cf.78.1766399064651;
        Mon, 22 Dec 2025 02:24:24 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4ac66a1aasm72500001cf.33.2025.12.22.02.24.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 02:24:24 -0800 (PST)
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
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: [PATCH v4 01/11] dt-bindings: display/msm: qcom,kaanapali-dpu: Add Kaanapali
Date: Mon, 22 Dec 2025 18:23:50 +0800
Message-Id: <20251222102400.1109-2-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251222102400.1109-1-yuanjie.yang@oss.qualcomm.com>
References: <20251222102400.1109-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: SUeqNCC_0uUuiF3oQ19NDSe3XSq8d8n2
X-Proofpoint-GUID: SUeqNCC_0uUuiF3oQ19NDSe3XSq8d8n2
X-Authority-Analysis: v=2.4 cv=CeEFJbrl c=1 sm=1 tr=0 ts=69491c5a cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=LEfPF28z9Y6gGZEU5FYA:9
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA5NCBTYWx0ZWRfX842AFBDEOXAD
 SmxrIohmgnzk8LXb7HCl/mVHNuI1CQ0BdWX0Bc7QbTO5GzSUYDPnumraXbNbC9OwpexoDCQvIne
 zZTDoKFdOBPwHV1M3ZjqnJTxqINdmDHCMozt2Zm9ybMD4BZhShhHQj9EYITWPtvbTA0zeEm14xa
 i8FuOhwUXE3RENu+wZDvku6Y42Ep/obs6ugJIeHj35m2Lgj3t2Y5aeOszqsYUx9gQkUqwDIyz/x
 FQM3L7GbISHgKRslif/xS1qCgxGxWceJK+skHAZ9ZJsoeHKK/vG+Kq2lVKVWy2RoeUBVTC2ZBpJ
 nJruzVJvg237jM7B/pelqcbwpS3mGATtAQlgCRlXb4U9uJevu79Bar/P4U1Gj95lBex0zgeEZo4
 K+wfFyJC/qecPZQTjUdOpAR5ZOnenLpI6xiexqiZ0fuLmHYyVWLBUw9oART9ghq6OPSEdSeOaTn
 tfUoAY0EX0rI7bUJ94A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 bulkscore=0 adultscore=0 spamscore=0 clxscore=1015 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512220094

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

Add DPU version 13.0 for Qualcomm Kaanapali Soc. The Kaanapali
DPU and SM8750 have significant differences, including additions
and removals of registers, as well as changes in register addresses.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml         | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
index fe296e3186d0..e29c4687c3a2 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
@@ -16,6 +16,7 @@ properties:
     oneOf:
       - enum:
           - qcom,glymur-dpu
+          - qcom,kaanapali-dpu
           - qcom,sa8775p-dpu
           - qcom,sm8650-dpu
           - qcom,sm8750-dpu
-- 
2.34.1


