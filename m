Return-Path: <devicetree+bounces-198477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE18B0D297
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 09:22:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CA89B7B22FC
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 07:21:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EE412C15B3;
	Tue, 22 Jul 2025 07:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TVzq1frN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F782882C6
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 07:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753168955; cv=none; b=s8NKv94rnBDagPgwPRVXTnCy21Wwdu5DJ3VN6R/KrY0csGccREE/WJbLH+T32jlP4UKnmWLHzvO4FfJnEsQranoPZvCUQPvFIXJsgho6n3ZY6gknvn5fNV/7gr/h1xhYBQA49QhEHDod5j3QEQ2CRKnxvUl0uAT+W7bFDQU99sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753168955; c=relaxed/simple;
	bh=flVURwsSNZtWM0+fUgJqZKMxwfIi346lSujUoU8vBq4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iXqZtjLlLck86tuKKSVDaWzo8h7lMVJPUWwFiBxWiGzaiCYcph1q0kCcwDzJqzEPXeN0hrVdiQ7IVkVzy3PWjy8rC/cwuOom/sb+HJICLw2ukz/Hu0pc5EFlMr1eOxb+6+G+4ANcXOwQ3IWZgz/YiW2Tjnj2CJKtDx90TUmdneI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TVzq1frN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M7CMcl015640
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 07:22:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z6ZwzV2fRLwP2rYYHbwT2Ikl/JBdsp6+MNb9lNC0zc4=; b=TVzq1frNL/SlSxtN
	WI+DdaVgz6Hgu1dXskmqVouqvahpmof/0OcnvL5kL65WYFsihlhnXTMxd5b7PDpS
	hRONCm69aDPDhuB34dNDT4mgIrOkPtc9h+UN+pqPnt14S1WUNzT5JaEmiR/55vK1
	Cfqa0LfPtFoxvqj3jZ2W1mIEMuUWsI+POp5dUBJqFhp+5tc0cE2Um8qxBCD+XoEI
	9J6i3JkXoR7bqPkdr3XnKIFt8S+n13rMwfomdNVnE7T/fkNftGYKJdkXMUCewhZA
	PdHJeUNUbaDwsulrdYQ4trXIV4URkJg3+94H30MxIXQMSmQvmLyw86MJJPT1p8ns
	3aPo/Q==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481t6w1ks7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 07:22:32 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-234c56afe28so1455815ad.2
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 00:22:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753168952; x=1753773752;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z6ZwzV2fRLwP2rYYHbwT2Ikl/JBdsp6+MNb9lNC0zc4=;
        b=RWuD3RTLP3lJ+g5JoVsngIDoF9tnLNzLonn+lKbq1DKi6y1dE15r1bvmxXTTVxTFmg
         RnxiTjgKvFIniPrwq9kOvomHq3II5Q6Nhv+4nBteWKbMdI9NBIFb97ZK7eq8h5gkbLlk
         EEH9kfhaQxZxe27feh6NYSZHtr1zukniTn6fWI6azIScyMu3/VUAwPGbKN/kyV3oU5gI
         BObGslYdRqWzu9fpYLbPl3RPP46oL3mFSnNDmEgqDKtZtNfFAY+mfu2pdqpqT2xy/HM4
         NmHJxaS7o2uDoZ6GzHafZx/m8ForpiylvnuM3xaHmOWcQCiTSg6ZbXDEP7JYRfY4VHuH
         A4Nw==
X-Forwarded-Encrypted: i=1; AJvYcCXox+k+NIOjaDZuU4i+hqI+9qorBcnHglzg7JdomlYTi3DPzQ0dePdvLiFvBLiVR+ieoaDoXM3jbJiK@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2R+hlVzCcgL/PIT+17nFK7VPlD6BR9xcJve7Oyy7g+Bkreb7x
	kTh1EE1PGaHSNNbzXZkl6QAoyPYbtJP1cV1CB3aDBFirOBMHTDzzW+PI6CFKavsj6UkCLJ2sriQ
	0UgS6FVuyc4wqse0sEHQmmNnGVip8mHsJLZOMByN15TNy/EN77VfcJYsbfvOgt8ZN
