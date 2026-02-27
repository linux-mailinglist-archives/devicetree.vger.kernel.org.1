Return-Path: <devicetree+bounces-269075-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLT0AC44oWkbrQQAu9opvQ
	(envelope-from <devicetree+bounces-269075-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:22:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5896F1B331F
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:22:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 716E131AEDAC
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 06:17:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 210E63E9F8C;
	Fri, 27 Feb 2026 06:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Edsnqcay";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="exO/4vm+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5BB33E95B3
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 06:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772173028; cv=none; b=DKUWooA5CW42WzXPPOuSUz4hsEBZj7ov51bXI2qWUlOZS0CMZHg8/NxT3kbaVPLhNH6OiyuFt9ozqIkZaBiUOR9oRfO4w3jpWaAeVb2ex5aR2CSFApcZQ+FwSUhla0Dgq8CaCrIf5YIa1wLZwF/rTVruKCfg6euA5JVsNXo+De4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772173028; c=relaxed/simple;
	bh=4hz8Y0hFl09FGAeyghc3sPRwLZBvCKBMPVpOSPqaB18=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mHmkM7LHSAazEyvKE4DPdPAqB1Ps4zPBIuhsEzR+IHYixiaYxRkqmaplUpuFJQqMVFA45qEaQM92PVhXbv0OqjCFtecRDFNHj9tPajDYGIkwQsFk41ku1tJXo5FG+n5rZUhICbN39y4GkK0LdsjTSuYR4pBJwP8XTWkT/OwXbVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Edsnqcay; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=exO/4vm+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61R2K2Hf3185465
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 06:17:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=UVNp5rZqQkb
	HIr5aTVOiOMEIXz0PRqXEj234Ie4S1cU=; b=EdsnqcayOsD+TfAWit70Rm+UA38
	qK+xj0t8pmLfPwHxFKr9Mst2qaYQTVyqY24Mpgt6cmvcxLAMVoN9pHYD6lnfzW6L
	znH52J1NcmHJapRAFNlTDO+SwBsLe+uxIpj/su00x4X7RQWhrvpApvR/keftoqaV
	4CGlJm/ZzvylubnzYYGEffLUFR4P2HzTUhpa2R9MC84nBuKNjyUBYkVnvzF37XJs
	qZDwJ/NBtaEGgjq5P1I6eY4SFeLe6Gko0lHQEe+WCUUuup9l8RhoF3KF5WeVlLdk
	qF91+mIHI3g5Kg86z+4UbQM7Masbx1uaaAP3YmPQP7nbrs+ek9H4Br2gRtg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjmp63hgd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 06:17:05 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2aad5fc5b2fso2603245ad.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 22:17:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772173025; x=1772777825; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UVNp5rZqQkbHIr5aTVOiOMEIXz0PRqXEj234Ie4S1cU=;
        b=exO/4vm+G7RxYx+WA0l53aFbliI05pPMKG2SJY7exb85gARgeUy0h5TewXPue7ZIH4
         6AWxfDhaUhOxDZNR8HzxOi86b+6jrfgbgdcKwJqAa7GFMvRs+3krDLZqpsQzRnM+Xr4L
         +hxVCdPDkxz29gCbOJF50u5t6KzUZWW6qETHVvHU4H42jE8+IIwTTaJTH+WxEEKFdN0u
         h1H+jD3JVE/SAypRorBDrDTyVkiZS+IKxENh/eB+CXxZDE7avQVv+FNDT13/O9FKUYrx
         8GsvvPmdRtfzDUhTgYLBm4RO3AUbdu/SL/n/N83MxAWU2dM9Zl4oiB4mLKEpZ6Z55BPp
         oMxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772173025; x=1772777825;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UVNp5rZqQkbHIr5aTVOiOMEIXz0PRqXEj234Ie4S1cU=;
        b=Uc/X4t/k0ZU1HPO7iOTq4aLuQZ7l0VqcjsKGFUbICDLSLkW58it4hRR5OJ3FGunzh7
         2sTlAxsohfb8J1Tm61aVXP+9DtUuVkpKRT4RPMIIOgyCJ5TIbydMNZrTSpcTQwRd2orn
         /1OItTMWQVLw0lhoZNmKrK6dmglxkGDN5a4tW4Tg7aHfX2Hh/ZrHX8qwWnx4DaXtg1cY
         tqauoP6x5QHWUadGTlJnE56DzcBXojG9lTyki9RWepH/riNG401r2YXU+N76xvLuNfHa
         TkwjYxphEfqt+IjbXOsvBFK3HYAXCkH6rFQler/1ik7rLv0Po7KSb+H1SissI5JBtz6M
         3u+A==
X-Forwarded-Encrypted: i=1; AJvYcCUuOFtNBTxcwJRx0SWtBUwwS1naoXEVgdrcWaXLR83GU8qGKzi5kSNJZnU96iVgdwl18O/rXX6m75IO@vger.kernel.org
X-Gm-Message-State: AOJu0YwMocj7rsLQ6bT3uVQynR00rqRpZ4YqNXerPdAeH+fXtU95eXrr
	glqNK6/ecO5akFtCgC+7Ub/Yjks0VNBe7w95nv/nARzCdnL5d5jST75Mb/KsTSDo6jkU2Hi/bz+
	N1Vu7s85Ps8L37O3criOd+FxhbBwE37G5p2K8F5AlFxHRzgbT4Btrc2fx8I81Bhrd
X-Gm-Gg: ATEYQzz6ZPEa98CkD5uyb6Qgp12MzzLBEbhBbVkORuIUwA9KP0Qd4GI8Tbq4xo+rg4X
	WXLvdNyxvZLqOXKU2lWUyh1pVJ9rwt2CS22869iCUwCEM90oeXzbIGax0S3e3jXK5j/YFvIE0ZI
	qyFD/EamSh/9GZnx5IDMi9uQn/kMawZffqoJtcCoUVKe+/O8HrG2x9QLDdD86KAXhHKQweVxkLl
	tIY/yRGWjIOWU6U+f4VqvllplD33/MOINpLSoDWK4v7qsp5KTbHy4hOszJNAcAo/DS27CHZuQoy
	ABKK1aVOwhIJPUX7BZwPlRfeGesLVAzRaAjEYpmOrnopvlrw/Fe0h32qNwgcA5bONxNUmB67g+u
	5s1aPC5DeNG6QkbVoE2DqzDlGjbjAqCqy3lhuNwoYMe3CTcDxtJoGWos=
X-Received: by 2002:a17:903:1a6b:b0:2ad:ae4e:bb6a with SMTP id d9443c01a7336-2ae2e279cb6mr17029155ad.24.1772173024695;
        Thu, 26 Feb 2026 22:17:04 -0800 (PST)
X-Received: by 2002:a17:903:1a6b:b0:2ad:ae4e:bb6a with SMTP id d9443c01a7336-2ae2e279cb6mr17028935ad.24.1772173024124;
        Thu, 26 Feb 2026 22:17:04 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb6a043dsm64813025ad.54.2026.02.26.22.16.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 22:17:03 -0800 (PST)
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
Cc: prasad.sodagudi@oss.qualcomm.com, aniket.randive@oss.qualcomm.com,
        chandana.chiluveru@oss.qualcomm.com, jyothi.seerapu@oss.qualcomm.com,
        chiluka.harish@oss.qualcomm.com
Subject: [PATCH v6 10/13] i2c: qcom-geni: Move resource initialization to separate function
Date: Fri, 27 Feb 2026 11:45:41 +0530
Message-Id: <20260227061544.1785978-11-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260227061544.1785978-1-praveen.talari@oss.qualcomm.com>
References: <20260227061544.1785978-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: HQOwEi-rI6DILS6eDpPaL3KURjCWcYux
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDA1MCBTYWx0ZWRfX0YpmR2vBdJii
 H64rYH+MNJEYFGzX1JJvF5RTZxkiurtszWGoPWEy6OvqHmAdhWUZM9G/9NrQXgyLiJ4UZgM6vsC
 yUkNg0T9TinSU/iBDqiCCe/NFSRTfMcYQLhJ2cYltnendS+S1rt3FiU7/gmVztY9CqM22rjKv+G
 7Ech6wr1C9vcUM7mPuNBJ6ZOsnvww52W+B+oNfKkN3pwSP+x558Yak3nFQgq8e6/ZWTb6NBcIol
 n7JzkmGUpbi+kI05HVlIkVNRvJs4azsLoQxjcudwoWJDgn2fjvI1czPGWRGTa45cj/IzDhTEl9a
 8zj+IgibWwudSQfiIazR0Kp6JAKTfZVYaRdCKb/K2JquLkdB5Fi/1Zb9y8lgzd7tjHUfDBVqETm
 zRGrvGoZaLCS8jy7HVMSDIFYjy+MwyQHg0zheMbAi/gK34OQxErEvPMyAgbG1RZjffxYeBQ/R1b
 OmCPaBxRsv3r6CVemag==
X-Authority-Analysis: v=2.4 cv=daaNHHXe c=1 sm=1 tr=0 ts=69a136e1 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=T4QVXHuY6bPIseVWQ88A:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: HQOwEi-rI6DILS6eDpPaL3KURjCWcYux
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_01,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 spamscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270050
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
	TAGGED_FROM(0.00)[bounces-269075-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
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
X-Rspamd-Queue-Id: 5896F1B331F
X-Rspamd-Action: no action

Refactor the resource initialization in geni_i2c_probe() by introducing
a new geni_i2c_resources_init() function and utilizing the common
geni_se_resources_init() framework and clock frequency mapping, making the
probe function cleaner.

Acked-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
v4->v5:
- Added a Reviewed-by tag.
- Removed core clk, has_core_clk and icc_ddr variable.

v3->v4:
- Added Acked-by tag.

v1->v2:
- Updated commit text.
---
 drivers/i2c/busses/i2c-qcom-geni.c | 64 +++++++++++-------------------
 1 file changed, 24 insertions(+), 40 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index 2986266695c0..a67634ca0c7c 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -107,7 +107,6 @@ struct geni_i2c_dev {
 	int cur_wr;
 	int cur_rd;
 	spinlock_t lock;
-	struct clk *core_clk;
 	u32 clk_freq_out;
 	const struct geni_i2c_clk_fld *clk_fld;
 	int suspended;
@@ -125,8 +124,6 @@ struct geni_i2c_dev {
 };
 
 struct geni_i2c_desc {
-	bool has_core_clk;
-	char *icc_ddr;
 	bool no_dma_support;
 	unsigned int tx_fifo_depth;
 };
@@ -1045,6 +1042,23 @@ static int geni_i2c_init(struct geni_i2c_dev *gi2c)
 	return ret;
 }
 
+static int geni_i2c_resources_init(struct geni_i2c_dev *gi2c)
+{
+	int ret;
+
+	ret = geni_se_resources_init(&gi2c->se);
+	if (ret)
+		return ret;
+
+	ret = geni_i2c_clk_map_idx(gi2c);
+	if (ret)
+		return dev_err_probe(gi2c->se.dev, ret, "Invalid clk frequency %d Hz\n",
+				     gi2c->clk_freq_out);
+
+	return geni_icc_set_bw_ab(&gi2c->se, GENI_DEFAULT_BW, GENI_DEFAULT_BW,
+				  Bps_to_icc(gi2c->clk_freq_out));
+}
+
 static int geni_i2c_probe(struct platform_device *pdev)
 {
 	struct geni_i2c_dev *gi2c;
@@ -1064,16 +1078,6 @@ static int geni_i2c_probe(struct platform_device *pdev)
 
 	desc = device_get_match_data(&pdev->dev);
 
-	if (desc && desc->has_core_clk) {
-		gi2c->core_clk = devm_clk_get(dev, "core");
-		if (IS_ERR(gi2c->core_clk))
-			return PTR_ERR(gi2c->core_clk);
-	}
-
-	gi2c->se.clk = devm_clk_get(dev, "se");
-	if (IS_ERR(gi2c->se.clk) && !has_acpi_companion(dev))
-		return PTR_ERR(gi2c->se.clk);
-
 	ret = device_property_read_u32(dev, "clock-frequency",
 				       &gi2c->clk_freq_out);
 	if (ret) {
@@ -1088,16 +1092,15 @@ static int geni_i2c_probe(struct platform_device *pdev)
 	if (gi2c->irq < 0)
 		return gi2c->irq;
 
-	ret = geni_i2c_clk_map_idx(gi2c);
-	if (ret)
-		return dev_err_probe(dev, ret, "Invalid clk frequency %d Hz\n",
-				     gi2c->clk_freq_out);
-
 	gi2c->adap.algo = &geni_i2c_algo;
 	init_completion(&gi2c->done);
 	spin_lock_init(&gi2c->lock);
 	platform_set_drvdata(pdev, gi2c);
 
+	ret = geni_i2c_resources_init(gi2c);
+	if (ret)
+		return ret;
+
 	/* Keep interrupts disabled initially to allow for low-power modes */
 	ret = devm_request_irq(dev, gi2c->irq, geni_i2c_irq, IRQF_NO_AUTOEN,
 			       dev_name(dev), gi2c);
@@ -1110,23 +1113,6 @@ static int geni_i2c_probe(struct platform_device *pdev)
 	gi2c->adap.dev.of_node = dev->of_node;
 	strscpy(gi2c->adap.name, "Geni-I2C", sizeof(gi2c->adap.name));
 
-	ret = geni_icc_get(&gi2c->se, desc ? desc->icc_ddr : "qup-memory");
-	if (ret)
-		return ret;
-	/*
-	 * Set the bus quota for core and cpu to a reasonable value for
-	 * register access.
-	 * Set quota for DDR based on bus speed.
-	 */
-	gi2c->se.icc_paths[GENI_TO_CORE].avg_bw = GENI_DEFAULT_BW;
-	gi2c->se.icc_paths[CPU_TO_GENI].avg_bw = GENI_DEFAULT_BW;
-	if (!desc || desc->icc_ddr)
-		gi2c->se.icc_paths[GENI_TO_DDR].avg_bw = Bps_to_icc(gi2c->clk_freq_out);
-
-	ret = geni_icc_set_bw(&gi2c->se);
-	if (ret)
-		return ret;
-
 	gi2c->suspended = 1;
 	pm_runtime_set_suspended(gi2c->se.dev);
 	pm_runtime_set_autosuspend_delay(gi2c->se.dev, I2C_AUTO_SUSPEND_DELAY);
@@ -1183,7 +1169,7 @@ static int __maybe_unused geni_i2c_runtime_suspend(struct device *dev)
 		gi2c->suspended = 1;
 	}
 
-	clk_disable_unprepare(gi2c->core_clk);
+	clk_disable_unprepare(gi2c->se.core_clk);
 
 	return geni_icc_disable(&gi2c->se);
 }
@@ -1197,7 +1183,7 @@ static int __maybe_unused geni_i2c_runtime_resume(struct device *dev)
 	if (ret)
 		return ret;
 
-	ret = clk_prepare_enable(gi2c->core_clk);
+	ret = clk_prepare_enable(gi2c->se.core_clk);
 	if (ret)
 		goto out_icc_disable;
 
@@ -1211,7 +1197,7 @@ static int __maybe_unused geni_i2c_runtime_resume(struct device *dev)
 	return 0;
 
 out_clk_disable:
-	clk_disable_unprepare(gi2c->core_clk);
+	clk_disable_unprepare(gi2c->se.core_clk);
 out_icc_disable:
 	geni_icc_disable(&gi2c->se);
 
@@ -1248,8 +1234,6 @@ static const struct dev_pm_ops geni_i2c_pm_ops = {
 };
 
 static const struct geni_i2c_desc i2c_master_hub = {
-	.has_core_clk = true,
-	.icc_ddr = NULL,
 	.no_dma_support = true,
 	.tx_fifo_depth = 16,
 };
-- 
2.34.1


