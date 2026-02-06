Return-Path: <devicetree+bounces-263463-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gO8xJwQphmmuKAQAu9opvQ
	(envelope-from <devicetree+bounces-263463-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:46:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DEF101587
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:46:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E62C630996D6
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 17:41:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E0FC41C2EE;
	Fri,  6 Feb 2026 17:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MIgtPWhP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q4ys4HuJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE163126D6
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 17:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770399714; cv=none; b=XSC7v/YzQfQ0SSu0SAIBNF65dejggdNsnWFonlZCIjwFT7aLGI+rB/TcSka7pWab7R+4XZEUo0C6WVcl6fiePKDFeB1ZSL/YhsUJtk3GIxakW2FEmjvDWUQ18Of++uGOCnVin9ileNuoQXjI9UpUYRYvxPU57mK5oVKeKILtQwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770399714; c=relaxed/simple;
	bh=vinpJK3AdlE6QuECVjsA4xyKYusB2fCdpA1B0h1Sv7E=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=GWB1ODlf1XmIaJayQQUB24fmIhIgua74z0DyrM3acVPOvu1UGBLUsBKyju9pVtH4h1cd8jn2nrNUgIL0sX9ebX68hGr5l2RivFx29alaU/5bsVyOIP0W6aX/4Yoq2z70GCLOGxuRu+iAJyDSTpUHNvgdcf/wq0udSb18gfXxtpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MIgtPWhP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q4ys4HuJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 616B2vaQ2939295
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 17:41:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=iEGuO6CekKn
	dAjKBDhzD10xpNyXSXQXlYftFADS5L1E=; b=MIgtPWhP1cB88SA9xggokBWzRX5
	rX6lduVj09Kktz0Dt60q8ul9cFQCZZd4Xs2ZGaVHkRZ/PZud7fy7d3eawJ8Dy0Px
	YuMND4PVzf2nxL4irND+grUbzMUtQzofAf0i+XI1P1vXsWvSzACYxzyY1EQkPq1z
	wltk3Cofzv7No0wAbfgS+tjb46o5DZry1cjtMFVaxdeoQcVWro+g/0AwJsQ7xy+6
	CgAfLkctMq+8nwysVak/dccvpXRVtZxQe8A49/46vrcdrvanTIz7S+TxoByfpdIo
	pcBJb7++BuHQ4FVufMJ+xwUd0oQCKzF3BXdAu6kNeqiNpjMXjUIOckde/nQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5f35s4gt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 17:41:53 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c5e56644646so2524835a12.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 09:41:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770399713; x=1771004513; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iEGuO6CekKndAjKBDhzD10xpNyXSXQXlYftFADS5L1E=;
        b=Q4ys4HuJNF8u7jrx9qspgnjLabRD++vfzTJnCcnomL+j19OLfFFKMMtMohF76a3yY5
         m/4L2AFRM0R8otaRVitPtJ+SV0axETGpq64SO/1Ok7b0YG9G8FJ7iAz0ut4HOtvNuyd7
         i6Zp/RYcmJXrDVXO26xIbzKiKDgejLaTw3Chv0jSeWTqMoyZ5l7U3V8LEnnnDJoLV0sU
         pTgLDNQROt4el6V7YWOWkEfXZxM6YtPcPqkgLyLl9L4gp7I3HnZxFZ+/zldMtLLLOGrR
         sVB9+HZz2nLNO5mmcMUR3wBsTCoVUI/G32Is8JYkojUzmf3P23QQ6W8SmNwrBACZ59X4
         2wNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770399713; x=1771004513;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iEGuO6CekKndAjKBDhzD10xpNyXSXQXlYftFADS5L1E=;
        b=kavLLiRkUkHHZ3OAOVmqPNafgfQQQkn9X3rR3S7whF5IMTQLiu1rdl5dOC1wgFNtnH
         Q/u5wNVVvtNPTltwU/QBQTxV55d1IddSfXysAkWfAnbOcjbapaTq82wyOHdhLyJ+yido
         EKPBZJOenRBkNuVqnwGG8w/Ko75fqX8gLuPJsKJTfCR8CR4XKzXMAkuZqKMPDqm1NI9A
         SDuUchbRKUPeuro8j/aKwLfdOlHbcM6vl1CwDa4FQvh3IzI8EUL6TYrgFz6BYrQZP5hJ
         i8clzk3Aj7Vz309rB/s7VVgs9G4IdCBlvrTHpJN5dtjFa+9CmbVuDwPnRVvzUwBiBgEA
         JeMg==
X-Forwarded-Encrypted: i=1; AJvYcCWq7iFsJ5YLG+C9zybLhg+1zSWusUUH1q3mAQiHMR6JtJDl7wfFt1pYA73ywT/eHk9kDKzgzsV9KQjK@vger.kernel.org
X-Gm-Message-State: AOJu0YzKPx/EL/jJ5aZvA138spMJNJRNOnPhJdgdm11lWu3TNIPVaRjB
	JvhdSR9nhSJ9p7p/uyME8Bdf3+F2W7+RTc7j7K/x1SX8JNlCuBUNwzsk3ZygUejxi2TWnQ5w9JK
	OBCCvcq7bX1CfmCye2QpoHbInW0LwCJOueYDy51AarBxKyCCQBEuaM7XLAM3bpTmi
X-Gm-Gg: AZuq6aIWYN5ORtZv8RNbJLsSUaAsskmNw2+XBNpEYLOcjku+rpDrm/Aa+tLuibeP/zP
	hdyEFH3Ffr2RY1hziqLHHEJ7JpdtdUWNs8fLi9zv+w5Kc5jTQydsxzh1nt+dR960y7T9xODZjFZ
	F8AFx9P6nAH8eLNEvluWBpbsCkz0yVKb+25AyiPNdW9rx4mzNPYVK1tdagarBpHFQIVeJFyz5YH
	vfRUmeRO6ihGjQqd5Dw4jOp/05bQin8bF4XCJaWIgw/w9oLBKxF+PWgFyWgXzYlF6U0wWVrzWAa
	z5Jtn9HCALgEDlEFeVgxROcCvsd2cczZlaSP/cQ2HkOVx/+pZeebpihslL13lVePMBb/osl42Vk
	iMkGDsIlSHfr2dHwLRdWqhHOikAvXTv/PkNeGWdGaHWA=
X-Received: by 2002:a05:6a20:429e:b0:375:4503:ef0e with SMTP id adf61e73a8af0-3938f9a2322mr6550401637.14.1770399713027;
        Fri, 06 Feb 2026 09:41:53 -0800 (PST)
X-Received: by 2002:a05:6a20:429e:b0:375:4503:ef0e with SMTP id adf61e73a8af0-3938f9a2322mr6550362637.14.1770399712392;
        Fri, 06 Feb 2026 09:41:52 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6dcb5eccbdsm2639387a12.19.2026.02.06.09.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 09:41:52 -0800 (PST)
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
        jyothi.seerapu@oss.qualcomm.com, chiluka.harish@oss.qualcomm.com
Subject: [PATCH v5 04/13] soc: qcom: geni-se: Handle core clk in geni_se_clks_off() and geni_se_clks_on()
Date: Fri,  6 Feb 2026 23:11:03 +0530
Message-Id: <20260206174112.4149893-5-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206174112.4149893-1-praveen.talari@oss.qualcomm.com>
References: <20260206174112.4149893-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: UaB5BWrcUL5nrL4eiyNCOKKWvUjzK8zO
X-Proofpoint-ORIG-GUID: UaB5BWrcUL5nrL4eiyNCOKKWvUjzK8zO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDEyOSBTYWx0ZWRfX2h044spC1wDk
 WqxX13mD9rKmdIhVS1/VAldaJgWcOoo6RPNT1CjsVMurOlMfAm6l0VZCoN8S5tqTEmzO7bXbUzO
 1io3dJcS9Pnz8KsclPiewSjd32LGu4MOXCi8YO4Z+919qgb14sjZBUY2VKEq0BFp0+DuxznJPqW
 bY7iWWhHHkxk3N+W2Bz+eZlpzrCVp/I4WPxfLJtN0YHDTG2hbDiKjhptoBjATulIF4fcuu+mLN1
 VEOs+ej/bkZsfFOaK7Q7j7SWYkVjUVi+EF/kD0AR6MxWoXRCKKhteCKwVCDkIZd8DBpon0np+SY
 iSzcdLu8lKG5RvzT52l4MBMNs5NmT84HohGfoK2yNU1lN1Dnpb5Nu3eToXijt6PS3uyh9atcyFg
 EYFFeMYBsBZEhpIs64Jy29Sx6PokOhjk3l8suwK24+HWAhoI6IRmHmzrYKMR3ugAGLhYmlncPNA
 th5M3M2auvUT29WtcPg==
X-Authority-Analysis: v=2.4 cv=ApnjHe9P c=1 sm=1 tr=0 ts=698627e1 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=fzsqq50RfsZR9heXkngA:9 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060129
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_FROM(0.00)[bounces-263463-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 00DEF101587
X-Rspamd-Action: no action

Currently, core clk is handled individually in protocol drivers like
the I2C driver. Move this clock management to the common clock APIs
(geni_se_clks_on/off) that are already present in the common GENI SE
driver to maintain consistency across all protocol drivers.

Core clk is now properly managed alongside the other clocks (se->clk
and wrapper clocks) in the fundamental clock control functions,
eliminating the need for individual protocol drivers to handle this
clock separately.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
v4->v5
- Added a Reviewed-by tag
---
 drivers/soc/qcom/qcom-geni-se.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/qcom/qcom-geni-se.c b/drivers/soc/qcom/qcom-geni-se.c
index 75e722cd1a94..2e41595ff912 100644
--- a/drivers/soc/qcom/qcom-geni-se.c
+++ b/drivers/soc/qcom/qcom-geni-se.c
@@ -583,6 +583,7 @@ static void geni_se_clks_off(struct geni_se *se)
 
 	clk_disable_unprepare(se->clk);
 	clk_bulk_disable_unprepare(wrapper->num_clks, wrapper->clks);
+	clk_disable_unprepare(se->core_clk);
 }
 
 /**
@@ -619,7 +620,18 @@ static int geni_se_clks_on(struct geni_se *se)
 
 	ret = clk_prepare_enable(se->clk);
 	if (ret)
-		clk_bulk_disable_unprepare(wrapper->num_clks, wrapper->clks);
+		goto err_bulk_clks;
+
+	ret = clk_prepare_enable(se->core_clk);
+	if (ret)
+		goto err_se_clk;
+
+	return 0;
+
+err_se_clk:
+	clk_disable_unprepare(se->clk);
+err_bulk_clks:
+	clk_bulk_disable_unprepare(wrapper->num_clks, wrapper->clks);
 	return ret;
 }
 
-- 
2.34.1


