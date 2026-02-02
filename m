Return-Path: <devicetree+bounces-261909-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEKWNv3ogGleCAMAu9opvQ
	(envelope-from <devicetree+bounces-261909-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 19:12:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8185ACFF80
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 19:12:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 34EA63032B4D
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 18:11:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6C9738E11E;
	Mon,  2 Feb 2026 18:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W6fU/XjN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="S6WW7S0m"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F1738BF9B
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 18:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770055853; cv=none; b=C6foclAkeQGevXlU5KOvAZ7CtiJ3SIOhcWuMk819TUm9aaxFRRaS+DE/NtprZiPcOoEYgN41EwwYP3vDkSYMbNaYpU83AR5d9N4cxf4YJixTLJEAho9JCMgBOhD6Ws24/6nMc/rRYDINX+q+aUPGsfXD+VpEMlLkg51QpmozZWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770055853; c=relaxed/simple;
	bh=q5H/RASP+JYgwH0bdr301c8q+Zkx+NKRl1umY8vHydU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ETho6VbANCbt+FFEFSRQs0iZt/UqYrnumzhTXuUQt8dzkW+QfNt06ZMMOe0thE4Mv2uY3zcwfRSkDVWNQbnV89YzqPOSxdlsOMMoYpZ14Fez+1y+ZETvQRfHBhVV65hj5513Nes/j4+hPiQBhD5tUP6xvfPzq7r14SPj1ut0lmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W6fU/XjN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=S6WW7S0m; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612AP6BP2106369
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 18:10:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=xF2mxTu7XWu
	0fOGjlOPA26q/bJtyJkxmS7bvT+KJNWM=; b=W6fU/XjN5BvbFLN6u8+4I24gyn9
	EDEPOVlNpfV33c02eVNnxmo7yZmoaqQI73LC34gFZGULe3c8GKobbIbG04tcOUgs
	w3sPRHh7VUidFef5MILgmWE3S6RrppWfo1WaTaVK44ODs9zs1EluxeoJM6GhtT7u
	qbYluIZ0RPjudLA3NIEjGB/PeXsWa7813mr7L6lqDbKBMfWsnyDzLyss9DDv7b5g
	JwRQGTKbq1Dgw0oEmaf3TEpIM3tPJYeoxPo8dOj75D3VZVrfI0Z6gRyYTnh9Uezn
	h/Yg61nouDhcMY7GFBVXqbqfnSEaqn69F02hNt/joOA2E4EVwXTtKG8YwpA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2t5e9egr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 18:10:51 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-81ed3e6b917so3930173b3a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 10:10:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770055851; x=1770660651; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xF2mxTu7XWu0fOGjlOPA26q/bJtyJkxmS7bvT+KJNWM=;
        b=S6WW7S0mjsdVLWoFk8MGC0X5zMTxzy02Re8GtmIqiadO94BKSzIj2H9PxW1JnpCUJY
         bomKtGi6F37olvgt+NC4JN917eYzuDU2WXLAK3mgwfKjTd+VK+LaZq1wVW9P96rM9ojN
         7fZFJkMVn6X5cZuL58BOKJPb0ljAwDwaT8Vs402lnR3G81/UN7sNroYIoTULjQMy8o25
         pclBjNdPJ0hxYEjfo486dUpF/gJBZ5lgSc0yFwQuhk0T95hFhvN20M0jEJnEq2261qOS
         7yxJ047BA41DBFXKZxJZIXOlaO7Tebgs0KKkdMmkzHQn/3oa42Lb6qc5XwEecnbuAcgc
         /rjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770055851; x=1770660651;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xF2mxTu7XWu0fOGjlOPA26q/bJtyJkxmS7bvT+KJNWM=;
        b=BdftSrBDqXvAE0lupVtmjqD28jPmgrVpO8dmzn6UO/fgRQWWvBPk1SM8PC+g7Hehe8
         iINnai3rXM1w0P+8rD5WwpScDvo/dl08qcR4GTbzQeZD7T2tdHb4zV6yV+5GthkRbfNe
         ZSWjt76tyYj51Z6bmT7UGn6MK1aco0JrIah1dtCuqhaIcQBWcg/PAkR8t7yJ/yd6YOiC
         LTE36ZJCHlU5GeyZHKLiXzO9frF/pMajxC9Kxd2+yG07BGmmSBESjFXsYAyOPQPEB90m
         Pzf6EdJgmaGBxsG6W4gIUH792rFg/u4ZUB1AjLSS12DEUNaI/VAY/WaERRa17j/jkhCK
         HdXA==
X-Forwarded-Encrypted: i=1; AJvYcCWU6sI/YTgoLlFZ7dgR2YYevXvFXyvmICyLf543z5uRMiC3v3TPz/Ycnh/WTcWeQCNjiJze1VhbqLGp@vger.kernel.org
X-Gm-Message-State: AOJu0YxdF76MSiN98W6M5nq+pmAYoIyRCtu/s02eRwG67UPTKigjUhjL
	DJZZOQrKDO0P03lOS5jfDzcpmOPMNXUCRjfaqGadg520bDjQ8yFS4Hz8eDFLVoT6A1WWK8slOHB
	/ddM7TmKp8zxoECVrGNdAqErjijSFwTF1F9jLOIT9S9h42abpmqe4igVAlti+cgYr
X-Gm-Gg: AZuq6aKPXTd0BYiSUe6GX2sgaVTIsvoA1Fk8vmaO3PuImQWyDFlZmXTrkKka6yiVmQM
	cGvQWEIIYctaf+S0o0H+ZIU7VR3Qv5wXGOwCfrI25VAfnELOoshYAPpJU2NqtbQ/tqf7br/O+jn
	eAcpwYtpykHCPsg2D1dz6x9ypLtCYBcakIC/dVBvEWMrKJLuW8QRGC4mU6WgygBlp/AWVOCJjWb
	9EC5dF4X0VF4IfVvYP/BAJ31n2+GKQY7GtYEUnCMZLKcp71ngYZkGHKZ2Qj6S2911+IiHDCUNpL
	fKMfq9bc1ow0z9X1WZk61k214mDM3SDrhZdzpJslvQIfCvgQKt17FzbhCmdnarzpkSGHznbT3kR
	4kUncsjW422OdXviknDVxI1M4k1R39HYhnF+dBScypUI=
X-Received: by 2002:a05:6a00:1483:b0:823:3079:7c7 with SMTP id d2e1a72fcca58-823ab6964f0mr12400679b3a.29.1770055850935;
        Mon, 02 Feb 2026 10:10:50 -0800 (PST)
X-Received: by 2002:a05:6a00:1483:b0:823:3079:7c7 with SMTP id d2e1a72fcca58-823ab6964f0mr12400626b3a.29.1770055850331;
        Mon, 02 Feb 2026 10:10:50 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379bfc712sm17476780b3a.40.2026.02.02.10.10.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 10:10:49 -0800 (PST)
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
Subject: [PATCH v4 10/13] i2c: qcom-geni: Move resource initialization to separate function
Date: Mon,  2 Feb 2026 23:39:19 +0530
Message-Id: <20260202180922.1692428-11-praveen.talari@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDE0MiBTYWx0ZWRfX1z44dZD8oD0T
 SSrcdedwJrxCgh95f3EF0BPBevt8v6JaNAqMf3jhE1hMXudEo1pvkJ2/QbF/JDPEc/qrI66bsdG
 7JJOmAlWyJUPxC8bSvfw2iYaFSLgNeAovA04lzXPiZPtIDBVQ82RxCwy9JP0aBgUnW2CD7JyGYr
 lq29YNSQi+qdZsKfTWFMhNbF1YH+Vdx3+z5eHGikAsne9B1cO4teK0CHvipkOR3LHQc66iMQDzE
 HfUEMzVDbd9ntQXgu46KmQyscDE6k91rAmNvpFCRPuXsQND2jw9+7E2ZnWEZYUzBmKRQCKin65u
 /XJWyNcCew7MTvwMMS83oCOude/yrAR2x1XDwijiUY6cCb2f8fQdc3YCcX3gpCd4YUBi4NXry+V
 Kxe/ATlCJGMGyXBCw2JiLx2PcvzCc8IlRV+8jL4tXNvtRA2ShpIy5iJvu+aKFlN0AYxnlFj0Zow
 8iVAOxYlLXSSM8X8P4g==
X-Proofpoint-GUID: -VVEHfynlDCdBWI05PohZGp_GXl4wDdq
X-Authority-Analysis: v=2.4 cv=NOfYOk6g c=1 sm=1 tr=0 ts=6980e8ab cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=V89BwkbFsXdiYDgkWuoA:9 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: -VVEHfynlDCdBWI05PohZGp_GXl4wDdq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_05,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 spamscore=0
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
	TAGGED_FROM(0.00)[bounces-261909-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 8185ACFF80
X-Rspamd-Action: no action

Refactor the resource initialization in geni_i2c_probe() by introducing
a new geni_i2c_resources_init() function and utilizing the common
geni_se_resources_init() framework and clock frequency mapping, making the
probe function cleaner.

Acked-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
v3->v4:
- Added Acked-by tag.

v1->v2:
- Updated commit text.
---
 drivers/i2c/busses/i2c-qcom-geni.c | 53 ++++++++++++------------------
 1 file changed, 21 insertions(+), 32 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index 81ed1596ac9f..56eebefda75f 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -1045,6 +1045,23 @@ static int geni_i2c_init(struct geni_i2c_dev *gi2c)
 	return ret;
 }
 
+static int geni_i2c_resources_init(struct geni_i2c_dev *gi2c)
+{
+	int ret;
+
+	ret = geni_se_resources_init(&gi2c->se);
+	if (ret)
+		return ret;
+
+	ret = geni_i2c_clk_map_idx(gi2c);
+	if (ret)
+		return dev_err_probe(gi2c->se.dev, ret, "Invalid clk frequency %d Hz\n",
+				     gi2c->clk_freq_out);
+
+	return geni_icc_set_bw_ab(&gi2c->se, GENI_DEFAULT_BW, GENI_DEFAULT_BW,
+				  Bps_to_icc(gi2c->clk_freq_out));
+}
+
 static int geni_i2c_probe(struct platform_device *pdev)
 {
 	struct geni_i2c_dev *gi2c;
@@ -1064,16 +1081,6 @@ static int geni_i2c_probe(struct platform_device *pdev)
 
 	desc = device_get_match_data(&pdev->dev);
 
-	if (desc && desc->has_core_clk) {
-		gi2c->core_clk = devm_clk_get(dev, "core");
-		if (IS_ERR(gi2c->core_clk))
-			return PTR_ERR(gi2c->core_clk);
-	}
-
-	gi2c->se.clk = devm_clk_get(dev, "se");
-	if (IS_ERR(gi2c->se.clk) && !has_acpi_companion(dev))
-		return PTR_ERR(gi2c->se.clk);
-
 	ret = device_property_read_u32(dev, "clock-frequency",
 				       &gi2c->clk_freq_out);
 	if (ret) {
@@ -1088,16 +1095,15 @@ static int geni_i2c_probe(struct platform_device *pdev)
 	if (gi2c->irq < 0)
 		return gi2c->irq;
 
-	ret = geni_i2c_clk_map_idx(gi2c);
-	if (ret)
-		return dev_err_probe(dev, ret, "Invalid clk frequency %d Hz\n",
-				     gi2c->clk_freq_out);
-
 	gi2c->adap.algo = &geni_i2c_algo;
 	init_completion(&gi2c->done);
 	spin_lock_init(&gi2c->lock);
 	platform_set_drvdata(pdev, gi2c);
 
+	ret = geni_i2c_resources_init(gi2c);
+	if (ret)
+		return ret;
+
 	/* Keep interrupts disabled initially to allow for low-power modes */
 	ret = devm_request_irq(dev, gi2c->irq, geni_i2c_irq, IRQF_NO_AUTOEN,
 			       dev_name(dev), gi2c);
@@ -1110,23 +1116,6 @@ static int geni_i2c_probe(struct platform_device *pdev)
 	gi2c->adap.dev.of_node = dev->of_node;
 	strscpy(gi2c->adap.name, "Geni-I2C", sizeof(gi2c->adap.name));
 
-	ret = geni_icc_get(&gi2c->se, desc ? desc->icc_ddr : "qup-memory");
-	if (ret)
-		return ret;
-	/*
-	 * Set the bus quota for core and cpu to a reasonable value for
-	 * register access.
-	 * Set quota for DDR based on bus speed.
-	 */
-	gi2c->se.icc_paths[GENI_TO_CORE].avg_bw = GENI_DEFAULT_BW;
-	gi2c->se.icc_paths[CPU_TO_GENI].avg_bw = GENI_DEFAULT_BW;
-	if (!desc || desc->icc_ddr)
-		gi2c->se.icc_paths[GENI_TO_DDR].avg_bw = Bps_to_icc(gi2c->clk_freq_out);
-
-	ret = geni_icc_set_bw(&gi2c->se);
-	if (ret)
-		return ret;
-
 	gi2c->suspended = 1;
 	pm_runtime_set_suspended(gi2c->se.dev);
 	pm_runtime_set_autosuspend_delay(gi2c->se.dev, I2C_AUTO_SUSPEND_DELAY);
-- 
2.34.1


