Return-Path: <devicetree+bounces-275121-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MORaInbps2l6dAAAu9opvQ
	(envelope-from <devicetree+bounces-275121-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:39:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DE64A281986
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:39:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6E61A3244AA6
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:35:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 940A435A391;
	Fri, 13 Mar 2026 10:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F/c/ssCm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TrhUihxK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F646388E65
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773398109; cv=none; b=lKQsFle1WVX9qJQRHupGadeQrcRpvS7aZL6uUYFJQPH5gbeztz9nWKm7x8rVCLxo5cSUqZqSKGjLTmaqcu8TYJ0JaLwOaLTYCla9cxVp6DSZc6dBGPD+OWh0HlRsQg0LvhnADuGUPQvAWvLmz2gaCA6kWiuHJ18tii7tAUcvFY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773398109; c=relaxed/simple;
	bh=2Eyt/cZf835vJg+UD5F6DaILcgfrbs5ut1i8lTH/Hfk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=pQLophfKJcz43BfhPJH1C1kJMOGZJWMw78R7Nopaa6fPjVjIXhkWRUuFeHqDtlQkOsK4/kw0yVUZZOa/xr2bpJz8Yf0qQumQuW+tjNO5z8ihYe1rAwWrvjUpiN7HWiV9o2xcH194ba8AfUvIYvyYAQJGJURlVelbwD/rPhjBgXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F/c/ssCm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TrhUihxK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D6oJiT792849
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:35:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=hjmuyXaZGCy
	cxQIO4DPkkK7oINLVs67xlqJvYZZEsYY=; b=F/c/ssCmxU7IyOrS5ordYFZarKf
	KjV8TxfpGAP2XEfZ8DY3N2gUmmH/HLOTK89V5XuJsKPmvTfKnkb/26rT4WWWcLeQ
	KKYmpQixF/wab1rbjcHX87DiA7hrL8sAyufrb/dQWXReKwO8pM8/iahH9tA/TFfh
	t6p9vHBR6OEyy3zjMXqoPES9E07I3/O8nO7YhlltT0YExsTT1Hmm+YYLzK/8S8Kn
	FWKxJZo3QXU1e6GSbb45/CH7GQBFeCG5DaJRV6e7Xfv9orzRsEJxKQFbhaC3/KuW
	VqaCONtNkogoHFok5Q1eNBD/IBS3WpXm9XM2JJ81BrW2FiiCM7tPO+ET3sQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvdnt0tba-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:35:07 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2adef9d486bso22035705ad.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773398107; x=1774002907; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hjmuyXaZGCycxQIO4DPkkK7oINLVs67xlqJvYZZEsYY=;
        b=TrhUihxK73N3N96LUn0Ptpzh1kxP3WPAJPYOyb58qdumJgccUi34m36KZqyhZD03+Y
         RxvXt4mt8PwySiITUCLi+CpprBF6kIEf554RFdhxaOcom5/jr8kZa7Sh1QZwufw6OqGi
         jFxjSEabmnHnE4F2hkydsppTP4D8XhOuZ8L/TsHlkH9UUjKnskzinIFShIJV4Yw7aN4e
         EcfuERysVwa343q2R1iMGnrwihWfxzT2gSvjIZ2DSLtj03Jr2N688Se4P1TZNXVwuovT
         yTflKhzxKdVMFgxohm6lpn9iiJgYyXELsdYve035Y9hiuiW4qH2/whHWvRGElBWsDULd
         eMFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773398107; x=1774002907;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hjmuyXaZGCycxQIO4DPkkK7oINLVs67xlqJvYZZEsYY=;
        b=Tg4pg4tcLv4gM55hEF9NxHCGy7PkWT/sNJEyvF5MP49nXA+LqGxB4wuNeGqKw1Qmu3
         d3f+HZwKFAxlUosMlRFBCGzrvvn31eS8ofo1ByNS/FnQSxciuQPRbBZM58o6B/On8pez
         wT3bvMtb4URYQk1cbrlRngTm2jMPDCGw9VdDX480AQ5J6a+LHNM/UFkeoMbbuKWphXBd
         /EUPT0hTelb0X9tjMEHJj2rJP0BGD8giCtISvX7fbOvIpMPbvNdjXgQKqXkGnhfbfexq
         s01mqyd894rJXnOWAyh8ekEYtsPOzNADv3IZO79KLC8+BZY/8hvRwO0CRakSLtGdFtER
         XJ9A==
X-Forwarded-Encrypted: i=1; AJvYcCWchJ6JhiJX0+VQjvl1queWOy44CRwh8XBwhCylu+sxyrzgHCu10HeDcfmm+0vnLYT5W7wOYoAb8wtX@vger.kernel.org
X-Gm-Message-State: AOJu0YyWLUw7VBx30lLUPjbvzkfQmLYUhs//cTqITgL+at/ZyL7nju1Y
	Zc170VcUIFrB1b8ApJTUPcZMnKT9G5fpKMOMHOAukYzVTzGg73Gms6Dy9Zlzk765R6SqkyDibg7
	jx5IOlCeTO/wiuw2SkIJAbVI51z8DW0oIyGOi1Z2gYpCewtJgY9XwdL++hudMtiLK
X-Gm-Gg: ATEYQzxZaHmDCCHNMzcM8hqs115MWhaCBH+xgWd5ZEwlxKnR4sb6oMYoSJj0E/dOzbl
	I3jO+ldcX9V8gWWgxloMNPWBHnCSkMkqCeOrKf1QZUZ3iCsCA89FVORK9gLtVHVoYCUZzhiM/Yg
	Xgv7XVLpmXqy0vLaasd5T+8MlLvCG3Jx5qbORiuu62OoOIIV0t47kii1kgey39fiBKtfJ+5HbYG
	bMZPvfEl38E9WyWsewgbBf0CzZupG0YI/TP4bVsx+q2uMbPB+V4z/F2U51lE6UvV1cKhRuUVgOh
	RytVY3u2yX6yjZ8JNCK9FP/D/lg8pN5KfY32RgOv0Z1lK3YQAvmMuxGnZ0ZaCZvpbWBJqMWMjyQ
	x8OThmDztzEvKNwQSjug19uPtAz3RAVKcN2ifvYBrSAyEisy+Z2ll/AW6SMqEwA3i6adKFV/F+8
	+/YYPlQI4ThI6vKwNCPfyhABkH8SQPVd7ftbZV
X-Received: by 2002:a17:903:2c07:b0:2ae:7f9b:3148 with SMTP id d9443c01a7336-2aecaa091e7mr27834345ad.14.1773398106510;
        Fri, 13 Mar 2026 03:35:06 -0700 (PDT)
X-Received: by 2002:a17:903:2c07:b0:2ae:7f9b:3148 with SMTP id d9443c01a7336-2aecaa091e7mr27833895ad.14.1773398106059;
        Fri, 13 Mar 2026 03:35:06 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece84d57asm18120745ad.85.2026.03.13.03.35.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 03:35:05 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org
Cc: sudeep.holla@kernel.org, angelogioacchino.delregno@collabora.com,
        viresh.kumar@linaro.org, neil.armstrong@linaro.org, festevam@gmail.com,
        Frank.Li@nxp.com, danila@jiaxyga.com, lpieralisi@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, tengfei.fan@oss.qualcomm.com,
        jingyi.wang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH V2 1/2] dt-bindings: arm: cpus: Extend Qualcomm Oryon compatibles
