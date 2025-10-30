Return-Path: <devicetree+bounces-233173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDEAC1FB80
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:10:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 12E4D34E35B
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 11:10:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1ED2535581A;
	Thu, 30 Oct 2025 11:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y9Chfr4z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iNE5j/ZW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 901A0355810
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:09:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761822591; cv=none; b=PY+AoGjqxVlRGGOJ7ShEMVsr5H1S1PAbi2o257eFs2yjk1pgnfKnRWhcsgpL47tGUGl6NWTDEkbynA2GdQILjVcMRobIZuKHbON2grIOJVpkmlPi2OAg7xHAgRXhXr8rApH6EctPJK94c9qY/tHHFlHPhlRONI0HvIUoBcPHSC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761822591; c=relaxed/simple;
	bh=TdTenebo1wf1mMWccGdKC5vf2P8eTxK18YJfYnYRBCM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RXTXpkG9PJBf5yrExPHYGW8oNmG6ptv99Yh7h0q45p0mkEUi+KRjUKcyA9HwDtsT+RtUGddd32asQ7LoiZIj7FHi+3UULR6SwJPdkrc9KZwlAAasgMM4g31dsvPftvg84ru2gsqmOoO4tPHND9hSyKKeFBz54IeQ+2Dx+un9IAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y9Chfr4z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iNE5j/ZW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U9PKjj3509316
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:09:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	snUgPgVQWC+EcxSMP4fm0dKm8E4V5U09jedaQkTnmks=; b=Y9Chfr4zN9u5opCW
	OQbMsksnmh+N+z0/5Q4lcuERQRt9EUPXfTmZpoNwlCi+352kqBTsmCLXNpouhosc
	ilyqBrAvqEV5oqRRIKXsa2YLuLyW4Mkn2+3QEpQB47Ezpwr2N6yVVsDo1GHcXzTC
	qIZGKFW7muWl/xt6xVXoDHOS0tUtBcFYfgRWDTIjS2EQN2O+clo4YJgvQeMCsy+7
	rhlvcAJ8e/B34g+HLRpH75FMp/iDZg4/tgA+x9I2GeVxuMyHZuTNII/Qp/Yvv4zH
	p002e+JeH0mpe4ol42OKyPR7LzdLBYj0oFYs3a4BpZAaARAfUFVzFFggbH6huW3O
	ylrNog==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a45cdga2r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:09:48 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34077439124so7921a91.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 04:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761822588; x=1762427388; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=snUgPgVQWC+EcxSMP4fm0dKm8E4V5U09jedaQkTnmks=;
        b=iNE5j/ZWaj/rp339C3lJICiD9N6+iCQqbIwD6ulgHeV1CYWCvR4polCAFoMh0Q+xcW
         F3oTNvIyaj8aDNRhUr7HsZ6kE4svwO0jgZejurj3nYSeQfI2jUroFBAR0VScgNyLoOEd
         O4Hlnd13RZBOcS8un8eHBrJmfdJu4cyx8S+lT+rUxcFg4deE8tykyPNid4MSMd5A9mLo
         ENyVbGeq9c8vtW2e63V+mBXn8SxbPfAuLvjLM3DStoDwubkyIpuTn9RD77L5QHTbxcZT
         OWwGze6nuIZ/AnsRMP71Texdw8Y9JJH6Pb08oki32THbWRMm0NtX/BfijUyZJr6gUMEn
         pDwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761822588; x=1762427388;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=snUgPgVQWC+EcxSMP4fm0dKm8E4V5U09jedaQkTnmks=;
        b=YPa1+i58iJrxPUivxiE1eb2GQVIKq1Vb6A5ZlI2cWGSha9ih4zFPcopNsm/URqWaxJ
         Ndx/rqxToyrsMxxypNCL/i1D9/tewsD6rX2zwZaV53ZLNyi3uY3WRa+IYgvQtppI3j7E
         yCkHDxCg6KGQQFEz1LSk+Hy8iuom/IZYYO7cqVmvf5hKh5eGWnZzGD5n6OM+X2KJWjig
         MjRQScc3LcFn0VYnB41vzLKeF7d2GkJDiSutJD5vrfOQ5OyPb7ihAOsLhnw73c7g3OwY
         H46CqRXMaeFQY2QSr/1Pb9m89CCuT949FG/ErhhCXyhhFHJNdlAziheZNni+OfKpmmLu
         atzA==
