Return-Path: <devicetree+bounces-261910-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MD2pFhbpgGleCAMAu9opvQ
	(envelope-from <devicetree+bounces-261910-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 19:12:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B56BCFFA7
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 19:12:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C14C13022042
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 18:11:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E73938E127;
	Mon,  2 Feb 2026 18:11:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ca28SlEW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="asvA2l41"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066262798E5
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 18:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770055861; cv=none; b=Ccm5haNVs4h8INQCXtESCzSwAFl/bvXaRgFpNGCGsvU4fDZOVKW2ShyiABAMVy7oifRXoE2Q3v1dUuoJZJHOv9r5J32BHV2n9NJPrGjqSmQQYA1HLf5rbdK5+pMyDILy6f/LDgS92USEhi6Zv2mTpqHoUwSv7H/nYNAYE38EqGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770055861; c=relaxed/simple;
	bh=zqKO3UGvbDMJ+JT+t551VX1HZg/Yo97PDn3IZ5tzYGI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=W28bOw7H//IFrsAuLC48UBvoVlfrgdfIlb0Kzqje+7uFifdG6noMZYEIXPvmFaWU5eEqwjAfMyGQBmSBEayqgddxM1jmY0fCnWK9xQOoPB1QIsNt5ISdXautwsp6RDCI/hI6r77+K9AJGPI9CL/nkFcHWBlKbDDMFmHrdvtsBzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ca28SlEW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=asvA2l41; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612HTQts572589
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 18:10:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=R+ngY54m3iC
	HtNRCdl+T64Wh2WWMDO3stultYRdrKfU=; b=Ca28SlEWBX3L+O/vmn+ZD0CPHmE
	WX8YwUV8J/1W5SHndye/wftlhDMue2A2a6G/qVWdkl16wkLB+qgX2mng6WBLmyVR
	tC/dYWQAMbLsi+xlEGamVZJ/+vbfdZhjqVGVCUV7AbOzi7xxeGqJz8CW7V5jPb1W
	JFVuKtFlPTFj41zPg9E52DJtHUyD+yEfab+UCSfkPZhtGU0V+Uuz6TIiLRGNVWgt
	urmRuyO6VNR9mCN57GzucqiGvAL/VP4tMqXae5mVjnKBVMitGxzedWl8Nm4Y8bBK
	FwYEMVPSAmZLfUci5a5rQwcPiykQQm4En92Z6MJBhblvi4CHJbyde/SbhsA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2tkmhb9r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 18:10:59 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-81e81fbbb8cso4567686b3a.3
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 10:10:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770055858; x=1770660658; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R+ngY54m3iCHtNRCdl+T64Wh2WWMDO3stultYRdrKfU=;
        b=asvA2l41LOawFHmCz/JZ7qxtpghLGVs6g9VwHDY2R4WcYwucw16FetXSCCHgBf7IYM
         Ln/ek0Xs2qCfjgRFQiBpvjj+NQWBIZIFYaojK41yRU0j8qLLPSMEFnusMOG+dqCOWK1q
         bONLV025qPmfyXwfGssKPptuWp+qTQU1MZkjIhDOkJT8a6kPrLMURo3vIJgUCMFPEkIK
         livChx8Zo4RF5U6cfaqJDtHtl4CFdOpq7vozRs4JtKaBNKeRbd8doPt+ayQpWk2bmgNw
         /OlC0cUS0n4XRK6rU80v66f1bvbacubHqQBnwwzG9+QJGy6+6t/Vnjc3ACbDBVHXQvQi
         YLsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770055858; x=1770660658;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=R+ngY54m3iCHtNRCdl+T64Wh2WWMDO3stultYRdrKfU=;
        b=mMe1skf9qZY4rzXo1lOu73eQolaeulWJG2cUjzKM7AQaQeeGRslHufQkcfQKITQTAL
         uC3Q7EztYrd1DByTP5HRalaFk7wXmMV7kUHj0RyFJmyPbVWVC/l9G+Z/wDA2b5+t6UEQ
         K/nfhtf/Hlm/cJAjtjhOng6wG2odniCz+cdAjhsCWMYjPXwNJf+H71CEs21z6iguHYj1
         UcLjCu/sl7ahEcZzP1nalT2Hb3bywDJZQMSN6fhsQVS5awfFaKhaRrmRdmWIW1asFGsu
         H09VRXRrrTmVEjZ8j8N0R+96B8QNKhMpUbky9eZlVbxff8U1Cr+DK3DIe3cRdhZhmtYj
         yUjQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwInp9NCMQqqpOO9KV5jV0p4nL1ci1LHK+WchQdJz4IayZec1eBHtPUTTLBQWyTB7RM5urA76n5pgH@vger.kernel.org
X-Gm-Message-State: AOJu0YzYOG1cLdro7qVvpsOP6arHi4BhD4ubl42Jd6sBbDqUgDw6l8Mn
	/zRe0Z0VACwSq0mBE2baeS9+epDTlVk8QhtOZwtElyYYUrS+/hVQAQ8aaFcyIunX4xWUk0LpAuB
	LVQSC+JEC1p83o057ebLb+4bj3THsDIrr9tJ8/K2LXpEMlpcUJJ8Ada8A+qDfgzUI
X-Gm-Gg: AZuq6aLAqlYLxvPxsVwvm0+iVz8k8XLxAjPzvlpp4aSNvmAjdAK7NYmld0d1mhWCkC1
	JJjGmR9Ag1T1lH/5NUV5m4F8nMhabaOfT277T8sHtJf5xL5OXtjrTp31vUNdKP9T7/De3TehVwp
	o5gwNXXTnp+AN9EfTbGeG6UAARvd4MRcFOFClhU8HOzQUgbYu1uYBojyHz33Vn5bYQKxCSCPE9Q
	IOTJagS3HGj7Cx7AFVuvG5nk1776KTf394266Yy4BhwwioZuhUlqCYlb0VP6YbLCgSNcVx/P0RO
	EqkP0KvCd13hJp6dm5kqK9y1YxGRJGLxr6cAIgft83four3/OFFRuR2nIQWELaCd2t7GHi456Eq
	RyUTDlxWcNS4mvOjCowygeNVKrtE7dXoyJkJzivv0y40=
X-Received: by 2002:a05:6a00:8d87:b0:81f:4346:6870 with SMTP id d2e1a72fcca58-823ab695dd1mr12685383b3a.28.1770055858040;
        Mon, 02 Feb 2026 10:10:58 -0800 (PST)
X-Received: by 2002:a05:6a00:8d87:b0:81f:4346:6870 with SMTP id d2e1a72fcca58-823ab695dd1mr12685340b3a.28.1770055857462;
        Mon, 02 Feb 2026 10:10:57 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379bfc712sm17476780b3a.40.2026.02.02.10.10.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 10:10:57 -0800 (PST)
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Praveen Talari <praveen.talari@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bjorn.andersson@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        konrad.dybcio@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com
Subject: [PATCH v4 11/13] i2c: qcom-geni: Use resources helper APIs in runtime PM functions
Date: Mon,  2 Feb 2026 23:39:20 +0530
Message-Id: <20260202180922.1692428-12-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260202180922.1692428-1-praveen.talari@oss.qualcomm.com>
References: <20260202180922.1692428-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=TaebdBQh c=1 sm=1 tr=0 ts=6980e8b3 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=3PeDo36KSfG0vlEF63sA:9 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: HK1atSer_eWH41DQhG7m63rJtEa4MtKC
X-Proofpoint-ORIG-GUID: HK1atSer_eWH41DQhG7m63rJtEa4MtKC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDE0MiBTYWx0ZWRfXy8FWa37L8Fla
 KIVPUTmV0F8vXA4pt9tergQOta+vhxacEHboUN9A2my44mVhoGn8HKkiO+sLeMWc2RUa/uI8pW5
 Z3tksv63C5aPJsEto8zabsOBEHZFEliCigFoZWUje2/E6CvfnZQ4rKM8h5aFQTTONfewDs1Dyop
 lQWRpf0IiY4uC7MvfIraDfdaDbfwZEBvCTzxvZQz/FobFB6Pe22Nm00hGkfbNCIfEjwZ3fWy6jR
 WeDI+4qcJOB+/flCtcsojamzaEWIwTNp9YQtB+xy6ZCiS93CgmRsnQCty2NevPTgbLv/eAYFyOM
 RZFDAvS5rDK0PG/GUFfL1EbDdfkMsUbWzSnsFBnPN7W1m1B0zm4i4y3sYDp170vIqBmN/I8fI9+
 6BZ1ZXG3PrAc7oiHbr9V7g54SMhCavXHqW0e50un5OV3OqCGB63TO5PWtUSrei0XVHJWYQMAGVB
 Gxt8VFF51wdLgZyYnvg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_05,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 priorityscore=1501 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020142
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261910-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0B56BCFFA7
X-Rspamd-Action: no action

To manage GENI serial engine resources during runtime power management,
drivers currently need to call functions for ICC, clock, and
SE resource operations in both suspend and resume paths, resulting in
code duplication across drivers.

The new geni_se_resources_activate() and geni_se_resources_deactivate()
helper APIs addresses this issue by providing a streamlined method to
enable or disable all resources based, thereby eliminating redundancy
across drivers.

Acked-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
v3->v4:
- Added Acked-by tag.

v1->v2:
Bjorn:
- Remove geni_se_resources_state() API.
- Used geni_se_resources_activate() and geni_se_resources_deactivate()
  to enable/disable resources.
---
 drivers/i2c/busses/i2c-qcom-geni.c | 28 +++++-----------------------
 1 file changed, 5 insertions(+), 23 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index 56eebefda75f..4ff84bb0fff5 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -1163,18 +1163,15 @@ static int __maybe_unused geni_i2c_runtime_suspend(struct device *dev)
 	struct geni_i2c_dev *gi2c = dev_get_drvdata(dev);
 
 	disable_irq(gi2c->irq);
-	ret = geni_se_resources_off(&gi2c->se);
+
+	ret = geni_se_resources_deactivate(&gi2c->se);
 	if (ret) {
 		enable_irq(gi2c->irq);
 		return ret;
-
-	} else {
-		gi2c->suspended = 1;
 	}
 
-	clk_disable_unprepare(gi2c->core_clk);
-
-	return geni_icc_disable(&gi2c->se);
+	gi2c->suspended = 1;
+	return ret;
 }
 
 static int __maybe_unused geni_i2c_runtime_resume(struct device *dev)
@@ -1182,28 +1179,13 @@ static int __maybe_unused geni_i2c_runtime_resume(struct device *dev)
 	int ret;
 	struct geni_i2c_dev *gi2c = dev_get_drvdata(dev);
 
-	ret = geni_icc_enable(&gi2c->se);
+	ret = geni_se_resources_activate(&gi2c->se);
 	if (ret)
 		return ret;
 
-	ret = clk_prepare_enable(gi2c->core_clk);
-	if (ret)
-		goto out_icc_disable;
-
-	ret = geni_se_resources_on(&gi2c->se);
-	if (ret)
-		goto out_clk_disable;
-
 	enable_irq(gi2c->irq);
 	gi2c->suspended = 0;
 
-	return 0;
-
-out_clk_disable:
-	clk_disable_unprepare(gi2c->core_clk);
-out_icc_disable:
-	geni_icc_disable(&gi2c->se);
-
 	return ret;
 }
 
-- 
2.34.1


