Return-Path: <devicetree+bounces-185070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7D9AD65CA
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 04:40:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 14AB13ABDF7
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 02:39:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0F011DE4EC;
	Thu, 12 Jun 2025 02:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e8l51T8n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339391CDA3F
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 02:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749695990; cv=none; b=M0i8ZZ1SENROI4BN2GkfJ1Jb7CfbmXcMSkSP7wEDmIBOS5q9FOHPc0Oz0Z5yzQ0feBJZ0QeBbVo4IMc8PHcud2zjGuQ0HWZmeUX3Rv4d11lp9qElZKoqrsIphZBnttGse85CebZoKtV68J/ZTwjidoYMNjPrG1/FwDoQaO8/GMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749695990; c=relaxed/simple;
	bh=dByEkHGajdUcbKdTNOwI7Vs1IWsLJrj3edmNfpIA0Zw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=K1NPU0yLvrLekrQVYkuiy0B0S9LwCIKyyKQTaAjmSBluyC7U9U8crv60zMhDBSFBn7UNPDdFzUQoYj7u3mIuaoDgLvAZXZB72RzR7I5b2z2Ve8QkelZfFqeGOQ9wCWBAyMvk3vHdWzm4cX7Wvc3kCFAIsHQAlsIvLhdx13sgrXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e8l51T8n; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55BJjitP009041
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 02:39:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G9QEMYi5BpWOFmaeRanYjIMY/vMap1wBOvtfthOtg+k=; b=e8l51T8nFVUgDwyI
	VbPY4RcdyiCYhOk3qeyg3c0GebVWhJ1IsRuXHCktqtsw9a6tJKkWR7M6mM/AgZJs
	IgiAB5HJgenJFqPYzWOQw6+IADSh+qtn/u02dI2+gZxEN4zl+FwA7Tw0xImrFN+H
	NkI4DfvV+9liMAzX1ehGukLstZ9UflIoW9s6dv9nU0e8w4sIxi8H9VjeSy5SackM
	iQu0iuyLSrYzYuKtPIBlkU228yWeUs2JzV1iEjuK9zItiZ+MQhzBubjikGbW3uop
	PIvdTDGXT4gjZtS/z7kQgdJx6knGuj4BYgi5VOzAWz0C0uMTV7Q2BkoSRM8JQ2lX
	5vcTDg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47753bty5q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 02:39:48 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-747d84fe5f8so298258b3a.3
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 19:39:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749695987; x=1750300787;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G9QEMYi5BpWOFmaeRanYjIMY/vMap1wBOvtfthOtg+k=;
        b=K7vyK0anmPLSdyPllx7HyeMXDtQk/AbfVD2x8YM8OJZYwmXq/rTF8yTZAOgZA51Ur6
         NizP+yNZT89qPWK3CNDYec59R+xDvx1iE80ZZndfw1yvkvq7NIiRmkRLiFgDjOPDiQfx
         L/uhBSFBiP3bmeJk/2vgcfYqjuAKzhSWeuuzXe2MiwgnRClW9NB5ngniJSuPN7BfJPQ+
         4XsxqnIuNHLvLN541CQahOyZLNICMwjmpXsfXJzOA7Echy8VywQVioCM+AtG7OrwQti8
         YDdqbnaXnJAbmW0ZQ+h91KdoSR/5W1MrS/9Tj1Wt/GZOPCh14psdeAfuOEunZcaSfboi
         WsNg==
X-Forwarded-Encrypted: i=1; AJvYcCUuakIO0hqQla0eiETTE1uVK/PxbkFu0l6kRRE//MgjjsyTfg3HPvPFmV/wmDjBR+7xMr/rX3qVyu2/@vger.kernel.org
X-Gm-Message-State: AOJu0Yx99W9Jq5rcn1V3VT5AdFijxkKznehINM3pjmKQ48vryOLc3dAz
	0Pc+eMjsQ3pWtrCVsmCkJyvVjHMRTkvdXse2iE78MvOwC9qTj8bQ7tl1Sft/Gg2qqSt/A8F2mBU
	RfjUHm73RWuoz2/8YNtY+0VfNozBM/JUM+eiZLlzjtd6Gviyrxh+ii5ZcZO6pKyFS
X-Gm-Gg: ASbGnctn/TH1SvXlS4SCe0de2No1Byx8vWEz0c34QFHiSjk6fsSxaT5cuBWEdmW5gVl
	o6fsuYcxarhge6gbtSClnfEekyFUvQEwI/FwvpLsZXw03aXY9P9J4d2UQNzffei8hDRwFfj5wic
	YNtdne03Zhi4LsjAZk5llXyc1dGJGcU0mvgT4OoKtArXOPaKsZ4X+1HTIPZvxi1SIKJVMqrsS9m
	TiJ0uaFY/bHe6aCxlS6Q6e+XcBpCYoGVrkzz9sfNzdkwGNvpQQLxZDf0YPhLP59Vv7tYRzeT5pT
	purOYGTkciq/s4WOfhO4GfGuES8OVVUwla2bGe3SF/On+sXR2gsUsJMeSITznzOJfdG1r1hPIOs
	ECPAFCLG/Yzik+73a
