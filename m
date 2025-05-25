Return-Path: <devicetree+bounces-180279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B10AAC3288
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 07:58:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F03593BB09B
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 05:57:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24E1818D656;
	Sun, 25 May 2025 05:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GB7hrnOh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B33A18B464
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 05:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748152659; cv=none; b=D9tKEYI/TzV07G0OP+UsDcAQxjTCgjSnz5IP26HdYJExR+CDbKKNwRjy0unltb1bPn0mtQIB2pljLkJImFKL0KGb/RJ0IO3Frcv9Ii0qVxnQukk+TEDBCKx9hatAHU/YN2iVK6cwdCCrdcPSRtFO/4j/Sj1mw3p7q8pKToxiYDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748152659; c=relaxed/simple;
	bh=9ozY19np9D59zhCMV9nEj2Z3kQvxFnZfxXl6FezHh9k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nq9GLYL0YCXxzgd32itjP6nhd/51dHmuoRbvJggnVEVS6lYb/TyF+yTl5lTNz/sfsv6BORT8mrn2DsG3++suGW6JADcceUv0s3aqIs3vzqFpbTGPBQs7/rgEw5gRuSxc0jZdCYUVRS41PCdLKkJwmfpNFcrruI/kAlZzrfmQTeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GB7hrnOh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54P2umT5007150
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 05:57:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zCBrRVec53XJAJcr8a7rcd7CgHI9045Hz8PKjdUV4vM=; b=GB7hrnOh7GM7LAYR
	m62gizWlb1RHncaAKE0ua+Rt/1OnsmXG3YbO+WTjuKU70W1BF0tgB1+Mq4i+i6hW
	q9/3sIZEYZ3DGLLRhwgkLZDkAhKM9FzGQekbLKuj++ZLh30+9swLWdNN4iH/3RfF
	1f9zCKYpEAXcEbGfUkLFGlZDfKVEyh2iK56oye8LNwFscG470Q4ALQ46lSpyf8WQ
	7AsmD2YSu1suOrlRR9v68J0W8xk3u4GvBsyaGS7lfZgEj2gqMjLCHr0isQiiDVww
	sHVp3qjF/Rsxl2dnZecY/U2YI1SFWo4JEgJgmnCO/2uB7U1tXkCXJKIug2QWWtDM
	DLbBZg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u5q1sje1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 05:57:36 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-742a969a4d0so849376b3a.2
        for <devicetree@vger.kernel.org>; Sat, 24 May 2025 22:57:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748152655; x=1748757455;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zCBrRVec53XJAJcr8a7rcd7CgHI9045Hz8PKjdUV4vM=;
        b=c7PZKKDVk1B4fo3BWKb7ac4fVJEYK/pOla8IXkPBhszHZbI8lh3j34PyFhsamCG9q1
         TgXio+v65T9AUzn1OxOtw1tMrm+sSO4SohUQbqYv3OrHqQtKfwBBtkdFTn6fonmHPTPy
         3g5M9iPOxzS+U5ZSBDawKNZVxk9ToTFdpeKu6FsrG0BQspNUmuVjIQt2ePkZGKDL5eMc
         oNct0eco7Q8XLo6YI0Ad1kSAUgiQI+RQkWno2ZS7uruhL6kbW91ct88kONHQz3Ws9lbT
         u0ROpQirhwyHCoH2SIIKm7L/TLSPXTPTAdgdoUMfw3XfuSkTap1R6I8Cige8tR0z9sq1
         AahQ==
X-Forwarded-Encrypted: i=1; AJvYcCVXqXR0yOlTogpPOuMOBZ+NpKL69PRgBfN4LjishdZ6pEuIExFc+Mf6/2JC5zBYVpPttYseb801iC4e@vger.kernel.org
X-Gm-Message-State: AOJu0YyQW5PW8CZUY4DTsA8QKIzS+/A7E7r1X9lz6nF2ElLtqyUyJteE
	+IcGVhXYpUkdGY4a3fp/e25/YE/xULX8m+QrAkcap31irWydG++y7TWQbywJxFjFJuyz5G7NB2m
	yAPlT0t53mWOI0Oq2THTcHI2GF8sW4+MY/t9thGzlSU3RIE0r0IUNjehi88HE5gk4
X-Gm-Gg: ASbGncvDshVszxLSfmH9J8eMp1gSFkdVFk/mtmDK1fktQ+D1SmU29c2nC4Jn0Dqp2Bz
	ely9SWH4zFh97bY4qHc7h5MjJQGp2xmVJz5TRyfQmqEEsnQB/9skOlyfnmxLCQk2EryUZ6k3QSq
	ZHP8s71H13lXofniR5dhyjQWIM4YNz8zBEHM52Rc3Jx0s9MMdL65pW8ePtStpAFcT6nrjXrQZKD
	Fb1jeC1ZXS1GyfjuuyMGCDlRoBYugBAmPB/1/EW99lId3Kld+C8aY0B1rrKlFJhRH2xyhqO1hvY
	rXWEhed0Zd5mUpAce61YU+JUm2ks7ldHlb8o
