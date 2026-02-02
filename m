Return-Path: <devicetree+bounces-261904-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qKXuDgnqgGleCAMAu9opvQ
	(envelope-from <devicetree+bounces-261904-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 19:16:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95122D008C
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 19:16:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DCE2F3059A8E
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 18:10:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 587AA38BF92;
	Mon,  2 Feb 2026 18:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZULst0HF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cG6zv38J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E305838BF9C
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 18:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770055824; cv=none; b=aM+nzgMBJdgLV9qedh+p2/Q1u9pQ8dnbSpBjBmRP8I1XVnwt4f16ffDTpFYPDgovcb0/gWfoHawcHAF74Q7LV1ysaNoN8+/I6m8QyxJYyEFMEz0cWGgTBVLddOw8RWXIfJvdx50loNx+n2qgnapSqlJ0aWQfda4/Jn6HyTwC2cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770055824; c=relaxed/simple;
	bh=Ca7dUrycfmQSIy3bhmc2ircfbQn7cqmMeOtkOf+AclE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ua1RKoUUaeujd7R10+fBDWgo6JZRQ+/uvzV4ZSYdtXw3lYqKvnHAOQH5FoMNkFM/NPLJhN2wLGNlugtAqeDnY+BYKoPn2dafZMSV8fJIGVORu3zA4FkPvTqegLU3J2YMig3xfdYNPBPTKlmnqHHbt+3T04advunE7zGHxIZg/CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZULst0HF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cG6zv38J; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612B4FZg2848631
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 18:10:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=LxiuI5+/w1m
	8/5Ddt8uPvaeMtlwMfkEvGlJMXIthprs=; b=ZULst0HF+q0UmDswXLZ0oR0Q8ej
	MxXSLAabYMthDy9H+faB9n0Y1FH2GVwOxPooOIc9QakR28/Q3L9yFPG08L9Nw2Ge
	66NIcJwB0ESgP0LPuILv6kQO+OPMw+9JeEOxLt9YrarUgIOR1fy4XrHyZVqO2z+g
	DoqFeJTc27TsXag/iEh3BCBmlYLYeHd6H+apO3XZe5to6d9y6bPrQFUjTms8aR1q
	Uz98B/Dh5VEHhCgOr5C6nzQe/f+JxNscp2WI2qI0UXziiHCBDY6t45C0xw9f/JPe
	l99Kj83r2b2XO5DUsfias2sVYyUqK7BVx67J3OQIYajpqeNMIdHig/vBHmA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2tqthbym-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 18:10:21 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-81e7fd70908so10050292b3a.2
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 10:10:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770055821; x=1770660621; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LxiuI5+/w1m8/5Ddt8uPvaeMtlwMfkEvGlJMXIthprs=;
        b=cG6zv38J2KO9MNNldnpMv7m7S9ZZTNCElzk6rteknYeAoMwfMZ0z/qq7V1DuHAk+ES
         qN+y7OPCVc53bO51mQN4bG7H4BY8PxJndqnnULz6L7GOedY7oIJz2y2nSvtqqiN5zV6r
         nDn/Z4YbFgfw+4BgMBTReU5BtsEOIfpLYI4m46Cg5DfAe5KBXyC7s/wH4R6GtiUDTVi0
         t0iStmnoZLYqF/S9LrRuajY/fTq2NY7V8xw72xT4TneJlo8Va9SM/F0sjCsADTnR1iA/
         JlmtbyadcI8/cW6/S7n3o9YJB3VJpHsxcRmVd02zSZtNeSqQLn5dKf91PwJKwJuxK9Au
         43xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770055821; x=1770660621;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LxiuI5+/w1m8/5Ddt8uPvaeMtlwMfkEvGlJMXIthprs=;
        b=dwrHmScq/RUp7QmqFJ/SyFvoaF3sYnWbeP6UOHesjyTkGAJrzA+yYhZJJ7o2pHVhUY
         VKefQPOSlC8wkRmsMILzZokbuVy+gxhUoNbqoUnA0Ss0ljnGvpspqFniyDXInGgobsqZ
         HoU/mD/leVmtA9ojl2ya7UI2OlRQTr2eWabe/g376ANZm7bEuSwPT8f6sFoiJSKf+y+w
         cBYZTpymlgpl/UFojL7g7T08shfNMuoNQYi+UaVGvbMN1GK7puL8YtPfKCvUg9Q5leev
         6ngdS3MRAPpVlu7rRZTd0btd0DWtQso9+apcHEw+rfnG97l35xRfKCtFtQpHba3+GPlb
         casA==
X-Forwarded-Encrypted: i=1; AJvYcCXupq8a8ONbq6/AD5T//oXlmc+23QTwlzYjuqtEM7dOWci6dcxhEQuAiX0ovJ1Rcpoft0Batsj9+qpK@vger.kernel.org
X-Gm-Message-State: AOJu0YwX7Wd/WrzVaxmTjKPVbEDLsou35awrbfbv/wrZGm8eSDqYvl2X
	1sXQZMYOEt3aTcgP0sYT4mGRIQmepkwhKQMOTtGd6DQV2dLMBnLRmUsvSRqR3QiM3kW2n6SEW2Z
	fdXSzofQrahn+qLQ13bm2h2UKkkSoAVe8iON8KfqIvDbjA6RohxT+40lASCagdLAq
X-Gm-Gg: AZuq6aJC602BeiYqXb/O5iQgJ9Wp7ysufzFX7CvNfH33yUF8jr9NXEqAYe8gNUPqCDV
	lOaPGdt8wnbFjSOIy0xBo+4y5ioyJd4emj8nHdiyyKRCydrsBzB4468sIjtj1qn1a7Xc985CqYF
	Hytb3DJ4AsDMaZ4aYfBS0SUiYe5GNeyCDFblrViy4BzsPlP4s7biYPrO62OITIudS64ANfDvPvn
	iETsD28AUBkU+t1mX3rkoam4b8tT0JXigD43hldnkreEs98HZykyBlrvHrqb4Qxz47TbJoCwHV/
	Bh7jtHIML8tr0b+nd7dBexzhn1LLdgMJnLUW5ZFGkGi1C6Z+zs+MgM8bjsruNuE9+Jz98r6UqZX
	vAzyrvu4crkFfuf03k4GSHbb00vfQPf5X3ro7UCmCTgc=
X-Received: by 2002:a05:6a00:94f3:b0:823:f51:192e with SMTP id d2e1a72fcca58-823ab756df4mr12339927b3a.51.1770055821197;
        Mon, 02 Feb 2026 10:10:21 -0800 (PST)
X-Received: by 2002:a05:6a00:94f3:b0:823:f51:192e with SMTP id d2e1a72fcca58-823ab756df4mr12339898b3a.51.1770055820680;
        Mon, 02 Feb 2026 10:10:20 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379bfc712sm17476780b3a.40.2026.02.02.10.10.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 10:10:20 -0800 (PST)
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
Subject: [PATCH v4 06/13] soc: qcom: geni-se: Introduce helper API for attaching power domains
Date: Mon,  2 Feb 2026 23:39:15 +0530
Message-Id: <20260202180922.1692428-7-praveen.talari@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=XP89iAhE c=1 sm=1 tr=0 ts=6980e88d cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=WUWHbvwt6nHlCWk_UTEA:9 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: 9h0K1uEmaObdVLgZ6V1HNBiuAFvQHjoW
X-Proofpoint-ORIG-GUID: 9h0K1uEmaObdVLgZ6V1HNBiuAFvQHjoW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDE0MiBTYWx0ZWRfXwNdM7rpHXaqG
 Fo+NKqpryoaz+l603Rm1++It6FWwj7hIGaqjA2A9NfFpaXhSZLLNh+BGyAXstVayid7+vKQsBu9
 0B78lvkyFz/vLAW5+Ovirhkb8m/w2e5buI1kbIMQ6wP0igoYovwe1QdWss3gDKmt2bqrU8Bawmg
 2P3DFQg/Mbt5vD7IoFbS6qDLVWgHt53coJKg0zE787AwVUMvpdd0gTBt/QF4SsiiaAJHHXJpu8j
 VygYckjZ3OCOb2lmCx6HKKOZGjDDWAUYV6QpjzVPeUUrk9nd8K1vG2DK8u2sIZvkOSkqnO3+VZU
 x1cG1QJKWuzbSWytZdWvEEcxGRX3uwotehw6mi2XMEsArD7uyfRLv1lxvM4PWaaLIN1SFXnsbMu
 6a116INfnodUFMaTu8VF1klEGZ8mpq55tRJuYRfJmAIgd8TmMWlwrNZXz7tpK0DOVT/e2/e75lw
 +FETwrdG4DbtHULs1Rg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_05,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 adultscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020142
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
	TAGGED_FROM(0.00)[bounces-261904-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
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
X-Rspamd-Queue-Id: 95122D008C
X-Rspamd-Action: no action

The GENI Serial Engine drivers (I2C, SPI, and SERIAL) currently handle
the attachment of power domains. This often leads to duplicated code
logic across different driver probe functions.

Introduce a new helper API, geni_se_domain_attach(), to centralize
the logic for attaching "power" and "perf" domains to the GENI SE
device.

Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
v3->v4
Konrad
- Updated function documentation
---
 drivers/soc/qcom/qcom-geni-se.c  | 29 +++++++++++++++++++++++++++++
 include/linux/soc/qcom/geni-se.h |  4 ++++
 2 files changed, 33 insertions(+)

diff --git a/drivers/soc/qcom/qcom-geni-se.c b/drivers/soc/qcom/qcom-geni-se.c
index 17ab5bbeb621..d80ae6c36582 100644
--- a/drivers/soc/qcom/qcom-geni-se.c
+++ b/drivers/soc/qcom/qcom-geni-se.c
@@ -19,6 +19,7 @@
 #include <linux/of_platform.h>
 #include <linux/pinctrl/consumer.h>
 #include <linux/platform_device.h>
+#include <linux/pm_domain.h>
 #include <linux/pm_opp.h>
 #include <linux/soc/qcom/geni-se.h>
 
@@ -1092,6 +1093,34 @@ int geni_se_resources_activate(struct geni_se *se)
 }
 EXPORT_SYMBOL_GPL(geni_se_resources_activate);
 
+/**
+ * geni_se_domain_attach() - Attach power domains to a GENI SE device.
+ * @se: Pointer to the geni_se structure representing the GENI SE device.
+ *
+ * This function attaches the power domains ("power" and "perf") required
+ * in the SCMI auto-VM environment to the GENI Serial Engine device. It
+ * initializes se->pd_list with the attached domains.
+ *
+ * Return: 0 on success, or a negative error code on failure.
+ */
+int geni_se_domain_attach(struct geni_se *se)
+{
+	struct dev_pm_domain_attach_data pd_data = {
+		.pd_flags = PD_FLAG_DEV_LINK_ON,
+		.pd_names = (const char*[]) { "power", "perf" },
+		.num_pd_names = 2,
+	};
+	int ret;
+
+	ret = dev_pm_domain_attach_list(se->dev,
+					&pd_data, &se->pd_list);
+	if (ret <= 0)
+		return -EINVAL;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(geni_se_domain_attach);
+
 /**
  * geni_se_resources_init() - Initialize resources for a GENI SE device.
  * @se: Pointer to the geni_se structure representing the GENI SE device.
diff --git a/include/linux/soc/qcom/geni-se.h b/include/linux/soc/qcom/geni-se.h
index 36a68149345c..5f75159c5531 100644
--- a/include/linux/soc/qcom/geni-se.h
+++ b/include/linux/soc/qcom/geni-se.h
@@ -64,6 +64,7 @@ struct geni_icc_path {
  * @num_clk_levels:	Number of valid clock levels in clk_perf_tbl
  * @clk_perf_tbl:	Table of clock frequency input to serial engine clock
  * @icc_paths:		Array of ICC paths for SE
+ * @pd_list:		Power domain list for managing power domains
  * @has_opp:		Indicates if OPP is supported
  */
 struct geni_se {
@@ -75,6 +76,7 @@ struct geni_se {
 	unsigned int num_clk_levels;
 	unsigned long *clk_perf_tbl;
 	struct geni_icc_path icc_paths[3];
+	struct dev_pm_domain_list *pd_list;
 	bool has_opp;
 };
 
@@ -546,5 +548,7 @@ int geni_se_resources_activate(struct geni_se *se);
 int geni_se_resources_deactivate(struct geni_se *se);
 
 int geni_load_se_firmware(struct geni_se *se, enum geni_se_protocol_type protocol);
+
+int geni_se_domain_attach(struct geni_se *se);
 #endif
 #endif
-- 
2.34.1