X-Forwarded-Encrypted: i=1; AJvYcCW/SG9q50cpT587pCN+tEvQaZntLKc7vzBAuNXSLdNXeHD/KOyOyYNaEwVsMXM5GT2WfT35S60Nwfjf@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/h1AwdwVwZGBfnPIp2m7t7c2xiAbz8Bjusy78K5XYM60RC0gY
	rPlen+0Zqp1D6dMZtjbBAlBSligHApjurunz4bOlYdqFgTCjIVGYvbXK9IY7oewWh00ABan4G0Y
	dSWRH03zqVpRvbvFL/1ICf+VItchp28XlT8r4VTTcaEnlV6dJvZlC2IHL+wRA9+TA9EKGRLvd
X-Gm-Gg: ASbGncujDn2WeZBruzglRvLsAX+Z7RUzUNNXbNTG1tu96ADAv+bUgQSFD9ipjPYqgXQ
	2ZOsOFNmNkbTcf7qZBQNDswEFySNfAUyDldAhRQ6h5fqt/l1P0n6Ib59a9b0P1gqbjxvQ74JEw/
	VAIkqJj7oIFuu2sARNniSqpPlwBX/dQSSEMAdPacbs3vcyTUdKo8o5mV3mgF8KBQZEs2+xK1Sih
	VXqtLHSSwql2yFMQvf2Fp4gR9eZchnKIuKkRELbsWOkFPUJcJGxzQ4yeVBAeuxB9Esv1n+C15LT
	oRz7vsCCT4Fss5Pu1nk1iWtUdcBRsgktDLP6Gk7FrS1kZLH9EmIuYW07Y9gLU5CdtIOFmBiHHgm
	O+BmBD1iYmClv3tRYFP9y0fs=
X-Received: by 2002:a17:90b:134b:b0:32d:db5b:7636 with SMTP id 98e67ed59e1d1-3403a28efb0mr7578848a91.27.1761822587836;
        Thu, 30 Oct 2025 04:09:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFh7+ANE+Hi9qtGtlIMkfwoy1OotAoprCXBNtn0GZ8LJhXpLEzUjuS1rFg5Wm0R5B48lMsOsA==
X-Received: by 2002:a17:90b:134b:b0:32d:db5b:7636 with SMTP id 98e67ed59e1d1-3403a28efb0mr7578782a91.27.1761822587245;
        Thu, 30 Oct 2025 04:09:47 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-340509727fesm2262839a91.4.2025.10.30.04.09.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 04:09:46 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 16:39:05 +0530
Subject: [PATCH v2 2/6] dt-bindings: clock: qcom: Document the Kaanapali
 TCSR Clock Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251030-gcc_kaanapali-v2-v2-2-a774a587af6f@oss.qualcomm.com>
References: <20251030-gcc_kaanapali-v2-v2-0-a774a587af6f@oss.qualcomm.com>
In-Reply-To: <20251030-gcc_kaanapali-v2-v2-0-a774a587af6f@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, jingyi.wang@oss.qualcomm.com
Cc: aiqun.yu@oss.qualcomm.com, Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-GUID: dINtTaoitGGuxoKynGpqPJ2bfMWZePWj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA5MCBTYWx0ZWRfX6HVmD8iKDs5d
 3BrVXIqbl8Q+R179mK7q4FxokbEyWKmRIWkWnaNCQdK0SQbYvO2QZqy/AWEbXrU8ibEY581ZAX4
 vK5j12J/ykiJ9ky0WNcv8aoqWvMx4jF/5kNO2ZqDyCEX4HqdIWONewsdZzudWx05urGlZowdwcM
 lwvPJIzCG2PQwwaikR4goCVZO7S9zNZH7NlW3zFw3hdzwSk2HpORWfa7G7DGlU5VU1uSqe0rZ/i
 9V2CVcrF6BYy3xeUu7pPTMp5FY+baBhjo+cBx8bsyvKS3HUvl/376+L7CoJrix7AQEn7fR7H1jG
 exDXv7mXnnYJozOdxm438fR9FSB4K4vkqv3lG2tElVYcYHj048oqIi6huO5IxP6ciKj185DxPO9
 qasnuYvYMqOHZiGK03hJaU+3Eip+/w==
X-Proofpoint-ORIG-GUID: dINtTaoitGGuxoKynGpqPJ2bfMWZePWj
X-Authority-Analysis: v=2.4 cv=ItUTsb/g c=1 sm=1 tr=0 ts=6903477c cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=3hKmvjqeoD1fMx2jVRsA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 suspectscore=0 spamscore=0 lowpriorityscore=0
 bulkscore=0 phishscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510300090

Add bindings documentation for TCSR Clock Controller for Kaanapali SoC.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
index 2c992b3437f29b38d9c73e3c600f2c55e0b8ae98..784fef8306812c482f863c45b322a69b88c5800c 100644
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
2.34.1


