Return-Path: <devicetree+bounces-234218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2FBC2A4F4
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 08:26:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 574623A56C3
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 07:26:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C08F22BCF45;
	Mon,  3 Nov 2025 07:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aeTD3fv+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ql/RKui/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A29729BDBF
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 07:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762154746; cv=none; b=NMCluytrdVM41luahLTkYpuf31s6ffpKuChkpYxc+MEXrYyly8f7ubboPhQpek0ypW0WHnqHFtCeGNrjeQxgzJ9BKOBzXwN6TBCKehUJT6o7BZgX9NVza3FHfZby+nbLelgknC21IOLwS2uryYHOJIYpp5g+f3K+nT/DSrqaab4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762154746; c=relaxed/simple;
	bh=it/MOisxVfDih1bwUKUY/3WIDaekbtJqXnEPn67jB0w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Q3LjEFcNcCoEWz0SyfFoURnbq36Jr2PAs/aHIA96Dk+9xAcm0nMUExHbTOuYp5p7dA8bN6N0+rzGJEnb3U4rgas2FJm+rByOsqKdHl4LCFpM4bhbc/D7R+zm8G1e8gD0rCIVBa6VwFaJBVQBut1Q5hHe7+SE1uOWqo5ZtwF73ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aeTD3fv+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ql/RKui/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A2Mr4it1309849
	for <devicetree@vger.kernel.org>; Mon, 3 Nov 2025 07:25:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	M96E95v81BGMEft8SKoinv3cFweaMMHz2Iy3nHHg9Gk=; b=aeTD3fv+bfHVUXoq
	HZmr43o68BJYSdTRl0po957GB/fhxQ9wBvpBukY1my+7qDN0W8fAoZbwf9c+vgwT
	T+P9igg1NhU1mSWaIEK7XkB/Nq1Nr8rmKHtRwJWzDFbo4JrzZEOvAreFK/t5PAQm
	lC3kjHScKhEJ+URrIv6nRMIudY6vZvqcmuY6WXbzhOsV0x26/ngkRghCxVttmfvP
	hdunDCUeoRleeiSk+ngmD6ap0kE2q8xW4KUqqXUjKb7O9EoTiP3iRhONCA7xcLm0
	2VGk4MLc3HYfn662GSeQNZegAZRKLNgu3JgDNgM62GlJwgBiq/V+xNsynMuHK89K
	fDVeag==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a6f0w901u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 07:25:44 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7900f597d08so3850028b3a.1
        for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 23:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762154743; x=1762759543; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M96E95v81BGMEft8SKoinv3cFweaMMHz2Iy3nHHg9Gk=;
        b=Ql/RKui/3kxwwGjp6pGkz7jhNhrFY6rI8TdWLLLAmFJ6CUhHvx2lKEqLDHNEfKJgcF
         cLB+GbltybpucgNJ/+rk465SylXzIVFv0OLEqbMhKBVcSxB2sViEjBKPrpM2Gp4wOQBT
         OBuqhYxo0KcJJo20qbPM8Jbf2GZBs3zf1phWiSe1ejdk0ctb5g5hbV1CsRlOHWc/i4oS
         zQFem4DwVnKG9FISQSAHJXnawSj6RoLl0Cwf0H/sAdu8XjkRR7AJz11vLYZuJamkxk39
         pA/XSaS9EObmdawW9+2pYUj34yQUBNmkxpgrB7n3H58Kyg6ZAeCnZifHm4lF11wknEAC
         PfPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762154743; x=1762759543;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M96E95v81BGMEft8SKoinv3cFweaMMHz2Iy3nHHg9Gk=;
        b=Mw8NY6Y4v8G9HqDhfwlCEmJX63OcEHYlwUTHVOZK1ESwGZyd4+J2elWYDksgtUpMb5
         lpGbd3Rec4g8N+1ik2HmtpMevOb1qA8jCNMP8mkO8tbuHdiqDFKlAQOLfLAAbear4Vo4
         CVcMYlhqdZZM1GPBlFGTbt+9O0akDnWQ7maj7vdyhz/IVUucQWOmtxhWuS4H5iXjfTcR
         O5VKn0IscN+DHepU2cT1SahRGcafxUHmb8zdSnQjGD5k3wetT7QfGl8qcoyOwF6YZjxb
         TrgOukPhL926Or8wdJ1dORQH3b4E2Ym6Wi2AJWMROqTrjq4yqOmcfrcfxAJJOdmnugAJ
         P0Iw==
X-Forwarded-Encrypted: i=1; AJvYcCXHIRa5nA5GSiIEFYxCusZNN9q36eqdNknmZ3RCW/++0b99rMg1eAWYxcSJDARByzYVLbsG9KVQo1aC@vger.kernel.org
X-Gm-Message-State: AOJu0YzcKSgOVfxe5WETDoYhC2GfWx5w6POtovLzHU2K0lmWKnCfywYd
	v9nddIdFlgtlt7nnW5a3gTI5z9EI/ixEaDp5Mc6beJBGJqu0MNgsqeQoRHqQaOwB7ZEukPITbmr
	TAPBdANeCBB+pHnr5NkoU/iu2z4PSltwbezL3l2O2LEpw1sfs4ytoda/lfmnFc6vrRrwrAyRW8h
	0HVg==
