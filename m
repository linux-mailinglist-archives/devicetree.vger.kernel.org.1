Return-Path: <devicetree+bounces-220901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C9DB9C676
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 00:59:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4560F38203E
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 22:59:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92D0329D29A;
	Wed, 24 Sep 2025 22:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kESsrkZT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E437F29993A
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 22:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758754748; cv=none; b=DR90DuvKUfCrjiqKY61JWska6EZEgPm+WEk/+7bpKGkFRBF3nnH82MeQrATRi1JtYO84vGa9k4vZn+DC75I+P72VACWTYwZKL9OQTLQONtqUmDu5VeRpI87/Cpim7TAnpv0+/fUNb6HruIPADCVecvExd6E/g4TXINW/BqqNt4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758754748; c=relaxed/simple;
	bh=yy3Xacla9UOxbqXpSFYiKXWgjPcQnywvRkT5dQdRoDE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=e+61s9ZIWOS/GqtFtc2Jwrux+Kl1V/9pJ6qAGNwL7bhGscKblHEJ1sWe0cOgvKwYmqEHCIb+slb52yUIT0dqR4QAjJ9LH1m8YSC6VKIWgQ7GtNhhM2KuJmHzE8uTJ0eCRrnpD93DDjBRwjftvqzsLDVG94hq1/fBeJAaKWj39iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kESsrkZT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ODGOwn017437
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 22:59:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XDXmYjaKFwBzPJwxWOUUE13s34TjJw8/HcqN0CXLaq8=; b=kESsrkZTgEelK5YC
	CqAmUELec/AyuN+ZQN+AVMIbaolhPEVPXzaBYj3b0pxo6R3/8gGwJvnhcSRHIEvI
	3ewMXz8AgG9Ays04HwIxMvIrtfB91UdnTclHJksiknp2QF0A75g3Ac1K5XnkUIEC
	dbxO2RG+DibEsK+rmUi/5Q6EsCWSMpfyozv61xf2v+q8/0HOhy0pnlkuW3Ga+BzK
	SVw6w9/UPk+s1QxSRvVX76Ft/NuS6srOsNX/luroafxRtFT5MzPxM8bEbVkgTYtT
	2oQfmZq1XJX18+HPij9TMOjXVFlO8EIvNZ6XF1hxGN/e7mi+T8vg3qM1knUXrdUK
	dtBCvQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvjya04-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 22:59:06 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-77e13772b37so225629b3a.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 15:59:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758754745; x=1759359545;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XDXmYjaKFwBzPJwxWOUUE13s34TjJw8/HcqN0CXLaq8=;
        b=Y3dgT0vR9AiNJXchIW+cGsTxGNqj+gdorSp3sbzYbvkm+FEZm2c7wzv4Ltt3yQfxfn
         eO2xUmETZ5Lvq3wYt/BZNy/e6JsGKkAx3EJPiadFU/trO9n7q9xEKGzJb/fa3iP0+oWf
         qLI6NtS8JeDN7pcN4c89Hzy99dhnuZv/TbTm5bjc6wzdPoCDNgaDSOarKfHsbZAypWOD
         PPfj1wqtBNivwschgkWbqX2KjmswrOZZ1voQ2DlFpZBEQW1ioWaHqz9H1dgwTjlPNrip
         0rdAlVxiIfwgmYxhJmGHJm/4+65DOLg5QOMHsLbCeGG0kOnc2C9ukJqhHJPWFpkPPGso
         WIkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWRvnE5Hsgz1CVPtUjct3WsVA3AqVhu+AGbqsddn83dX3lskDrYJwIPQ/w9y2zpfw4vUhsSFHorjhQi@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7FUte7oSDBH/1r7euKJHS1oL3aeZ5bxd7rbCCvXStmrf8xDfv
	WJVud++ClynlH4dodZ6UpVJhw3pPxs88mKkEnQYcyOklvsLKmpSOUFA0xcwabeAGB1Gz/wvC/qr
	aIDDRU80aa9TNH+VuFz9P3HIDULImfCqQ2OJeV7Xr5zsCusS4zAnTeKbEeV+TaGNMMdqIq4Nv56
	s=
