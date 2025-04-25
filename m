Return-Path: <devicetree+bounces-170912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6FDA9CB0B
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 16:05:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D68E146559F
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 14:04:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 238F02571DF;
	Fri, 25 Apr 2025 14:04:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QTO4HLnT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD92A2512D5
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 14:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745589851; cv=none; b=MfL7mQ2QKQCrVumF37Rhr2prGBp5Qskk8fysC4YNflZlnBPs8GildCmYBpDUxxZGM4/8iUW/DgxegDMApigLTdXKCFrnNlhmBV8P8xgtVTuWRjmXEI2ArqJ8I5QKO9XcHpPO8xR/AIRjQWKZyyeeXjNYVY+bVCXXpqZJP5EKMNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745589851; c=relaxed/simple;
	bh=jOWcnqRbtDDv5Zy44Vn8KCOZ6bpsZZlhkcXNS4OzuwY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Ty+U9PoAbX+XykIdsUUTrGyL+guGbRDl5FzcYHxU9kycAdCK7sIjOd7F0be4ipU5h8ylH4KByNu0QtwZ/npNYIlweRGIMW5JlICZ+qpNB5FLYGLNlYXoOLEYotK8DqYGn5lCtIfwQx99zV4tJYj3ikIenDZOYu0JQYwwPSlPQSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QTO4HLnT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53P8TNYt015932
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 14:04:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=d+RRvapxVfl
	VlK0w1oRaT6pBilQocJNCPlf8xNZWb34=; b=QTO4HLnTpoDC7GIS8P/vsJGlrpe
	HTLXgbUE6t8AY8jQgrzUW4bEtNxZYCxssy4EQkVqnkaTb5vBana4wZOfYW4Zq+/J
	YjffuJN8Eui3FSuVBRdSWxbotpDiyah8bAATCCgDX+75X87bQhgbNYF8xg7ufA5f
	siailzcd6JpAMNe17k+7sHKNtTCMBlhkNCV1dgrAgJk2ATD8SD2zP3UMHXnMql7D
	6jAXNWKsSxpWHAW/G5NfA5qL6lwqvDZrOk8xk5WMqCrqi/hY0vNsFVk+uXx/xjGZ
	mJRnh+dYZsY74Ygek31yt/J3h05lrUrZwgtb/WWJyy4B45xDj5Wj5sLFJsA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh3h7m3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 14:04:08 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-2ff58318acaso3518493a91.0
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 07:04:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745589848; x=1746194648;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d+RRvapxVflVlK0w1oRaT6pBilQocJNCPlf8xNZWb34=;
        b=ukEEbsOId985y5ECHT0gu1ZPZkKpXgl1/M6DlRTMCL4VnkTe/O0AgFPvnSaMB8OYQh
         RA4ajnlo9WDcvSUuUJE1g/A90KKr1tPERS/O6mJKuKxWigLnbCqApa41zcRrOXYbA1eb
         cJPMnawZ4sCOdrVuOl84ul2ShOX7OT6h0lO9/srldNDwPdR3E1jAdHk89C4zZazVOa+R
         c2aYJiQRaGjnXMfjzyEA1FJNYi2qunm3C9BbDspBszBO4AN4meAjC8m3V/1zm0CzromB
         PMo3b+axpiKJ+q2kpy7GB6CrBiuC4BEWR9gFURdbRdG2lFNCrvIdAOTu1U07z6HbKALw
         pADA==
X-Forwarded-Encrypted: i=1; AJvYcCVVzEi2jHwGmBBIXl5MLnmY6edjdo4eBJOiKSs11EAv55S6L/Zo4tZYEfAvlAcEkbyxgwffc0Z5IWQT@vger.kernel.org
X-Gm-Message-State: AOJu0YxRUjCPFIxNkbJxNVso17uYhFjs8nPjCM5z4gOoXyFLJmJYon7q
	P7GZ+CGyHgIBGmM9KhP4OlOs4xQ0tJ1AD9s6sTB+hmJixZaathU0akHFtEebGYsHT2Fx6lWmdTG
	6hBxkG7bDazjgGHZ1bqhRJOwG1gaYdoUcKtEyA6vKakvgZmy2io7ETTkR5257
