Return-Path: <devicetree+bounces-263465-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QOawLQophmmuKAQAu9opvQ
	(envelope-from <devicetree+bounces-263465-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:46:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F211015A4
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:46:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 47DF230A0C5E
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 17:42:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75B434219FC;
	Fri,  6 Feb 2026 17:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dS0HqYh8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Cu9v9dEW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282CC4218A8
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 17:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770399730; cv=none; b=VmpqbkVrwZ7F/IccNBfS47bavlunN7rVyQu7s1/SiyN4KP9uT2JXmrP2YvVirnCX+ywMi68HyR0UbSMLo8LYOUHUxxroNDefAAtJV7PrB5kqiM93U5ml/hEZ8gJn/75AAh+AXLGDYEUyRwSYJBMxhNH8yvMAqNnziR+w3+lP+3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770399730; c=relaxed/simple;
	bh=ga6zv2X08xWdzWRz3TuiP7Yq07BTW+J17Yasvwfw7GM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=um999RjQM8z00JIUHSE9xYUTKqPSC+LNisXGIAqb2Ei2eT87GajCpiwdvwrd4ogKqjRO+krTjluAHmC7kK1fAqcf4bkfzoA86BYzQJYPKVp0+CtSn/kmDM4AsPQwYRMDhEBkk2KvYDzcKWv1pMluHCbRna0esQhE5WX1l97MGC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dS0HqYh8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Cu9v9dEW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 616FknJ32490662
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 17:42:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=6g1n4zS8IqK
	CO/ZoCH8PjgZhBqCIfpcPG7bciUpyApU=; b=dS0HqYh8o0eJs/EnS0cBl0I5WEx
	cnBp3ZngbaUQpnxMkkTKmcYGXCu6aLFaMotHWb0zWnRdaXZvFL6dlSZLGFuotKYc
	s4NI15/1ZQDuWTEJkVY6/g50py/DWvzQP9walvPz1LJH1WdgnnLqUuLZPpLJPTt+
	RV4k+dRgduWyOHQ9Rs39b9pQ3spnCpBzZH3zNmMyUkxr53HtTdngpswW8HUv/fhI
	Yhzj1sSNrN9Co84C8VtQz9+SuWciCiC0OYCW8+ZhBIa5yqkLxTROdW/mtkpbf+7S
	ZjQp0H6xMTBnMbWDr/3yU0Fr9Fdbf4R2Kj7l2XCEjueplS5UFYWsw0mvzmw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5c9c1rpw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 17:42:08 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-354c0eb08ceso805825a91.1
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 09:42:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770399728; x=1771004528; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6g1n4zS8IqKCO/ZoCH8PjgZhBqCIfpcPG7bciUpyApU=;
        b=Cu9v9dEWtpoYAm+IVuxr09914bNS1wBHoV8ZMyrqRtgP2qHyTiGrw/Ur6x0LLgUAsV
         ftfIJDdIebvhEIF/3CYvsKzvMfTnktD3Ue9SIKrGavcRahKnhBPoIWdJFB8xr1t+lLzm
         M8uUse59ssEh6Ft4ksoEwGIyjlDgEHrl8iLoBSDFwrtg+ZJMWZNKwRWqGnqTTV4F6xBK
         /0n7WgIEU65uCkP4REu+7LprJTDc1N6uIbCPGc+3cYPw7TOg706llveqsdQ6QozR/HG/
         tWwQXqD+g2+2darjJDiVZDcGmEwhLJVwz3Q+NXa9Jj5YBB/YL11Fh2cbNFikUFlrTejf
         9Otg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770399728; x=1771004528;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6g1n4zS8IqKCO/ZoCH8PjgZhBqCIfpcPG7bciUpyApU=;
        b=gT0SFaHQhWkL7qAlDQOR0zAYLeYTSN4Ia4IBBp1xv/Sy3/vEPtQUQpYxzP/N2Wojvh
         A+pCf/zCe2GSV+m7Uev7eIq1qVpuxvv0yfkG9JO1RJgPFqqgfFtavJcLvSluHrYLSC8J
         5DShVohlY0cg4akwi8PXJQLqZAfeNW9zFkMGKP7gf7yj3Gz65BwM+h1A0FT1q6AILJJv
         ZnfY8u6wGIwEwxLlZuENUCotpRD3b5NLEdzF4FV8BMosPeFEVYQFVhNWTxE741mZWUUz
         P4nFxmPv7iH5i72V7QizasUnpYntZHfCb5gL9QuaM175hCaEwij+hcYpoDDtgG++5PxQ
         oXTQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHRaPA/Xvb1o7/eaIBkoaZWoc0GzTY4OhXZkZPA5cWf85z823yhhFB8WU2OQ7wVlclEcs+jcMAU7+B@vger.kernel.org
X-Gm-Message-State: AOJu0YyNyoLswnpfNNkJuHyLmI91Zn809o07dSZD0WD3eFE05ZbZ6xfW
	7wFIkWplE6OmKNOloZs87gmPzBaAyqD1QWdGaa3iG3RFKuHupjQQVbWhVHICoxAahELyUiaXTCJ
	wK01XSsjp0AWTMNAEW636NQLHdMMNUi4MgZwWSB6pziZLTRpVvOFLY8GB7iULC38k
X-Gm-Gg: AZuq6aJRZgwl++IpyOYs2sHrAzh3Padi2MKm8kprEsBJnGGfz3ed5+HNGtmeKG7sw46
	sQkxn+mLheyl7rTedr8iCS0pEZjAbIovVdqP0Frh7pvwIIejXKWsKrflI1jg6RBjjoLHL0m9+bZ
	U0lKoJpbdU2l/BtWgOizHMwiHMQDWegOfxbZBuv8NEaBAsY0tUT65eHZbs9+omxszsiIBPrJoEG
	AHi7IuInrKmLomTckzFiu5YLw3mAABu4vpJ2m3Uz97j+sWl4hmwn8VUb/Ol15RSstVZZuzZX1f0
	Rl7XUGlXpqVzjyTasiy4Jjwa2cNehVefHmidViUit/sR17fWf8YR6EaDc1iTbBpPXNvml4Po4nW
	V26gyJT2YOdzLytyZZAJOvNQY8A0QlGNxNdUCCdJvSzc=
X-Received: by 2002:a17:90b:2cc7:b0:32b:c9c0:2a11 with SMTP id 98e67ed59e1d1-354b3c41887mr3034814a91.4.1770399727543;
        Fri, 06 Feb 2026 09:42:07 -0800 (PST)
X-Received: by 2002:a17:90b:2cc7:b0:32b:c9c0:2a11 with SMTP id 98e67ed59e1d1-354b3c41887mr3034767a91.4.1770399726839;
        Fri, 06 Feb 2026 09:42:06 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6dcb5eccbdsm2639387a12.19.2026.02.06.09.42.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 09:42:06 -0800 (PST)
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
Subject: [PATCH v5 06/13] soc: qcom: geni-se: Introduce helper API for attaching power domains
Date: Fri,  6 Feb 2026 23:11:05 +0530
Message-Id: <20260206174112.4149893-7-praveen.talari@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=BbzVE7t2 c=1 sm=1 tr=0 ts=698627f0 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=WUWHbvwt6nHlCWk_UTEA:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: f3cRp50IYYOG5cvHyQ_0Yoic_S7s-V3D
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDEyOSBTYWx0ZWRfX1+FatsqoPiq8
 7UPS7FcfL8DEmUWEKUcalzQrVv35JdrvjDp1G6+MDV/k4fRH8HQgmwZ5ob9zyE02Cl998z1n8kr
 uU2Q4Mb7QMoLRI9POAvUAlGe86ZQ39uKJl0eG0pJDKBH05mKVMsund6JTKkjzmYWEdqQ5u4o1MW
 HYw9PXFckHHnWQwil+Fl7fakn6iISZJgBM/oF4isu1zJ0PN1EsnZqFY5lXDdWay2D81qE2YVtoz
 qqEVPhHGwJLwZD6Nvvpwmq7F0htxx8wF7tcj+fJnqzLHyVVXySr1xG8XJz/hwfy7q0SAtTZkbzi
 ZqMEMZtho8F+GnVviceFcOPNlPtiI01wNQ+CuzVeSYmHLlK0bWLt/bsKUDLywbg2sLWyU8bHBJX
 iVaX+3rKS/Df2JkSvTdK3d7yPPb0rQR7r4EkkrqO2IJHFMAn6lNkqdNvGqtNoXVCcmKE0PJwhWP
 VUxlrwWBVfh2IZAN2yw==
X-Proofpoint-ORIG-GUID: f3cRp50IYYOG5cvHyQ_0Yoic_S7s-V3D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 bulkscore=0 spamscore=0 suspectscore=0 adultscore=0
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
	TAGGED_FROM(0.00)[bounces-263465-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 53F211015A4
X-Rspamd-Action: no action

The GENI Serial Engine drivers (I2C, SPI, and SERIAL) currently handle
the attachment of power domains. This often leads to duplicated code
logic across different driver probe functions.

Introduce a new helper API, geni_se_domain_attach(), to centralize
the logic for attaching "power" and "perf" domains to the GENI SE
device.

Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
v4->v5
Konrad
- Used devm_pm_domain_attach_list()

v3->v4
Konrad
- Updated function documentation
---
 drivers/soc/qcom/qcom-geni-se.c  | 29 +++++++++++++++++++++++++++++
 include/linux/soc/qcom/geni-se.h |  4 ++++
 2 files changed, 33 insertions(+)

diff --git a/drivers/soc/qcom/qcom-geni-se.c b/drivers/soc/qcom/qcom-geni-se.c
index 4bd4fce33ea4..ecac9006acdd 100644
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
+	ret = devm_pm_domain_attach_list(se->dev,
+					 &pd_data, &se->pd_list);
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


