Return-Path: <devicetree+bounces-36664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BAE842374
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 12:42:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 18A7E1C246C1
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 11:42:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7332B67A10;
	Tue, 30 Jan 2024 11:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="Z8ugWddl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A496767748;
	Tue, 30 Jan 2024 11:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706614925; cv=none; b=hied74aqZsq0ppiPm055zbkdyONhpItXFh1vS5PDqY3P8wGZ1BwzDVBLgX8up69kVWbbREQZLJbRSDdpeOzoTAVMUwX0e67VVedSVRLW+LuBEZJ/jahl7STSoA0LVQiyDMUP9isAdhiiFfV6mdEWrBeTu17IaBwdnNjQAhcW7ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706614925; c=relaxed/simple;
	bh=xlEvpcnjawwGtVk1gYoFn/Jy/FWOMLEHqp/mURg+HH0=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MCOcTe7nsI7MKUsNYryvJ5e5W5M9i/AImf3puIqy4BkukyL4OpzqUKQn/yf2NPuaIST6LJ6LGbaX99b899ZhIgqDuwbRpGKqNKdDne623ra+K2VKwUmpf0dSKtvBqss6GyNOfQ4g/LBji+j3HBbcMw8Uf02eTf6diZNOgN9ufNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=Z8ugWddl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40U9SLdt008805;
	Tue, 30 Jan 2024 11:41:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	qcppdkim1; bh=msJtk1y9oJkWDBLU/idb1XEPdK9Io00hJGpVDrzv7vw=; b=Z8
	ugWddlG4fUkMaQvwk6UuIXlr9BkJ8vImZ/6KrnlpY2aKWZyNDFHmUaJtjrG9azAd
	Q7c4xQ2d1kjgWoNdvtNdlVk2lqJ0G/xur2ytX6ITZgQg2wZ4wNFxNBTHs7+PXEuO
	BMmXuXR/ks11FgTHYalRghJlY4nkC6KjrB0hKAOTSyF8SUUrJO9kt5mhWa9lP4TC
	iTZq8PMsWmBPiiYWDIlWusRbZ6DkJdViSrHRZkegOhdYriu4WdGITyfOjpjA56v/
	mLo8SVlCESuMJYZcjGvioYEZhSpjl+4lQX4nmhbgmtxXA6I/QOq6ZIfiW0u/U5LZ
	T+xP7q7Loby/0hVbwOlw==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3vxvwqrfww-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 30 Jan 2024 11:41:48 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 40UBflKt027077
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 30 Jan 2024 11:41:47 GMT
Received: from hu-jsuraj-hyd.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Tue, 30 Jan 2024 03:41:37 -0800
From: Suraj Jaiswal <quic_jsuraj@quicinc.com>
To: <quic_jsuraj@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Bhupesh Sharma
	<bhupesh.sharma@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson
	<andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        "David S.
 Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        "Jakub
 Kicinski" <kuba@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        "Krzysztof
 Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        "Jose
 Abreu" <joabreu@synopsys.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>, <netdev@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        Prasad Sodagudi
	<psodagud@quicinc.com>,
        Andrew Halaney <ahalaney@redhat.com>, Rob Herring
	<robh@kernel.org>
CC: <kernel@quicinc.com>, Serge Semin <fancer.lancer@gmail.com>
Subject: [PATCH net-next v11 3/3] net: stmmac: Add driver support for common safety IRQ
Date: Tue, 30 Jan 2024 17:11:02 +0530
Message-ID: <20240130114102.4116046-4-quic_jsuraj@quicinc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240130114102.4116046-1-quic_jsuraj@quicinc.com>
References: <20240130114102.4116046-1-quic_jsuraj@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: nLHbdiFy91mGZLLkZrXkV7y0C_A_5Xi0
X-Proofpoint-GUID: nLHbdiFy91mGZLLkZrXkV7y0C_A_5Xi0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-30_05,2024-01-30_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 mlxlogscore=954
 spamscore=0 priorityscore=1501 impostorscore=0 clxscore=1015 adultscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2401190000
 definitions=main-2401300085

Add support to listen HW safety IRQ like ECC(error
correction code), DPP(data path parity), FSM(finite state
machine) fault in common IRQ line.

Signed-off-by: Suraj Jaiswal <quic_jsuraj@quicinc.com>
Reviewed-by: Serge Semin <fancer.lancer@gmail.com>
---
 drivers/net/ethernet/stmicro/stmmac/common.h  |  1 +
 drivers/net/ethernet/stmicro/stmmac/stmmac.h  |  3 ++
 .../net/ethernet/stmicro/stmmac/stmmac_main.c | 41 ++++++++++++++++++-
 .../ethernet/stmicro/stmmac/stmmac_platform.c |  8 ++++
 4 files changed, 51 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/common.h b/drivers/net/ethernet/stmicro/stmmac/common.h