X-Gm-Gg: ASbGncsExOC1c8+qF0Iqcva2vzbL8jGav8WmQKPw6eA1FyqdIXHvdnggUZ4toug7ai/
	HiWyqqfaZ2Fuk9kaBgqn4vuBociRlO8LAz93IJ3p//ZlIbbtrnAvTtyD6vxLQDTdwf1Qj8NVBMA
	5u5ul30AwVkGvSXvvTe7YuPZOmwbOTBSEpL52J/VaetteQZroNq8/ej9BxlcmzJWK0EA5rdSO1X
	NleTM2cCSVPodSePPRhlfhiCilhhAClZ4tfP7TVqeYB7WDd535u7qqZXlySpvOFQOozHrxwusXI
	zwTHfffKF7LrDUCqIorUabqBITpQGjGxbs5+9R0=
X-Received: by 2002:a17:90a:b391:b0:2ff:52b8:2767 with SMTP id 98e67ed59e1d1-309f7df2fdamr2554348a91.19.1745589847826;
        Fri, 25 Apr 2025 07:04:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFX98i4SeNY1skrO7AIkeCTN7IMzgQCtRBV/tXFR4LeFTDxbSib55nvLowGQ9F0VUkCMg6Oww==
X-Received: by 2002:a17:90a:b391:b0:2ff:52b8:2767 with SMTP id 98e67ed59e1d1-309f7df2fdamr2554328a91.19.1745589847495;
        Fri, 25 Apr 2025 07:04:07 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-309ef061c43sm3468697a91.19.2025.04.25.07.04.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 07:04:07 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Subject: [PATCH 2/2] dt-bindings: arm: qcom,ids: add SoC ID for SM8750
Date: Fri, 25 Apr 2025 19:33:46 +0530
Message-Id: <20250425140346.1087527-2-mukesh.ojha@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250425140346.1087527-1-mukesh.ojha@oss.qualcomm.com>
References: <20250425140346.1087527-1-mukesh.ojha@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDEwMCBTYWx0ZWRfX5VPz5C1jwZfJ L4ucRxshlvXZ+2buTJHLVUCdtYDJtHM1NNZtSkCCLSMSmVETYfnhbByG0sk+l1aCDIy83fH0jK7 vuCiVZRZVPUoZGcjqMrtSS2mgY821vDAwLhv4ViUFDtWoJoIktbI/++WWXl915IITQulja1WG5q
 1yKuq9oSqavg3J8VJyBOmb6HVCTZc6JIpEKIix5QJl0eC91Z0EcvLp6Sk0ovOcIxDRi6dIcY4vw V/ejsrxbwJ6AEAhBJPCVxM3IPuvJbUB9WeO36ekWWixEow0UqIPOviIaGn4dBGJcv16enzhqdJU LU4sq8o2O0LKVDGsrXHEWq2LybG/gc2/y4lcBkNz6RBV7WMgii7AlG89g6rvDyEtnq81/ldU6QV
 uNkMvbJKAObiN4j9QvVa16whJydE8nZdjdjubYEHvn+Jh1vmLL2kifvBGV/rcV18emaEkrdq
X-Authority-Analysis: v=2.4 cv=bs1MBFai c=1 sm=1 tr=0 ts=680b9658 cx=c_pps a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=jdBGG2SsLo4Iwi_asnEA:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: Zlo6sTF4lb24fXYoH7Ox0N0Wb6WS9n2Q
X-Proofpoint-GUID: Zlo6sTF4lb24fXYoH7Ox0N0Wb6WS9n2Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_04,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 suspectscore=0 mlxlogscore=919 mlxscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250100

Add the unique ID for Qualcomm SM8750 SoC.
This value is used to differentiate the SoC across qcom targets.

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 include/dt-bindings/arm/qcom,ids.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/arm/qcom,ids.h b/include/dt-bindings/arm/qcom,ids.h
index 1b3e0176dcb7..11db67b2e08b 100644
--- a/include/dt-bindings/arm/qcom,ids.h
+++ b/include/dt-bindings/arm/qcom,ids.h
@@ -277,6 +277,7 @@
 #define QCOM_ID_IPQ5302			595
 #define QCOM_ID_QCS8550			603
 #define QCOM_ID_QCM8550			604
+#define QCOM_ID_SM8750 			618
 #define QCOM_ID_IPQ5300			624
 #define QCOM_ID_IPQ5321			650
 #define QCOM_ID_IPQ5424			651
-- 
2.34.1


