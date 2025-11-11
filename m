Return-Path: <devicetree+bounces-237260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB9FC4EEC0
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 17:04:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 29A4A189D55B
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 16:03:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6563E36C591;
	Tue, 11 Nov 2025 16:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fD99A+u1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iToj6u1k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FD6B36C581
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 16:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762876983; cv=none; b=aU1/8m+BaFIXoycwA3dXdqZLVYi+t1HnKLLoo2CsGvmkm9gVQu4w6TSbcsBcH+a8vBoGnKPeqzEgTpXLtvmEpdCYJIUdw7yRH/kVf1vLUN4LMkGk/ahL/mYxTVnd0lT7VxsMOvnPJZs2L/M+o9tke9X7TDUlQi26kV3RO681rWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762876983; c=relaxed/simple;
	bh=QDcJBn06AH2D+GPGijhIlCFUJpLaCplNzhYWBOhgUL4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HHawBEW2x2PHpEmOrnyyd4AzxFwLOs03FbnaRAmdhVpT4dO2q2bpKN60Pso5CrShDLXCIBHAu8Gms8EzfMQgJPQPfJ6cRNFQMPoF5+a5y4wfL5BF3idi8dJlIGTG3E68xXDUf5cHnwKHPcJrwTkk5gs3ZGE+T3qxFZRiSgPpE3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fD99A+u1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iToj6u1k; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ABFp4h92818985
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 16:02:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	frNRVrrdVNK+JbMZUFHtvNuAL5yElEv288RfrfLW3LY=; b=fD99A+u1MZpK6VI2
	QtmFiVwHBluAvxreTl53xeivcut+nwzf8K1vn4A/dqX35L8oSyD7J/LFmBjpysWf
	T/fG5kvdnHKe3BNX6HD5wp079z9Im7PzVH6ca4gz8xcn+tAqyJ+NbwB2yHPGlcmp
	w90+JgIO9OJX+eXtPmRQeifZezqcQnL2SKCL8NspchyMnyVWPP9UEPUHbuENrPUF
	mLbPPDZ6zShnkHtfs3vbGfsvYlwCp5YtY+2B1VF31ESfhKEW8ZVYdvkPW8MPvqZp
	+vfPTQngF+W5CkVsuyAQ/Mq4zMiL3rS3LJ8S2pHo2hmB2vEdbGpom+yH1ZOMpkjE
	dJ0V9A==
