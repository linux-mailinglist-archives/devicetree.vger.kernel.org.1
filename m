Return-Path: <devicetree+bounces-308740-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id f0smM5i5J2q01AIAu9opvQ
	(envelope-from <devicetree+bounces-308740-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 08:58:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE8665D004
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 08:58:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=lpjoVaxE;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=YyHVvp1D;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308740-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308740-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A6ED23058BA6
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 06:55:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47B7F3D3CEF;
	Tue,  9 Jun 2026 06:55:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212BB3D3480
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 06:55:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780988108; cv=none; b=rDc05ijf8huxf6avfkfvOB/x9QwMhR+t/ibe+/ex92XmSr91VpvXeENlLtJLUMeAigHES2f6PyDEYnvJ90o+yQGH118oiqXtERN4uMzIxqYIQ9jW71e6KO10BBRnt/tXYkxfYa5prcx/6vpgYbBXw4nfhvs47IXNo3PfrfRH4xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780988108; c=relaxed/simple;
	bh=v5y2S4KEuK9ll8FKbt2wx7n2tKCwSSz3NBpnzhwlnk4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oh1ceQbic3WORfPjTxtoVylGmZpjlCBmoJ7A/6G0gDLyLeOB6cD1AcmpZ0tuTCf6J3aNZOf7RBtRl+o1Co/WRo8/LbNaetJe4x1eaHjRB3acQFnwh4iyNwwT4DwK3++ddTnwqzDYShDSXz3yftGtQlIme2Lev6BUcAvIPky9zXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lpjoVaxE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YyHVvp1D; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6593wkXr994368
	for <devicetree@vger.kernel.org>; Tue, 9 Jun 2026 06:55:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=bmrPzwjDfZQ
	LqRIOrgrQTwpDk+/Ro0GV+O0RqY/iaOE=; b=lpjoVaxE16wYOx+Zsq0sSEpgjfN
	8jXABXV+I7hSYqYY9nHWhrsXv3eEHZScdvTRvIRrfAIaWqMTj6r77FEXPucIskjx
	LgRYQglFPMlhx2dGGPRtLASE8m0ONZMt7io0zzi+z01aG+o7obhByr/lgjuvm6lO
	/+dVEOi62/6gAUJrrSDgEj4G1rKvdPObK3djT1KhmS35wk3di8p+HrB55BEG7d+M
	4AGR/XC7p+tDaZReYnmIxXhBLUWBL/ePh+UfcpkxrwnbBTRkNz1+79+g17zQmfx8
	yEA3Rat7NBk4nA7+0qTH21HvlDh0z0bd+CsSeOkunnZFXYsmcAevjaqOJIQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4entrkw5rg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 06:55:06 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-36d982d932aso6581233a91.0
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 23:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780988106; x=1781592906; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bmrPzwjDfZQLqRIOrgrQTwpDk+/Ro0GV+O0RqY/iaOE=;
        b=YyHVvp1DT7H8qyHuChbrv6/aQdLv9uKQdOUlz1eml9JGSps5C/1m36NpvrspRpwmNK
         efIFpHZf6kk7a7d+qz5mm7b3SIHLeH0VhfUI6z8Svlxii3C7UO00uJ/LBWdCv6/mnCAM
         UHyGOG69s4xryT2gJTgkwFWXd8pHvQrCjzw2jTPh+6DBRl4V+bA6gKxEvZR+CTDEs6MB
         RwdDBcG1jdcWDqBQ541iT0heiMNiRXAsT+ju77uL9MAuvn1CBQXclt47H1peyv3s6Vty
         YIthNn48ZaxqUfJRtjaNjr0lgaOqwCVKlyZ7WLof0/AJws2jKyzSTwPhslQMU1+YnfFv
         js+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780988106; x=1781592906;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bmrPzwjDfZQLqRIOrgrQTwpDk+/Ro0GV+O0RqY/iaOE=;
        b=lT5QvV5DjTA8FHTRn0mHW+srq1WRReVu/XA+6VQFil0OESvIL0vlc6sjCahYwoQmbf
         rKrBTLXupmBsIOlUEsxFt+sSIDq/LxxHxJfHZ5ApLv9ijAFOGWx5nGpgPHPrXGDqhYKx
         6cnNL+vi0/qTgWN1A3/edbtMMlVxqWyxq0CxmI94bAV01S7ssvRPGWVbvlrxbzHlpMLy
         nDpsN2e4ZRIHtx0fapCzfXaG8vPClVpHxPAWIXpKMA9qqNh4EYEOi3ttSQ/i35beKCS4
         IisyKsFtG0+zagbFIbhepWHUmRkLG9TuoABBw6gbi00wtjasXINjcLX/RyGt4VsnwyWQ
         csvA==
X-Forwarded-Encrypted: i=1; AFNElJ9YkIy/5I2NWodqrO0TcOAlfy/Mq5z2AcRxx5h/ONNMgbJ0K/pJueZzr3fGS8j4cT2xVaZtnhavcwc0@vger.kernel.org
X-Gm-Message-State: AOJu0YzMqrfub8m4jYTkzKsSFo/XsrdbYOkUbjb31V1aoFSiE7guPphi
	qwzlxsBEzjejOp2NLj+oPS33TTpXEJwP/PuHf10e6E4wvSuuDVMZU83rglfG30Z/oj/5dOTU2R9
	iYqI06aPooT2M2z6pfm+i5G+ebULRHHfTVtoYlXw/3NqTWPZc1nap5V64dtbItevs
X-Gm-Gg: Acq92OFYdS1WA287UI4mFg3FciMauReZLK+f2szK8ERp3HgKRh3w4FLf1QqGBhEgReG
	33tiaBI39m4F86EUlhzd7PFX5nnq2TElDNXUMDliaXShiJXN7bvphOaPhxe9By4tBERl4o3I2sK
	ClGtSkFSzr5y4+E5dS4EYxFupwMmCE26/CImkIQ+BU5OiaaNOMq9P85UzKATEFeBo5Je7Y++B/g
	w2ZuRLYc+69up0hXTsEg1uA7SIRWPzhG71NsMHCnwRyMItxR2+gUE3WVpgYDZr0SlXyfVaFleY+
	Y3K092kL0VlucgcvXIlHWW/yWGBQ6sCFsZp9P/pGLrccYmPliJ2kq4O7KIDi6/cP+etEWzgM67b
	X3k2xh+b0bYDDhCOolXSbAj/A8R/f2MfuCi3CiUr+5EBzqupw5X9HQS2LU0X5FhccxaXPGIsWnZ
	iu5nU7kMuFMhvmnXMo2xVPTeYnFB7M12tnNZjYmnoBzX9rMrxybdJYcFNOZYcpjA==
X-Received: by 2002:a17:90b:3d8c:b0:35f:b6a1:8d27 with SMTP id 98e67ed59e1d1-370f096ad7cmr20967670a91.18.1780988105746;
        Mon, 08 Jun 2026 23:55:05 -0700 (PDT)
X-Received: by 2002:a17:90b:3d8c:b0:35f:b6a1:8d27 with SMTP id 98e67ed59e1d1-370f096ad7cmr20967634a91.18.1780988105205;
        Mon, 08 Jun 2026 23:55:05 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3712fcb3a9fsm8607926a91.0.2026.06.08.23.55.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 23:55:04 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: amitk@kernel.org, thara.gopinath@gmail.com, rafael@kernel.org,
        daniel.lezcano@kernel.org, rui.zhang@intel.com, lukasz.luba@arm.com,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v2 2/2] thermal/drivers/qcom/tsens: Add support for ipq9650 tsens
