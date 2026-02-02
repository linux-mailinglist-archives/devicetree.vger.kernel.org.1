Return-Path: <devicetree+bounces-261905-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +E6lIpXqgGleCAMAu9opvQ
	(envelope-from <devicetree+bounces-261905-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 19:19:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 14107D00F1
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 19:19:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 323B330BA57A
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 18:10:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B219238BF9F;
	Mon,  2 Feb 2026 18:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fushtLL9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZqDKH83D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5570138BF90
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 18:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770055825; cv=none; b=qonKOyjAICDMfR2xgBnhCaoLEzG6yjjQuD+txygfY8BDsMkFu+SFXyA/jMm9EdpUg72ViP9viJCmKdmLct/fm7c3jgZa+oT//pDa9NdJk3fvPR+M1OsVV2u0ZQKU/wOXmpLHsZcBrn8OnzLW0WeVDO5Tayjaj/oPwKAlqen2SlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770055825; c=relaxed/simple;
	bh=J7umZZmSfRhKY3LLRN7ouVyVhZ3rw+sE94EggIM4Izg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=NMgcFroQPwzMMbx8Ud0kDfeeNdtbe3BTR8VLKpdh76iTgssV+bPY3TMSOKF3ZFytClV1YbUEOZhrjb1hxW0Hi6HdiMCAz2NPnnuN2BhIS528qmLs7rhZ84bDs8CbvYvAnskmWupMU9jWINJaRisEqgnux5Wwl0cR5Yzuc4mIfC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fushtLL9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZqDKH83D; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612BAFKs3082673
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 18:10:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=dZlesKG7g2O
	6ZF9+CCBwLzC2h/ppDaRw7tqwhdo9JsQ=; b=fushtLL9C46ac41xanwgl+JArFM
	j72b371Xuk34BWR/ztnsNEu5VbbRmbjtSl0BOi1rsmGmyPdFJ5W57uqgE2DLSy+d
	IcG0xtNGid+84vLhzpMdiMyvJ71hkLWh3cZftZmBCNNmpmiJSQR/EvfEKnfgQPEN
	39BFMr+yP50jd3ADbVrWQ6S6+v4XDfLk3xMmD1LWRsOJyhcxg2dKiNzEsk/oZKM2
	yor3XzTohEMtlMDZY/4Oh3WYnRgxh2qoqim9ub6qJyeoEQdCq34ycaA2e1jdj7K5
	osFAZ6qJqFO+ly5xUdjTIDHg1hcDhsSp5wiZdP/Q9FgqzkDwGym2uSA09Kw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2ttn1agu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 18:10:23 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-822426d844aso9754b3a.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 10:10:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770055823; x=1770660623; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dZlesKG7g2O6ZF9+CCBwLzC2h/ppDaRw7tqwhdo9JsQ=;
        b=ZqDKH83DJNK0b4fJn/Yoo0SQ8zzHFmXaLWkshvY9F93WD5H5HuVYF+lQhepZp78asF
         m80zZ63PvO53EuN2zsT4EYTeaeWrv6t/YRfGVCjAo0i28eTVHxeXlnT3LvpCxGVLX6Yx
         Qt7GTjdPxh59jFKfKzey4oWCO7wDw9funtJa3J8wqbA9dzfxrGpv3ADL7lHJ6w9KTQNE
         BVj3/xj4IpD44UGnWVNkZKNHVH6sVvy+0oMCp1w4NZIPbHYZ1bi+EUfNeBlZ9Y3mxjux
         KbVYn1vB9aX+3DjnC82MOQ67zGQQX6E5AyaDjhl4zEQN14jhiuhRgvZ1fpMNQl+S7Wzc
         Qwwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770055823; x=1770660623;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dZlesKG7g2O6ZF9+CCBwLzC2h/ppDaRw7tqwhdo9JsQ=;
        b=V9+x7OnrRfbYubji/hz9TIWbkuyRe5RrUuEKcSeX4T6HZJIBU5RzdlB+0G3APndY4p
         D24P3qmJXvdzEK3V4FserBrw9OSaDv9cx0QMBLqFOXtrDWAQGs2yBs3snyZq64eY9g0V
         R2RecdrurO9gfEJtrhFYMwY+NIR/2l7bQbUG+3OxOzwR5qqJ0vWbmMUqHoNoKqZEKxDM
         v8wdujbsNATmZR2B1JT6czVGQcK+i2/kKRwhri39VAVv+CNBelPOUxTEOCJdtoaDdpy7
         VwtQ8a9nnHIPQfMiAn47Om07oA/YuAO1E2sJSWDzv/fYtIIxBABaKbMX2V7tSqyRY3SI
         rRBg==
X-Forwarded-Encrypted: i=1; AJvYcCXwFkkfUrlik2v4QhL0OH29Q/6ht7U7eybdsUnvQpbqZhl5uXO7w/4IBitXD1qYldBulwJQhK99LP5l@vger.kernel.org
X-Gm-Message-State: AOJu0YyKYpwz+WE9KUKcgDBk6KHx32aSuwTSNXqMdZXc7hojhl9psWjy
	Xyqsnposw6WMSRv3jXExLflTC/hO0OQ/5EZdzzUdXQzRZh9X22zJSq8uuyQBVLfRjnk4S857PCy
	CPWvC61yQcLMnMYWGhND7v9HnF1MhR2mvuUiO+zlQiVa/6Ar1SonLVNYwxaJ0w4K2
X-Gm-Gg: AZuq6aLTv5HEjlTbJFKe67+OIRyQx7K8J+dlt796I6wLG4KYF7qtdMu3WiE8RcSSACy
	eSm8Ga3UPfVfrKSfwiP85d9J1QjxUlsHuKDF6LHh9IAid1oTEZuJSh1m7QkcVbicVRWqGeLqj3o
	PFwKjiT7gTkQ/sL64PgebhWmLYNVid+Fc5CMFa9/xQMzf1/2+OIgqKLFCuK2rJEEJgmMd0mAmdc
	8f1YcfqfdktdKPt0EGFzvO8NbZ65rlUcZEouQahDPbNaAQl17pjdeMJKC0ihdXV36c8p7W/o9zK
	NyeU52UAEbToZfVVHLiPyg6w7/ASl6KI6a+V+wcl7ynMegIfsFM6Y4ojy0wGc3y/1z9Tvn4ZdP/
	jExsodue8VWTQjAHXvdANnGAx1XhvtproUHUDy4h5TsU=
X-Received: by 2002:a05:6a00:3cd6:b0:81f:4e1c:1d3b with SMTP id d2e1a72fcca58-824042c6213mr237445b3a.23.1770055814201;
        Mon, 02 Feb 2026 10:10:14 -0800 (PST)
X-Received: by 2002:a05:6a00:3cd6:b0:81f:4e1c:1d3b with SMTP id d2e1a72fcca58-824042c6213mr237412b3a.23.1770055813643;
        Mon, 02 Feb 2026 10:10:13 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379bfc712sm17476780b3a.40.2026.02.02.10.10.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 10:10:13 -0800 (PST)
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
Subject: [PATCH v4 05/13] soc: qcom: geni-se: Add resources activation/deactivation helpers
Date: Mon,  2 Feb 2026 23:39:14 +0530
Message-Id: <20260202180922.1692428-6-praveen.talari@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=ANnNY0ku c=1 sm=1 tr=0 ts=6980e88f cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=KBRiQYpxJDLEvAb9SdYA:9 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDE0MiBTYWx0ZWRfXwisT+K6evDvr
 xPxrbZsPqMye7yXR7ncdOJ1Cz8c1FXkNbX0pHwfeyfAf2mf0LinLAsTd/j9xzupiN77NYltEeiB
 Xx+9j7hLpN/Ylb88F5BxApu9JsAit7aeptssqU8iEPiOIJqQOlULlVvNw4sxojc7+7/NSqcNqLu
 P5oBxP+bFoufu9a/ekhc1VbapZkD4gDRsv/5z3Pq6zM2EX7WwTFwWCZrsevvApWqjhN0RPtJ5I7
 v1kcqe3rw+Je0npwoTu/V1AA0Cv4oJFTkQhc5uB/iQr6wSxxaqNtfqObp+n3fKxjW5Dq43lWN7K
 e3Zlc3dx/jGE8VsOU5CzLCiichSEpnL7hsCkwJX1aAQk5v0rzfIfQn/pE4FiFpBNM4zfPHgsdIc
 58GwUkEIFGqi5bjipdwV8RVr9VjDi4jeZ6ViSnzwLZheHVMZJGnI5me8gtnjoJre4ojBJ/aa6GY
 XJUIUVJTi7tY+WI9P3w==
X-Proofpoint-GUID: 8Ulhr8OfTvGg5l6uzW1GMv5tRNuqvps6
X-Proofpoint-ORIG-GUID: 8Ulhr8OfTvGg5l6uzW1GMv5tRNuqvps6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_05,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0
 spamscore=0 priorityscore=1501 impostorscore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020142
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261905-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 14107D00F1
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
index 2e41595ff912..17ab5bbeb621 100644
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
+	return ret;
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


