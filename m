Return-Path: <devicetree+bounces-206139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D07FB2B9AE
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 08:41:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 153B9625B1F
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 06:38:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B76D30DD0B;
	Tue, 19 Aug 2025 06:37:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FEEiPTOs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91E4A26E16A
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:37:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755585435; cv=none; b=PEs9G/sh416VJsk5fZvNAgLRINQwlMTgF7Rkcjv9yXoYyMWioEZM6KxEtYQd0/w0+/xXTfbVetBEDVLXAnoLVu4uF7GbRmN/QFF/BQNVixaa3mKEriph/ov74aUCtRK7q05ed61FUCuJwpe1A6gqz3fJasQrn1WCykPQAYO1NuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755585435; c=relaxed/simple;
	bh=UVRoIFA7YXNnu/vJQ5olTkDt4U/pPMeeSryOJu9KTBM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p+wIpZNIy89LRZ37RD+WjiNpBJ0BWPnqmavMqDwjea3MNTI1QKmJwUlRx6b6eIaiU/dO0Y/mJVh6ac1dtg/s2/hUZyGD/CNJOzKt36GQlVB71msy/xgunkVmmX93PD6YxgdMJB+UmsAbnkt3cy4fttb8pZkw+VHZ7YHEIXUX3DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FEEiPTOs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57IMhpnE026820
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:37:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NPgiFAJ7QYLG2oWj/sNVs7ofikmUpmx59tiZmMh5Oas=; b=FEEiPTOsUZeFu/qe
	+jNrfAA1WrSJLADQFgBeTqO8iKt92jHLHJ/BiGhzjA0ceEjv4YwOgLKuL807UJLo
	uGIbkBatZVjtcAkZZiGW1cDnpaCVD7jeVGHZF6/P8u/aoj8R9dKd/LitOHQvGx7V
	BsldcVCDya8C+8C9UcDpM2OWD4vUQtXPEeLdSGtNoWOTUhbiFtQ6mKEBuSlus6at
	cDN3wFXdNyWSSZ5EUqqsinu3JeNjHw8tsbXbI7HQc67vKtwu4A5CLFdnN2Dfb2wp
	JVcOIF4Q8SFRbmNiQL2ZMWCbNipI+VTBWdnPVvmd+DFM4BHSM0i+dh7gyPojtET8
	cuxzbA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48kyunupms-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:37:13 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2430c5d4d73so67752615ad.1
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 23:37:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755585432; x=1756190232;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NPgiFAJ7QYLG2oWj/sNVs7ofikmUpmx59tiZmMh5Oas=;
        b=ZUULlUJSMv2TwSdEqfg7a2c4rymqvo0uQYNYnqrNTpF0G/MDRwOqv5ZmYl0m0Y/LfO
         wey8MuyvQ9O8lGPLHxO+X+GiT9az3Nky4YLOsei6+YooYleSoxJqSOj0glGcSBgk3ZCp
         NOdMiuzy7M3XN9GcX6qsKjcMWqH4bnGr7WLny8i/f+gj689nUDf0eieGPPifavYXSObE
         roooSHrJco50VOU6qDqeYjg1cLnCus3WO55HGdmcJ33YpE/8MmuKXAhjti3RPD04iQM7
         OuvVHIWWLAXho0DMIQn/D9jhuPtq5Esz1rIJfC+/79dyNLdjFmGNb9powZSQiqp4cDTf
         SRrA==
X-Forwarded-Encrypted: i=1; AJvYcCUoxMgY27WeosksooaPv1NNE2NjLk88xtw9xkCg19GrSqWxMpPxW7ByxXh8rZZOtF4XVv+KTLboTY3u@vger.kernel.org
X-Gm-Message-State: AOJu0YybQCtPiAVWg/LjcSQxEMRDpuxRQAGddjOg/OIPJIBRRrJ9NrIF
	xCyZgv9LGBhmoAZaTSmNHjAcVrzjkkCD3VvgteIT5xoUpt7q9JXjGkcbjGmI0pp9V4gwqjsANcS
	Je2TAvI59QKnnpckNlGG2JuKlBM1aEZXnN3w1557RbUyIXzxO3weodv/9CLCFenp0
X-Gm-Gg: ASbGncvpxzvz3JRWHVb0cN+5iy+G/KhWACzSvkKKjjaKL2kV9PONbjOJO/WdRq5lKxb
	zGu2TKDTjNkdEs3O8UIKILGxDQTdKJAdco+nR7keSxeS7XSX/aSpcZE9Y0Qpg7fKQZpt8eFbzc4
	/my9ZT7n3sAfgGb+jN7YEf9cgiYgoHM8EXNsbTCGFM+dZSaVZEvnjE8UvCE0lkgiVa57xnf+LXR
	vfjJPEjeMcpydrn/kB5R0NVkCo6svN4joPNWss01c/HJUtvrM3Zo1g+ToiqvvOf8s6GjVXHfvii
	3K7+oVN2PyfubkOZsIBuLTMeuvFyC+k+1INNZqt77sQhHvbIhVt3SrgGa2LeD7hwr/esIuZPVcn
	g1OZkQRyh3HAwiOYYP4seS1B+Nv6ZSzW+uQ==