Date: Tue,  9 Jun 2026 12:24:47 +0530
Message-Id: <20260609065447.4024695-3-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260609065447.4024695-1-varadarajan.narayanan@oss.qualcomm.com>
References: <20260609065447.4024695-1-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: vNYW-KRRjXjIN-sdsH0yneviy17cCLcM
X-Authority-Analysis: v=2.4 cv=Z+3c2nRA c=1 sm=1 tr=0 ts=6a27b8ca cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=nMt2SIcdhh0IZDtwxJkA:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: vNYW-KRRjXjIN-sdsH0yneviy17cCLcM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA5MDA2MyBTYWx0ZWRfXycBRBugnBcuX
 OaEcs5kTgjGHVWn8HtccSiYmH1ucibjme889Lggv/lmPGym/k7YVMjF5evJiFb4W30F1VqziAwh
 BKNeSMGMLRqaBD/LGUjw0tXPm+GEBMkpVp7sqjO979ttGLwCv5UT8LAzI/cVPo3POxi9WBcBJlc
 ix+IGuhTM5StUKSYi7sJ0D5aqLVU2SkWwM5kFz3olJtx/01A/tHd2oWf6K4Hd9rFvccJYJebwQP
 9KquZC9Tei2GtXNu/yRhTLiJmabDCFnjU+RKgYTb08IIZslDr26R1dQfzyXXPqXj4IGHcPj8QQe
 gcLXCvv9QrT1xPMeBU5e2TEfe+qbIU4eCEiKZT93oGA0p7lvyGSSyo002JpZ6ms2E0Nst4fgiCD
 WAhYzOT7tSEl95mt0NOf794HY5408TkMuqN8V4zj7AdE0MfEaO+jXZadY/NxtOdCT2JXNNWe3Gu
 rmZ40XJnmuMj2Zgz3EQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-09_01,2026-06-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 malwarescore=0 suspectscore=0 clxscore=1015
 adultscore=0 priorityscore=1501 spamscore=0 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606090063
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-308740-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,intel.com,arm.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:amitk@kernel.org,m:thara.gopinath@gmail.com,m:rafael@kernel.org,m:daniel.lezcano@kernel.org,m:rui.zhang@intel.com,m:lukasz.luba@arm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-pm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:varadarajan.narayanan@oss.qualcomm.com,m:konrad.dybcio@oss.qualcomm.com,m:tharagopinath@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[varadarajan.narayanan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[varadarajan.narayanan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,qualcomm.com:dkim,qualcomm.com:email];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6DE8665D004

ipq9650's tsens is similar to ipq5332 tsens but has different number of
sensors. Re-use the ipq5332 data for ipq9650 and modify the sensor related
information.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 drivers/thermal/qcom/tsens-v2.c | 8 ++++++++
 drivers/thermal/qcom/tsens.c    | 3 +++
 drivers/thermal/qcom/tsens.h    | 2 +-
 3 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/thermal/qcom/tsens-v2.c b/drivers/thermal/qcom/tsens-v2.c
index 8d9698ea3ec4..ef1fee2266a3 100644
--- a/drivers/thermal/qcom/tsens-v2.c
+++ b/drivers/thermal/qcom/tsens-v2.c
@@ -300,6 +300,14 @@ const struct tsens_plat_data data_ipq5424 = {
 	.fields		= tsens_v2_regfields,
 };
 
+const struct tsens_plat_data data_ipq9650 = {
+	.num_sensors	= 11,
+	.ops		= &ops_ipq5332,
+	.hw_ids		= (unsigned int []){5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15},
+	.feat		= &ipq5332_feat,
+	.fields		= tsens_v2_regfields,
+};
+
 /* Kept around for backward compatibility with old msm8996.dtsi */
 struct tsens_plat_data data_8996 = {
 	.num_sensors	= 13,
diff --git a/drivers/thermal/qcom/tsens.c b/drivers/thermal/qcom/tsens.c
index a2422ebee816..e7bc622891ca 100644
--- a/drivers/thermal/qcom/tsens.c
+++ b/drivers/thermal/qcom/tsens.c
@@ -1122,6 +1122,9 @@ static const struct of_device_id tsens_table[] = {
 	}, {
 		.compatible = "qcom,ipq8074-tsens",
 		.data = &data_ipq8074,
+	}, {
+		.compatible = "qcom,ipq9650-tsens",
+		.data = &data_ipq9650,
 	}, {
 		.compatible = "qcom,mdm9607-tsens",
 		.data = &data_9607,
diff --git a/drivers/thermal/qcom/tsens.h b/drivers/thermal/qcom/tsens.h
index 2a7afa4c899b..d9d50d32c962 100644
--- a/drivers/thermal/qcom/tsens.h
+++ b/drivers/thermal/qcom/tsens.h
@@ -657,6 +657,6 @@ extern const struct tsens_plat_data data_ipq5018;
 
 /* TSENS v2 targets */
 extern struct tsens_plat_data data_8996, data_ipq8074, data_tsens_v2;
-extern const struct tsens_plat_data data_ipq5332, data_ipq5424;
+extern const struct tsens_plat_data data_ipq5332, data_ipq5424, data_ipq9650;
 
 #endif /* __QCOM_TSENS_H__ */
-- 
2.34.1


