Return-Path: <devicetree+bounces-265807-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJ69AXYpk2kI2AEAu9opvQ
	(envelope-from <devicetree+bounces-265807-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 15:28:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A72E144A73
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 15:28:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3CEDE304DF02
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 14:23:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E5933126C6;
	Mon, 16 Feb 2026 14:23:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nEdUSkxs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CtPZsOAi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8DAD311946
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 14:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771251831; cv=none; b=Fqb4YtybxdJ5VqnJQLq4KhDkjcLc66SF4/e1ZwbEY8pSXYJ/64c2WmXormhs4EFE900G3yFCYBt2JA+R3RxIwaFuTFHv93+8WAwrEkUSezEyqRs2rivPPF3UIfwVvuq+QUKk28ClCKt2RXNNlXFivQopsYZjJxsfRyhgVHo43o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771251831; c=relaxed/simple;
	bh=dJ9zEXSgOA3sFYwLORlvoqIiO2XH0IV4KbW06wxvxcQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Bx0rCiODgxNR4nuPZ+hWd9xMgyvtwzABlL6p47M8XzNprTuZtdheJCEbAvdSVDTAmo2QdsFUHRFPtaXPxekQdYKLtie3LU+2CiAMmjDNgzdWsEe1ohyIhumrztqOVayLIfO0DBzJ7XTPM8JUx+g5fw0P43IOXI6FooOoItL6E1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nEdUSkxs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CtPZsOAi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GASuVe2311401
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 14:23:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jS495JnD5tucSzzH4FqqrVnwgOupbQrQpgwew2E4Q08=; b=nEdUSkxsoEOmVqvp
	lm7rdIxDeiaIcRzDeEVSmrnbjsV4GXwBk96Crloi3Y/LDPq9yAlEYl7ElxjKN1nc
	l7ajkRXun9dGpkSjHNMK3YBTdsCimUi7N4M60xdmg/Z5Ff9fkCeUaA+DegDgeJUQ
	fJkWWmDqje69C/VrDYYqP33ZwQRC12JBVTgE+GPeB1xltUlQcIy8jdq01wbQypXp
	ZR6nBLKnx01wpNlHNEXDot8spSDUV+c4lPW6dD7GkVieCLl7j6WZU9KcEFp3O5p4
	rWdWrq6p0+vI9UHiNAV1iTTukRYj5OeSXIGAErjblxOrxfjuNtd29Zi4Le6N5Fa8
	/PCASg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cagcf4u8e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 14:23:43 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6ae763d03so349923985a.3
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 06:23:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771251823; x=1771856623; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jS495JnD5tucSzzH4FqqrVnwgOupbQrQpgwew2E4Q08=;
        b=CtPZsOAiOvqs+4eAvcCiG/n0a3sYRcejEoYA89UVmkYIDMsW0gXp3VAjtYXEYw05XV
         uuXeBoPxU7fYaS+3Dd0SvQBqjJTEoRfMNBdd+i2UMf1puSKICMrCSMmCcqKjIgHC/nFx
         3V04SNIuAdloHtRzCIarvboGJXtnbciHtKHM54DZIjl3E0V5wonHdK3454Z4DceD6Ckf
         L5fPC2NuXvOeQKrGoVulouaLaxw3pY81r1FlnDWD3bLKjH8SGJ0U3KQJDMbYXuN32Agg
         YLpF0DyiiDIa2lcH+XhzUlapyy5Wgrq0vMsHuTx26oRg5KwX/SSEjG9MBbD/6gAZCtqz
         ZApg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771251823; x=1771856623;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jS495JnD5tucSzzH4FqqrVnwgOupbQrQpgwew2E4Q08=;
        b=itMiqrcIlcgNL2at6bRp2UaPXwtLl2zkVN4PVDaUdxKyHrgc1YEuGFFucaNrrQYbom
         uTyi4CDjoNTVjt7sv6iTZWSUECA9t2mOeIbSVNu7TS7urndPPrNy75wzun3Ng6VvzvGX
         2/QNtCORY7fFEZvuFXKtB532rQ62Bfa3IJuJt2wk4fn7sxg9pfFX04eBls4JH31rd/wn
         EIEIVlMzoZIATXhFm6rsSDIpGqMOeK2HP3QOPVsz3H7QP3R84ajD35VwH4YDqBY9QvAM
         xswpcF10f73OE7W2RS01JKx4FMCdoMQ2I/yw8YYexm6y4zjGr1O1UhAtN1fmVw02tPYm
         urnQ==
X-Forwarded-Encrypted: i=1; AJvYcCVX6kTALRTgrvbUc8SWQUkah0iN6Westr8wCxl5DGkBG4Z8FbRmYzGOIG/HwzEsVzut94guUKyQ3A2c@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8nJrODE463d0FSoI2LAp8FK8CuidqCwoD6y0y0YCM0l7YRUwc
	voOdF6IB5Zo29ksuXBYG8txnXRYQ9TD1kVfLPi9yi0EEXTkIAaX2hrfqE0wtLuzTYU67ZLFPt4H
	9edO9S1A1LnBBbMYnvMiHGYZMYYBtr0SmkDdYgd5Tp0qEKvgBTSjmXDIjjMoPOSjq
X-Gm-Gg: AZuq6aLZfN9p0gdBn9jD4gNgdgsfAvEDquzkd2AeUg6YR6DTHf8gXvTJHHOSr6QEfYE
	wgdAHx+smypEZn/H13I2+k1oCBB9zJcRfInO8D38ux20G6RObnsbtXQ44yXDo8fwGvJhhBXG66H
	kbFV8hN/429osRqv58b5e63RxmHSH2coObhu+IAivGB4BtGXSM0bs7pVoAT23SBieIL6yAFzvte
	SftqcbliPqIXe75PmXm9cz/4tq6ndW+kNL/o1gRXDbgkZifBV/iUhVRKaVHYnUyv24Q3C56GIi/
	XMB2eYaAuEnyxQq1O3QsKntYrs8jdkaGpiRVouiIAhk9hSKXq7bBal15aIijPtYvxDlsxkr+yoA
	oHUgh2ecCVgll0w9Ql17RSBj5YrUhWw==
X-Received: by 2002:a05:620a:319f:b0:8c6:f96a:4b3f with SMTP id af79cd13be357-8cb424dba20mr1223217085a.83.1771251822453;
        Mon, 16 Feb 2026 06:23:42 -0800 (PST)
X-Received: by 2002:a05:620a:319f:b0:8c6:f96a:4b3f with SMTP id af79cd13be357-8cb424dba20mr1223213885a.83.1771251821886;
        Mon, 16 Feb 2026 06:23:41 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48371a34d66sm101714975e9.20.2026.02.16.06.23.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 06:23:41 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 16 Feb 2026 16:23:19 +0200
Subject: [PATCH 2/2] pmdomain: qcom: rpmhpd: Add Eliza RPMh Power Domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260216-eliza-pmdomain-v1-2-c51260a47d6d@oss.qualcomm.com>
References: <20260216-eliza-pmdomain-v1-0-c51260a47d6d@oss.qualcomm.com>
In-Reply-To: <20260216-eliza-pmdomain-v1-0-c51260a47d6d@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1633;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=dJ9zEXSgOA3sFYwLORlvoqIiO2XH0IV4KbW06wxvxcQ=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpkyhnOCpc2MHIDiBazjehR5fPvP1hBIbAC38pS
 Jtu50WbfKSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZMoZwAKCRAbX0TJAJUV
 VmIzD/445JpnozT8QKE2TMDfKvJmBKfc5ZwVJTFhm7my2IPz59Cnndpm+HHoB4YlXgcuqMKY/RX
 cVtpCP8V+eDGVzJP6K1KjCLX/u2TiVIlR5chKwO8HBc+NuYzM7XarbYK3mXoblmCs7dby50EoCF
 JwRJDdmNwfOnO4QwfssWR1E8pjaIrVxmkiCd6pQbs5tTTgPr5AcSYaDzbZkM6vR8c7pSGT+CUC/
 ouCWVFkbDWHHt3Gvew2hApjFk+coad14jyshWRtay0R5pfmcfCGhXNASZ6L9QjU4oZLw7jHK/Gv
 NVhocee5EiT8OA9dur8PfoEpod80vhdEGxT752yvK2Ai+KVeD4pg8SdVbcYnTPuf0cBO2jVCkRS
 54Qqt2yUiHvKMWSZOof6jqhAp+H/7JF+qhdeHgyQpkTEdAoZ0h/i9GQlqux+6IVfB0lOt1uAqEa
 KW4soBc/CvLHh/5lItvrg83v59hBUEYmy6wdlkX5buMjmg3ZfhXoBfv77qEj29eY8vXbSXqLw08
 llhvh6aC2Pg6M7HICsyoNUuWWu0WYYYH8IlLDe7tGRGANDuRcE8E0IvDC6AMGy0ccFmKGJ7CJk/
 qhPE3BfiybGWKwPljiHWDrTWTKv2ObF6rgtt5i27QDidHm7x6pAGOn8W5zHSmNV2CvXq3/f14xH
 2aM8Fp91bntJqdQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: 6W3BKL0HI3oIL74o4h3cOeZX6R9w-Qdx
X-Proofpoint-ORIG-GUID: 6W3BKL0HI3oIL74o4h3cOeZX6R9w-Qdx
X-Authority-Analysis: v=2.4 cv=Sc76t/Ru c=1 sm=1 tr=0 ts=6993286f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=dWhSLnTLbNPvjsjzFE8A:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDEyMiBTYWx0ZWRfX3TLfcl7rmBfd
 YzMk2xKj3fAQaKMLaJNgCeY6XMxvW2NnlD4u2pqosOg9R8rrICRKFblM8pFu+D7q00Jlts8pF/9
 JdPXP59h2ca/wDHozhrMwxdJlf+fXk7CTWERbmkOrmA+ZcMEfQe9Dw1wmREy4LPT0+vMsrDZHip
 hD6mBmj137pzTmx0si5Q9EWQF1opeQx1HeuuV0PrEG8ckvyxTPB0vRRObF8lNGeH1xkgbpwuQXG
 aHeSbNI1FOtm06OI0fJIuybaZ1/z6cJkkasNSOeYNFw87Fq8bYwFwauyNDXtHDi7U76FXNdoVbT
 99noOfZazx/itktfJdEq3BweZ5N76P31eUn2fJIaTDGCJONNgA9W2DYf3efdjT1DytsOHRBi+Ck
 3vxEGl1NwlpGpCGzVBeAbU9Dd1biJSvW24OrvcO6ZupjBfXFnF/qPmjKnldr4qkdkTpmLu6v8ia
 N1w7qS29lyMwuDBfHaw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 impostorscore=0 spamscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602160122
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265807-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5A72E144A73
X-Rspamd-Action: no action

Add RPMh Power Domains support for the Eliza platform.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 drivers/pmdomain/qcom/rpmhpd.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/pmdomain/qcom/rpmhpd.c b/drivers/pmdomain/qcom/rpmhpd.c
index 19849703be4a..0c9a3995e06e 100644
--- a/drivers/pmdomain/qcom/rpmhpd.c
+++ b/drivers/pmdomain/qcom/rpmhpd.c
@@ -217,6 +217,31 @@ static struct rpmhpd gmxc = {
 	.res_name = "gmxc.lvl",
 };
 
+/* Eliza RPMH powerdomains */
+static struct rpmhpd *eliza_rpmhpds[] = {
+	[RPMHPD_CX] = &cx,
+	[RPMHPD_CX_AO] = &cx_ao,
+	[RPMHPD_EBI] = &ebi,
+	[RPMHPD_GFX] = &gfx,
+	[RPMHPD_GMXC] = &gmxc,
+	[RPMHPD_LCX] = &lcx,
+	[RPMHPD_LMX] = &lmx,
+	[RPMHPD_MX] = &mx,
+	[RPMHPD_MX_AO] = &mx_ao,
+	[RPMHPD_MMCX] = &mmcx,
+	[RPMHPD_MMCX_AO] = &mmcx_ao,
+	[RPMHPD_MSS] = &mss,
+	[RPMHPD_MXC] = &mxc,
+	[RPMHPD_MXC_AO] = &mxc_ao,
+	[RPMHPD_NSP] = &nsp,
+	[RPMHPD_NSP2] = &nsp2,
+};
+
+static const struct rpmhpd_desc eliza_desc = {
+	.rpmhpds = eliza_rpmhpds,
+	.num_pds = ARRAY_SIZE(eliza_rpmhpds),
+};
+
 /* Milos RPMH powerdomains */
 static struct rpmhpd *milos_rpmhpds[] = {
 	[RPMHPD_CX] = &cx,
@@ -795,6 +820,7 @@ static const struct rpmhpd_desc qcs615_desc = {
 };
 
 static const struct of_device_id rpmhpd_match_table[] = {
+	{ .compatible = "qcom,eliza-rpmhpd", .data = &eliza_desc },
 	{ .compatible = "qcom,glymur-rpmhpd", .data = &glymur_desc },
 	{ .compatible = "qcom,kaanapali-rpmhpd", .data = &kaanapali_desc },
 	{ .compatible = "qcom,milos-rpmhpd", .data = &milos_desc },

-- 
2.48.1


