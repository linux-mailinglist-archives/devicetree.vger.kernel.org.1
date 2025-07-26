Return-Path: <devicetree+bounces-199858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF4FB128AF
	for <lists+devicetree@lfdr.de>; Sat, 26 Jul 2025 05:31:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2AC5D1C27697
	for <lists+devicetree@lfdr.de>; Sat, 26 Jul 2025 03:32:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E84E1EBA19;
	Sat, 26 Jul 2025 03:31:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BMT5JU7+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D661F1C84D0
	for <devicetree@vger.kernel.org>; Sat, 26 Jul 2025 03:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753500709; cv=none; b=a6N6mG2GbWSeLc28u92eaNubkcZAQqiVs28KRnO0vKqxWD6JgOdfTld4v2c1TjLxTUmUXXzec2Q2eU+r2VWvlYRiomHm/0pKxs4VOBBqYx/eiRmSuMQpLrer/+ctOep15pmjZJ0JfW2o4CUnUFrXLPKvwAzeJT8Z+WAbtrqVyvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753500709; c=relaxed/simple;
	bh=zsNDOxtssyyXKwrA/Xqhu6xlTQfQcZiumpCvpHLeiVE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=F1164r90nYG3UH2w8g8gchfWli+P4o1IHJFB349qvfWpFEU4BvdrOorAS9I2BXxRXBP9dcpu/6GbZb/4Wx5C8MVZ3nGL2GI0EYrheE4XcuEqaAbcMmPQ0KERLpS495p85HDsPQ1JGFJTHSdHjh5iHZNMqDmgmZQohfaiffYuwOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BMT5JU7+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56PL145l000696
	for <devicetree@vger.kernel.org>; Sat, 26 Jul 2025 03:31:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	K9lCHtaEWJJtL5rVllaD+CR/7jxFq0pVmlc9VCIqSOw=; b=BMT5JU7+OJ4IgIUi
	pGNHw37UW/K+S49N8BWEYXqhg2GzY1OJNPosJoSftnbPEjDHh9lecNTiKyXac3Ho
	W3FxD0/W8KJPCMAywtpzPWlvLiQJoL2veTbTmaZgQQBdPenF+S7KjjLRoHdBE9Dq
	D2W4vZpY2PgiXdnMRto5YhJfAVMzSw+Cjdm/2kdq4nUMwtZsSOb+C1wcWAGNwX6V
	w9sfN43jRwQ2EsVnt7Mln4OEa+HAi+/pYgoXbPrsF0gKvF7Rj96S2N1JU0WzdW7/
	+3GkeWaVSq/HhwWFYQpkM4dorkKPH+ny/mYOQ38OkwflLhfWuaAwp+DpGxB9uuV5
	zawS3Q==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4848972a9g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 26 Jul 2025 03:31:46 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-74b185fba41so2560970b3a.1
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 20:31:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753500705; x=1754105505;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K9lCHtaEWJJtL5rVllaD+CR/7jxFq0pVmlc9VCIqSOw=;
        b=k3D3bvHsGS9AR0pXz8kMdynvezhgqLU2h4e4MIuJ6xIHTnxNE8bA+/FDTc6Gez1g8J
         HQCkRAg9xIP0g0+lZOl8Xj/9moTT8pqwy68bT1P2RmrnJi9MgdhOY7ALeVE2cvOaW7KO
         csJ9e7bcjx0g23z1+L3Mkj6wO5ZYR2PE94j49VGW0zhflaUJMNBFIqI+cEy4CnVE+dfF
         MHIHnIOGRWKBspO4ArwmZHUTdjJVt0cObmlIkFo0RDzJhq9z80F2i5vzmnTf6DdvyFUh
         /iTW2SPtDhx9k9M68Hak05kr//j5aadX5U98jteyu8NTTrb4GHcqHZtV8e7pbeOoROq4
         Fg/g==
X-Forwarded-Encrypted: i=1; AJvYcCX/BLlHUSPtpaOLGQuwD9JcROvwkD0DsAZ17LSC51BxCkzxvutz/CtvjaGGCVaTzWc7k3i44BKEuAst@vger.kernel.org
X-Gm-Message-State: AOJu0YzUqsI/BdD4t/6dWJFHf53pZuaLQbYdw+5WV7qxdaSE6+A86RWU
	sgfXfmPliFlVZEeNGLu8HPuVC8e7C/wkcuUsz9+Thy9IwgJiwnr/NQwziv/gPKMwrkDqFbBcvTz
	IQmgA45s1L3BlFEKrYqzg40/+dqW86kUSehH7Lc7k0dbAKn97LGmgI+mT2DLQTbcI
