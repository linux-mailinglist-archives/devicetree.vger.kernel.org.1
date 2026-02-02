Return-Path: <devicetree+bounces-261911-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDsBD9DqgGleCAMAu9opvQ
	(envelope-from <devicetree+bounces-261911-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 19:20:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4719FD010E
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 19:19:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E83B30E8F0A
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 18:11:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A879A38BF96;
	Mon,  2 Feb 2026 18:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nuuxT3N7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZkPMeR7J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCAC3612F4
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 18:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770055867; cv=none; b=jFARa0qR0cUhztL7rGwm5e8uY6DUrvTis5gk0qb0ftZ6e5INl0W9YRA45pSPyhuG/HeWkRR88JdJcCCPblIxyRlMytRZW2SSFqLjya8MBaEhTBJmvPDlal0bqGrQjSGfOzV7zrqCt9EM3zhEMWK7r0DOijDGI+eJlHScWc6sdl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770055867; c=relaxed/simple;
	bh=3SMHjc2ecO3ZsIa72BPVp9Bpao/OfW1pxkLdLc6z5u0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=r0O1TDD3oxLObzF0c/UyeIM4lzX947w1nJ8kQEPX7g68eUIPwhGlsq65y2h2gCvQHKjulkYQ8HZ9EV+4ZmzP6Y6itNERKq4w7zZ+nhkZiN+z+x3Y+o5TQ+7S0FE2csVN5Ha+488xFtqtua2UfSKGu5dYK1hBqTss/mM9vrPZ5W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nuuxT3N7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZkPMeR7J; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612B4F1l2848656
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 18:11:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=4NqPfSzCJyZ
	CNOJ4zQEPZXImjLY2n1KLr983fxqbnS0=; b=nuuxT3N7mY8UuBsIh9kAdK8vFPx
	cjxSoXNYOCLUCoTFN7/ezQnLK5Cb1kV3+BoDoYszYBkcu2EMUiJdcFAFKpOhB+5f
	nRXjx6oQZUIz8Dh2CdiyFiPuPlDAh2OcODLHfBw/NbtdSyx15h3REhZZuwb7sCX8
	xSnW/x0WluoSa/f+IC6u2zdCJpnpvrJvq2BphlxH/KqtaPqMuKF8Spg++2a/Bl6o
	1Ye2BpDnc+bRETJ1TpQ2aZygw4TcVhszx3iK2mtIpF98E4GsOgMcEnSnk6xa/lnk
	6NsM/stLEDiV0NuOeS3Hv+qWJ+nNeduuFd75GCqwHCFBkMe9ahQ7UDj8Mfw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2tqthc3y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 18:11:05 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-81eef665b49so11379045b3a.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 10:11:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770055865; x=1770660665; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4NqPfSzCJyZCNOJ4zQEPZXImjLY2n1KLr983fxqbnS0=;
        b=ZkPMeR7JNFR34cEDgE9CUTVRuslNLhLEQsIk81Y/p2VapR7lLFaurT8GHU09CEeXL8
         jJwcyGlU34SgX6yQAMMBEIudfHczIOStziSJlO2CZGt34H7oUTHiskWGmHqP0qwDvpGS
         Xyj6LJlprOS/3L3fueA1cr8/55ws1SP4VYtk30y+pyeGhoit0s+12bqRA6ZIsdFZc8zs
         Pp0fWxCMXc7Wsjw8QHuRLCMdlZzmi83WymaZutCu8YrCK306xN68JAXxxI66m/MxS96Y
         kXvB6IitEYuLt42wkYED7oq9F1VpvP82e0rXYyC9KWqTwj7c9T/GFl3ZNoTwKL84azME
         PeUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770055865; x=1770660665;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4NqPfSzCJyZCNOJ4zQEPZXImjLY2n1KLr983fxqbnS0=;
        b=JRgpwACoEfwzB7zoYw0rtxoKvsET/uwMIB2NU8dbfi4wmbKq7j4sEeMjTO8mDr5vkj
         X0n+vWcCOKfO88w5iRoNLUiM0wvr3DKpO3U9hrQMiRxbJ4VjqvvOPyl3onRgxsWiJ1nJ
         hTUVFOd1LEAz7hYChDbq06DRWPTC31lokZNLTrwjQUQPRiL14a/dj0e82BV1rV2vl6Qn
         zq5DSaq8u/NO6s3Jc1EIwJaPyVK5uU8kaFvDzsIDTYcXIJy3yNMltMFK+MlvGljwp4W2
         m90vG0X6RMs56iiJ8LkU506xYYWL0nGvkOlJK5jQYC9+D/GaRAnnHwYxT9F5USts0GAo
         9MGQ==
X-Forwarded-Encrypted: i=1; AJvYcCUrdgD5opqDluE+SASBsVbJrXps2OGjcqtBzcOlB0GWpZAiKjqSeG6wW8Cdmh4TCpoor5GAmxJQ5BZt@vger.kernel.org
X-Gm-Message-State: AOJu0YxMJNDt3UJ8MB/lAzOoby8IqSOadWI7B+iug47uW5PFLHWkiHPN
	b2NwvuiKt/hwf85k8a6ceO1LEYTEGvYkQ+0hhIAqi3HmKn1BDTE9wt5XI8MKjVnDho0aAOd6IbY
	UgY5BYOFKDDgW7oLYOXKQshjI20nlJb3AxlC0Wxr4vxsITBfxzGGmEnqN31LnS3KE
X-Gm-Gg: AZuq6aKpW5ej745GJo96YtLE5aTnMTIBtDFfxAXCsEPXCLVuw1Hen3DU6R7gD2As/BQ
	L+mPYweXGHS4MY8ZyvbjdL41dzMJoXiWnGdikCf6rZ3BgBMxsQXnXaw/JN0VRgzyeMlhGympp05
	AWY7daLqeMU7KS1BCwPXR6W3zyaiX3e/VmBDZdfIzmSVHOh4HG8vSG3+S8gxxsdKtW87ePapT0I
	VrikubGKp7PugpjMyUu/qPp5uZD/eTngAqd4JFTEo8WMLT/b+xwQXe7idiIrc2Gyd6DT8huYs9B
	NJQMwKXNNL+wctwpKlxt21FJIZen3sCgPpckYk/eTzxfWg5GehuMH4wnikeu/Jcf/PdVzNeBo7v
	WW6ERn3erqHnHrLrpocOi0hRVlgDujk1yXrxIvdNkf4U=
X-Received: by 2002:a05:6a00:ab86:b0:81e:408e:47d2 with SMTP id d2e1a72fcca58-823ab86d255mr13358486b3a.53.1770055865142;
        Mon, 02 Feb 2026 10:11:05 -0800 (PST)
X-Received: by 2002:a05:6a00:ab86:b0:81e:408e:47d2 with SMTP id d2e1a72fcca58-823ab86d255mr13358457b3a.53.1770055864649;
        Mon, 02 Feb 2026 10:11:04 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379bfc712sm17476780b3a.40.2026.02.02.10.10.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 10:11:04 -0800 (PST)
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
Subject: [PATCH v4 12/13] i2c: qcom-geni: Store of_device_id data in driver private struct
Date: Mon,  2 Feb 2026 23:39:21 +0530
Message-Id: <20260202180922.1692428-13-praveen.talari@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=XP89iAhE c=1 sm=1 tr=0 ts=6980e8b9 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Ef8ydGj_N8gZK1mdt3cA:9 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: iKJJSdfI0477IFfZCtGiGztQGh_NI5pr
X-Proofpoint-ORIG-GUID: iKJJSdfI0477IFfZCtGiGztQGh_NI5pr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDE0MiBTYWx0ZWRfX1RYVOPXIfmao
 rCRQQFbNlPcHldb6gjpdUVK6XNDb3szQtHrUVdFyEsdJ1kiztWJOO/S2WF0VFENeG9C9DqNjdx6
 Rb4yxdpljb7fO/aWYu1dJ8X7jLhuIXGMbKk7pfsuJ6P++FruIjRW7iZerhg5aOHeu0PmVrg3GZ/
 oztaGg5ChDRVd13+1UjWbRuh9m5Oj06nJa0od2BJSwcNNFNQFpp0h0GJuh0Vd189dACGaq+KZOG
 LD6UB8XfzxH0JL569elheGmIJETFZh2/nKwCwKjr/upyYuKKzR4tmof++XIZhRM+qzH4XjEciQl
 7xDn3m7AKO8vUzCUT9k7HQqitOsyoVi4E69qty4zUUCRwBDbd4F3MZyOJPSB1YsuoRMgS2tRjUi
 Q9gqN3iwg3A7oLxvn1YT1hlscjpF4DByP163WYz6EK1dmcqlvl6zWxW3dWKqDR7jGp57mx6m7PB
 tR6PKe473s7vtaMA7qQ==
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
	TAGGED_FROM(0.00)[bounces-261911-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4719FD010E
X-Rspamd-Action: no action

To avoid repeatedly fetching and checking platform data across various
functions, store the struct of_device_id data directly in the i2c
private structure. This change enhances code maintainability and reduces
redundancy.

Acked-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
v3->v4
- Added Acked-by tag.

Konrad
- Removed icc_ddr from platfrom data struct
---
 drivers/i2c/busses/i2c-qcom-geni.c | 30 ++++++++++++++----------------
 1 file changed, 14 insertions(+), 16 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index 4ff84bb0fff5..8fd62d659c2a 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -77,6 +77,12 @@ enum geni_i2c_err_code {
 #define XFER_TIMEOUT		HZ
 #define RST_TIMEOUT		HZ
 
+struct geni_i2c_desc {
+	bool has_core_clk;
+	bool no_dma_support;
+	unsigned int tx_fifo_depth;
+};
+
 #define QCOM_I2C_MIN_NUM_OF_MSGS_MULTI_DESC	2
 
 /**
@@ -122,13 +128,7 @@ struct geni_i2c_dev {
 	bool is_tx_multi_desc_xfer;
 	u32 num_msgs;
 	struct geni_i2c_gpi_multi_desc_xfer i2c_multi_desc_config;
-};
-
-struct geni_i2c_desc {
-	bool has_core_clk;
-	char *icc_ddr;
-	bool no_dma_support;
-	unsigned int tx_fifo_depth;
+	const struct geni_i2c_desc *dev_data;
 };
 
 struct geni_i2c_err_log {
@@ -979,7 +979,6 @@ static int setup_gpi_dma(struct geni_i2c_dev *gi2c)
 
 static int geni_i2c_init(struct geni_i2c_dev *gi2c)
 {
-	const struct geni_i2c_desc *desc = NULL;
 	u32 proto, tx_depth;
 	bool fifo_disable;
 	int ret;
@@ -1002,8 +1001,7 @@ static int geni_i2c_init(struct geni_i2c_dev *gi2c)
 		goto err;
 	}
 
-	desc = device_get_match_data(gi2c->se.dev);
-	if (desc && desc->no_dma_support) {
+	if (gi2c->dev_data->no_dma_support) {
 		fifo_disable = false;
 		gi2c->no_dma = true;
 	} else {
@@ -1023,8 +1021,8 @@ static int geni_i2c_init(struct geni_i2c_dev *gi2c)
 		tx_depth = geni_se_get_tx_fifo_depth(&gi2c->se);
 
 		/* I2C Master Hub Serial Elements doesn't have the HW_PARAM_0 register */
-		if (!tx_depth && desc)
-			tx_depth = desc->tx_fifo_depth;
+		if (!tx_depth && gi2c->dev_data->has_core_clk)
+			tx_depth = gi2c->dev_data->tx_fifo_depth;
 
 		if (!tx_depth) {
 			ret = dev_err_probe(gi2c->se.dev, -EINVAL,
@@ -1067,7 +1065,6 @@ static int geni_i2c_probe(struct platform_device *pdev)
 	struct geni_i2c_dev *gi2c;
 	int ret;
 	struct device *dev = &pdev->dev;
-	const struct geni_i2c_desc *desc = NULL;
 
 	gi2c = devm_kzalloc(dev, sizeof(*gi2c), GFP_KERNEL);
 	if (!gi2c)
@@ -1079,7 +1076,7 @@ static int geni_i2c_probe(struct platform_device *pdev)
 	if (IS_ERR(gi2c->se.base))
 		return PTR_ERR(gi2c->se.base);
 
-	desc = device_get_match_data(&pdev->dev);
+	gi2c->dev_data = device_get_match_data(&pdev->dev);
 
 	ret = device_property_read_u32(dev, "clock-frequency",
 				       &gi2c->clk_freq_out);
@@ -1218,15 +1215,16 @@ static const struct dev_pm_ops geni_i2c_pm_ops = {
 									NULL)
 };
 
+static const struct geni_i2c_desc geni_i2c = {};
+
 static const struct geni_i2c_desc i2c_master_hub = {
 	.has_core_clk = true,
-	.icc_ddr = NULL,
 	.no_dma_support = true,
 	.tx_fifo_depth = 16,
 };
 
 static const struct of_device_id geni_i2c_dt_match[] = {
-	{ .compatible = "qcom,geni-i2c" },
+	{ .compatible = "qcom,geni-i2c", .data = &geni_i2c },
 	{ .compatible = "qcom,geni-i2c-master-hub", .data = &i2c_master_hub },
 	{}
 };
-- 
2.34.1


