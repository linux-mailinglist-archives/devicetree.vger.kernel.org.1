Return-Path: <devicetree+bounces-267263-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJ9ZNfr3m2mp+QMAu9opvQ
	(envelope-from <devicetree+bounces-267263-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:47:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 66702172559
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:47:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 67DFC3048077
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:45:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2734034B1A1;
	Mon, 23 Feb 2026 06:45:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RLjqLK1b";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d+f7WHFH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3D0934B186
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829124; cv=none; b=So8WptyB6rBUy+izWTUBCnwnzcBrcyJpWWSNXfXq5iqAH20Ps2vdeDH4kM9O43rUkBiTNSf9ZyJN5HnddaW+McZsD5ZzUIIw9SmGECWfyjTSnE3mnz7VYI1ISrzFo1JIpdJ+dNXZP9j5NIsTum9CuOnbMWI60NzLpOa6a7zlASA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829124; c=relaxed/simple;
	bh=XbEF7lfm+dBjOkALDpKb/LLjuMBdmQi6ikgLxJ96uLY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ESLvOqfh+BNboXR0eadOY3mezD56jvlVW8MwAsuzNdJnhj8G7AdBPB7BXcbKz8eFaa9/hLD3OFzE6r/qW+142FY1s+QO7fOAUJLwCOJiADrZG2IyNyuy3LlzvbonE9WXwCCV9aenuVb0XgYD+R28P4Sy58jBcTgSJAWyqwG06SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RLjqLK1b; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d+f7WHFH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MLGhAo2298904
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:45:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sEr82x2IlsxHod8Ic8W+n2/1JQBsTzrJLVgT1R1I5aY=; b=RLjqLK1b6P+q9cVI
	aTsxfOg9QjnjKauIsXAgHXXl5ZnbsMtCFVaRb0jguBtSzanNdw4JsO7xoWQv4LzJ
	NrWSP7mZUFWZl68w57siwDjCHO63eOkvBChnn+F6vsFRBhOwXi8D1djqjOAnU3ve
	/23d6A5yfiDE2QA6KXg+boFoNlNXWFvpbB/dPPjVBqGMwq1QQK434RHXnW+Qo+gu
	PRVYeFsyS5ygzpTb+UNVP6wpaeQsVRPOwK8j9EBeo8DO0CLdtBioCptANI5xHze2
	zejVmqsiF6d0yDqn0EExMvvXvYNPDgCEbsqqZVFW2GfS7gXmJlL+MOdC4wUzn3Ql
	PeV2XQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5wyup13-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:45:22 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2aaf0dbd073so51291165ad.3
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:45:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771829121; x=1772433921; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sEr82x2IlsxHod8Ic8W+n2/1JQBsTzrJLVgT1R1I5aY=;
        b=d+f7WHFH6C4bNmmk+n4j3pwe4coXL6PSrTVtmS1ze3hMIPw/JCc0rZ0ARdJWso4eae
         45oyRKYGGQK+423XalmXyQcdCxKjJq1YWQTjthgvAkxxzKl8iX1IZ8I8Nww0mM57Us3I
         O2W1ilz4vaf/F2V2KGahFVJr4gAICeK+BGxeyLPJIjZV/z3fdZ4QG1R8PMqkf9H37znQ
         q7DgqH7hNnY4Xh93evwKDF5+gBhvPE7MkNcJ5MWV0Ul3OnevEVEgf8hjR2i7pelb1j5o
         FHDlzLV1JBn/Q0eDL1whzyZz4MwqaMrRmyaH8uh6/f1k0UQzOwqxAeBHvIx69QMhClYs
         08lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771829121; x=1772433921;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sEr82x2IlsxHod8Ic8W+n2/1JQBsTzrJLVgT1R1I5aY=;
        b=K4lKGHmMWk+m3gfMBfP7Y+pSh2XP3REnxy6zZnFdf/wzHrx/uWJVWNX7B3FL+7kKpt
         bEEy/F9Si9EXy0fmM1iomFEBHEpskCm5xilbyXEYLjIkl1DDkVsTZe+epPLvBNMTG6RK
         Twiwy5u6ncn1eo/BEHweZSSLUOjuzZLAzZkYQ4ipIeHWSAKQeyIr+KZuG1buXodChKCV
         J0wkIJ+cykIBM+MC+fAsoaniwPXza2a3fhEw8hD0W9LQn9TJuFgM5IDriMyykiJuMNgx
         6pf7MeA9l7lWjnMfzHKrmbWYLv5BiVzbAx1jlUBW6prbqX7+mkz3FVZduFzBZRm8ioj8
         H5Uw==
X-Forwarded-Encrypted: i=1; AJvYcCX33JWPgHpHhLoSMLLVqqCqpyLqh3cNAt3fO7KqojWQdD6e+2ux/9b0xb5BAR94/V+20CLfKh7QuXsC@vger.kernel.org
X-Gm-Message-State: AOJu0YwOvRn0iF+D6ReW+v4SqYMXJoaf7TozlwhKUSsXMGtqMN2wdfDu
	jZRQ5gW2WBhd3Ka5TlicDwKLRC01uBFaP0hcSTPTJbFyOtmj9soFcmePrQwUp8iPps3R0aHmAvW
	5tLfTHXVQGfSCDLY+DK0fvWqtcB08MPu8EJc87p+n8vv9SmP67Kb7KmsoFhmnIdBGuyozIx7k8b
	A=
X-Gm-Gg: AZuq6aIF0VrEO4sZbiNVTdIKo/0blF0HNL7kZWgTT0sa4NL0PYahniTM3u4ZBpWlmeD
	///4l/UCrO7hJUFZ94S7X4Ah0/PhDCcnng5y5xTEdckHyaBwuh44nAVrL+3/kiNZqU3WUisXq9/
	TTDPlO9mnUV02/Fm1/1tok/Zwn2ao44v4czr1RrUjNXqq8zXNfSb7SfoSUrGsmD9VETh74ufqi5
	FtWbhazKs5ziD9bulksx7mV24vS8PlX4pIBaLs+SYhm3VIh4ZloCbEZRCKI0JpZtFGVZwT6eyq4
	MIwbm/pT9ej4Kdq3sy9dNtBoSrIEd5YwCXL4xP82KKSUdqdbmIhsxJlLIZqi8cEgpLLAMHtwKlw
	LrIeEtqmEw6HV72CKr5UqigiDXWbb3Ev0hmt1JiHZsrG7kfATd4UMGcbIC6cBHP04abKbZWcXIc
	eS/AR/JJb86LoN
X-Received: by 2002:a05:6a21:a34b:b0:364:33f7:7338 with SMTP id adf61e73a8af0-39545e549f1mr5199019637.8.1771829121499;
        Sun, 22 Feb 2026 22:45:21 -0800 (PST)
X-Received: by 2002:a05:6a21:a34b:b0:364:33f7:7338 with SMTP id adf61e73a8af0-39545e549f1mr5198991637.8.1771829120967;
        Sun, 22 Feb 2026 22:45:20 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70b71839d6sm6483993a12.6.2026.02.22.22.45.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:45:20 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 14:44:40 +0800
Subject: [PATCH 4/8] coresight: etr: add a new function to retrieve the
 CTCU device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-enable-byte-cntr-for-ctcu-v1-4-042fb35bd37e@oss.qualcomm.com>
References: <20260223-enable-byte-cntr-for-ctcu-v1-0-042fb35bd37e@oss.qualcomm.com>
In-Reply-To: <20260223-enable-byte-cntr-for-ctcu-v1-0-042fb35bd37e@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach <Mike.Leach@arm.com>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771829096; l=2348;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=XbEF7lfm+dBjOkALDpKb/LLjuMBdmQi6ikgLxJ96uLY=;
 b=78YAd59lTYgK/tbuk4c/MCEBFv3Qi22W8s2kk+5gInZxrUZ5yMqCCGi8XGwxyb0DJMjyylj4P
 9MW/hrvOYgJARBc0EPCuuyhP5TvWAoEwTmX6QCFeolBXLkqpz9JPvJ9
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA1OCBTYWx0ZWRfX0ov8Ur/nK1CM
 RtnfVKyiVJolyT5tFlm/3UokJ0azFmiGxtOC/1tR0blf6TlUyzxZ6xuPA9ri/h8Y5HA/BCfGo2q
 iQ52ywFOiMc444CEur0IhUeRX4jfxRBYSqenp1/gIXD93Zj+2IbKiZGwauuwDTBiUFJFt566Flc
 3tqGk2c4ytDiKzJkToky6WaKO0ddKpc0uG0QPPZhXZWFr7FMDdNbbCTIJNKHKM1ke59OBDET+w7
 9UvUBOBmsRMqzEjATjVbjLZNQr+ohiaOeNWZ5euqCdfIBOJSYcqd0BBNZTD51flKTEuAh/RJ2Xq
 uvb8j28IBpf0TlyPDxl+9Y7OcJxjdjrgKJXSa2V0/a1GNdzlR76UuaVIYwpzrUsyOb3p2gnIMbV
 H9eBkDwiKaRNg1IOwGQq3iH5iNQqtzkJAb5tXYmleF6PLI2L3fUClnniT4vHbL95GOlGC7bpjQp
 ior8uLbsfoTKZIsBrBA==
X-Authority-Analysis: v=2.4 cv=UO/Q3Sfy c=1 sm=1 tr=0 ts=699bf782 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=FuIWbRVyn4pKkvqW11oA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: 4ce2KycGnIglhuYFRPwNUg_CsoBDE5YZ
X-Proofpoint-ORIG-GUID: 4ce2KycGnIglhuYFRPwNUg_CsoBDE5YZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0
 malwarescore=0 priorityscore=1501 bulkscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230058
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267263-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 66702172559
X-Rspamd-Action: no action

Add tmc_etr_get_ctcu_device function to find the ptr of the
coresight_device of the CTCU device if the CTCU device is connected to
the TMC ETR device.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 24 ++++++++++++++++++++++++
 drivers/hwtracing/coresight/coresight-tmc.h     |  1 +
 2 files changed, 25 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 081498162011..32353980964a 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -867,6 +867,30 @@ tmc_etr_get_catu_device(struct tmc_drvdata *drvdata)
 }
 EXPORT_SYMBOL_GPL(tmc_etr_get_catu_device);
 
