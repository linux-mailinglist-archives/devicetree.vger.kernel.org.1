Return-Path: <devicetree+bounces-269066-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gP2IJgc3oWnRrAQAu9opvQ
	(envelope-from <devicetree+bounces-269066-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:17:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 025401B31C3
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:17:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 582EC313C60D
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 06:16:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B133363C63;
	Fri, 27 Feb 2026 06:16:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TUq8BI5o";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L6glwckm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB0E355F2C
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 06:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772172964; cv=none; b=XGofV8AYE+Hb5tV5dw2gw/84TCrQNHJSoKv+Vp1Nsnxks2dJR7bTFKcK9zoW+vzsKLorhjrifeWR/oBtt1EncqxY0GtQDWpPCSqzBmKHMxGrWlRpX4myOL8Lu8XUjLw1JZXzfJz7z0MZ8kl+cqH/HgC/QZdSumB91n+HdqATCwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772172964; c=relaxed/simple;
	bh=Eck/D6KmwOrBysTJIIaZmSoFBAq/RlW1moTUSu+Xl3I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bQe+yEQahvAn8LhagS8Qy7bijYTkBiumIlxisu0AhdUs7UtXlE2nNcStgLBw3jBnMDXPGyRCroWkeWc4yMoKJjnPeAe5135ei2tmnyuB7koF2l6nbtbJ1xtUKkTUpqZ+qBMKfRKzLOc9w/WvqaoAa7hLgdiSGxUQUbIKzN/n16o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TUq8BI5o; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L6glwckm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61R2K2HW3185465
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 06:16:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=KnpiwG0d//X
	/Doe7m+7TdtdTnhg6HQ3OqoiGCkLu8T8=; b=TUq8BI5oP0uCUQMb/aMfSVM7/4U
	rLBldCkEcVQDLwjBG150mjFIK9jWCB/erR5vaw8IOVgeoEhTRLl6Utggp+ATllp3
	tGWIJl2Ct4zmU+TuPxbqRHbF3leCcIpUr5Lq+ReOxv5mXBm6qER7NIBBQ86BNfT1
	zFe+dYAIubWB8s1jLgiGCF7rD+P/RSgP204IJfRRwIXkrehHpBuA7QAvUrSgP0EV
	dINy9xWxlpKQoqzCaAu8UXCYu7C0wrZOXz14oGuL2py7XHMo26W3f6PDSoLNgcc7
	kcw9KVAgMIB5K3h3DY4zvX0qFcn5puFRmpBzCcy1lIL1RWy1M48oo5KDn9Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjmp63hbg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 06:16:01 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2ab4de9580dso93247935ad.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 22:16:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772172961; x=1772777761; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KnpiwG0d//X/Doe7m+7TdtdTnhg6HQ3OqoiGCkLu8T8=;
        b=L6glwckm7SPTRs2PuRdb2xvTV+MebXTvAbU8xmdjy1pFQWI83S1LwwhgEvykaPSGkX
         7TKCeOdqbuSVrANiOisRzduXRck0lE2B76PBy+qQVlg3ZWCFC05CToswMW2y5JsFQ5ir
         7zeUDGjiMTdsulH3OKBaLYTEOJtxC+bImFjYU8qiCvdJghZ37iqzoZ8G/Sh3bL++FNcg
         UBgeij6J6b9c2YGuHLrkvD8KcnCOchhgh9hp6PeaBaeDWGBYglwCCJHJCtvlwi3uR8Zt
         IWqZRtvzkYWSLlyzsdLHDPNF+yRghn7rDc6eyXV1jKFgATVZR6FsQtha5SPBsCqz5tJh
         JlBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772172961; x=1772777761;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KnpiwG0d//X/Doe7m+7TdtdTnhg6HQ3OqoiGCkLu8T8=;
        b=jSAiAYRBnvlFecU2LPm7iydj+zt13pw3UEZst9+I6/ccgA7Zu1pCUAOTJz671y3e3J
         Fk1GuTmeWeBCX2aRSZVDL818RyJhD3Lu5YmkqPE46m1wwJttYF71UT0hIPXALi3Ooyw4
         1hucXZEB+z8lSjCW1kRCwqvEBVRNoiaQBAcELmzUutEfKDqJJVwmSB2SsNB4dLlfqhnu
         krFBBO5u13njiJ/gjP6lI+JK1V7iG/GuVrOH4eibmUP5/4A+z6gyLcvT2gX27CKm9Rej
         ejuXzw4PFlfvlYb+JMLsj0O11ez+wuV46oSI2or7LYqIxpvoLxjynOtjHCaXFY+XVwSK
         +l0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUIeflnw/iYRWi3AO/s8WMvZkwBGkeF1dWWBnYCutF2PjMCjMc4+JQcrycWoLYyrMB5h5vISYTDXiSj@vger.kernel.org
X-Gm-Message-State: AOJu0YzO28oLJ2vsefddT7HvQMPhcMJ5YgS88CVfZ2cqr+/AP5mdVK8D
	KysmKYxILvJpnAHt7sOE4Vsj/2kbYjDS+S/mzzc3mrt66C9NTsByZd3wcxxS56dBgyFj5z9IALB
	5FbB5HvLVgTSSYa7e+Xx8R7px8bTmLWofMr15BffsW1BPC9OxaJVG5mGkCk4we516
X-Gm-Gg: ATEYQzwjBFduEJ/UiA31ccT6LQf0bVb5nZLd5qvToakPykAyTfaU161w1KXVNxxzJlI
	5/yPXqMq0MXp/NG9pocH/Ng0Bj5zqYY9MEvkF+f/7icaeQrX618krps3gaM9phzCheUQQ4Qj4oD
	i3tDjySGu52WWvKcOqptul3WHlSjWF9DnuHgZ653FUjvdlyXN7sPlpyOlsMgNvGnuRK5XI1EinG
	s4wOJ+7aLIruqLQoT2RbtgcDaVeDlhHKLOmC+BAULIm7C8sbtJ4n7aD/E1m9hNyb4BfjU1GfkY3
	3POvQhgmeMrVRujv5VBPsJShUQ/hjEYcB5bzoeXAwBSmuJP9SNVnPRv5BFnqjlrZf3LLOaOw84+
	ON0EofzF05uQbH9Whm9LXTRibZipFpsjC8/zRN4xUaJYgMAe2ZgLN6KA=
X-Received: by 2002:a17:903:298b:b0:2aa:e34c:4c8c with SMTP id d9443c01a7336-2ae2e3f156amr15664695ad.20.1772172960839;
        Thu, 26 Feb 2026 22:16:00 -0800 (PST)
X-Received: by 2002:a17:903:298b:b0:2aa:e34c:4c8c with SMTP id d9443c01a7336-2ae2e3f156amr15664435ad.20.1772172960303;
        Thu, 26 Feb 2026 22:16:00 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb6a043dsm64813025ad.54.2026.02.26.22.15.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 22:16:00 -0800 (PST)
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
Cc: prasad.sodagudi@oss.qualcomm.com, aniket.randive@oss.qualcomm.com,
        chandana.chiluveru@oss.qualcomm.com, jyothi.seerapu@oss.qualcomm.com,
        chiluka.harish@oss.qualcomm.com
Subject: [PATCH v6 01/13] soc: qcom: geni-se: Refactor geni_icc_get() and make qup-memory ICC path optional
Date: Fri, 27 Feb 2026 11:45:32 +0530
Message-Id: <20260227061544.1785978-2-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260227061544.1785978-1-praveen.talari@oss.qualcomm.com>
References: <20260227061544.1785978-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: CvL-dBeYB83fmoZBNd9xD7dHPkdUbzww
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDA1MCBTYWx0ZWRfX5nsJtaCc+FZi
 X5IGu3oXE1r1GZEtmcI+LT958e7TAuU2xRTpS8U0r2mz5vxXADnCIGH4ttmZfeA1cI2gODutBr5
 WXZS7ldis0ujBkMc6/QZBRCZUayTLuiRpU3VFqZX5a6cZECFVO64NBnYgjmZ4CdmOorgO5RiEjn
 jWFUAYBDidSM6bS25wWukdAlBQl02UVk+HnJZqaNEuj7cOimUW0YDVtDZ4hUbZJQ46nmSVXPXiV
 ZeQnyKf7UW34hI34bN5IoYV/UBoodTJZQpGxmEhR+Kpvgme8wFTjb5nrQ09F7EzFlwHPSlNXkNW
 kAhslO2+KCuaHwKvr8vOTr3zwG85V1AbdaizJ/drR6APa7LTaoqSl/dm5vu5pJ3Cc/6pPZi62Fx
 A+2asjgvePCb54cVk53w7T8P2QQfZLk6RfiCOXD9BuvFddfFBUBHb8YBXPWg+ZgnqxmaJ9ukY2a
 F5jyMgrPKUp5QzaUFQQ==
X-Authority-Analysis: v=2.4 cv=daaNHHXe c=1 sm=1 tr=0 ts=69a136a1 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=Wptve8LSCQjy2B8HgooA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: CvL-dBeYB83fmoZBNd9xD7dHPkdUbzww
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_01,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 spamscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270050
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269066-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 025401B31C3
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


