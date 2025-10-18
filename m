Return-Path: <devicetree+bounces-228336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DED3BEC3AA
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 03:34:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2C6804E3725
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 01:34:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14DD31F37D4;
	Sat, 18 Oct 2025 01:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ISBtsi1r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77C2C1E9906
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 01:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760751230; cv=none; b=aDysFlqsHXKXOkzAF8dknz4Fzb8oWjgNR3vvaf97vNxz6tq6vvtN9erEwSTEgrKB3vDb3nIy86jY17kRz5SNjP+8KmWZ1ak/znhwcm0JVAEuSZ9hmB/7QqHe7wYEdtTR1IuAm4lWm8RayGvxzkaJ0x0n5jY6b2+9JQxxHnJz+Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760751230; c=relaxed/simple;
	bh=I0wlRKT1XyxrqdOXDDuPSFf6E6TDNjkNPLI2YKlf8Cs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lk9KOf6kJVDe35a+h7ketVdbQpFy5LmnPdhZF1+bCkYu4Ktz6LvjO0XHJ1zfuOzzRBaQdSKzZLCQc3VJ90VIP7xfBWvc0EeHyxsYQOijs84WMHjfKDaJelSfXzjkSfEBbuBqsm4pV+rrMKa9iMlGg8pIVStin669wvLnGBEGRo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ISBtsi1r; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59HJHV7G017210
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 01:33:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JKHfuVsy+oceJ8iDUBL9LmTN7OlbK4Cqz9zKDF8RHcY=; b=ISBtsi1raIQvBuPy
	a/0azRHlBDi8E3xun+fkzWu0lQkHAF+Dxv4STbBlVGm1cWpqWVlYJMm+AaqJM8FE
	4Tpj+PL2SVmtcv841bwWH2tgtdjo32kZHzFW4UOQaVgO2v5YR6GLHKTECzjyaqzP
	qbEi1GUgYIdLT3PfSnStvnq1rVxKACL1wfogW0cmlRl52ECie7Ud8wVZ+kIzhhd6
	pRwOaz88B2IdF0i9Z4Hrpz8GimQB6BLl9T/P0cMMJMvAeIF3z1WTs8J8VwqKhZZC
	tzrivNzF/Ih/brckHDDcKgTNSy0Rvn7btZj/GLDFlG7RdWNIb3CU0/Ii7jbrlK7f
	WDkkQw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49sua8vwy0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 01:33:47 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32eb18b5659so2141117a91.2
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 18:33:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760751226; x=1761356026;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JKHfuVsy+oceJ8iDUBL9LmTN7OlbK4Cqz9zKDF8RHcY=;
        b=UkMB332J9AuH5danCxyttU3bpzqSxYu3LWywYqX4EXf13Z1ADHYs2SMKbaG+82kE2x
         NBRFWeszpgH09IAOCuGh/styTLj0/7SoBLv8viGpvWmyMn6B+9T6asXlw+6GyjmnHN9i
         X9c39qxzxnV3MwquIiYQOoVPP+eXdd349AmmQLOtx2kDCUDzuVdmFkw/uoqrlpeH6HP/
         rrcdDYr7ktA5CIzQYzQBvgruvKSHQ8eK+hu4M4XeiiMQYuwiysJDGo9tXCdmxXN5cLeh
         iNHc6McZ4zgtVmPPvQgFFAn0Vhk4qVLMxT5NS0t6dl6/2BajKRZibbBi/6jS4BsWqmR+
         Ziyg==
X-Forwarded-Encrypted: i=1; AJvYcCWXT+YW3/J52v34q0ePKN3FiNUo0HTURcjAzqGg6mkdz1POQm7qG1iyQBlqT3GerchnlXXyCBjO9ly8@vger.kernel.org
X-Gm-Message-State: AOJu0YzVCPulK1s8Qa6IsCSXQhLOYVNupz6UQDQ95albMGppSPif1iyg
	ClY7zAUJphm7TGCjWNB0/svxUce2GgZaBTMZlxRXKgoEHiR2bywz0rv5PVk4euqI80029RKBKX2
	zuoUVNtowte/r8wjEv1FyJPQURC7Ic9fRj3rEBd+LSJdcAydr3qz81n1DzBTpCbpJ
