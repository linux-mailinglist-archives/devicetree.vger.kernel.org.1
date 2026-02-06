Return-Path: <devicetree+bounces-263464-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mDoWJhophmmuKAQAu9opvQ
	(envelope-from <devicetree+bounces-263464-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:47:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7DD1015CE
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:47:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 886F7309C8B6
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 17:42:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D535740FDB3;
	Fri,  6 Feb 2026 17:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZQWxAZP0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iii8MRWV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2D3530FC3C
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 17:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770399721; cv=none; b=kxMnCvXpvX2+azNUsmDV37ugXjEHMgvSDJFmP8SET/hEQBvDFWfzCoS2o6hlq/O2XGmtW7nUnO+a/Mi7yYG29inuv102g2Q6RGcT7IBJrvnBoeHcxzrgqvHYDLGhaVIV4PuKM/yFK2MOpJPSq//5X28StiHlYzsGV2xa7R8AbKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770399721; c=relaxed/simple;
	bh=YvDpB7qQYZYVOQXO85zT2NahDMXsH90zbRqny+QJ8yM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oPdMba7oiuUKeEkcDDdTAB4a7z6dth1URDqtgFNJGUWE/gOyUjitk9EOqgZbVxGhBH3c5IhByaYtVSpNg9nx/RRpeq4KyLHj0APkLdqPNxLRcG6Fw7ykJeAQWzN9N0pNIcbcpF5GzVzExx8TeDFV587u8Kh55Gfn+sEumZeYC+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZQWxAZP0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iii8MRWV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 616B2o9e2938925
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 17:42:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=kKXwW780GCF
	A4P65AgkdepAec9RfmiOIRknJ6nGTg7I=; b=ZQWxAZP0koHBDPLSKgclgZp8riw
	frHqIU9vF7WrB/at3EInHp4hh5mn8FzS6COVVr6h9p7xpqX4ExSkw9QAWdsBtFn2
	YkZVw9cvZiHAbxC6EdaziPWrnpDXtNYDgQ6VQTI0OLWjFGOlF/97kpJoNKgREavQ
	UDu+IlX+4NX6zey0XaI7JnZlzTMIRLTLfJRHOzhI4sjVIfXemMZHJjdN/PcH08J8
	O8IKVXjHdUK7PTpbPQnwLL1wblPnZDix9efWmQVDtybnQStO9mBY7MvIfL14KFOe
	adLTM/uIIqbQgI4/6qVoYQ+1hZthFTpwBXSkzZFhgRTSGOU+aehd5yO/d+A==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5f35s4h9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 17:42:01 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c67e92aad79so1394131a12.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 09:42:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770399720; x=1771004520; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kKXwW780GCFA4P65AgkdepAec9RfmiOIRknJ6nGTg7I=;
        b=iii8MRWV2Y5HP1he40oV2QrmG9L4R6szsIJK15VUs7orSS6XOuBWCkaf6BzNElP7ru
         rexIDI2urTeNy0SuM8pMbYm+c7WA0lmh3odYE9nSxBDNssTiQ36yk/lnp3MsSQNIRtGo
         14KeOVqyAH9iKCyAE28UJDblfYyOFmgX7jRQ17PBnW8RYyMB0N2bmZkj7czGNuLA5AtD
         ORopEDjhdvh/olIZ9N5YMOEQfygNg4pPhpOllI7uZnoGUh0Ba7vSBD0oaIzkZqacAlzb
         F+DE8D7/wk69u8poz8Jd2I0z6Nej3mLC7Nc5My0sMwIH4kaBaIR6LRkwmTzXxGlC5bGs
         WVag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770399720; x=1771004520;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kKXwW780GCFA4P65AgkdepAec9RfmiOIRknJ6nGTg7I=;
        b=TbjD3IWm7on114wpbz3CFEgNY0okrFcxXc5VN01KkcFeSit9E4aH6DFXI/AGARGVyJ
         PREGhN6g4kyc9WA2uP3vIV4wfPO1DyAVIO5dfomuQrcFBM/BfEKVR8hPwTSmmfsn2hyW
         czQzB/M/xQforDKb8E+XA9vW9NYBhoAoHjkrZ8onKH+MZlYN7i4vAoGfMWNkA/7sli1N
         ftCBV5HdQGyeZ9u27j1vtq790y2Xti2C7KpNqpqOczjoYEcajgCIeYvgJWyZgPJfoi0v
         4xtJEFhB+iczjTJiRE9hDbto8VL12/8YuwHyNX0Kh5pp7XRl1P05xyPRwv0xHHj7HNJK
         0tSA==
X-Forwarded-Encrypted: i=1; AJvYcCUA8Gs4Ifu1tRKlm5RQ5fpDWW8/0DtV35xiFznahJqbKmne4rOoAXLJY/FsUnqRYlIDnlirsRLemDAu@vger.kernel.org
X-Gm-Message-State: AOJu0YywEKQEnhQc5lRanxyKEJtoizMDQLUw5HLBV5/8fxQY+dgpMlQJ
	4Yd2lzu81ONLIlgI5tP9MZ/jtWGDH/5mQzh6s2hEBOfv1tpTJYO1IVG0jGJNmHmQRyTmvVLZOQe
	jXuuaczfTdQDzVhksaR6xYYJYcTAPfLVVWtts19BHuTfcKWagMTI8Afnbp1XJdk46
X-Gm-Gg: AZuq6aJligZcOxbMjJfifG+vdU4ThYY5tJ/0CV8D/7hEwxZaLbqN8Bt+NJKy+gDG/n9
	8NAtwt4otsMhbYH2LSUwjD/N5TylgWjRpcVLIZNre6cO7cbpDvXEEppixA+7Io2jaDyr5HIx5Gg
	G7j1z+vhFMjOLYCAdSHJhp4ePrKbGfBb/r/k5btKqw30uUnPZyYkzMgt5AFQSlBzwECPvUFzIXg
	UCfxAnrWJALEcyws+Aka23IAbTrXQZ07OqDqc9r1LwfnAeWhfyG57DHl012ZlA2Avo/KJjUxufS
	kAbyMVd5pPHEbKVgMroaI4PICBTF4KBSHNbHQ435C2Mg7zdld5Kzkh2FCXdZMh6m4Q/glf/P8Z6
	93hFZ1IGml8WdqdTDly9uXConFfmBvpPm/MB756x5/Yc=
X-Received: by 2002:a05:6300:2206:b0:366:14af:9bd2 with SMTP id adf61e73a8af0-393ad3a27aamr3800619637.72.1770399720271;
        Fri, 06 Feb 2026 09:42:00 -0800 (PST)
X-Received: by 2002:a05:6300:2206:b0:366:14af:9bd2 with SMTP id adf61e73a8af0-393ad3a27aamr3800600637.72.1770399719672;
        Fri, 06 Feb 2026 09:41:59 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6dcb5eccbdsm2639387a12.19.2026.02.06.09.41.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 09:41:59 -0800 (PST)
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
Subject: [PATCH v5 05/13] soc: qcom: geni-se: Add resources activation/deactivation helpers
Date: Fri,  6 Feb 2026 23:11:04 +0530
Message-Id: <20260206174112.4149893-6-praveen.talari@oss.qualcomm.com>
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
X-Proofpoint-GUID: 795L6aMt7S9k0HuWJnQCZ8r0KVKfJf9Z
X-Proofpoint-ORIG-GUID: 795L6aMt7S9k0HuWJnQCZ8r0KVKfJf9Z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDEyOSBTYWx0ZWRfXyXrze24z5UZA
 lzYc2nJOWWZwqclZxZWHLTh/iKuc2/i1CgPVgz4SzLrh+RyrHCeTq8LvjqAYKiTU+WCsliAJHgH
 VWxo1iTiQiExljdiDXTf4jgAD8pfcwzcQ9VEr53lizLjtzmbCJagdMp2NIWlxQ03I/RF8SucruO
 m3fqLpGdH9Hs+wrWWxsiFzodtLkH+sfDf1PxO5HXCjwNY6ubXiQvruoKYLP2oBAiwFOvJAzldEZ
 FUuanvBmWwI5QrVEnWYrIXR7b2sskkZpUXvE+M65z8I3NDqgU8Nh5le+wyV3hX7kaG2+czywwvp
 43L5ZRsUcOEp1Z97ScGUbDiSbI3Ln0ZtyYsZ7oKpFlxlcaGcn+YtJ9B/z4G+w8yh4VDOO42YaiP
 RJAjilmTWZ8403GZgG/CLKfp3bmDBHtJZv1Tx6swBDMxKH7K3tqP7wfLZeN1/hr3ruW9H0JAukm
 K5CHW+9J04mHlPquT3g==
X-Authority-Analysis: v=2.4 cv=ApnjHe9P c=1 sm=1 tr=0 ts=698627e9 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=KBRiQYpxJDLEvAb9SdYA:9 a=bFCP_H2QrGi7Okbo017w:22
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_FROM(0.00)[bounces-263464-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EC7DD1015CE
X-Rspamd-Action: no action

The GENI SE protocol drivers (I2C, SPI, UART) implement similar resource
activation/deactivation sequences independently, leading to code
duplication.

Introduce geni_se_resources_activate()/geni_se_resources_deactivate() to
power on/off resources.The activate function enables ICC, clocks, and TLMM
whereas the deactivate function disables resources in reverse order
including OPP rate reset, clocks, ICC and TLMM.

Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
v4 -> v5
Konrad
- updated return value as 0 for geni_se_resources_activate().

v3 -> v4
Konrad
- Removed core clk.

v2 -> v3
- Added export symbol for new APIs.

v1 -> v2
Bjorn
- Updated commit message based code changes.
- Removed geni_se_resource_state() API.
- Utilized code snippet from geni_se_resources_off()
---
 drivers/soc/qcom/qcom-geni-se.c  | 67 ++++++++++++++++++++++++++++++++
 include/linux/soc/qcom/geni-se.h |  4 ++
 2 files changed, 71 insertions(+)

diff --git a/drivers/soc/qcom/qcom-geni-se.c b/drivers/soc/qcom/qcom-geni-se.c
index 2e41595ff912..4bd4fce33ea4 100644
--- a/drivers/soc/qcom/qcom-geni-se.c
+++ b/drivers/soc/qcom/qcom-geni-se.c
@@ -1025,6 +1025,73 @@ int geni_icc_disable(struct geni_se *se)
 }
 EXPORT_SYMBOL_GPL(geni_icc_disable);
 
+/**
+ * geni_se_resources_deactivate() - Deactivate GENI SE device resources
+ * @se: Pointer to the geni_se structure
+ *
+ * Deactivates device resources for power saving: OPP rate to 0, pin control
+ * to sleep state, turns off clocks, and disables interconnect. Skips ACPI devices.
+ *
+ * Return: 0 on success, negative error code on failure
+ */
+int geni_se_resources_deactivate(struct geni_se *se)
+{
+	int ret;
+
+	if (has_acpi_companion(se->dev))
+		return 0;
+
+	if (se->has_opp)
+		dev_pm_opp_set_rate(se->dev, 0);
+
+	ret = pinctrl_pm_select_sleep_state(se->dev);
+	if (ret)
+		return ret;
+
+	geni_se_clks_off(se);
+
+	return geni_icc_disable(se);
+}
+EXPORT_SYMBOL_GPL(geni_se_resources_deactivate);
+
+/**
+ * geni_se_resources_activate() - Activate GENI SE device resources
+ * @se: Pointer to the geni_se structure
+ *
+ * Activates device resources for operation: enables interconnect, prepares clocks,
+ * and sets pin control to default state. Includes error cleanup. Skips ACPI devices.
+ *
+ * Return: 0 on success, negative error code on failure
+ */
+int geni_se_resources_activate(struct geni_se *se)
+{
+	int ret;
+
+	if (has_acpi_companion(se->dev))
+		return 0;
+
+	ret = geni_icc_enable(se);
+	if (ret)
+		return ret;
+
+	ret = geni_se_clks_on(se);
+	if (ret)
+		goto out_icc_disable;
+
+	ret = pinctrl_pm_select_default_state(se->dev);
+	if (ret) {
+		geni_se_clks_off(se);
+		goto out_icc_disable;
+	}
+
+	return 0;
+
+out_icc_disable:
+	geni_icc_disable(se);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(geni_se_resources_activate);
+
 /**
  * geni_se_resources_init() - Initialize resources for a GENI SE device.
  * @se: Pointer to the geni_se structure representing the GENI SE device.
diff --git a/include/linux/soc/qcom/geni-se.h b/include/linux/soc/qcom/geni-se.h
index c182dd0f0bde..36a68149345c 100644
--- a/include/linux/soc/qcom/geni-se.h
+++ b/include/linux/soc/qcom/geni-se.h
@@ -541,6 +541,10 @@ int geni_icc_disable(struct geni_se *se);
 
 int geni_se_resources_init(struct geni_se *se);
 
+int geni_se_resources_activate(struct geni_se *se);
+
+int geni_se_resources_deactivate(struct geni_se *se);
+
 int geni_load_se_firmware(struct geni_se *se, enum geni_se_protocol_type protocol);
 #endif
 #endif
-- 
2.34.1