X-Gm-Gg: ASbGncuTrKGW/ddFUFhhTe7uuIPzsQ/R8KzxpSZ/yZnpsdstGP7DYLsgRuYHcR2K4ka
	gqRviw/vUaMKc3Bt93ZFpX37EYuhmF7Ri4j3lY+7wNQOtmlQeOmpamdYRKthEJPM/rcOHC9lF6n
	w3T741K1UNIHt+UQYdeQua6i2vzcw99SqQW9N8qhKsxwVya551mYGCAwaGAHya9jHszoB26TP+w
	Fi3JPlvoqActvvibtcCKRVlS4Qc2xZs4WAg9K9ZGj15yHBfV4luohJQgNxNvYQ8+BJorBccpA/o
	en1sAtLKdPIPIj74hF6HzKcnGNVfZgNpcl8X/l4jLY81cH2m7uUSSo4StUN60jCyy0PYr6FU2Dw
	923eUIZRgqFQ/E6XQOfaYt4h1vLbOa2sXhewTAi2KTqUPMXbiB9BbAA4p
X-Received: by 2002:a17:903:1cd:b0:235:ed02:2866 with SMTP id d9443c01a7336-23e24edf70bmr137445035ad.4.1753168951951;
        Tue, 22 Jul 2025 00:22:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEPbIpYG8v2ydgpk9/Rt6e8nvbsQWG0NcHT8nsJPhxyTxGZd676+Q8C/tNJcrl9ABEm52u2QA==
X-Received: by 2002:a17:903:1cd:b0:235:ed02:2866 with SMTP id d9443c01a7336-23e24edf70bmr137444575ad.4.1753168951408;
        Tue, 22 Jul 2025 00:22:31 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cc3e45e6csm7490753a91.3.2025.07.22.00.22.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 00:22:31 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 15:22:02 +0800
Subject: [PATCH v2 01/13] dt-bindings: display/msm: Document DP on QCS615
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250722-add-displayport-support-for-qcs615-platform-v2-1-42b4037171f8@oss.qualcomm.com>
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
In-Reply-To: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        fange.zhang@oss.qualcomm.com, quic_lliu6@quicinc.com,
        quic_yongmou@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753168937; l=986;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=flVURwsSNZtWM0+fUgJqZKMxwfIi346lSujUoU8vBq4=;
 b=lFF3TC9IzWFZbCphEU+PcIbJicZ2nH4+jooaIfp3H+fpT8Ugr8/Lcb6A7g1w4zevBtfnOQzlG
 sTyaMHC/WnDCxaIyrA03rD90NFGzdqeY660ykfSFBWrYsobnqaFRMrc
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=SPpCVPvH c=1 sm=1 tr=0 ts=687f3c38 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=CFpH1fyJroaNsTO7nwQA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA1OSBTYWx0ZWRfX1xzcLX/L5D/i
 dcKVOBxOXtHtamYCPcYnvgeFVCFvN//HtYv8G/gWuvtZiLLaod2gTFCoNrDuOJi1coQCuNKR2NG
 0ZdqGnKubUX1mK1KnBQ+akpxNG7E2vNZvr1FTV4IEV0krmVL2JStUTJsJBI5kFqMG4iZCElDK4d
 DcXjC5dnSi7svtmrtjryc/rCG4CEp1XIXTk/4eSeGvMun8ABBPwSh0jjyRXzWIL8IulaWskypyW
 5tARLnkr1UcTjZRNc6mcoFBexGsRbGarTpX1OpUvDRHvzyxRtQlv0OvCLfG1OT5D2wEYSMjdQnT
 Tn4PPVvzNNUaH+l3cak9o2X6rI60Brf4ZJif7qevQqgHSP+XKzqd+I9fXtJwl7j4U2KTTCwqcZb
 N1+Osl8TXuNdeF0QQKeeBFLX43vQRn377RMbHIVtR0o5U9wYKt1s63rcNZf/+DDwDcRbCNba
X-Proofpoint-ORIG-GUID: pA-As_24AQo2XKWRTS9qQU7MdB8FK33s
X-Proofpoint-GUID: pA-As_24AQo2XKWRTS9qQU7MdB8FK33s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_01,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 mlxscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=907 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507220059

The QCS615 platform is based on the SM6150 SoC. Since the DP hardware is
shared with SM6150, the compatible string qcom,sm6150-dp is used to
represent the DP controller on QCS615.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 9923b065323bbab99de5079b674a0317f3074373..996d0132e084d401db85014a1a4e445d00d62ed8 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -27,6 +27,7 @@ properties:
           - qcom,sc8280xp-dp
           - qcom,sc8280xp-edp
           - qcom,sdm845-dp
+          - qcom,sm6150-dp
           - qcom,sm8350-dp
           - qcom,sm8650-dp
       - items:

-- 
2.34.1