X-Gm-Gg: ASbGncvaMGyNbvOo4iB6wDYgVsSPYfnn3KMBdDqsQtLlsHsjI+t12CZX7nfNDTw4TyZ
	z8BwcSuhdxfhAAmbUvM7BNkEv1ovLhzHFUqkdIM9PkBkwQXAY3U6Wk7PlqN2lFkT1XE4cWIww3a
	+4U0urDWqxYYJm+FhkSaKuL+3f4yyZuGh4QfS8KylN3XpVtO6eJkmD1U6iz4H5DrGlZU87QnxFq
	uavSgzSA/sh9psvvfQur8K4dYcY7FCe6TmxCzuLh3TtfGxtowWhesMzzs+3BPhZFQKoasVqNB55
	n0XeI3/aa5kKTx+tb3EbXKCb2pXq5kXRHsr9/A44W2tdEyaZnOn+kj673zupzP8He2EjNxjCemb
	ABAzjkqtuldDYEA4=
X-Received: by 2002:a05:6a00:4652:b0:77f:d4c:d815 with SMTP id d2e1a72fcca58-780fcf12f08mr1845308b3a.32.1758754745135;
        Wed, 24 Sep 2025 15:59:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHXdNFszcYpPVOWvP7/6u2P7TMeM6jhJHuAYUv08poAqLgqu8gdyWlL7gMQG3iJ5ZaalGJe9w==
X-Received: by 2002:a05:6a00:4652:b0:77f:d4c:d815 with SMTP id d2e1a72fcca58-780fcf12f08mr1845281b3a.32.1758754744615;
        Wed, 24 Sep 2025 15:59:04 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78102c2b70esm111166b3a.101.2025.09.24.15.59.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 15:59:04 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 15:58:54 -0700
Subject: [PATCH 2/9] dt-bindings: clock: qcom: Document the Kaanapali TCSR
 Clock Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-clk-v1-2-29b02b818782@oss.qualcomm.com>
References: <20250924-knp-clk-v1-0-29b02b818782@oss.qualcomm.com>
In-Reply-To: <20250924-knp-clk-v1-0-29b02b818782@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758754740; l=845;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=n3FQrcuYcggx7GKYI3TsEagZ4F/FDBIko9Z+j9mcdfs=;
 b=IQENasXY7UJWL4ilhrNMEq82ty5OnDeUF56XaQgoAs7z0brkBSWz8zHZOmQl/uS2VqHI7eiiE
 KtywVyWntZzAKphL0R0s8L8sB/qzZi3ZXKuiWrYT5C105JMSjK9C0lg
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: PxRRjZRm1rxwxTO4zuCXqRxaoCqmcPdp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfXyWeqz6tXxwGt
 uNaJAWouqJaZVfl5MNDVZxzwiIpwm8g4e/kB7nWsqG2jfxZToJ/GOlsRsHZ6VrdyLbZgFyTrhZU
 3EfpkE4y1Jselw05ZFjTOTxAxvqu9byXoi27NWIp51Ad47KCj90qq6InKjw5z/HYFbDwSVCFLOl
 ZTLrdaTr4q8bJmDjmZPTzy1IqcTQRLTxEurwyAP5QHm3OTzwhImaNot3bCjHaZbCgAJrlhVTymg
 vOCo+xEKCWuzlAYQaN4tRstEYPEn+znZYUph7FTfQ4RSVWpehNL0MntEIFujSCV9vMGxLkD5OSj
 RdCM0ySNUWuHVafrLp17ZvEetd8uiTsGo1MYOV5XvOK/vIAWmfPy7Drii0N0z6I40Ur3h3HXBNP
 yNHRjq/n
X-Proofpoint-GUID: PxRRjZRm1rxwxTO4zuCXqRxaoCqmcPdp
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d477ba cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=m9xIYplGfBuRHQtD53gA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011

From: Taniya Das <taniya.das@oss.qualcomm.com>

Add bindings documentation for the Kaanapali Clock Controller.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
index 2c992b3437f2..784fef830681 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
@@ -25,6 +25,7 @@ properties:
     items:
       - enum:
           - qcom,glymur-tcsr
+          - qcom,kaanapali-tcsr
           - qcom,milos-tcsr
           - qcom,sar2130p-tcsr
           - qcom,sm8550-tcsr

-- 
2.25.1