Received: from mail-yx1-f72.google.com (mail-yx1-f72.google.com [74.125.224.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ac855g1a5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 16:02:59 +0000 (GMT)
Received: by mail-yx1-f72.google.com with SMTP id 956f58d0204a3-63d34257de6so2738521d50.1
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 08:02:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762876979; x=1763481779; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=frNRVrrdVNK+JbMZUFHtvNuAL5yElEv288RfrfLW3LY=;
        b=iToj6u1kTof0mBpwDgl592nxn5+qSLNPnvbf/AvREPEL20qyOeYsUAv0i412ApxufE
         J0HeBVWRrGHCcsKqRbcJT2KCG69Kbxk17hUqTxHdwSEwvzwyWBQ2DRVBiiRM8S4kLiTS
         xc3X7UdFbieH5ElUegFCOfh93+JTs1Qu0KpSdVPh/AV3fwRFrh/JDNdACEXVof584zjh
         DUGF8TZINFUhSMb7/6raIEZ7be8qrQHS6YmjiuCcFOyrEy5lAJYIebkzRg0QQFRQ2v2v
         cESEdvCCZqwC7bqa1Q6gWTkzadMpgOqZe3oDFWhY+fbulZ268tK81ry1xoDNhuevb/W+
         jTLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762876979; x=1763481779;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=frNRVrrdVNK+JbMZUFHtvNuAL5yElEv288RfrfLW3LY=;
        b=Ti74iIPueWgfSKJ60kDasH3o9tkOdhu/xq+oxnMbDl0jSHVP2FTQSHmNLxgEjrpsGn
         KFMCNUdN/xYwtcOdzL/SH7UNxD05IGssEqm9FF4avTgIkyPwelV/IQxo/cdWYfbIgJ0b
         /fdmsDodjmsgt8yH3izTpH4KBK+/i4mW8yrlWPAfviyt6IycwsogaEV6zu5zyOQUV7Ij
         IlDtry67M8xd0IH8F27b5MWmP4BjfeHEZID1XXkzMnS7XKpdET1AzXluD14MK6R3EgXP
         x0UFGi/cWIeF2mOEeji2p3gTqySNNcd6OPiBj5AqAOyC72n6lPFxxSN3/nLyWRHeFMnG
         4jfw==
X-Forwarded-Encrypted: i=1; AJvYcCXqJA7lhvMWYVIYXzbxS5fjl/N8pBWOPAyYGlr1K0ZXVsGeHJWRSmrp32gSV3iyWcwRn4sKDul54eZK@vger.kernel.org
X-Gm-Message-State: AOJu0YxsVhyr4r8Gtv1vYzd4RI1+h+pCZvVgyFhQiSHQA3IvXL+kMMMv
	jRvLlh1b9lSBSDRHk+jxI+tt4r+MqclXX9UZ8Izlsyp75LsRT6dP3/klegAA4bnlQaCW08c1tyV
	u09weqQreo7k1QhqsMo87CBvlp9+4/tbG2ctjVXF/q2t+QiaQ42DvwfLWvd20ksBx
X-Gm-Gg: ASbGncuO6GFbDCkcEqxmY2AIE1KOrBhFzm4LyIHbuks8Haha1waJvhzSLGxYL/U/IPd
	f23KUUlapzU7hOBBdjJRdVIq0RYbPfKbdQZjgosFRrSHD8wIeba6mjdhayw85tTEMFxba6Px9sZ
	OQAaIYPf6xLjYq7tZ9pO+4wwEI/vKQZYsHIzRbDnsYf2av8Cu8qlBORrfLBi8ko30XNnuHgaLcF
	ZaLrbiBZAmOp/qv/uL46vrZBY5qU6/UmZ2fa3xtWCKc5xnUucBi9oH6eIp/vEEEX8YEzPuymEvZ
	6m540yBx4D2GJrdXohJw1iB48py1t7Jc8guTQz9AMiW+0ljEEsqh+cMxrqnnqNWKbjX+X51k+Rc
	xXIX9+/z8r+hBF6FQv3EBwJpBNBX3GYECCZF0pXHfQuBro8hy18cS5gAqWfzxZ+MrEynVnnDNVh
	JtYqK3F/cJIRGs
X-Received: by 2002:a53:acc1:0:10b0:63f:b6a4:bd24 with SMTP id 956f58d0204a3-640d45e408cmr8722634d50.48.1762876978747;
        Tue, 11 Nov 2025 08:02:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEXG8oYTF9zaBPEkiS6Lif+1qg3bxd/mRPCmMUdvzWQF9+ZjajZJZ02vSUD7WrCqcF5kwTF1A==
X-Received: by 2002:a53:acc1:0:10b0:63f:b6a4:bd24 with SMTP id 956f58d0204a3-640d45e408cmr8722395d50.48.1762876975907;
        Tue, 11 Nov 2025 08:02:55 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5944a1b231fsm5149139e87.74.2025.11.11.08.02.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 08:02:54 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 11 Nov 2025 18:02:51 +0200
Subject: [PATCH 1/2] dt-bindings: arm: qcom: add Dragonboard 820c using
 APQ8096SG SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251111-db820c-pro-v1-1-6eece16c5c23@oss.qualcomm.com>
References: <20251111-db820c-pro-v1-0-6eece16c5c23@oss.qualcomm.com>
In-Reply-To: <20251111-db820c-pro-v1-0-6eece16c5c23@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1017;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=QDcJBn06AH2D+GPGijhIlCFUJpLaCplNzhYWBOhgUL4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpE14sZojYXFO9Y10yKWTKJJK9lvNdZLRc4dxpN
 tJ1WiTNf9CJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaRNeLAAKCRCLPIo+Aiko
 1XZ7B/9yp5F/AwviNVZcOgksxjuv4twbnH+9DAdWPKxQ8Ahkj0T0er7MwBPkoadSKYhNxEByy8e
 oYBk4ZCykIl8y3pZ0+8qU/JOlKmx7fh9tHm0tBu++Kio1IN6jQgZRJPXM9gMbagGHpaSw5wre6M
 fRy1Z9jHBsx92pSyoJypSIYg1Zbky91/MhvnLdOYtU/z/tgK64wXlzMBDQ03VRwNO34ZC0rOFIG
 +CeTmO8y5zN3zn9CU1LN5I54Xh+LkNARgSw3+8OaRKSP2BJPbea/7sjzwwPBD4yzf7iga+NDym0
 dhYWNveZMM6CHKw/Je0UGnO2cu1h8+7Mxy4055J1GzTbWUYT
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: d4aALZtWHpBC90WCfAtQaUETBCacvAvQ
X-Authority-Analysis: v=2.4 cv=DYwaa/tW c=1 sm=1 tr=0 ts=69135e33 cx=c_pps
 a=VEzVgl358Dq0xwHDEbsOzA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=rlZfikSb8RQ8tM_iBAgA:9 a=QEXdDO2ut3YA:10
 a=uujmmnXaIg8lM0-o0HFK:22
X-Proofpoint-ORIG-GUID: d4aALZtWHpBC90WCfAtQaUETBCacvAvQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDEzMCBTYWx0ZWRfX0PQjWlHCYz7u
 oKN5MmJnBW3Vrxo86Ijx1WPGq1eVxNU3J4Ump1bSzhCj8KgOg+Hdq9fz9dlVlqcjZ52dHnpVG3a
 Iv3AcOdW5mWWvHK5I8w5WN5m6czrS71jgWpQKB8qbBDvBp2auu0mlIrq9nVvll4O9j6k/ApKU3m
 XMxdcATjAxMcV3DWNi2RUkBI4dcPfjtHA/MfM3Hnw/Xmx/t41A/eWXN/5bXRsBGlt2O3bKzaj1l
 iz288K/7mPg4HXXhiRpukktE+hsxTgTXURevVskg593sE9QQo04dFfoOAaddVSNynom5LQuGwCT
 W/ShRohYymRviGCWCsktbjwwmoDYivhOEpBe/UjdxNqDRz7PQFr8LijsM1Sm7r24b591MG4dEqb
 VZMMyhHjLCeCzEmaptEvCEjiPmMp3A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_02,2025-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0 suspectscore=0
 priorityscore=1501 impostorscore=0 spamscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511110130

There exists a variant of the DB820c board, using the APQ8096SG
(MSM8996 Pro) SoC. Describe it in the bindings.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d84bd3bca2010508a8225b9549d8c634efa06531..5dc6580fb1987f43fd5e73cf5def835a74c32766 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -238,6 +238,13 @@ properties:
           - const: qcom,apq8096-sbc
           - const: qcom,apq8096
 
+      - items:
+          - const: arrow,apq8096sg-db820c
+          - const: arrow,apq8096-db820c
+          - const: qcom,apq8096-sbc
+          - const: qcom,apq8096sg
+          - const: qcom,apq8096
+
       - items:
           - enum:
               - oneplus,oneplus3

-- 
2.47.3