index 721c1f8e892f..b9233b09b80f 100644
--- a/drivers/net/ethernet/stmicro/stmmac/common.h
+++ b/drivers/net/ethernet/stmicro/stmmac/common.h
@@ -344,6 +344,7 @@ enum request_irq_err {
 	REQ_IRQ_ERR_ALL,
 	REQ_IRQ_ERR_TX,
 	REQ_IRQ_ERR_RX,
+	REQ_IRQ_ERR_SFTY,
 	REQ_IRQ_ERR_SFTY_UE,
 	REQ_IRQ_ERR_SFTY_CE,
 	REQ_IRQ_ERR_LPI,
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac.h b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
index 9f89acf31050..ca3d93851bed 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac.h
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
@@ -31,6 +31,7 @@ struct stmmac_resources {
 	int wol_irq;
 	int lpi_irq;
 	int irq;
+	int sfty_irq;
 	int sfty_ce_irq;
 	int sfty_ue_irq;
 	int rx_irq[MTL_MAX_RX_QUEUES];
@@ -297,6 +298,7 @@ struct stmmac_priv {
 	void __iomem *ptpaddr;
 	void __iomem *estaddr;
 	unsigned long active_vlans[BITS_TO_LONGS(VLAN_N_VID)];
+	int sfty_irq;
 	int sfty_ce_irq;
 	int sfty_ue_irq;
 	int rx_irq[MTL_MAX_RX_QUEUES];
@@ -305,6 +307,7 @@ struct stmmac_priv {
 	char int_name_mac[IFNAMSIZ + 9];
 	char int_name_wol[IFNAMSIZ + 9];
 	char int_name_lpi[IFNAMSIZ + 9];
+	char int_name_sfty[IFNAMSIZ + 10];
 	char int_name_sfty_ce[IFNAMSIZ + 10];
 	char int_name_sfty_ue[IFNAMSIZ + 10];
 	char int_name_rx_irq[MTL_MAX_TX_QUEUES][IFNAMSIZ + 14];
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 47de466e432c..e0192a282121 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -3592,6 +3592,10 @@ static void stmmac_free_irq(struct net_device *dev,
 		if (priv->wol_irq > 0 && priv->wol_irq != dev->irq)
 			free_irq(priv->wol_irq, dev);
 		fallthrough;
+	case REQ_IRQ_ERR_SFTY:
+		if (priv->sfty_irq > 0 && priv->sfty_irq != dev->irq)
+			free_irq(priv->sfty_irq, dev);
+		fallthrough;
 	case REQ_IRQ_ERR_WOL:
 		free_irq(dev->irq, dev);
 		fallthrough;
@@ -3661,6 +3665,23 @@ static int stmmac_request_irq_multi_msi(struct net_device *dev)
 		}
 	}
 
+	/* Request the common Safety Feature Correctible/Uncorrectible
+	 * Error line in case of another line is used
+	 */
+	if (priv->sfty_irq > 0 && priv->sfty_irq != dev->irq) {
+		int_name = priv->int_name_sfty;
+		sprintf(int_name, "%s:%s", dev->name, "safety");
+		ret = request_irq(priv->sfty_irq, stmmac_safety_interrupt,
+				  0, int_name, dev);
+		if (unlikely(ret < 0)) {
+			netdev_err(priv->dev,
+				   "%s: alloc sfty MSI %d (error: %d)\n",
+				   __func__, priv->sfty_irq, ret);
+			irq_err = REQ_IRQ_ERR_SFTY;
+			goto irq_error;
+		}
+	}
+
 	/* Request the Safety Feature Correctible Error line in
 	 * case of another line is used
 	 */
@@ -3798,6 +3819,21 @@ static int stmmac_request_irq_single(struct net_device *dev)
 		}
 	}
 
+	/* Request the common Safety Feature Correctible/Uncorrectible
+	 * Error line in case of another line is used
+	 */
+	if (priv->sfty_irq > 0 && priv->sfty_irq != dev->irq) {
+		ret = request_irq(priv->sfty_irq, stmmac_safety_interrupt,
+				  IRQF_SHARED, dev->name, dev);
+		if (unlikely(ret < 0)) {
+			netdev_err(priv->dev,
+				   "%s: ERROR: allocating the sfty IRQ %d (%d)\n",
+				   __func__, priv->sfty_irq, ret);
+			irq_err = REQ_IRQ_ERR_SFTY;
+			goto irq_error;
+		}
+	}
+
 	return 0;
 
 irq_error:
@@ -6022,8 +6058,8 @@ static irqreturn_t stmmac_interrupt(int irq, void *dev_id)
 	if (test_bit(STMMAC_DOWN, &priv->state))
 		return IRQ_HANDLED;
 
-	/* Check if a fatal error happened */
-	if (stmmac_safety_feat_interrupt(priv))
+	/* Check ASP error if it isn't delivered via an individual IRQ */
+	if (priv->sfty_irq <= 0 && stmmac_safety_feat_interrupt(priv))
 		return IRQ_HANDLED;
 
 	/* To handle Common interrupts */
@@ -7462,6 +7498,7 @@ int stmmac_dvr_probe(struct device *device,
 	priv->dev->irq = res->irq;
 	priv->wol_irq = res->wol_irq;
 	priv->lpi_irq = res->lpi_irq;
+	priv->sfty_irq = res->sfty_irq;
 	priv->sfty_ce_irq = res->sfty_ce_irq;
 	priv->sfty_ue_irq = res->sfty_ue_irq;
 	for (i = 0; i < MTL_MAX_RX_QUEUES; i++)
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
index 70eadc83ca68..54797edc9b38 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
@@ -743,6 +743,14 @@ int stmmac_get_platform_resources(struct platform_device *pdev,
 		dev_info(&pdev->dev, "IRQ eth_lpi not found\n");
 	}
 
+	stmmac_res->sfty_irq =
+		platform_get_irq_byname_optional(pdev, "sfty");
+	if (stmmac_res->sfty_irq < 0) {
+		if (stmmac_res->sfty_irq == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
+		dev_info(&pdev->dev, "IRQ sfty not found\n");
+	}
+
 	stmmac_res->addr = devm_platform_ioremap_resource(pdev, 0);
 
 	return PTR_ERR_OR_ZERO(stmmac_res->addr);
-- 
2.25.1