+/*
+ * TMC ETR could be connected to a CTCU device, which can provide ATID filter
+ * and byte-cntr service. This is represented by the output port of the TMC
+ * (ETR) connected to the input port of the CTCU.
+ *
+ * Retruns	: coresight_device ptr for the CTCU device if a CTCU is found.
+ *		: NULL otherwise.
+ */
+struct coresight_device *
+tmc_etr_get_ctcu_device(struct tmc_drvdata *drvdata)
+{
+	struct coresight_device *etr = drvdata->csdev;
+	union coresight_dev_subtype ctcu_subtype = {
+		.helper_subtype = CORESIGHT_DEV_SUBTYPE_HELPER_CTCU
+	};
+
+	if (!IS_ENABLED(CONFIG_CORESIGHT_CTCU))
+		return NULL;
+
+	return coresight_find_output_type(etr->pdata, CORESIGHT_DEV_TYPE_HELPER,
+					  ctcu_subtype);
+}
+EXPORT_SYMBOL_GPL(tmc_etr_get_ctcu_device);
+
 static const struct etr_buf_operations *etr_buf_ops[] = {
 	[ETR_MODE_FLAT] = &etr_flat_buf_ops,
 	[ETR_MODE_ETR_SG] = &etr_sg_buf_ops,
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index 92ffaf771fea..27dd72065c60 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -472,6 +472,7 @@ static inline uint32_t find_crash_tracedata_crc(struct tmc_drvdata *drvdata,
 }
 
 struct coresight_device *tmc_etr_get_catu_device(struct tmc_drvdata *drvdata);
+struct coresight_device *tmc_etr_get_ctcu_device(struct tmc_drvdata *drvdata);
 
 void tmc_etr_set_catu_ops(const struct etr_buf_operations *catu);
 void tmc_etr_remove_catu_ops(void);

-- 
2.34.1