X-Received: by 2002:a05:6a20:6f08:b0:215:f6ab:cf77 with SMTP id adf61e73a8af0-2188c28ac6fmr7979913637.23.1748152654961;
        Sat, 24 May 2025 22:57:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHYB9ys5LU41WMsUNzEUbblt6pbgRfq0ZbrNTfi12+yDo2o8NBvJF6v2pb7A79rQ2Bbbd2jZg==
X-Received: by 2002:a05:6a20:6f08:b0:215:f6ab:cf77 with SMTP id adf61e73a8af0-2188c28ac6fmr7979885637.23.1748152654611;
        Sat, 24 May 2025 22:57:34 -0700 (PDT)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742a9829a4dsm15594030b3a.107.2025.05.24.22.57.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 May 2025 22:57:33 -0700 (PDT)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Google-Original-From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Date: Sun, 25 May 2025 11:27:18 +0530
Subject: [PATCH v3 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250525-update_phy-v3-2-5b315cd39993@quicinc.com>
References: <20250525-update_phy-v3-0-5b315cd39993@quicinc.com>
In-Reply-To: <20250525-update_phy-v3-0-5b315cd39993@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com,
        quic_nitegupt@quicinc.com, Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748152639; l=1254;
 i=quic_msarkar@quicinc.com; s=20250423; h=from:subject:message-id;
 bh=ZrWCEywu0mWwC+jWkykM+m7UXWwtOyeU4GP0qpQ4gdA=;
 b=Nol7LDvUZeI/WcrBH10lNY/PP4g26x7BSa57S+p9a1rFdJ1BMFs4YC/57HgFFjJAxnjdGJUXG
 Jov7H1oROAaBPWVX374fo9Rx4rBOEDS7JAQ84wyluHeGu5RQUOFn4aJ
X-Developer-Key: i=quic_msarkar@quicinc.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Proofpoint-GUID: sOYfEZyKvPyRXscXKN0zej_gozfsJs6d
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI1MDA1MyBTYWx0ZWRfX44wmFw7RfiZo
 eo9RN/B/rE+dSFTycsz7dR+knyocxSpln0Y6uldiiTcXUBMwr/AG2pG7q0HvnPIaqR7FozWUcKw
 qDU6XlUROujf1UgqU2e/hDt8wyLMy6Xu2oKrJrcCFHBELDTP5TIon/DXaGQcHvEbwtkwNqsIc5P
 SQpjmb5T8OiZkw665ngYfIM/F+MO6m9IO0Wsypn5oPYlUGi3XAwgyAeMYJiPtFY/AxyG74Uk5DH
 snJl6tM907zAPi9NkXCYdDGNBQXhwlKu1J/SqbGKzerQfdOeGekrNTcla8J3RUykxpqT4SZsVBp
 7dpOlHNBy1KJcjklfsREicT5gY2Cz0beZhJJ6ljDkW8xVHoF+O6nzk/M4HEvh9UX3pw85vJe6up
 oogKRZme0HTByfKeANwSXW9gTR4xM+Tgd+xOObQJewSI5fl5z+QeLc4nxuJLhrA4hV1TU7yA
X-Proofpoint-ORIG-GUID: sOYfEZyKvPyRXscXKN0zej_gozfsJs6d
X-Authority-Analysis: v=2.4 cv=FLcbx/os c=1 sm=1 tr=0 ts=6832b150 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=A2jF9ndpTPISZJbatkMA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-25_02,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 phishscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 mlxlogscore=921 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505250053

From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>

The maximum link speed was previously restricted to Gen3 due to the
absence of Gen4 equalization support in the driver.

Add change to remove max link speed property, Since Gen4 equalization
support has already been added into the driver.

Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 5bd0c03476b143444543c68cd1c1d475c3302555..b001e9a30e863d8964219c8bd61bc328be71b256 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -6462,7 +6462,6 @@ pcie0_ep: pcie-ep@1c00000 {
 		power-domains = <&gcc PCIE_0_GDSC>;
 		phys = <&pcie0_phy>;
 		phy-names = "pciephy";
-		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
 		num-lanes = <2>;
 		linux,pci-domain = <0>;
 
@@ -6620,7 +6619,6 @@ pcie1_ep: pcie-ep@1c10000 {
 		power-domains = <&gcc PCIE_1_GDSC>;
 		phys = <&pcie1_phy>;
 		phy-names = "pciephy";
-		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
 		num-lanes = <4>;
 		linux,pci-domain = <1>;
 

-- 
2.25.1


