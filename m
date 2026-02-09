Return-Path: <devicetree+bounces-264141-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KF3FI19Iimm9JAAAu9opvQ
	(envelope-from <devicetree+bounces-264141-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 21:49:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F84C1148EA
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 21:49:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C4426302737B
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 20:49:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5FB8364041;
	Mon,  9 Feb 2026 20:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j0QDozXf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kRIljlZL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 758CA333447
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 20:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770670160; cv=none; b=IDFtQF4IiVYXjCa02B6xoucjZfoaap40KI2j+bTGcyVuM0iOXpHoPPIqU7PJ+0XLI6LFsOYsERqWQI/rVgotA91qJEKkh8p1j98YBNwhMmTVnNev3QH/oRq99ieHtPVRtFHcPjK5UIy4obItKcB5Bmgzc9NqQMQIqgW1eYkeGRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770670160; c=relaxed/simple;
	bh=aoUoYPP0lMFjfgsX8sXXZwnlizCh/N4rAy3MXP/KyGA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=X21W3p1SGpqLjrgrNSzCMZdvM8ElSDK6SrvegzWrLsQuCkq7Aa+aOaHlGQISjIOlsRQWcSSWBwleet2ipgEXrr6eYJS//gdfpu7+EXU+eiyAuH+yiT0gXlqnIPQaCPfC8cpaQ9Dt8KC68se8GcrZk6Ukb5CMZFVmqU18Gw132Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j0QDozXf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kRIljlZL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619IiOCx1924779
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 20:49:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=qTZ8NcDvt+yUUb6+k5zpz9WOatFhAqKIZ+i
	/C+QRFyI=; b=j0QDozXfvaNx4hFC9gB4xcn0IJh0DT4mEn7nmYm/O2nyO7URgfF
	rnPkfZhSNu1bC3VQQPmfzrISR4K8bRtgsM1W9M/UQhOaXsr1rul8LrMdrHcguoj5
	vrvC+2WLJzUuyjtSM5II1/ns9tL7IAB8BDTtYUhPlTIEt67cYBT5B/y8ffks2nCj
	VCnPRjsF2eGL7epvSxEMhZZVbRV9JtugUm/B56JBheiETTiBolmINRYlZseZi8dZ
	qWZ/PlgyvJYEA7tZpvkQocPdN9DMSxMo3uE82bziArVz4uaRHSXEAkUeZHAQ3i8k
	+KjtK3ecvr6U41weXGpkp53aveQ2imeA+Cw==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c796ku0dy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 20:49:18 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2ba66faa692so1313803eec.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 12:49:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770670157; x=1771274957; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qTZ8NcDvt+yUUb6+k5zpz9WOatFhAqKIZ+i/C+QRFyI=;
        b=kRIljlZL8/YXmjFMqtP6EW0lDDzOc5HL8d3A8Z+mEOn0s7AY5b5sq3cSoPCu9+PWg9
         DBTsx1ca93tRfbEMl+I0u7q7W7dy19FZXIE4NpAIlzpEUGDyex6bm0Vuh7KqU+UOZ3hP
         fqGwARFSRrUU1Jeex+KQiqofDMCNDzntuA94S2lCh9jvx8cSE3giq+A9CRJHFIg8y0Ys
         CADoxTLWKpL/u/ZbbVUY23K0nDOTiZE7B7HU95c0K5+rj84pZzHppB1iuDnGbCyCCEYi
         kwnvujojpOYMNKDmjpc8AQe6E8M2DxOrb+0yzUNLdbYQMxh234XF95ekVujcpXN9t2NA
         ZQvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770670157; x=1771274957;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qTZ8NcDvt+yUUb6+k5zpz9WOatFhAqKIZ+i/C+QRFyI=;
        b=cQfZMZ8uhOkXsK9B0ySFQiDW9YCwQgxyI14U6A4nwE/uNSKEWmcY9Gi609mHBMeOCj
         JoBd82YoonCVdGBYxiIkNI1L0OQcesZE0v1u+nyznXrC6UtjgUqOOsadyiguu+blwYEJ
         FwAKOAmg0I3tC3PfvKr0Zwpm6By8Ke4dYKMptzBmroepuh5E8xK57rQchqAE3ripKp8A
         5sZe5rkztFPjA3qvukK5HkZfb6B5r02ti/h5+z5mjnjV+akzpwQA9OHtOgOxPs8EEsF6
         IRQOkF+zCbDVQSNV/blXkk85rxIooPMrM89jjWjJFOk2hKLXUwj3+oTdiRdKlzuZQeHo
         izWg==
X-Forwarded-Encrypted: i=1; AJvYcCXWdPM218TIgFkJOC3ogTlM7oyNqlVD+YYb5syD58SluC1i+wBD+Dn2ezU7AIJ1hgQ3WGLJyt8V5LRr@vger.kernel.org
X-Gm-Message-State: AOJu0YwJEG/bc34+ovPDmeoKRPMtSIArVCYCTcwgRXxqrKawUKjv9lk0
	nPX+4qD4FJT98KWMrBH7RHMVs/m6psYEatoKFDeZISpfHDNahbjQ2SQ8lcrmOGQktOw5TNs3p6h
	5cwFGiK6KR7holmlfv0qHupOL6Su/R0vndC9RmZw/oxBsm9EiQ1Yxvz7WWlTYi2jU
X-Gm-Gg: AZuq6aLXy6fKmNURJmCUqguK9D9g4VB4TJVCMkwpBwKPWXni4a5v1jRLchWIdhdxg/n
	kHDwBHeqQlyQVWS2Lh7SemfXrXcjuPP4i8T2V7A7WX1p1kaWY9EiN3vCSG95HzBRKrdTzP/opw9
	ybi0CtlMfvs5ZIDEzQINRHS8sUGkQHGZeIt4x/fSPaib78lUUSsD0scZEhjD2Xdd+wYge7pi8/F
	zHPuNa3oYcNyrRZTwisqSOdBvOWhxYcjQOdul/3xsVFEuLWZ9T+8d3vqsjfoHpwj8gnl+dmoMy6
	ZOdB7v4Ca8PCW6Fg/XJLLMFF7+06smekWIi/XT7+U75/1FuuNw4k9vhcSWmtue8/RTXArxkRTaF
	ba+caf0GJAD3cTLyVRPzrljNyK/7qaGZMeflK9wkZTQTfqmZVwnaCAwOY3zPoZlrbVjZQqy7ASc
	gl+suY2IlO
X-Received: by 2002:a05:7300:e426:b0:2b4:5514:38fd with SMTP id 5a478bee46e88-2b8567240camr5656879eec.20.1770670157229;
        Mon, 09 Feb 2026 12:49:17 -0800 (PST)
X-Received: by 2002:a05:7300:e426:b0:2b4:5514:38fd with SMTP id 5a478bee46e88-2b8567240camr5656864eec.20.1770670156530;
        Mon, 09 Feb 2026 12:49:16 -0800 (PST)
Received: from hu-amelende-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ba89ae14c9sm106247eec.29.2026.02.09.12.49.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 12:49:16 -0800 (PST)
From: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, sre@kernel.org,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-usb@vger.kernel.org
Subject: [PATCH v5 0/5] soc: qcom: pmic_glink: Add support for battery management running on SOCCP
Date: Mon,  9 Feb 2026 12:49:10 -0800
Message-Id: <20260209204915.1983997-1-anjelique.melendez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=IeyKmGqa c=1 sm=1 tr=0 ts=698a484e cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=8GRrOjMAp5Dx-Alo9PUA:9 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: iLsTtWV36NYb2xtClk3UYVgMUor7K8aI
X-Proofpoint-GUID: iLsTtWV36NYb2xtClk3UYVgMUor7K8aI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDE3NSBTYWx0ZWRfX+IRl3R60z7NR
 Y2GnuwJJQ7T5UrBmQ17aPU589GkHQHG4Q00xc0u5V0FXFQxMqrM2okUdoviGdyxhn4bcIkp7p5a
 JfbCmhUZbncsKLqeVQ0atbLw/DPdqWTwBtzIoujXMj707tHp+At3OMxY6W6jx73vHrOkBctDQp4
 GFqGgPqh1YFQSH9U11UY+Atps/oD1eqgGaelOsR7cKXUymdhg9NaqF3rgXWWCFUxX7HlIpBoOHp
 Vh+RQIGQnddPL+ai5OE4CvwljDcSqQvGfU2Tfjew8xkvVXus45Hwhbrpw9kRpG0SikaOssJ4/hA
 5WXY4Q/gi2vOQmkU3kfZI+7VuloHxQzWLLgRpjusVL11dtH2nXNsrLlb5tZsdVgAgSk1AWkUL2f
 M/cNGlhveae3bOPimbWr5CQReE8TCBS4uG0Qy+wATY97X1rpYmr6zWNXXhJkMJBt/Y1ZEKseqmf
 1pl/WRBY/ZdWEpzZ0Ew==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 spamscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602090175
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[anjelique.melendez@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264141-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2F84C1148EA
X-Rspamd-Action: no action

System On Chip Control Processor (SOCCP) is a subsystem that can have
battery management firmware running on it to support Type-C/PD and
battery charging. Add support for devices, such as Kaanpali and Glymur, 
which are running battery management on SOCCP.

Changes since v4:
  - Defined Glymur and Kaanapali compatible strings as "base" compatibles
  - Split v4 p4/4 into 2 separate patches (v5 p2/5 and v5 p3/5)
  - Added Glymur and Kaanapali compatible strings for pmic_glink auxiliary
    drivers
  - Link: https://lore.kernel.org/all/20260114211759.2740309-1-anjelique.melendez@oss.qualcomm.com/
Changes since v3:
  - Added "dt-bindings: soc: qcom: qcom,pmic-glink: Update X1E80100 compatible string"
    and "usb: typec: ucsi: ucsi_glink: Add support for X1E80100" to series 
  - Corrected bindings dependencies
  - Renamed pmic_glink_data structs
  - Link: https://lore.kernel.org/all/20251217055655.638594-1-anjelique.melendez@oss.qualcomm.com/
Changes since v2:
  - Updated bindings dependencies
  - Removed qcom,glymur-pmic-glink compatible string from pmic_glink driver list
  - Link: https://lore.kernel.org/all/20251027212250.3847537-1-anjelique.melendez@oss.qualcomm.com/
Changes since V1:
  - Corrected bindings dependencies 
  - Renamed pmic_glink_data variables
  - Dropped "soc: qcom: pmic_glink: Add support for SOCCP remoteproc channels"
    since it was applied from its original series:
    https://lore.kernel.org/all/176157405464.8818.5887965202916918883.b4-ty@kernel.org/
  - Link: https://lore.kernel.org/all/20251017003033.268567-1-anjelique.melendez@oss.qualcomm.com/

Anjelique Melendez (5):
  dt-bindings: soc: qcom: qcom,pmic-glink: Add Glymur and Kaanapali
    compatibles
  soc: qcom: pmic_glink: Add charger PDR service information to client
    data
  soc: qcom: pmic_glink: Add support for Glymur and Kaanapali
  usb: typec: ucsi: ucsi_glink: Add support for Glymur and Kaanapali
  power: supply: qcom_battmgr: Add support for Glymur and Kaanapali

 .../bindings/soc/qcom/qcom,pmic-glink.yaml    |  2 +
 drivers/power/supply/qcom_battmgr.c           |  2 +
 drivers/soc/qcom/pmic_glink.c                 | 66 ++++++++++++-------
 drivers/usb/typec/ucsi/ucsi_glink.c           |  2 +
 4 files changed, 48 insertions(+), 24 deletions(-)

-- 
2.34.1