X-Received: by 2002:a05:6a00:1a89:b0:736:4e67:d631 with SMTP id d2e1a72fcca58-7486cde2e55mr7371994b3a.23.1749695986863;
        Wed, 11 Jun 2025 19:39:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFEIORMTgQpFNyATMstarik3rAFLud2CcNi+Ex+oVPhUl83e8l/uNxKyxbUfmpT4TIbH6vbOg==
X-Received: by 2002:a05:6a00:1a89:b0:736:4e67:d631 with SMTP id d2e1a72fcca58-7486cde2e55mr7371960b3a.23.1749695986351;
        Wed, 11 Jun 2025 19:39:46 -0700 (PDT)
Received: from lijuang3-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7488087e640sm315835b3a.4.2025.06.11.19.39.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 19:39:46 -0700 (PDT)
From: Lijuan Gao <lijuan.gao@oss.qualcomm.com>
Date: Thu, 12 Jun 2025 10:39:32 +0800
Subject: [PATCH 1/2] dt-bindings: remoteproc: qcom,sa8775p-pas: Correct the
 interrupt number
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250612-correct_interrupt_for_remoteproc-v1-1-490ee6d92a1b@oss.qualcomm.com>
References: <20250612-correct_interrupt_for_remoteproc-v1-0-490ee6d92a1b@oss.qualcomm.com>
In-Reply-To: <20250612-correct_interrupt_for_remoteproc-v1-0-490ee6d92a1b@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ling Xu <quic_lxu5@quicinc.com>,
        Tengfei Fan <quic_tengfan@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@oss.qualcomm.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lijuan Gao <lijuan.gao@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749695977; l=1325;
 i=lijuan.gao@oss.qualcomm.com; s=20240827; h=from:subject:message-id;
 bh=dByEkHGajdUcbKdTNOwI7Vs1IWsLJrj3edmNfpIA0Zw=;
 b=UK4xSyEL0fKt0hzvsLd2wFW4f3kUfFykLTqXq4KX8ugUvR8LA7Na+wiN8Ff1CC3BPjItTcfB+
 9KtzLL+aYzMDul8pifFbAhhalW6PqaT62dY8J9XNpv1AErwvXuGNdub
X-Developer-Key: i=lijuan.gao@oss.qualcomm.com; a=ed25519;
 pk=1zeM8FpQK/J1jSFHn8iXHeb3xt7F/3GvHv7ET2RNJxE=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEyMDAyMCBTYWx0ZWRfXycCtFjirwRYJ
 Q2q2mZq6H7ZmLXU9dZRmKyNVsMedkJI5yhtBN6aQ4DiZ9YO4fMyYFmMLfR5xkENqcz/tujWZwuj
 ix4bOMicUHedyxVf8v/5EFNXYc5XnWLuYiEYFbv7plZkWL8du2pw50R9Kx/YE/Wsa7A9xvgprc9
 Wfu+db6yuFlQVlz36WR4w5fO1aTRDbNE+iiuIATDyepz8YrBx/q2yBXQNjWxGpYDvoj/xa0lqG0
 lIg4c15HdjDzSpLjs/4qvCSZs/euW6mwXfaWwn+Za92x1g4jC3s1Y13yzZVc9RhruYcMyJDq1+2
 EVGX+dbLWkeIqj2jV3D3rcGOz2rQ+rnqZxHPimgF6KoP8lKdh5bALX8WItFdecQsY8YWcecife8
 SYFkzbziV3wnoheULeUeHK+cB/9a1Rt5DLBgfCIgwRMrzoy+gxmSxNeMAfqxaaeafeVB2Nmp
X-Proofpoint-GUID: wO6xjKxCz6EqCho4_yxJHxB25Uk-RD1u
X-Proofpoint-ORIG-GUID: wO6xjKxCz6EqCho4_yxJHxB25Uk-RD1u
X-Authority-Analysis: v=2.4 cv=SqOQ6OO0 c=1 sm=1 tr=0 ts=684a3df4 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=hqTgazAR9qFGF6WK--cA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-12_02,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0 mlxlogscore=761 bulkscore=0 impostorscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0 suspectscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506120020

Correct the interrupt number of ready and handover in the DTS example.

Fixes: af5da7b0944c ("dt-bindings: remoteproc: qcom,sa8775p-pas: Document the SA8775p ADSP, CDSP and GPDSP")
Signed-off-by: Lijuan Gao <lijuan.gao@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml
index a66007951d585b779a9de593851cf2317d3da79b..188a251940001b8535ee7005f1595f42f6ab9b34 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml
@@ -144,8 +144,8 @@ examples:
 
         interrupts-extended = <&pdc 6 IRQ_TYPE_EDGE_RISING>,
                               <&smp2p_adsp_in 0 IRQ_TYPE_EDGE_RISING>,
-                              <&smp2p_adsp_in 2 IRQ_TYPE_EDGE_RISING>,
                               <&smp2p_adsp_in 1 IRQ_TYPE_EDGE_RISING>,
+                              <&smp2p_adsp_in 2 IRQ_TYPE_EDGE_RISING>,
                               <&smp2p_adsp_in 3 IRQ_TYPE_EDGE_RISING>;
         interrupt-names = "wdog", "fatal", "ready", "handover", "stop-ack";
 

-- 
2.34.1