X-Gm-Gg: ASbGncs8+sCvfU6xdQUgA0onNDmWmoLQalfnrB9my8HtDvVVV7+dqdzLIgLIdYh0phd
	UVj6hOJgPIGCfpb2fIB0xM8wITuuLuonjNxNqdb1jV0Av1kNRus3+NsEcv32I9iN3GkiIFE0lKk
	3xTv27BC2gFVg5XN4Vg8QIWu8r1hwNtZbsTO/vVf7xyCjyOZMlfvmPmKGYlBRy2/j8decHmxNb3
	JTzc7HdiLyIU/jWaCs6dfJxx9m9ntqbAHTX1F6reHbBxmEUxteolv4iH/JDzyLcbJPjCyKjFaAf
	b04mleK+M056bDMaaYqTIv/tOBwkM0iIBRmhRBWiWceOCcrbr9XgPA7xJOmYdP8XtfaDC4ZW9ng
	+9L0rpvXxbvzobO7mDxoNiisw3S4taQTkWe9MJ5JQPM7Gsw==
X-Received: by 2002:a17:90b:4c48:b0:32e:d9db:7a86 with SMTP id 98e67ed59e1d1-33bcf85313bmr7318080a91.7.1760751225991;
        Fri, 17 Oct 2025 18:33:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGCLJHcffGnBNSb1uIKAURYiSRJBdo8k5B6+vXHyLSCH9P8q78ibRunDV+Bq0HRBxM8f0QGsA==
X-Received: by 2002:a17:90b:4c48:b0:32e:d9db:7a86 with SMTP id 98e67ed59e1d1-33bcf85313bmr7318051a91.7.1760751225561;
        Fri, 17 Oct 2025 18:33:45 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33d5ddf16bcsm791695a91.4.2025.10.17.18.33.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 18:33:45 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Fri, 17 Oct 2025 18:33:39 -0700
Subject: [PATCH v5 2/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the Glymur QMP PCIe Gen4 2-lane PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251017-glymur_pcie-v5-2-82d0c4bd402b@oss.qualcomm.com>
References: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
In-Reply-To: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Qiang Yu <quic_qianyu@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760751221; l=1530;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=lvTnRsMiPSJ5k4uuUJ+DwrEJUHYQxAxGH4V/2h81Rsc=;
 b=58rn2PyPvlKLrWvBfarUKaCmgk8vu5L7E3vZhvNxLJ3/SZ1oHBgGJTx8qTgeCYyNgvFK+RKyZ
 f3tBW0+bzbBCzqZL2jqGRhhwuoFHKBtUmf9KBWvv2jIb/NCfvcdJi7B
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-GUID: v0nS5lHvdnStIkiA7QBLhHBnvQPZMFT-
X-Authority-Analysis: v=2.4 cv=e5MLiKp/ c=1 sm=1 tr=0 ts=68f2ee7b cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=G_jr2P4fny8E_LuvC7MA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE0MDEzNCBTYWx0ZWRfX3b2xIkjls01z
 g/C2fWjpIpSIe3BWj7/sQGkIcrJR4ljT/LwYad/AK/uuQ5hrMmfYSiHRefyJhrvfaQXwq4ESMpp
 W19w4M3nfyu9oXC/mIWArgOHA6DpMN9To+HxZ9iGokYewU/T+qLnu3M3kEmVS8Z1UfS9Ri51ZLt
 IbRULdUtqLI62cOOhaY21Rvmsp4Q0TpV3HTocChw4NwRS+MWO6B1O5fOwdYTCXZVEj5vMD4zcqL
 Nr5JdJv2vZ/1VIl4N9kERUPvqE+ezKIUcEX0vAQGWvBTit13b3yLJHz75DsDHrCBTpG7t0CeKGg
 1OCm9pDqraGShC5PUnLzel6yVJeycO2qmEziT2a9uaQsbNjzWff6EImJf2TK7+xr0ZeGBMDiC6I
 SscpZD26llRQy+MT+sQ5l0IV3fj/vg==
X-Proofpoint-ORIG-GUID: v0nS5lHvdnStIkiA7QBLhHBnvQPZMFT-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-18_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510140134

From: Qiang Yu <quic_qianyu@quicinc.com>

The 4th and 6th PCIe instances on Glymur have Gen4 2-lane PHY. Document it
as a separate compatible.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 3adeca46d9aadce103fba8e037582f29ff481357..b0d1efb84fcf5abc3fcd9146f89c903a4ec84dba 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-gen4x2-pcie-phy
       - qcom,glymur-qmp-gen5x4-pcie-phy
       - qcom,qcs615-qmp-gen3x1-pcie-phy
       - qcom,qcs8300-qmp-gen4x2-pcie-phy
@@ -179,6 +180,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
@@ -215,6 +217,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy

-- 
2.34.1


