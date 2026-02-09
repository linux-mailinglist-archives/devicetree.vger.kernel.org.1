Return-Path: <devicetree+bounces-264142-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMSZGlhIimm9JAAAu9opvQ
	(envelope-from <devicetree+bounces-264142-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 21:49:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD711148CC
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 21:49:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0BB5530090B5
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 20:49:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3F783793C6;
	Mon,  9 Feb 2026 20:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G08Ldzh4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GKPC0ywa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A93E3335093
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 20:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770670160; cv=none; b=nPD+WqNbqKVYsuvHxlTN5Zklj97N4HcHqFXrzG2LCwQKR/djGCxzS7C6XNDqqtmGKdL9KS60PWPKSQNi6OrG5+i1W3F1vi1uZpAHUoC7JtwDMBrEtcojgkXSx4FvBfg74kkecPss0gevE3r/EbwI7ZkCO3yH4s/ISJtxLhb+Cck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770670160; c=relaxed/simple;
	bh=HwnGZ3cKZvOD2FzYP6um9IqcfY3jnwy0Lssknz6kz1g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=gFuVULXYyLycKATr4qMH9RjAN7WNIqlsIpfWn6tds2LpHTYFtTPb8lR+dolqAkwg/BXeQYGva/KImZ/4o2wX+hiNi/LxVu6kV/Ff/CTPSEfSOUVTHmRvue9dV2HSB0LmG/peVwsZNfxGs9smCqBtwT94RS9HKH/Tw/l3yPV/ZK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G08Ldzh4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GKPC0ywa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619It1a13252433
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 20:49:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=xiuvzHoOW/F
	8kB3kHeqD8PEamlh8VCXtCJ3Ykz5i4zg=; b=G08Ldzh42Jozrf/HSU+ysZrTMsB
	NCBcchNiA11/egHMLOXLCwJoFabA8ku6kXKlCSCoUjGhShK38rPzUZA60ifqdF4l
	xFWJo+dPbQXxIrfxPV84EimRuvZ+mZq0y3e2PRLE/8udbP61MvTlBaB4iGVPDAiN
	Nohm9C3DHmZB83/WV4AMatYf6p2bVEXzHwyrJut6OxQ6dIi+ygdzXxxP5xjbIhOc
	xjraJ1PX+RFUbSgE2AO9f+4YDSDleHzOoAfmTQhApI9ABMmZKqIoqWEg1we6VJ7t
	ZNNsCD79463lSLlC3FoZ539KUhEn5DTRedk1DsJnl2LenORXRKIri27cz5w==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c79f6b0y5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 20:49:19 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2ba73b692b8so345699eec.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 12:49:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770670158; x=1771274958; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xiuvzHoOW/F8kB3kHeqD8PEamlh8VCXtCJ3Ykz5i4zg=;
        b=GKPC0ywaho+eLAOBo5zbB1j+01XZXqoK9tLnHwqKgP3Ku3wtGo41I/ybqmThH9BqST
         8u97ljsTnXDQW48NL7pSPoPipbOWH3u2Nu8hu18o0/xkM8iK4mnJ1fKes4Bd6eDCfjMR
         HYKEO128W8ngLVkLADHu+pMFEW3gan50pho3G6GWw5in0Trux7TfmDyFntmtD7jmC0a9
         rlcW0Nyqd8yBfXgatuw9PR3PNyOd/d8OYhWjLmaaVcpqnTDBtsVAL332A/oY4vY1ZNeh
         LiHZRnEZQMj/8x+6aYSbPHeNUEBQ4/2i6MWPE7HKIdZqnSIA58XyDZBhvrmez0bYMUC/
         8LnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770670158; x=1771274958;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xiuvzHoOW/F8kB3kHeqD8PEamlh8VCXtCJ3Ykz5i4zg=;
        b=DL5PBPX0OtP2rVAzUUW58c80YIqWb2yL/oW/e79/rX4sevlp1R2q6WiIay4y/B1xLh
         YRFVK1V032S2u5GLDTLNG0lbY60Ip2uoTRhyWI7I3XVb1DVS378IU7OGAW2Ws0IF2Hod
         6ab+3yGLXxr6/t3kz7Mqht6dT1uMQjv1JZg2yr6YSvl+wDsknI5AAY9hWYRwo0b3ixRP
         BblpShZNOLf0/jRmo1SfISEEBLHKB0nmMj4z0rxCiLe4JSu15ntlKk74W0cF4ha8qGUJ
         z9YmC+sGywVr5twB/bQw1k30SKgJHdoxbN609VdShCjzu8IkBBURHnQNdevNbsJMtb+6
         bjxA==
X-Forwarded-Encrypted: i=1; AJvYcCXzYQfJLaAUehbYoViwC7bk85bAQFkTjRsHXHMNLkDEnOkgKyu6D0373X7pTLLCsSZtnz7rjleqpV/D@vger.kernel.org
X-Gm-Message-State: AOJu0Yzk65j9lpnZ5oWlzsg6k+MWXc9NzB45RAKz8qgeD03YDiBBB0E8
	d82hr7Kcj37PqEgXIs+9Qugj5rfeoGDeGDjHTP9rkjPBWBqa2kt0/7Mj88C+NFI7Q/Igl/bavXs
	Ubi/BPgvhRtC+w9nTczTIYFMZyGwOPWMEs55Njtb3hYBzztsqmi0KYO0QNsJH4Y0U
X-Gm-Gg: AZuq6aIMC7CKhr/vysNc9A+irumDQ5uSabd6AmBc4igTFyImmHwJhV417/7pr1wEzVD
	CI4vOOlGHM5tJxwNsBHN+N9LlXsNEuRzT+JBC8wwU1CnNaSHblNiFoUSCN1RCp27B1umXy6FfgK
	OY/alkhURLRYfr+Wur6lC0/sawPk/krrWlnxcTpo6knazugQYmbMXEl8WENx9UERHkw7eBGiUON
	0oVevXYr4wV8m1et3KraxHOm86WSoCOFoO07+m8sb5szmN8/6sygcZGALuI88KX07nLReCr7gi5
	XrajGimP47rDcjRr8WfU8a+y8ZjrqEIilACpratlN/DGtMFuTE3UjIZaziH+/ob+2p2Bq4pKoEK
	XybN7ixR+WavV+VPwsaPZmsDP4pVNmyJXdypO81uIlfgnBjdjhh0EgPX5TY0Jtj8WixOR95Is
X-Received: by 2002:a05:7300:862b:b0:2b7:4f83:9a84 with SMTP id 5a478bee46e88-2ba89d74668mr36038eec.17.1770670157873;
        Mon, 09 Feb 2026 12:49:17 -0800 (PST)
X-Received: by 2002:a05:7300:862b:b0:2b7:4f83:9a84 with SMTP id 5a478bee46e88-2ba89d74668mr36032eec.17.1770670157306;
        Mon, 09 Feb 2026 12:49:17 -0800 (PST)
Received: from hu-amelende-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ba89ae14c9sm106247eec.29.2026.02.09.12.49.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 12:49:16 -0800 (PST)
From: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, sre@kernel.org,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-usb@vger.kernel.org
Subject: [PATCH v5 1/5] dt-bindings: soc: qcom: qcom,pmic-glink: Add Glymur and Kaanapali compatibles
Date: Mon,  9 Feb 2026 12:49:11 -0800
Message-Id: <20260209204915.1983997-2-anjelique.melendez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260209204915.1983997-1-anjelique.melendez@oss.qualcomm.com>
References: <20260209204915.1983997-1-anjelique.melendez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: Iv-Te-9tshPtZ4ulkbxRMxAKhGx3N4Ck
X-Proofpoint-ORIG-GUID: Iv-Te-9tshPtZ4ulkbxRMxAKhGx3N4Ck
X-Authority-Analysis: v=2.4 cv=W581lBWk c=1 sm=1 tr=0 ts=698a484f cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=dzyBTGdPCLdzs2CRRPwA:9 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDE3NSBTYWx0ZWRfX/Q2EsSHSZgE1
 xrNKX7UwDy2lmtMHnnuumPHvjaNxMJBezcBF8aMz1EOiMggLhuA9gy93gUtxJsiTLgUvSsRiztp
 CeOsvl82ZbhbNSeL1srCIarlFwr/U/uO2OnNqqns/sKgrrbTKBskIqlS3U+7JOy90FHZuF6Ri2L
 IB8aVbzZmzOCMDp67G73/yMA/BDoyIBjmGjQOTfH4xq4UvrIB4lHdV8XZv6+ElfHtNZdGxYOa4d
 UV1bSrDMQ4Z6yvsBj9R2EF6BOKwtmz1VwnMB3miVshY8rKvb1PcLBmcrENMb84o0ey4v6TNCe2R
 pVBHLNSDj/GOZhUkRx6oHumZKKq0iXFJ4lXJ6Z14JXPM6tiwIUrMO9C913GKX4jm93FIZRQAaWN
 KYQvjGbJHtua3e0V1GXfq8P4x16A29WNSrU4UGgBl/Pe4rIreT7ReOsUBDvAvYdXk8aqS1XYumY
 K7oUy9wURCQq1JF0aEQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 adultscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090175
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[anjelique.melendez@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264142-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CFD711148CC
X-Rspamd-Action: no action

Glymur (a recent compute platform) and Kaanapali (a recent mobile
platform) have the charger FW running on a new subsystem SOCCP (SOC
Control Processor) instead of on ADSP like in previous platforms. Because
of this, pmic_glink interface on Glymur and Kaanapali platforms are not
compatible with previous platforms. Hence, add new compatible strings
for Glymur and Kaanapali.

Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
index 7085bf88afab..ff01d2f3ee5b 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
@@ -23,6 +23,8 @@ properties:
     oneOf:
       - items:
           - enum:
+              - qcom,glymur-pmic-glink
+              - qcom,kaanapali-pmic-glink
               - qcom,qcm6490-pmic-glink
               - qcom,sc8180x-pmic-glink
               - qcom,sc8280xp-pmic-glink
-- 
2.34.1


