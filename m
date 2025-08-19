Return-Path: <devicetree+bounces-206135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB56B2B9A1
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 08:39:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B55CB3B3BC1
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 06:37:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD7A126E70B;
	Tue, 19 Aug 2025 06:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SxriH++/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482E42698A2
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:36:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755585410; cv=none; b=i8Ugd2ZzuFmvKYhnRZTPXXgs59Q/VyWuq+sL/vTNOLy/wPr7hIeCNrSqqnm163olkxeHy8QwqCu/Irl9JUKxG2UDq8SH8gISaMUUbQiZwqsZVrf/c91RaIAg7pSgwLaAcmF3TbG8oHKdyMdlKfd9hlfVdEFPAv26OF/lGWvEGiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755585410; c=relaxed/simple;
	bh=ag43pockrDVtSatmI1WnRHpBp2uI2rmdqCD6gVEQcbQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cWEe3aVukXB7ZyokzM3Hn1fJwsFSI+ROnbPFqH0OlusQZ7H0hk4wK2H9MOc0Yp1XoeyQ3szZlZ8vAlLuJyKLlPWP2L7TT3OVb473nb01eZ2lNBmpyav26fCILwSO7qnIqGtTuVmzsLWabUjqZ5X6OenI1hBnsZXg2CVWMtaMbTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SxriH++/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J12l4p004083
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:36:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ld9b/944CjtaKJ4f0GVdMrbvW/5r/vcAN6uf8GN4R0w=; b=SxriH++/O4uXEARY
	InmyMzGsG3soLrLTTxi5nUolDv1QgOL05Falu8ascfpYMwGcrIXNhIN09FazkZW+
	RAZeUFb4rW/0Dvd/u1OWZMjT6a27OcdqsSye2NS3ZKNbxyfRWV3lj7nJBM5U+v5k
	GoZmRDOaFJgLsK5f52TBQEx5oY7gjtlJE4ytHq2kGqpWLamu9p4NMDWnRXZpyRK1
	Ds02flI5hTrxzGLBqi0z+1rhaI+9oFSOZxJ6MKj/FYJWIWidAr7Tu6CfAM/YUTEE
	ucwY0N5MAxumQ+BCjPKeZg1WvOmCGu+u60PSXSdVqXO10KaRF+M891uqucQEqIAQ
	q9Ys4w==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jk99qdgq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:36:48 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2445806eab4so51926845ad.1
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 23:36:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755585408; x=1756190208;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ld9b/944CjtaKJ4f0GVdMrbvW/5r/vcAN6uf8GN4R0w=;
        b=l8FqruSbyqUaSTf524JC18jBKCiDz7o9AH1vBoHHMWDWYNi0uP+3xt22B3INE/8Ksn
         hqhCIAbHUnFyhsRaDVxKgu/+5EIIXOe8Sbz6gBBAqVhD1EtB8iU8SWVyX3ssgpCd+/iW
         1h3VSDq983pZjqnqcqKcJkKam5ll1fz7hJgnJpvQ8gPVrD05uFquG5fYOhFmLHbtVwT/
         JRRUwidP28MgcQDlS5UkUwkixKLUyAvD4r0lJCqCVUsA4V7YtiehKHF9n8icLD869EvV
         zRLLAfuunXhKKyEpxGxtA3eRnjN/cC65o5EI2fxCCY0ZEMpnEnqHnuI+6bGXxf1Z2dZO
         WQbA==
X-Forwarded-Encrypted: i=1; AJvYcCWLIcvy+CYC34rOrbmeNFMMTwwcxerRftTC/9/OIdJMWfF5JX4Yq3Bk92NI9RGyAHZjLWbeDbK5Q/I+@vger.kernel.org
X-Gm-Message-State: AOJu0YxV6O3+44P4wQIL2626GEQYH7nAYIrOgnrHMHfwVoKg1HI3K1uv
	NmzqEt6uvnE+27yAtPlf5q+f1fR8XsGonHlV67o9UBURkblbetISIidXC7RmvISZhn+K3ixR9uk
	tveOx+yx32dStGAd8ieTd/evHZtGRnOsPkYW4jsI7M+TcActkf1By+U6qwcPuyjLv
X-Gm-Gg: ASbGnct74mYyR50ZEuXlquba/HyeVouUMZkxMK+SzW9SrpVkxHySegND1Y9Ek24fLWv
	RDcDk9whI0eSfBUMiKtAT6pwFWKrCjXfJ7eQIjcknUcB4yyGmupimxZez2kk/ps2JAkooaA0/CX
	pFTHIlJCrPZNkGjBJmbwuJ9+Kl0J0CTOmQeVJvh7v1poOeYdhuxiZRAVXAb2TNVkoTNycdDnfaG
	rnO3fZ2c9H+VhPr+G4fT4ysSd63PoomamlKOpN085IHzg7ISYNdU8RLjQk3BWuG6pqcvpssOJWT
	3HrI03KWBdUgwCiCtH2r7AH3uKBN7byqUWMMVvq6yXDzQK/3Dn5wsnC6pjWkgWHdhcNdPG0o+v4
	c/zFAx/RcuTwM3mWXztwOrz34BBVqR/u9rw==