X-Gm-Gg: ASbGncvZ36TdDabciEh5U0QfDv7V9xZokc5v2BjL0YZVzQ5+uB5bDcZmgldmpiy9eIp
	nweBkUwIGTbVydsELNs0+catFiF7hW63KJ/NoCYUmfrNk4wV9sEe8YRHIadStn1FZpqNnJ1V0sZ
	YY49nXUbea4Ao2Nu0bmwFTtHkzQjmAyVGpX92a8hz387ais5INg3e2ZybX9yOshv7uBIxhw6qmp
	pIjQN59fVdYmDfi+wiOVJdwJVpVUtcO+14N2yzLqLRJUdtRzKMhyWcEkWBdulK4WrQ8SPmQ22IR
	pVfvnpnJVjCwhmksjyltQ1EbsaZr21fuMPzBMmh2O1JLflqKLcsd6qYeT2UhQXUZoBU40WCddCF
	V8uvo36/rWQGBAfd6n4WIcbVmAe0FkDoFIA==
X-Received: by 2002:a05:6a00:2181:b0:742:a77b:8c3 with SMTP id d2e1a72fcca58-7633626dbe3mr7112519b3a.4.1753500705307;
        Fri, 25 Jul 2025 20:31:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF9CpBOldzsPc7XQYxn6ooEk4Cyi0eUr7vpgo9SewKKFuiWYpZZUrxBuSeqFIqOwowSg6JdsA==
X-Received: by 2002:a05:6a00:2181:b0:742:a77b:8c3 with SMTP id d2e1a72fcca58-7633626dbe3mr7112483b3a.4.1753500704872;
        Fri, 25 Jul 2025 20:31:44 -0700 (PDT)
Received: from yuzha-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7640881f5a1sm724917b3a.23.2025.07.25.20.31.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jul 2025 20:31:44 -0700 (PDT)
From: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>
Date: Sat, 26 Jul 2025 11:31:30 +0800
Subject: [PATCH v6 1/2] arm64: dts: qcom: qcs615: add a PCIe port for WLAN
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250726-615-v6-1-42b8150bcdd6@oss.qualcomm.com>
References: <20250726-615-v6-0-42b8150bcdd6@oss.qualcomm.com>
In-Reply-To: <20250726-615-v6-0-42b8150bcdd6@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        "Yu Zhang (Yuriy)" <yu.zhang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753500699; l=943;
 i=yu.zhang@oss.qualcomm.com; s=20250625; h=from:subject:message-id;
 bh=zsNDOxtssyyXKwrA/Xqhu6xlTQfQcZiumpCvpHLeiVE=;
 b=gicAAL41NCEWm9ldVtMZGmp4iQo2zQ32Hf7OM5brjjSE878jH5mKlp/cz/SxraZ/wEwE+Sldc
 UM+bKlJXp2YD3leJw8p0WFGkmPHUACeUEZCT8TD/K7UqeYkKUqUrA8r
X-Developer-Key: i=yu.zhang@oss.qualcomm.com; a=ed25519;
 pk=ZS+pKT1eEx1+Yb0k2iKe8mk1Rk+MUki89iurrz9iucA=
X-Proofpoint-GUID: Pw6ONApzEsFlNTcxvlNRfWTzh9QVNN_4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI2MDAyNSBTYWx0ZWRfXyFBZ0t8IinjX
 bKPjrOcyhY0KTWo4UOh/Xb7FQ+tg7zRGa9Uw8eJVAuuTRH9HwKjNSxZ55x4rVmj9eDQ5Z5x0k88
 EsqtMn+83qvqmehdi6YrhgnP74d8R56b6HqFi0tLd6FUG1x8P6Z3fhbTcUoNQXYB5oFnYfqh303
 Yvw1IFLThofvYOe6ywN3BLbAvKf0CE9svA46gdGEYETnfMC9PWWTKoY3Fsw10+68C4U6Bb9vrI8
 +EqY9m+1eyNa6o+fV424BE9Ce9FpEh6NID5ETqgcNH1l4Cy/sAQn3/AB25gscF+b0y3J9yzXMQY
 GVcdZGnsW/vC4YYNNXYkMQNVKULf6ToPiBh5agfhZ+TXboeg74qj7NPgV/ZKP2EBc/53fB350nz
 8JnJSicJ8EW8o8ZbQSV+gyyF2R1wK2gHa7M6SGwBSfGUOkO8wyD9cFqQnQqTyis0jXKkuF96
X-Authority-Analysis: v=2.4 cv=VJjdn8PX c=1 sm=1 tr=0 ts=68844c22 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=dI-8CA4c5Xf8_vBnWYsA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: Pw6ONApzEsFlNTcxvlNRfWTzh9QVNN_4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_07,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 malwarescore=0 adultscore=0 mlxscore=0
 bulkscore=0 phishscore=0 mlxlogscore=966 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507260025

Add an original PCIe port for WLAN. This port will be referenced and
supplemented by specific WLAN devices.

Signed-off-by: Yu Zhang (Yuriy) <yu.zhang@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
index f4b51cca17de5518aad4332330340a59edfdc7ec..b4fbed517cde18e088096d182fe6b482363e403d 100644
--- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
@@ -1173,6 +1173,15 @@ opp-5000000 {
 					opp-peak-kBps = <500000 1>;
 				};
 			};
+
+			pcie_port0: pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+				bus-range = <0x01 0xff>;
+			};
 		};
 
 		pcie_phy: phy@1c0e000 {

-- 
2.34.1


