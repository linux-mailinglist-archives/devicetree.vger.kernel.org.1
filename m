Return-Path: <devicetree+bounces-234213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43284C2A3EB
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 08:06:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D6CE83B1DD2
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 07:06:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08DE58BEC;
	Mon,  3 Nov 2025 07:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Uv2Ls9ny";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="g6DNrLqp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D5B43F9FB
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 07:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762153604; cv=none; b=e4ilnpHZqDGBma/JaVKFnn5xv57rfR+EsW/4D4MLXTLAEmwh6fBd9WwkST5FgVeGq/sPZb/aPhZXKX+QJ3enxtvcQl/nSV33Z4lkV/XfHbDDjEdCmXdnYXhtvlajy3jin9qEgLokE0WCMaj+KUECpgl9eZyZ+dFLrBjNOduJTGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762153604; c=relaxed/simple;
	bh=LaR5CqlC3lOYGvIvKw838CTalqvZf9jUjp1gvGGX5pc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=k/8zLOFoJuj4snklzqVRc7M23zB6r3GyXtDZptHV9xQeOrxtsyGwk9HgOuyp8us+WUAyRYhHjnMIERsf6l52dOijICBHVbBIEwQazgCn2cAcWQtWGeOVQbwbvxz+br4UJBRxs4/SxLjvjIUMoOmPl82n5oyn9ApYzPqx68Sb96o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Uv2Ls9ny; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=g6DNrLqp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A33DVU31941283
	for <devicetree@vger.kernel.org>; Mon, 3 Nov 2025 07:06:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=cTG5g8K6wUVwsjXMYPNMz2
	lhhLN1ACp3pW1oZUwEcxg=; b=Uv2Ls9nyhxWU6z/GlrUhNkT3KsYGtZVebJ3ClM
	Y3WOy/wlr5iJNk1FAOdafh9uaDRGcz1I6ZkxCcw7Ft8IELxymY5lkIICdFzlSZn9
	bdgFNBrLj8rHIENQwDaTuwUMEAwa3l3sOQ6CjFSBjwOdMw8tro6K/Op7ZDla1fIl
	SJEOXBSrCvfScJ1eDVFAuF4v76mhjiyHjKa5AOxnFvb/gnB0kDSDoEfzWqFckVK/
	gWAzVs+1bu9rk8PcvMxiJJ93nAT33rqsfK9iIb8a3fFFxHkTQJUmHKecBok2Xt7P
	3RnRk7OuyUL7VAHVvK1r/oJ8lzPBgdFwCy+dVOjeHGyjSajw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a6m9w8g1r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 07:06:41 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7a440d38452so7480415b3a.0
        for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 23:06:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762153601; x=1762758401; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cTG5g8K6wUVwsjXMYPNMz2lhhLN1ACp3pW1oZUwEcxg=;
        b=g6DNrLqpwSe3KCR8y0WbDy3IuQ8zaYuE0zUE/wXROklxAcizvVrU8JcV/rhmvk8R6U
         mLyhu02STduJiLNxMfOwpGt4S8rTeT2riH+ZOeehRy0QovGROmC3yG07M+H05/UeC1lP
         5zx0Jn6i5qe61o+QW6sPLO7iwpD6xlZwi627nQ07e+E3Q/5LWNod70wEwDWgBhRDFfPU
         VECDMTTgt73dkXvVeDMZf4A54MQ/1ysm48EaAhIRLUaxi8D0BKLYZrt/hP+2MWkkwX06
         9LIN8nUBKFQtL+LSFLvyovqFMTzhMXJI2cR10I1wcjHUT6VvSeb1aLBjm8UVTSPhZWL2
         cBBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762153601; x=1762758401;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cTG5g8K6wUVwsjXMYPNMz2lhhLN1ACp3pW1oZUwEcxg=;
        b=MtC148doydvGvnIDdfmgiYzzuJI/g1ONp5o8/Bf8O7tikg9+D2vj+2JFje2XhJKQ7O
         ectijPfwRP8EWIrWI1UP4igQk9Tm+ObwjoTg2tH/4IfOzuHqBhKk/2EhQu0bQ2xjy1Wi
         GyP8P5FnHbwfOcK3QJhOol48AIthsfzwihVzSWhsAJpdfSfCew0O7fvHwRMtJHF9gYu8
         4WNDWhRHZ2r9Y85xyENkxlxbyOxlpskAPJb+CA6S2PfBWftqt1SW+1OyaVl8MG66RHhk
         /ueXM1tfm1tvbyA5KUTs0E9VqW7CEi7nKyKy6d5lQpInvzmF+4UW8zzhsDB1ivR7zwZ1
         cA5A==
X-Forwarded-Encrypted: i=1; AJvYcCXRmml+HGt4kpobFFt6rq6BNDg8ov7BLhpThdRi42IawaFTEWhrwcHkpR6zQLAmGZZHw3ODkznwevC6@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+WROnie0LoHypYUtKl2a5AoHYWIBKjiRQkvOi/8MU6d/9435p
	CED0TcAgQeSAcKLLyHtPsPvLwtFS42E/wLESCkSOk4crXzGB4S/ISq9km/K5U8H6Rx+FC6SmLik
	KdcCXwIx0GFDbNlrGMM3muSPXdk3N4qTs8MEDxFWigr5TPgnzcjLO40bOLZV80RTe
