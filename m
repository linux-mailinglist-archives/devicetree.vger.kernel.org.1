Return-Path: <devicetree+bounces-232548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D55F2C18DCE
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:09:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1242C501EE4
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 08:06:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A540313546;
	Wed, 29 Oct 2025 08:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A0w/uUqQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CrfdGina"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A041311C36
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761725151; cv=none; b=mKOeiOgBIYrXL+EgjfgtP4l4Sc78kcSfYYshJF3ywSXQv2Dkncg9PC/d2wX58hLzi5pf3eWdorJc5G+HLnWAthEQOBEofiXymmHWxdW763nfWB6zbvb7CG9lcGk6g9djL8tcKRmiUsqvc9TyS86HwQxk75AVTLzXTwIcL4Fmme0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761725151; c=relaxed/simple;
	bh=xT3Z0RX9zoOKMq7jFVYf2pwqfhxYhtw1nSQ1v0B4npw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=actUZE3KHHcle4wOrPVamBpd0LYlWNvB1dVhC6Cv2LEk3G+x9Zp0UFjSHQ/Ll3bYYMasdL0ZsD4hQBDjzp6d5TKoTLwW0U5RVyiuJaSeRhOzO8zGpwZ+bous6ta+3M5qr/CumeY/C6mwm1bqmXtwp3TneeRKzTls1IgtyhEK3pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A0w/uUqQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CrfdGina; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4uws83676845
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:05:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	15z0GkALFdQCnt2s+WGZIOpr1bmUM7lJKI9p/mPcc4k=; b=A0w/uUqQs2/QXQyv
	8UdR3QBtDw+7ejy+baOmzqS75/aPPs7XmoVZAJjStdsYGQqRnaIi+wB5H+i1e3M2
	BbFfjRGZwRsH/tAV3GWrBjcnL0pptsFoyvXEeQybNs0rqN/sIDlHL1quznSm5m/G
	U5eYcCu5BJ7ilTtd6El3NMSufKIdh06u7EOXD2qWqDt4XyhcOLy+EcVcAxkuwJqE
	ieapnjD+A4k45T13hdYP6wMGKdKiSVvvzblcB3FcwxtuEsY3BrWgh9p13TG0LSK3
	yoMk7N47lFOGujqx1I7A9gPqmM/gxWtM1mNOAJBJpTDK6dph2kkPn0rdVrgS7EdC
	sQ6OIA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a1hpga-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:05:48 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-294baa12981so8415135ad.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 01:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761725147; x=1762329947; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=15z0GkALFdQCnt2s+WGZIOpr1bmUM7lJKI9p/mPcc4k=;
        b=CrfdGinaLCsIWoAW8STl32r1SGDznvHzyiHcmtUtF7daxUbf3PLdFYUQ3i4VTYaeAc
         8n9rPCGQP3gIW4RCsFDGlaEmUqlrrqaaiayPTJ5noB6LjVawl2LJqf74MTtP8rrH+WHm
         OjOtq/Vuckfg9txg/gVOvDQa3cDLyjCOizsdxFkffEJK/aQmprF4bYzVOEXEOz76B9xV
         KT7Jb2Q/BJeno6/PZtO/FPPeoVt97EQb3JqBa4Dr2aPHXDWxTacuxn/tXg1cac8XExFN
         xHOXUviJUysyNbnPx8NmR5fSyqmRP042aIlqRLvFrf35EKzUXvuvSHvAqsl00uz4tbSP
         yLew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761725147; x=1762329947;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=15z0GkALFdQCnt2s+WGZIOpr1bmUM7lJKI9p/mPcc4k=;
        b=T+sZLYIkzwPX90inSBdCToVN3wEZtU1jmv7e7Fb43uTyWXpm1fN/R4qcyA4Ts4ShBx
         AnokN4MhaiX8XiGx+h6vhhtWCBGtx7Ks2hy63fVtI92lB8BDB/LMR/j/Jz+SfQFG2Cqk
         ESOLs4Glo7VIVENZtrnaj1p4DHAv4oJWEYJi+pUFLnDHU+qlCUCOM6ZYS70XkzHyaEUi
         eZSXu0Znfcua9g9CAJcOc0kUiF738Cf8/tr3ZZQ3Et6yoUSRCTS1MDey4MdsBkUEj9IX
         /5FYw7vBX8KoPJC4R813zcwjHxfcXk5mlUC9+15IOFFHOS6twdUk2ovBbW1WPrJK41x1
         sZQg==
X-Forwarded-Encrypted: i=1; AJvYcCX7j14t3ZKZZWE3EhbvHX1KgjcbNvwRLeYR8j2la6xgu16pYsm3zlnhwlSaJCcMb2qxrD0tdoKh+Gnu@vger.kernel.org
X-Gm-Message-State: AOJu0Yww18tULRwPbRR1JjaC7tWWHERoAL/4l6FLrriRc22bIGn/9xHU
	j3JXlxGYMoGsuMgGJSsH3ASOPI3N7qA6gjLjfhKPB5lFxHigorpqDJ0o1qliGUvIkACmSz+6uNr
	8aGsANQzWXk9nk2pb+8+0tUdCsFIpe4G8OYeCnnO1jsNIsqhMm1CMfTSja+amEnOx