Date: Fri, 13 Mar 2026 16:04:38 +0530
Message-Id: <20260313103439.1255247-2-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260313103439.1255247-1-sibi.sankar@oss.qualcomm.com>
References: <20260313103439.1255247-1-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=KZrfcAYD c=1 sm=1 tr=0 ts=69b3e85b cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=Md80sOCNy-dqt-4CZCwA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: uKGWrKNrMeZm8B-UeJi9k5MP8dounAyp
X-Proofpoint-ORIG-GUID: uKGWrKNrMeZm8B-UeJi9k5MP8dounAyp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA4MiBTYWx0ZWRfX4tbV2LgCm6Tt
 Me7RMboNuF97tin+8jhTCuDV6laPhm0c6H28qR5AdgJPMmQe/BJSpVuBJSXal22x6yvmwDndPNB
 JXNnwWuexHB7WRVsWGl3yaqsXjILI1uc0NkK9TRpiESOggzgz12+DwzHm0X+5tfl2KsfTA9RWlW
 l97Kr3FU2I4kD2ob+uEEcrTiJprT73Jg8m6zS3Rg9PyidafLQx2V/AJkDu9JQMZJjBhUFHOUZ1r
 hX9w9G2xc0cgUexcGw3H/Ay52T0C0AMLUdEWoD3Pv4TjhoKeDrvTxG/bAFKibSluCmiYaBcL2xv
 MOeRa9GaKzB8JB/5dFBLtPQZTY6CeJ4Kobk/yoeOHo9tA3SNBeC/MM8CpA2/2vfLEjbnj655WOZ
 rxE42UXmtyEA+nXlsgzcrHS6v2omZGZB+QnrdJsKUkbzqW4wqoa4i/fRlJvJWeBU6kWBx9Ln5qu
 FqVMzOh5UwBRVU0DpvQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 impostorscore=0 adultscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130082
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,linaro.org,gmail.com,nxp.com,jiaxyga.com,oss.qualcomm.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275121-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DE64A281986
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The generic Qualcomm Oryon CPU compatible documented in the binding
doesn't account for differences between core types and has been
deprecated. Introduce core-specific compatibles, by appending the
compatible with MIDR part and variant numbers as listed below.

qcom,oryon-MIDR_EL1[PART_NUM]-MIDR_EL1[VARIANT]

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/cpus.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index 700255e9a002..fb6e5871b625 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -218,6 +218,13 @@ properties:
           - qcom,kryo685
           - qcom,kryo780
           - qcom,scorpion
+          - qcom,oryon-1-1
+          - qcom,oryon-1-2
+          - qcom,oryon-1-3
+          - qcom,oryon-1-4
+          - qcom,oryon-2-1
+          - qcom,oryon-2-2
+          - qcom,oryon-2-3
           - samsung,mongoose-m2
           - samsung,mongoose-m3
           - samsung,mongoose-m5
-- 
2.34.1