X-Gm-Gg: ASbGncshcFeoD8d9R/Ius5j/8ZgYBuOZTYUW35y/3iA1EyeT6rjoJJrNP4oLYKFnUZQ
	4cqxTCOvzRpXMfs83aAlY3C8HkJUKozChiSVe+dQIPva07Gpnnc5a1zcAYidDV2EZvurnv3yOyF
	nxckVryyDmoFp4d9QaiczMzBCAP2w0i/8dmQBJWmFDIvKNJ1r9QE6Gh7a8sNlGGas7k3bXf3fYL
	MDoJRbdC0MtiXw3O/IzGUcOeyb6io+GDuJ0ZQmjXACM0yrlABXu8RNctEOuwFczb6OLev1nxO+R
	h2tqOXG79IQNRGIbKmnxp4e1uPqJ1K2W4SzvdxxqaxGXo/42n+XPNabr1dccNKxmpVyBHJE5Y6o
	t7Rnx8kIkdkno11pujtkM6z/Lq8hxy17OqjtmtpxjeLWlIXDF7QsMI84t9+cyUw==
X-Received: by 2002:a05:6a20:3ca1:b0:342:2eac:e3b1 with SMTP id adf61e73a8af0-348cc2c20d0mr16084809637.37.1762153600872;
        Sun, 02 Nov 2025 23:06:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGjEm8lqtkG2q4G0Ni2a7Y7LUOSuotO8EL6yRaGZqo/W0bt0M+1oMEGawu+3pmRdxZaEDDH2w==
X-Received: by 2002:a05:6a20:3ca1:b0:342:2eac:e3b1 with SMTP id adf61e73a8af0-348cc2c20d0mr16084778637.37.1762153600367;
        Sun, 02 Nov 2025 23:06:40 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3407ef49da8sm5808704a91.1.2025.11.02.23.06.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 23:06:40 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Subject: [PATCH v4 0/2] Enable CTCU device for QCS8300
Date: Mon, 03 Nov 2025 15:06:20 +0800
Message-Id: <20251103-enable-ctcu-for-monaco-v4-0-92ff83201584@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAG1UCGkC/x3MQQqAIBBA0avErBsYrTZdJVqYjjVQGloRRHdPW
 r7F/w9kTsIZ+uqBxJdkiaGgrSuwiwkzo7hi0KQ7pahBDmZaGe1hT/Qx4RaDsRHJTbrTznlSBCX
 eE3u5//Ewvu8HPq3lCmgAAAA=
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762153594; l=1406;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=LaR5CqlC3lOYGvIvKw838CTalqvZf9jUjp1gvGGX5pc=;
 b=MAJFx8KVKRCpcya3Yw6ZKtPYj4JG9Eq8pAB+dHmgWanznfrZpoVNhR7AFJ41MHFtDHngIr0+B
 DHYzqJD7OjAArIOBGlx6OnLc1VKhs0OQHEMtP/SJqddI+UB+JFj0Nio
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Authority-Analysis: v=2.4 cv=P7Q3RyAu c=1 sm=1 tr=0 ts=69085482 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=OTUKU0M5Age6NIqwexsA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: XPZdmLGHf5SJEtNcGp-cRI690Ifa4lS2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDA2NSBTYWx0ZWRfX0VPkR3M5xU3S
 1Y7OlCpB1dnFklJxhGKH7KFXBMfHEsPPYidih1FJyAF5J/8lKYxbdAwh6HSqGWKeAVKVZAD1fAP
 6KQKfe/Xu75bi6/P0icNny0Gb8YExRf385oJywlsAjyaCr3qFT2L5q+q0zB0j75Gbiwl1P4ZDj+
 X43GpRYKWMia8npxNvjZIlbg7zLw6nvEQrPiB3hz11sYhBojqoi9hLTfgl5NB2JpJqurIaJdiu2
 ESWeWT1pe3O7TyU14dgD2iQQy1iiF/OpbzMOn5fgnlFbid4KCEP1yVrjfWJswVtpkXpk6KUzZdX
 eMOnwLWzD2A0PAW09/8ohwhu4m2l/wehyOS/K4jrWAgRHXaA66k84mlDXBPgNmmySzQf3HSVEx1
 h0vzEOUupxmzZcCt/S70LAS1kvCYSQ==
X-Proofpoint-ORIG-GUID: XPZdmLGHf5SJEtNcGp-cRI690Ifa4lS2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-02_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0
 clxscore=1015 suspectscore=0 adultscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511030065

Enable CTCU device for QCS8300 platform. Add a fallback mechnasim in binding to utilize
the compitable of the SA8775p platform becuase the CTCU for QCS8300 shares same
configurations as SA8775p platform.

Changes in V4:
1. dtsi file has been renamed from qcs8300.dtsi -> monaco.dtsi
Link to V3 - https://lore.kernel.org/all/20251013-enable-ctcu-for-qcs8300-v3-0-611e6e0d3085@oss.qualcomm.com/

Changes in V3:
1. rebased on tag next-20251010
Link to V2 - https://lore.kernel.org/all/20250624095905.7609-1-jie.gan@oss.qualcomm.com/

Changes in V2:
1. Add Krzysztof's R-B tag for dt-binding patch.
2. Add Konrad's Acked-by tag for dt patch.
3. Rebased on tag next-20250623.
4. Missed email addresses for coresight's maintainers in V1, loop them.
Link to V1 - https://lore.kernel.org/all/20250327024943.3502313-1-jie.gan@oss.qualcomm.com/

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
Jie Gan (2):
      dt-bindings: arm: add CTCU device for monaco
      arm64: dts: qcom: monaco: Add CTCU and ETR nodes

 .../bindings/arm/qcom,coresight-ctcu.yaml          |   9 +-
 arch/arm64/boot/dts/qcom/monaco.dtsi               | 153 +++++++++++++++++++++
 2 files changed, 160 insertions(+), 2 deletions(-)
---
base-commit: 9823120909776bbca58a3c55ef1f27d49283c1f3
change-id: 20251103-enable-ctcu-for-monaco-0db252ddf010

Best regards,
-- 
Jie Gan <jie.gan@oss.qualcomm.com>