X-Gm-Gg: ASbGncsybnHy3vDJ9xhzG5HFZs0c3LZ6c6FNUkDV1Am6MRblQHvUAqwnXoufufhd8Yz
	gzKZGSF6ROQz4R3TBoXk86WREhiHn4AYPEgTe0L4hutEj/Daii7WHM6nRTKC8sj5ZzbBDZlID2W
	kiYt1K8g1CjMraBG5H9EA2wiPOuQ07lpLtDVZ7G1JegLN7u0uognbk9EAUnIP+Qka3JPo3mJ63f
	3Qf/7sRqSWF2sIeIxRNB9Yeu7pRK0emrBCMvOpRBYm+RpNQP1fH6b+EJhWsVBXMDkXjY7keaAJA
	8e9UKDpg/N9fGUHyE8DSkHlLVBCYy3GfeWfeXjlsxatJ+fFNp4GSLEnumwRMuRpQBWO7ZbllJah
	ibJ6xwL/p0ODHcDSxIXODubw4NNoCwBBCIv5qltPNwH0YrEjQFw==
X-Received: by 2002:a17:902:db11:b0:283:f19a:bffe with SMTP id d9443c01a7336-294de814667mr26219035ad.7.1761725146993;
        Wed, 29 Oct 2025 01:05:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZLW9t7z/EPvn7h4K3SuJB+l5enpw/B+1K6KrQmn9L1REZrtp4lxhJR0N03EZlfiZVsemxHA==
X-Received: by 2002:a17:902:db11:b0:283:f19a:bffe with SMTP id d9443c01a7336-294de814667mr26218555ad.7.1761725146379;
        Wed, 29 Oct 2025 01:05:46 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498f0be0esm141754705ad.96.2025.10.29.01.05.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 01:05:46 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 01:05:39 -0700
Subject: [PATCH v2 1/7] dt-bindings: remoteproc: qcom,sm8550-pas: Add
 Kaanapali ADSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-knp-remoteproc-v2-1-6c81993b52ea@oss.qualcomm.com>
References: <20251029-knp-remoteproc-v2-0-6c81993b52ea@oss.qualcomm.com>
In-Reply-To: <20251029-knp-remoteproc-v2-0-6c81993b52ea@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761725143; l=1292;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=xT3Z0RX9zoOKMq7jFVYf2pwqfhxYhtw1nSQ1v0B4npw=;
 b=LReoG7MZh2ShoPt8h+j9v0Zt+JfqeTIJpg6UqCsJ2gKg2Y9phjn4ZiKv4IKo4CYTPBhudX5Z4
 1PcvQu3U/wHDQNzvy8mvwDNv77iqWxBzCQs8rTjTIDouo3IfnqR/jxV
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=Nu/cssdJ c=1 sm=1 tr=0 ts=6901cadc cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=7zWBZCs1gTFKjwm3VpwA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: BgpQGqCfpbAyfVPMb4JPj4KobZhAYiQV
X-Proofpoint-ORIG-GUID: BgpQGqCfpbAyfVPMb4JPj4KobZhAYiQV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA1OCBTYWx0ZWRfXzVyWuvaJ/TfW
 VrH0u3opRFh9rRhFSD/hCm/Gr4STiSMbxXG8FT9/+fiXp957soJaUDq+q+4sdvWtg15C+xRFKQh
 67c0l3HWnxNSN7KZWfjWu+hTc7iSP5nd0eqHt2RyHgijwRfyJzoaA5VqUmgiqF2RE+vXlBukn5d
 tutQ0zfxBNRfLeLSksfNVjW+qdZtfiByVhOnep0/a81oHv8sfpSBwfv0QsnpQbGc3xwqKmfxTGh
 FxWwSj8BXAIwEO44bMUKH+52HncjdmBBFhcpUyodVeCWQXgdV/teL/zsjog9LjKesprxjEP9W/Y
 UhgK6jT6A4rc5dP3AHFVQeHIesxSlrAvu+q9gUw6eg8wIH5akQ8knrBaJzqzhk/rcbVy9EDHjeG
 NwHDglicyDPJ0rs+JG5R1ph7a2FSWQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290058

Document compatible for Qualcomm Kaanapali SoC ADSP PAS which looks fully
compatible with SM8750, which can fallback to SM8550 except for one more
interrupt ("shutdown-ack").

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index 2dd479cf4821..31dffd02125a 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -28,7 +28,9 @@ properties:
           - qcom,x1e80100-adsp-pas
           - qcom,x1e80100-cdsp-pas
       - items:
-          - const: qcom,sm8750-adsp-pas
+          - enum:
+              - qcom,kaanapali-adsp-pas
+              - qcom,sm8750-adsp-pas
           - const: qcom,sm8550-adsp-pas
       - items:
           - const: qcom,sm8750-cdsp-pas
@@ -95,6 +97,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,kaanapali-adsp-pas
               - qcom,sm8750-adsp-pas
     then:
       properties:

-- 
2.25.1