X-Received: by 2002:a17:902:ec85:b0:242:9bcb:7b92 with SMTP id d9443c01a7336-245e04eadeamr18308515ad.54.1755585407759;
        Mon, 18 Aug 2025 23:36:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGOjWML1uqzguCXznXnAu0JqJOKHjx8VTTczeOLxTEHogZ2jjjwiB/QPUxpZhx7gk6jZa+sNw==
X-Received: by 2002:a17:902:ec85:b0:242:9bcb:7b92 with SMTP id d9443c01a7336-245e04eadeamr18308195ad.54.1755585407263;
        Mon, 18 Aug 2025 23:36:47 -0700 (PDT)
Received: from yijiyang-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446d54fe38sm98120455ad.135.2025.08.18.23.36.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 23:36:47 -0700 (PDT)
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 14:35:57 +0800
Subject: [PATCH v4 2/6] net: stmmac: Inverse the phy-mode definition
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250819-qcs615_eth-v4-2-5050ed3402cb@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755585388; l=2354;
 i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id;
 bh=ag43pockrDVtSatmI1WnRHpBp2uI2rmdqCD6gVEQcbQ=;
 b=Fcu73+RjcncqZavOSj+QtxfGgYLFkY5TAdyWRJtMz8D97y7ERiL7+MMw4ItBYEW6ZfIbO3jIv
 G65ah+bKButDKbO2XcT87cRZ+H7HKxJ/fAzmR9/uMZr0AG4GRu1e3tC
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Proofpoint-ORIG-GUID: Ft__Th-Gs8VKNUOVFumYHn96VVXLh7fz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDA0NSBTYWx0ZWRfXwTsRvp3lG4xt
 8Y7NWH7hKgFF3BFWq20tcWoayoKjA6ZzSV05SJVoixmK82AkNgtMCUQWPiB2a/zQtnLNA10S+5T
 bw2gyRsGA/JnwH4DuxXKhsSnFDSPYvckUyTCkX9HY2mLGoQuQyD7+6gVYxUEXrhmxyb5Fi0Mbwc
 npiFYhKQbL9b0YVizhkxqBJVXl4OoxKaqJtWp3UitTh8npj111PBmiVJVsN6p5WSXxBnALTpaXi
 ri4H2J/RlVIlz3pkplnvH8nCsBtJpbmCqOb9OwUtheKzuc+lLt4LOhRXnb7+e3Kyw5FISBNtF6k
 oSI41MH0LDYf0giXzcC3i5FhoNcQWpeXD0+Qz6SF8Phifo8Ky9Ef1iUt+gp5e4QSa8dT6fuR/Y8
 fM/c//QB
X-Authority-Analysis: v=2.4 cv=IIMCChvG c=1 sm=1 tr=0 ts=68a41b80 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=-JoBx-Ykr0mbciFiY24A:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: Ft__Th-Gs8VKNUOVFumYHn96VVXLh7fz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 impostorscore=0 phishscore=0
 adultscore=0 malwarescore=0 bulkscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508160045

In the initial device tree submission, the definitions of rgmii and
rgmii-id in the phy-mode property were inverted compared to the
conventions used by the upstream Linux kernel community.

Only QCS-EVB-400 and SA8155-ADP platforms are affected due to the
incorrect PHY mode configuration: 'rgmii' was used instead of the
correct 'rgmii-id'. This change results in an ABI compatibility break,
but it is acceptable as these platforms are not actively used by any
customers, based on current observations.

Qualcomm expects the MAC, not the PHY, to introduce the timing delay,
and the driver is designed accordingly. This is due to specific SoC
hardware that handles delay and sampling internally.

Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index a4ea72f86ca8..a3e595e3b1e4 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -390,14 +390,11 @@ static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
 static int ethqos_rgmii_macro_init(struct qcom_ethqos *ethqos, int speed)
 {
 	struct device *dev = &ethqos->pdev->dev;
-	int phase_shift;
+	int phase_shift = 0;
 	int loopback;
 
 	/* Determine if the PHY adds a 2 ns TX delay or the MAC handles it */
-	if (ethqos->phy_mode == PHY_INTERFACE_MODE_RGMII_ID ||
-	    ethqos->phy_mode == PHY_INTERFACE_MODE_RGMII_TXID)
-		phase_shift = 0;
-	else
+	if (ethqos->phy_mode == PHY_INTERFACE_MODE_RGMII_ID)
 		phase_shift = RGMII_CONFIG2_TX_CLK_PHASE_SHIFT_EN;
 
 	/* Disable loopback mode */
@@ -803,7 +800,14 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	if (!ethqos)
 		return -ENOMEM;
 
+	/* Qualcomm configures the MAC to introduce delay; instruct the
+	 * PHY not to add additional delay.
+	 */
+	if (plat_dat->phy_interface == PHY_INTERFACE_MODE_RGMII_ID)
+		plat_dat->phy_interface = PHY_INTERFACE_MODE_RGMII;
+
 	ethqos->phy_mode = plat_dat->phy_interface;
+
 	switch (ethqos->phy_mode) {
 	case PHY_INTERFACE_MODE_RGMII:
 	case PHY_INTERFACE_MODE_RGMII_ID:

-- 
2.34.1


