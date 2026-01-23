Return-Path: <devicetree+bounces-258750-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uOVAEiogc2ngsQAAu9opvQ
	(envelope-from <devicetree+bounces-258750-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:15:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F2B7188C
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:15:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EA4F9302E7DD
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 07:14:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CD79377569;
	Fri, 23 Jan 2026 07:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V256o5J4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GUsxnhOl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD802377565
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769152427; cv=none; b=YHa1M4I0hEuXJonFe0tmH06eqUil76XtAsdFCcFvzU1V3aeOjb2SwyY3wivS0YtpNCVksTvaGHGq0FheuXx5C5bLrJmlcbdbmeWL0n+k+7gxYMFAsARn96G+KtxOYfDFIkgCMrLKy1XOII2mBiuzfwguKWGzm8BQ9G+lmDQ8Xu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769152427; c=relaxed/simple;
	bh=FAydTEuSpolIPbgdCzPABbxgas2Q93+RqfmxMnmHLg0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=P7dToOMWU1wuwsgY6uYZLAwliWBW/c/1u1yAsasghp/0kwBhT+dEHyijFEUhro15EJWmNjtuWtspIU6dVz6iMLVtrbV1686e94GNhy7vTzVKqu+uYgKKf8C41m+RBkkzV5zIvUkO7m7xtCqkutSAv27/z/20u1kaGdZcPFkDaq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V256o5J4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GUsxnhOl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60N4kloQ3126310
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:13:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dFEJqMm3Lu8V6b4IeyfhRQweFSAUcJ6M7eJtDdl84KU=; b=V256o5J4rtn3+PgF
	c8cDmbUnmJnTGKIkqWNS7om+1oR7fMTOOJBGAnUFt+bFn+k1AzFAkALmqr5QME6d
	OOwiYgLFSagAAaWzP1vauMETQOHz2LfbPvr5vQa/tTxUJ+aeRYGpINmggiqRK1bs
	HbEon9Up/Ej8h+p9dTcaYhdYEVWWn6tfPVY/DEqXwS4ENfYsOAyn8s+XNMt1y0+o
	xmE0P/jhI4/oKnNcnYtzDKTWPyi9JdI1H9G/cTyNB0wC/OxkDZh3wdjqUahPjxo+
	0Mw4vD5GPCAlZZ6LdfNTMkQYeRzRvqRefVx7Q1RvhK8bJl1QmZdtA6MucssKhsBy
	p378ow==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4buthdsw7g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:13:33 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a76b0673dcso17703195ad.0
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 23:13:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769152412; x=1769757212; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dFEJqMm3Lu8V6b4IeyfhRQweFSAUcJ6M7eJtDdl84KU=;
        b=GUsxnhOl2aQEM3EDMyQVAy9/MbkjYyYt6QQMd8F0/ram4Nb+sWclmmUlL8kcJZAR2w
         5BHBy1OtPwzQHEiUZteEYb9Z/yeiY3nfZR5P4/EEtPCYKXcKZ/IB+3jlY3HChQ6Q1ArG
         r3ZulT66pHmf5BRzZu8asJKXRmE5vIWskgpUOjPfCrvSGHmEYZig8fXzBYK7gCqytznO
         UrBC8W9FacbpBFbVqxSJaZlA275Lm4EKbnIY22R5632wB3PR3sN1CtrT8Dgif10zUM/o
         mTAjjhPQoqtSxBKxUP0uIu41OuvTK/17YA68RJkGVpHbpu6gFYODlNtcCV1tVq5gGMAQ
         lgKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769152412; x=1769757212;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dFEJqMm3Lu8V6b4IeyfhRQweFSAUcJ6M7eJtDdl84KU=;
        b=aSOu9g4h+LZDSyaWJW3swjhQJFyzA72smEKam3OwJ1zIqghC8syW+4WKPRAu296k09
         ryDOP8NjR7mmHJg/5u/Pcs0igi9nSuzq0uY8eSAQDkMjtAKfy8+h1BQRxaGqEIl/ml23
         TIMoN/n1S2GgCvcDyoCvFojtL9xUox6JdRvHoCreonq55JoB9aK2IyzVmqeFmiV1U7bS
         ZNzQ0ex/76KDqDBrB0UHnIQ9heX+d5lSIokc6RNOzm+JJRAcnbFhUMka9BX0BsxgHmpW
         3o7DeYozcK64nqhJZVm3kO+KaFb4EpKoYNw2Rrv6IQpZh69di6I6IsOqvkbAWA3uAieT
         gpdA==
X-Forwarded-Encrypted: i=1; AJvYcCWbllTyrzSwWM6p/FhVCdRCY7XRSawhlg9uOy00HUa3tICKsdbF5Mu4bkN93Dk/eFTgk1RiAPVPJYEM@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3zezZcEToKCSDa3efTMlQW79g8s3KJkWR439T53EiDc0Bsd4i
	pkKLX05+Q1OA3Jc8hEY904gzJA5s/X5w8y+VY+ngl7huHlkMhO2YE1VkuRuRdOx3J1pgsirNbZj
	1+r+/c3F+s1v2YwWuYwMik/oGdUJyqn/xNcnnj+KmXADEik0MNVZqYtjbmSvsV1oMV94u6kno
X-Gm-Gg: AZuq6aLPz1IfYkdTDNhBvO0Y1gMlxyWCIgqaGb3aNomKOQohtE7aAj6OyKA+iqWl9kM
	M9caLnD/nnM8Gla8+H8/yqsm8FivELJzPZUwPOc59AiU2ynWgAKorU9VfFKLJb7hl6XNeoyLBOz
	jZHHsw9Pn2RHj5N1Vbo4T/vznp6r75GzptSARh7RAdrnwQ537q1p9zN/2Eltx2udZyVyv2nVo53
	oIBb5ARbHjzOtCaPXPl4IvA9fl4v3Lp+wtquN1vr37NZPDPeUnFyrF1ilfc/9kM7cKH/Z7wzXaU
	grGpO0GQOb4rkbBJib1s7zG15WFabZciIXBqGxuL/cqbMQR5HvOXLEBP/2lm1xsTb73h7xs0CW2
	EQnCOUuTtSK3doQq6Euxm91NbzpjqA/MYXLY=
X-Received: by 2002:a17:903:1c8:b0:2a0:cb8d:2edc with SMTP id d9443c01a7336-2a7fe55a646mr17345515ad.13.1769152412400;
        Thu, 22 Jan 2026 23:13:32 -0800 (PST)
X-Received: by 2002:a17:903:1c8:b0:2a0:cb8d:2edc with SMTP id d9443c01a7336-2a7fe55a646mr17345215ad.13.1769152411877;
        Thu, 22 Jan 2026 23:13:31 -0800 (PST)
Received: from hu-hdev-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802f978b8sm10979795ad.46.2026.01.22.23.13.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 23:13:31 -0800 (PST)
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
Date: Fri, 23 Jan 2026 12:41:35 +0530
Subject: [PATCH 11/11] soc: qcom: ice: Add explicit power-domain and clock
 voting calls for ICE
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260123-qcom_ice_power_and_clk_vote-v1-11-e9059776f85c@qti.qualcomm.com>
References: <20260123-qcom_ice_power_and_clk_vote-v1-0-e9059776f85c@qti.qualcomm.com>
In-Reply-To: <20260123-qcom_ice_power_and_clk_vote-v1-0-e9059776f85c@qti.qualcomm.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org
Cc: Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Harshal Dev <harshal.dev@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769152357; l=2522;
 i=hdev@qti.qualcomm.com; s=20251124; h=from:subject:message-id;
 bh=FAydTEuSpolIPbgdCzPABbxgas2Q93+RqfmxMnmHLg0=;
 b=ad08EUFi/SNxt8P3OUY3DK1VxPif88I6qLpdUMVODH5gqLymjIDhedZVOx9bmmaCmvtGXDYkN
 2h/SiV1SNPUDITiIf7UlCQUEfkG+pYBOVK+g9uzGvyBSHXpzRRVaoNp
X-Developer-Key: i=hdev@qti.qualcomm.com; a=ed25519;
 pk=SHJ8K4SglF5t7KmfMKXl6Mby40WczSeLs4Qus7yFO7c=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDA1NCBTYWx0ZWRfX8KEssvWooW64
 OlFk32VtkG4+O482/91/o7EdVQHh+K3QXPJ4iNwFcKNJRPh+qRObTvEhuHz5HuuH9CU9Ms7iQ2i
 Pee+IQz5iVyQlYFl8OwV7myoHBepxP6R0WwqemwgnPx9DAg31iq/GEyOMYW+4EffxTztA/mlwof
 6ld/46R1Yw6bu50JsQ+kupfCPOJiJ6hCz65HKe1tzSiKbE6wtoxoLCxr6RwmYgqoj0U69QCRsgg
 8pUi1MrDBvXakKA8oMNhOUiQIhZnuenlrb4wUWAeXCdmi4dDozMgI7VcNqrImg7PIq1lrpELRBW
 1LyGK1RNfkzkqK9+up7zHIrOblaT6IkEH/1YZ5ilXWh9x2ZecfHjJEQJynnaSNOjsuD8rShr2ZP
 9rk92ccBLKtlNh7R80HgHBw8Ssn3zPONF45JA9801ncwV18b+E8XHmkjY1NdWqB7X6qWJEtDqQz
 KhnfrkNSqzVbefDygPg==
X-Proofpoint-ORIG-GUID: rTjFnZ-3EYz7ttqKEhn2A_nizqWWYFdE
X-Authority-Analysis: v=2.4 cv=XauEDY55 c=1 sm=1 tr=0 ts=69731f9d cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=DGDWbsvPyNGGEFbMfx4A:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: rTjFnZ-3EYz7ttqKEhn2A_nizqWWYFdE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_06,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 impostorscore=0
 clxscore=1015 phishscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601230054
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258750-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qti.qualcomm.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harshal.dev@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E6F2B7188C
X-Rspamd-Action: no action

Since Qualcomm inline-crypto engine (ICE) is now a dedicated driver
de-coupled from the QCOM UFS driver, it should explicitly vote for it's
needed resources during probe, specifically the UFS_PHY_GDSC power-domain
and the 'core' and 'iface' clocks.
Also updated the suspend and resume callbacks to handle votes on these
resources.

Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
---
 drivers/soc/qcom/ice.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/soc/qcom/ice.c b/drivers/soc/qcom/ice.c
index b203bc685cad..4b50d05ca02a 100644
--- a/drivers/soc/qcom/ice.c
+++ b/drivers/soc/qcom/ice.c
@@ -16,6 +16,8 @@
 #include <linux/of.h>
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
+#include <linux/pm.h>
+#include <linux/pm_runtime.h>
 
 #include <linux/firmware/qcom/qcom_scm.h>
 
@@ -108,6 +110,7 @@ struct qcom_ice {
 	void __iomem *base;
 
 	struct clk *core_clk;
+	struct clk *iface_clk;
 	bool use_hwkm;
 	bool hwkm_init_complete;
 	u8 hwkm_version;
@@ -310,12 +313,20 @@ int qcom_ice_resume(struct qcom_ice *ice)
 	struct device *dev = ice->dev;
 	int err;
 
+	pm_runtime_get_sync(dev);
 	err = clk_prepare_enable(ice->core_clk);
 	if (err) {
 		dev_err(dev, "failed to enable core clock (%d)\n",
 			err);
 		return err;
 	}
+
+	err = clk_prepare_enable(ice->iface_clk);
+	if (err) {
+		dev_err(dev, "failed to enable iface clock (%d)\n",
+			err);
+		return err;
+	}
 	qcom_ice_hwkm_init(ice);
 	return qcom_ice_wait_bist_status(ice);
 }
@@ -323,7 +334,9 @@ EXPORT_SYMBOL_GPL(qcom_ice_resume);
 
 int qcom_ice_suspend(struct qcom_ice *ice)
 {
+	clk_disable_unprepare(ice->iface_clk);
 	clk_disable_unprepare(ice->core_clk);
+	pm_runtime_put_sync(ice->dev);
 	ice->hwkm_init_complete = false;
 
 	return 0;
@@ -584,6 +597,10 @@ static struct qcom_ice *qcom_ice_create(struct device *dev,
 	if (IS_ERR(engine->core_clk))
 		return ERR_CAST(engine->core_clk);
 
+	engine->iface_clk = devm_clk_get_enabled(dev, "iface_clk");
+	if (IS_ERR(engine->iface_clk))
+		return ERR_CAST(engine->iface_clk);
+
 	if (!qcom_ice_check_supported(engine))
 		return ERR_PTR(-EOPNOTSUPP);
 
@@ -725,6 +742,9 @@ static int qcom_ice_probe(struct platform_device *pdev)
 		return PTR_ERR(base);
 	}
 
+	devm_pm_runtime_enable(&pdev->dev);
+	pm_runtime_get_sync(&pdev->dev);
+
 	engine = qcom_ice_create(&pdev->dev, base);
 	if (IS_ERR(engine))
 		return PTR_ERR(engine);

-- 
2.34.1