X-Received: by 2002:a17:902:dacf:b0:23f:75d1:3691 with SMTP id d9443c01a7336-245e0ebd338mr17897215ad.15.1755585432118;
        Mon, 18 Aug 2025 23:37:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGs5sSOdxz4RmFjmlJHx9g8dTbVBE1WGeTusAu1XpGUGqae1RKUVGWzRGqVqz2wkAnydBOXQw==
X-Received: by 2002:a17:902:dacf:b0:23f:75d1:3691 with SMTP id d9443c01a7336-245e0ebd338mr17896935ad.15.1755585431668;
        Mon, 18 Aug 2025 23:37:11 -0700 (PDT)
Received: from yijiyang-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446d54fe38sm98120455ad.135.2025.08.18.23.37.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 23:37:11 -0700 (PDT)
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 14:36:01 +0800
Subject: [PATCH v4 6/6] arm64: dts: qcom: sa8155p-adp: Inverse phy-mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250819-qcs615_eth-v4-6-5050ed3402cb@oss.qualcomm.com>
References: <20250819-qcs615_eth-v4-0-5050ed3402cb@oss.qualcomm.com>
In-Reply-To: <20250819-qcs615_eth-v4-0-5050ed3402cb@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, stable+noautosel@kernel.org,
        Yijie Yang <yijie.yang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-5bbf5
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755585389; l=949;
 i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id;
 bh=UVRoIFA7YXNnu/vJQ5olTkDt4U/pPMeeSryOJu9KTBM=;
 b=tsf+6WvUJKGOAH+FBQ4hmhftcJq+MxJgP5hpWHWfw7nVpRZpaoDF3ljPE8azKnO8ViTgXsSGS
 YPtA30xLy2ODO3YSOHN1nrjjEXlEbtXd3G+JBkkD4/mZWXfZrbYVwV0
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Proofpoint-GUID: Ts1tb7oePoFs5CBozdiXBLO1sQxS-AwB
X-Authority-Analysis: v=2.4 cv=N6UpF39B c=1 sm=1 tr=0 ts=68a41b99 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=78Yoz-F5aJHhz6vTWxYA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE4MDA3MSBTYWx0ZWRfX/fOZ+M+yViH9
 Gz5EumAADlWqJi97W/CJmRAyFV8IH22QNCui9UucJ8N/614JZ8blEYgPtynDMSbsPK5/0zzrp9Q
 FiAWI+jYRg67vuPPDDbhW33YHDRRoUTaQdPiW8CjSm2wD3t9nPZy/bNND2HtvcPWVTygwVY/faB
 UenBSvhU+eqjgVa4v5rVloHimTBaSmb5Mm/ktLZx+kP3pMnfZTPHEoShHHJziCjqRawUdfr4hzH
 YLH24fuFw6q9IZr7hse+3kvq+dglz3jc73BmyFLKJkipt3lLBosf5p0Fs0Wbc3OJbnFUY5wnEVy
 zKBkkMIaxo7GboYj4Hn+GQGlwoAdhTS+tefpLdPUkwTS+FLffPifWlr/l6leXuGl3mEpSaSfdz9
 e87mFPOG
X-Proofpoint-ORIG-GUID: Ts1tb7oePoFs5CBozdiXBLO1sQxS-AwB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 clxscore=1015 malwarescore=0 impostorscore=0
 suspectscore=0 phishscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508180071

This board expects the MAC to add the delay. Set `phy-mode = "rgmii-id"`
in DTS to match upstream definition and work correctly with the updated
driver, which switches the semantic handling of 'rgmii' and 'rgmii-id'.

Breaking ABI compatibility is acceptable for this board, as it has no
known users or interest from any users.

Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sa8155p-adp.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8155p-adp.dts b/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
index 388d5ecee949..4ac1a5b09e30 100644
--- a/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
+++ b/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
@@ -325,7 +325,7 @@ &ethernet {
 	pinctrl-0 = <&ethernet_defaults>;
 
 	phy-handle = <&rgmii_phy>;
-	phy-mode = "rgmii";
+	phy-mode = "rgmii-id";
 
 	mdio {
 		compatible = "snps,dwmac-mdio";

-- 
2.34.1