X-Gm-Gg: ASbGncvApXx44+F0fGFDbwppyjzRehcFwNMKISU9LtxJ4heQm9L/0CDMGFeC+d6RMCU
	pN2DKOMHngSp7mQRLn+sRhPtDDYpzH5ssOrYBKQPgHmpY6tZp18f/uT60XT1X6z+3ZNNuGlgTe/
	kQrM9vo55mRmXbMuV9a/2+yvKDjD8ZnELcXuHFY16PUvPDvtfJmVtY5pvGEjeMsQTLxndASd1ky
	YlhrldZNvRl4OKshBpY7h0bJjJ+bCdWnsAbOUWDxc0TJVBykmtqPWyAEPFcj8lt/M641eKYNBe8
	vB66b3BFxNVUt7QDMjxS5cOVjppc8BCnjm6TdyKxRpKKweHjwH8iDI88IPwuKwDawPgYlTMgfj7
	MoZjjIm90+jraUSFNXd++bB9mKolKxbTpUc72qnmVQLYgt/vc5w==
X-Received: by 2002:a05:6a20:9186:b0:334:a901:5544 with SMTP id adf61e73a8af0-348c75c5d97mr15917281637.0.1762154743309;
        Sun, 02 Nov 2025 23:25:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF4xu3Hv+neO09FiVIrAC49ERe34bC9UyG9T/3SPtqajoz8radq8B9TcjU34i5hmAQ9ig+lHA==
X-Received: by 2002:a05:6a20:9186:b0:334:a901:5544 with SMTP id adf61e73a8af0-348c75c5d97mr15917250637.0.1762154742828;
        Sun, 02 Nov 2025 23:25:42 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b93be5ed9e6sm9350951a12.27.2025.11.02.23.25.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 23:25:42 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Sun, 02 Nov 2025 23:25:07 -0800
Subject: [PATCH v3 2/2] dt-bindings: firmware: qcom,scm: Document SCM on
 Kaanapali SOC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251102-knp-soc-binding-v3-2-11255ec4a535@oss.qualcomm.com>
References: <20251102-knp-soc-binding-v3-0-11255ec4a535@oss.qualcomm.com>
In-Reply-To: <20251102-knp-soc-binding-v3-0-11255ec4a535@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Eugen Hristev <eugen.hristev@linaro.org>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762154737; l=1133;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=it/MOisxVfDih1bwUKUY/3WIDaekbtJqXnEPn67jB0w=;
 b=pIgQ0stqL4uRbdRq4cBpjnJhXqSeTqjynGD7xBueDqKtUMybPraualBpVaT9hgvvDa3r4/wo4
 YEeiYFEzPsmCVulSPgnb80TX+FPwoJ8aq31h9mbuOxyoOldQacMZ8KC
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDA2NiBTYWx0ZWRfX76Srsvn+tLjJ
 VOx+oCsa0Hhnb9ckTOtvm5yROIZ6dPttqTnoeuVisAyMrDM1unqKJ63KsYQeQ6in7dLynqj9nrW
 CMDgFPOIhr76PfFxXDc6uslFfYYR5D+CCGPO7CIvNtyNQ4rmAl1389xrJzhjClQ5Ge5qNrNc3jd
 fsZyOO4qfgVpszjr+VROETLJMbx5lOtPEMJwSMafmG6VCzE9+0zgFpp7EsL+uHz+/7ZDbXaISda
 /7qFRZaZT1TPU5cSKDCcywBlE/8nOWx2Kkmoxg3kS+DZxUnt6X8OVebG0mscIeGywBSLlkIBUxI
 yS/FM6+iDvXxHJ7jgDt9O8Q9QPbG7a2LdwO0mKndJElsM5/v6B6pdoJW9gckQ5kBTxrYE1Cx+im
 hAwTzorWIa6BwUpGPuhogyd28GIYIw==
X-Authority-Analysis: v=2.4 cv=LcAxKzfi c=1 sm=1 tr=0 ts=690858f8 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=ffYJIid-Q94gFHaen9MA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: B7awoKLnOK4ckpp2-NnPjs8ZhrT-Bt8q
X-Proofpoint-GUID: B7awoKLnOK4ckpp2-NnPjs8ZhrT-Bt8q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-02_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015
 priorityscore=1501 bulkscore=0 phishscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511030066

Document SCM compatible for the Qualcomm Kaanapali SoC.

Reviewed-by: Eugen Hristev <eugen.hristev@linaro.org>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
index 38c64c3783f8..d66459f1d84e 100644
--- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
+++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
@@ -32,6 +32,7 @@ properties:
           - qcom,scm-ipq806x
           - qcom,scm-ipq8074
           - qcom,scm-ipq9574
+          - qcom,scm-kaanapali
           - qcom,scm-mdm9607
           - qcom,scm-milos
           - qcom,scm-msm8226
@@ -203,6 +204,7 @@ allOf:
           compatible:
             contains:
               enum:
+                - qcom,scm-kaanapali
                 - qcom,scm-milos
                 - qcom,scm-sm8450
                 - qcom,scm-sm8550

-- 
2.25.1


