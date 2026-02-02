Return-Path: <devicetree+bounces-261900-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mO0NJr7pgGleCAMAu9opvQ
	(envelope-from <devicetree+bounces-261900-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 19:15:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B925D004B
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 19:15:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A54F308B83B
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 18:09:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27AA72248A8;
	Mon,  2 Feb 2026 18:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MrFDXCev";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hMioVjSd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77EA2798ED
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 18:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770055786; cv=none; b=cT3Ls5lUz28yBs1orIYmsHuOWSE2ftzWyY9ZtE0Gf5EKSraaWkt89SLCxX1OQ3i6Q9XbITv3FYj6lfc6wVACkSqikglyKaO0ERW/MVPDVW7SQXVb9XTU9NRXlPcyw5MsHawejRhZ7mxxMOi6sgcK3lHwzivmrf0GfdNMKSQ3kAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770055786; c=relaxed/simple;
	bh=Eck/D6KmwOrBysTJIIaZmSoFBAq/RlW1moTUSu+Xl3I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ufOj9foT0leUlJ9oeNh5rTkbZ2t29bIEc7paEN+f4NW6fIzOrfTt0jUG39uvQpGYdnPPHiWrP1ddSD09pwM0C6XOYvZSU0eeyjoEdVA0vUNaNJ6h7miiiwasZUt6DZb0+8k1k516QEeRJlDvt33/9lC7kyvac4pt9qQ1foSGmSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MrFDXCev; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hMioVjSd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612CVGis255369
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 18:09:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=KnpiwG0d//X
	/Doe7m+7TdtdTnhg6HQ3OqoiGCkLu8T8=; b=MrFDXCevMZoGMSGsD/wleAntvxf
	AW74Fi1cEpBpGjUahvfJeoYZk8GAK6hn2SJImrlbFaGV9//FylSHyKoL1TISz29w
	NHkQ9VqxVDVX2gXIzPDtZjk9AwJZaoifvfNBjjC7Urvnud+UXP0yYVyY1BcbNIVJ
	3ipQQSU7R8MagvNC99hbbk2v39gRVKDd+v+lRzjT2JFxQek7MpRKldXwRkGBsjwc
	Wlc9LAdkEu4ySyIomUH5LQXaNRqxdmmBgP7/ExBoeJ6ZggRi2b/PRN76VqQQCkpB
	nG/5Ph2/x3j6+gq9iG8Mq6wlUX2Fx1dyVWjjIXrA26jrQVB+FPCvgSxOrag==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2v0kh315-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 18:09:43 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-81f8c209cfbso2578689b3a.2
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 10:09:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770055783; x=1770660583; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KnpiwG0d//X/Doe7m+7TdtdTnhg6HQ3OqoiGCkLu8T8=;
        b=hMioVjSdrXneydsFmw5sbMCk78AIaA+uHhdiHczXIXq0uHq8WidL5/FmsxLoj4gRNc
         va2DGGUPE3TLdF14ChFZy6qHWyzHNZZkpmhvxs+zWxXO8Gl97tgx1kniNO9Av+PuDpsp
         slem+XIrqyLaZPf84oEOF8E7mH2VFzbW5JX+w+oAQCOE8WnmSVK4jrsS2OC6SiylqUuZ
         Yyz2w3NFam0/0ijInUW1BAFIXiY5yYO+QbsY5ZIpFm5NhSnLtx7aB+nC+8l2yVJlD73n
         +iCOwZ853rAGVkhXJmmIun+FZcCufeWxX3LQ8j+Ji6PwKc1Dm6ICpD5Jsip23s+qr7SK
         4dgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770055783; x=1770660583;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KnpiwG0d//X/Doe7m+7TdtdTnhg6HQ3OqoiGCkLu8T8=;
        b=mpLO7gykoLduXRUFCM3VoC0S1oCF/eUKDT/foKsOIW13CkyNN6S99nvX5caZIR+BL3
         IHT37+4m9Xyv0WuF6HxMp30vt+BlGWrhPLW2LkVGuurKd/zKaSeviiOIsQl2zLtL8h4c
         QlozUZcCXML/ZsmDv2Yc3VekmfuaGVGkH72rlr8TT/fwq/z7NnrSB7WscpMBeM297WTs
         09H9+5zko1X+c4MT9WfqIATxSJwG0SI+qPLPbzilxLMvRZZsYR9UHCUE/2GcJxDmH3PO
         0f1qBCZAVEfe/RNj6Cx3af/WmIiTy4oH+DB3egcAbkuHCfCnjEtbIukKzNqM3z5woJJ6
         Iopg==
X-Forwarded-Encrypted: i=1; AJvYcCV/ovFpDAOiXqwykqENCLB9feoA/SGDIABvc52n9x9NQg1mcEcym6talStxANZlqqMowAD2Ht1CYwgd@vger.kernel.org
X-Gm-Message-State: AOJu0YySwS7RVLCGSWl8FkU2viLOBky4wEqk2ZIxcKQcvssrpxyIIkie
	4TBekqb9MKcULDHB0N/0/zE6DmwGQmr1QVw+ymPAzeP5locy1gejht3Oxc8oRwFnPLh+ZELgZ3y
	Wf2j0smT55JLJtl+Au0pVbm/58EeB8LUMDe4BN8Bat/uqphiEYF0Ch0bLWrnAn8Va
X-Gm-Gg: AZuq6aKbquMtZ/m+hyoHUlLw8a+xfb/C5bGCRFebtiJUpjo1Cr9YPnr2LkouN7IiZ2e
	HqZLG4Ii/uurgN/xTIGu7jKL8JqAy1ChP3lm38sgU3Tzc98tKp0eVwHY3zvg1b0+TpftEbtVF05
	IZWhHmQg9iRxkFWUKZogZnjMiOBHBYTVQs2m+28f5MzG3NgpckAvOIwBnwjMWo9hF4vOJB0q20f
	LdK69t3rr7DmCrskwAfwa8SqmqYzPo8dJXk8m+nqgKC4qKBAeDtvq757GKXqCoOaCO8R59t7MW/
	ZmPFAOKY/M5vM53r3i71vkrkd9xTydxHekjmpiHf0NAxa0tgnfK6GWGTY0G9HYnmJvL2ysS2uGz
	gXSJYoRwNlH8joT+oWmAQHcM25eSLX1SH+nV+/532+sw=
X-Received: by 2002:a05:6a00:2290:b0:7e8:4398:b369 with SMTP id d2e1a72fcca58-823ab76e335mr13009926b3a.60.1770055783026;
        Mon, 02 Feb 2026 10:09:43 -0800 (PST)
X-Received: by 2002:a05:6a00:2290:b0:7e8:4398:b369 with SMTP id d2e1a72fcca58-823ab76e335mr13009886b3a.60.1770055782473;
        Mon, 02 Feb 2026 10:09:42 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379bfc712sm17476780b3a.40.2026.02.02.10.09.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 10:09:42 -0800 (PST)
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
Subject: [PATCH v4 01/13] soc: qcom: geni-se: Refactor geni_icc_get() and make qup-memory ICC path optional
Date: Mon,  2 Feb 2026 23:39:10 +0530
Message-Id: <20260202180922.1692428-2-praveen.talari@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=Reqdyltv c=1 sm=1 tr=0 ts=6980e867 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Wptve8LSCQjy2B8HgooA:9 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDE0MiBTYWx0ZWRfX6SwZEYH7ASOJ
 svrX//xpS0zOiZTvrLjYuvwpWksuim2dH33QlNe26PgrTOTXdIWCCuius66xK0RBhXry40ziYPN
 30Qh19D3CKy07tval0Ice1YQ1QUENzg06k5k0xXknsoMB0LnCu6v1sKToZvbdRMuLbNtSaPLYse
 0wwPDXBwYcOWmNyWUlrAIvV8lNPcySXbQuJ0IjFdGN76zLO7mgnVHmP7387rjxWAvnm8CsPp8AX
 TAv0ZLrrH6VFpS5bdvp+Trr5JihJxpv8AXcedTBda/96KEWSgO7iWws9J5oZhe1BSTwrc3XwJr1
 PJhnyIi6vHD3ZECYzvDOPsjT/h0XSZYMZLcGbhqJAZqCTyguyuaYGk9liW1FEHfHYCWWsz8XL5U
 q9fEu7THPCkOWUSydwqcWAsAyOlAR7aNkv+/pe8GOheqcWAzlc5eeq3hCcNBY/abwXoRGFv+WAJ
 qKohTFTaAuUN8PxmEwQ==
X-Proofpoint-GUID: iQJrnIt7vChB4SEgZX-pgC1BThS1lW2d
X-Proofpoint-ORIG-GUID: iQJrnIt7vChB4SEgZX-pgC1BThS1lW2d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_05,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 phishscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020142
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261900-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3B925D004B
X-Rspamd-Action: no action

The "qup-memory" interconnect path is optional and may not be defined
in all device trees. Unroll the loop-based ICC path initialization to
allow specific error handling for each path type.

The "qup-core" and "qup-config" paths remain mandatory and will fail
probe if missing, while "qup-memory" is now handled as optional and
skipped when not present in the device tree.

Co-developed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
v1->v2:
Bjorn:
- Updated commit text.
- Used local variable for more readable.
---
 drivers/soc/qcom/qcom-geni-se.c | 36 +++++++++++++++++----------------
 1 file changed, 19 insertions(+), 17 deletions(-)

diff --git a/drivers/soc/qcom/qcom-geni-se.c b/drivers/soc/qcom/qcom-geni-se.c
index cd1779b6a91a..b6167b968ef6 100644
--- a/drivers/soc/qcom/qcom-geni-se.c
+++ b/drivers/soc/qcom/qcom-geni-se.c
@@ -899,30 +899,32 @@ EXPORT_SYMBOL_GPL(geni_se_rx_dma_unprep);
 
 int geni_icc_get(struct geni_se *se, const char *icc_ddr)
 {
-	int i, err;
-	const char *icc_names[] = {"qup-core", "qup-config", icc_ddr};
+	struct geni_icc_path *icc_paths = se->icc_paths;
 
 	if (has_acpi_companion(se->dev))
 		return 0;
 
-	for (i = 0; i < ARRAY_SIZE(se->icc_paths); i++) {
-		if (!icc_names[i])
-			continue;
-
-		se->icc_paths[i].path = devm_of_icc_get(se->dev, icc_names[i]);
-		if (IS_ERR(se->icc_paths[i].path))
-			goto err;
+	icc_paths[GENI_TO_CORE].path = devm_of_icc_get(se->dev, "qup-core");
+	if (IS_ERR(icc_paths[GENI_TO_CORE].path))
+		return dev_err_probe(se->dev, PTR_ERR(icc_paths[GENI_TO_CORE].path),
+				     "Failed to get 'qup-core' ICC path\n");
+
+	icc_paths[CPU_TO_GENI].path = devm_of_icc_get(se->dev, "qup-config");
+	if (IS_ERR(icc_paths[CPU_TO_GENI].path))
+		return dev_err_probe(se->dev, PTR_ERR(icc_paths[CPU_TO_GENI].path),
+				     "Failed to get 'qup-config' ICC path\n");
+
+	/* The DDR path is optional, depending on protocol and hw capabilities */
+	icc_paths[GENI_TO_DDR].path = devm_of_icc_get(se->dev, "qup-memory");
+	if (IS_ERR(icc_paths[GENI_TO_DDR].path)) {
+		if (PTR_ERR(icc_paths[GENI_TO_DDR].path) == -ENODATA)
+			icc_paths[GENI_TO_DDR].path = NULL;
+		else
+			return dev_err_probe(se->dev, PTR_ERR(icc_paths[GENI_TO_DDR].path),
+					     "Failed to get 'qup-memory' ICC path\n");
 	}
 
 	return 0;
-
-err:
-	err = PTR_ERR(se->icc_paths[i].path);
-	if (err != -EPROBE_DEFER)
-		dev_err_ratelimited(se->dev, "Failed to get ICC path '%s': %d\n",
-					icc_names[i], err);
-	return err;
-
 }
 EXPORT_SYMBOL_GPL(geni_icc_get);
 
-- 
2.34.1


