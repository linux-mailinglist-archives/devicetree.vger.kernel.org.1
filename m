Return-Path: <devicetree+bounces-259324-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCFiLibNdmktWwEAu9opvQ
	(envelope-from <devicetree+bounces-259324-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 03:10:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B7ADE83702
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 03:10:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DBE4F30069A0
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 02:10:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C843E244661;
	Mon, 26 Jan 2026 02:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JiOLUYYc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FKfKYTPb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD2CD2222A9
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 02:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769393394; cv=none; b=rdgv+WdR3ZqJ/FE0tMYnaCEZQ+OGWzt5Pn7lXTjgsQmtq4j5eEEwxZNrEtHubhMGuqUsVzM8klTYcUXLc0MbrSiD71+t6P2aYB8bTn+YS/66gCXLDwscvPtyEkI6zPyz2kP91sDtXL0jqWofNm7B96pdaItEPV1xHB2+xAQWFTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769393394; c=relaxed/simple;
	bh=/pXYIcxvSkuZpBg9yyVPOQZNVFfc9Qv8zIPbdJARv/A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=robGUXrVEPBJC4hP94hFDuBCoiZ40XZIimMTduc7VVOevfQQ2aFfoe0ZY4U0hpbG0dS26U6z4RfcdSpt9jpwsTd8k5UeLmqK/ebRzPTEQMtU2cYpQdu/vOBXAmeHBZKoHh0IGI4wB2jyVkxZKaZK+qRz276QXEkyg9UQZb2LDgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JiOLUYYc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FKfKYTPb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60PL0jNC2168691
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 02:09:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	12JLVjSwH3qLFl84DNG93K/xFsEvtq9+jZ017krl8Fc=; b=JiOLUYYcwNs/tKEn
	rKOoP7pOcbAgn8WqVOIiC9JKEagEBodU91Loe2yz+a+BaWluruzKMhgX7f81cPqw
	CljCP55Hgjht+pB+sQdP9/Tn2fHaGVQMtksi+DW0iEEDJR+FtYr+I1LwezZnPYbc
	DBLyZbnod2vx1m7is5GQbnobWk8/tNzDhvgsNLNKSmOoK+P5ixAmOAj6xh9wP9Kz
	6MdTBqR5Je8yMepkLoBFos4USicpnW5ydW8pDWWSP7UW9Lg2fSKQOSWvzm1sfJ3A
	JbsF9HTabosoFD192W0h3apHfeZSI7H7l+jMvQwYi1ybg1UdnN6jvYXUiBodHHPu
	poFmcQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq8dk42e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 02:09:51 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6b315185aso152792085a.2
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 18:09:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769393391; x=1769998191; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=12JLVjSwH3qLFl84DNG93K/xFsEvtq9+jZ017krl8Fc=;
        b=FKfKYTPbjoLYzAaplt54nzoaHJcWgZ4EkP5eZY1rE9lbANmP7I3X1eoKhja6fzjN2R
         529V/nkNQSnr58hA9RhDnSkm1sHIESrDUoKHP3lWsm+vmx8Yz+MljGvegF73T7cjWBfv
         2n9FnxEFoWfo6LxiPv+ps37i/qJKMRNAcp4AID2PAa6Ehg8F/I2O8gtsjPeFzCSBclid
         SsNaDNKGlYTSs+ORhQue1w2n70cAQFsIoV8N2X7DimJuyRyEMbRZBNR2Zl5b+e3aWrn/
         UUbDESxCZRqyN256o/oX1isk/F+ZnpiZItWTMnpliZ4tITLQexqfyX7GZzRZ73JuWRJO
         4CmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769393391; x=1769998191;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=12JLVjSwH3qLFl84DNG93K/xFsEvtq9+jZ017krl8Fc=;
        b=deUXt3OPjeeTHGCHDlNBfl+FPaI/tIAY4mhzlaDyvKOGLKAEdNOoiD9VpXRMvSOClr
         uFJhv25LguZPgW4CEX4zqwgxklZNs8cLSD6EiCNmoNFK0XLuXXNpePf5WW/N2XIAhrin
         4VCv/zLroGwIc97D/ZSyFL3tqiaDHLzMCpC3mAsakdFWGGg5Yi/9dQc4xqS2lVMQ01rz
         U692ivAvNV5TGPPix0m1ovnoy9q87hZkPJGA0jqKSqec2tvUtdyJ2R8cY69rvHlac3a4
         LCJkZtE7fd4zAlnMzsTd4gbUIKvsBhL1iFS6AsAhACopt/EUL8TX4zBFMCiSKQMnnbS+
         HFJg==
X-Forwarded-Encrypted: i=1; AJvYcCXSy+HbspaQdr0RKDrBoM+mCQ9o5rEVNqtwqhI4IGMjV2DtydFPKZzMP7nPwP2TqX2NynbfE3gPi6NG@vger.kernel.org
X-Gm-Message-State: AOJu0YzNE9O+5zevmRlqND0/U6rUmEKorLf3xLa5Lmp9jv1fwM+c99Kp
	JIqaAwSmBQje7x9IjDkYzj/lh6K73j++m9PIcP5vkFCX85SkHmP+sWB6wumn9WUw5DBcXwVw5Hk
	Am0q6vBFzRmml10scrK7DOt1c7xbZMnHsDB7pk4gSdxm1rQleMAmk4LxoBs/TxtKl
X-Gm-Gg: AZuq6aKuEBGqwqpUlLKD2qLqF57xTWFIx9pmDvDP6KxZgeRc5fH0jW3xH5rpFxKmNY0
	eW89kei04cgjuNnwY1MXYDELSeaMxloW8YppgTt3TeXvNxTt+0s+QPrfVNYSMT64IkaeUt5WPu1
	6b/zK21HKpXQadFwzbzAXnqwG7B1zGXvkhGIg11jMmdjT9gGkBzIcd1Lmqik/vHRHwlyKlPsBfI
	A4jveNAUeLkRGqObF7UPIg9e0zGxy8aLBVTL3sXrutEiXz9+oHc2Mdi7j0qWDfU/giYf/R8rZIS
	BfpK8ik3hzZtQUgZcNu5fBaY5fQ+qTgXVAFtRsZTAqCj+/05WPYB7lYkZMFLlFXJIglrdnWazQ9
	wb8obdwcQNoLDwdWh/dXVJtnxqWe3MohGYggIJYhbT3QeH0LXeMPwdTfTboHdNkSoAK4G+4xeac
	7BigRqEeds6cYxi7SR3Ft4qsE=
X-Received: by 2002:a05:620a:1a04:b0:8c6:f7c7:8481 with SMTP id af79cd13be357-8c6f9572730mr404987885a.8.1769393388621;
        Sun, 25 Jan 2026 18:09:48 -0800 (PST)
X-Received: by 2002:a05:620a:1a04:b0:8c6:f7c7:8481 with SMTP id af79cd13be357-8c6f9572730mr404985285a.8.1769393388179;
        Sun, 25 Jan 2026 18:09:48 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-385d9faed52sm22778201fa.2.2026.01.25.18.09.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 18:09:47 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 26 Jan 2026 04:09:39 +0200
Subject: [PATCH v2 4/4] media: qcom: venus: flip the venus/iris switch
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260126-venus-iris-flip-switch-v2-4-b0ea05e1739a@oss.qualcomm.com>
References: <20260126-venus-iris-flip-switch-v2-0-b0ea05e1739a@oss.qualcomm.com>
In-Reply-To: <20260126-venus-iris-flip-switch-v2-0-b0ea05e1739a@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4519;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=/pXYIcxvSkuZpBg9yyVPOQZNVFfc9Qv8zIPbdJARv/A=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpdszkDWQPZJZAbhdDbMFWtyDz3ANZ8+/rgd+Ks
 pMn6MAzUOiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaXbM5AAKCRCLPIo+Aiko
 1T+4B/9J4DeXrVENoNMzKe4OvhZKDMYMDGxA8Kg59wZVv3qeH00p6Znr02oEeibmz3Ed453OMG7
 2z6/IkgEhnAnU6JTHC5xyUTc6+6bHiOva66mJ4sPjfc1UOTMPGptI6wty3lRX3KHBPO0dwGlGil
 9zsmKCpSelSMqlr/tR/9uE3W6DNZ5iEz8JzKGk9CI4G0KNVCm6P45GnbIL3GTsFiJ/yPpN4LMrR
 gGI8mnaTWF7JHS+sfouRubQxk5LeUYQZuBhnJB+X3V9pMqyzPqGuROlwZwPHQ8KGqR2Q1BRGK+f
 ElOlfY20QGYfDnPMSDS73H3V/AfLUxYyDblz+qM+RQq0Av2E
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDAxNyBTYWx0ZWRfXzQ+Qy/FPBetu
 nxrz2ymAbDOEyI9Z6KJf1rrXlKnQAvSz25j952gw6tJDkNWmkxIBYOW1RbZXuUitVsELf5r62DU
 WaD/XIz4zgVgShDCyHEjdY679oCETrxsPycmen98DvsitVl7nkN8p9P99BFBHbZio0l3C2I/DcA
 sWU8c31uFNMqTM80jTKdh7B9v6qK1WsX9IlxuhjLC4LxXWGjVyhhCSjJ9Er5tdWjNtSRwMKi8W9
 HfK/NQk752jQOk8jj1h3vnt4vT1QS31/q4UtXmnjDDRkez3xASdtLjMXdcXiX66RZ6mhlz606dJ
 pt6xAcYOE5kw9pu3ZhRRyfce7zraz8bcakep0ZfVQ/kiRElNlRX/HXEFkf+0ArHSy4hCKhonE4+
 VvmpbdLPdJKG2Nzb7tmIkjYwQRQieeeSNje/piicNv+KjrRhJ0CSGpIejkfw8d5eeU9Mm4Djd0B
 P1txeMBZevLdiawDWlw==
X-Authority-Analysis: v=2.4 cv=RIq+3oi+ c=1 sm=1 tr=0 ts=6976ccef cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ch7mjRkEqDhx0_hr-tEA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: NOWrmzNSJZqT_RE4g-dppgUEpn0uqOmU
X-Proofpoint-GUID: NOWrmzNSJZqT_RE4g-dppgUEpn0uqOmU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-25_06,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 adultscore=0 clxscore=1015 phishscore=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260017
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259324-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.30:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B7ADE83702
X-Rspamd-Action: no action

With the Iris and Venus driver having more or less feature parity for
"HFI 6xx" platforms and with Iris gaining support for SC7280, flip the
switch. Use Iris by default for SM8250 and SC7280, the platforms which
are supported by both drivers, and use Venus only if Iris is not
compiled at all. Use IS_ENABLED to strip out the code and data
structures which are used by the disabled platforms.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/media/platform/qcom/iris/iris_probe.c |  4 ----
 drivers/media/platform/qcom/venus/core.c      |  6 ++++++
 drivers/media/platform/qcom/venus/core.h      | 11 +++++++++++
 3 files changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/qcom/iris/iris_probe.c b/drivers/media/platform/qcom/iris/iris_probe.c
index 10b00d9808d2..3b662ba90259 100644
--- a/drivers/media/platform/qcom/iris/iris_probe.c
+++ b/drivers/media/platform/qcom/iris/iris_probe.c
@@ -352,22 +352,18 @@ static const struct of_device_id iris_dt_match[] = {
 		.compatible = "qcom,qcs8300-iris",
 		.data = &qcs8300_data,
 	},
-#if (!IS_ENABLED(CONFIG_VIDEO_QCOM_VENUS))
 	{
 		.compatible = "qcom,sc7280-venus",
 		.data = &sc7280_data,
 	},
-#endif
 	{
 		.compatible = "qcom,sc8280xp-venus",
 		.data = &sc8280xp_data,
 	},
-#if (!IS_ENABLED(CONFIG_VIDEO_QCOM_VENUS))
 	{
 		.compatible = "qcom,sm8250-venus",
 		.data = &sm8250_data,
 	},
-#endif
 	{
 		.compatible = "qcom,sm8350-venus",
 		.data = &sm8350_data,
diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
index 24d2b2fd0340..646dae3407b4 100644
--- a/drivers/media/platform/qcom/venus/core.c
+++ b/drivers/media/platform/qcom/venus/core.c
@@ -949,6 +949,7 @@ static const struct venus_resources sc7180_res = {
 	.enc_nodename = "video-encoder",
 };
 
+#if (!IS_ENABLED(CONFIG_VIDEO_QCOM_IRIS))
 static const struct freq_tbl sm8250_freq_table[] = {
 	{ 0, 444000000 },
 	{ 0, 366000000 },
@@ -1069,6 +1070,7 @@ static const struct venus_resources sc7280_res = {
 	.dec_nodename = "video-decoder",
 	.enc_nodename = "video-encoder",
 };
+#endif
 
 static const struct bw_tbl qcm2290_bw_table_dec[] = {
 	{ 352800, 597000, 0, 746000, 0 }, /* 1080p@30 + 720p@30 */
@@ -1125,11 +1127,15 @@ static const struct of_device_id venus_dt_match[] = {
 	{ .compatible = "qcom,msm8998-venus", .data = &msm8998_res, },
 	{ .compatible = "qcom,qcm2290-venus", .data = &qcm2290_res, },
 	{ .compatible = "qcom,sc7180-venus", .data = &sc7180_res, },
+#if (!IS_ENABLED(CONFIG_VIDEO_QCOM_IRIS))
 	{ .compatible = "qcom,sc7280-venus", .data = &sc7280_res, },
+#endif
 	{ .compatible = "qcom,sdm660-venus", .data = &sdm660_res, },
 	{ .compatible = "qcom,sdm845-venus", .data = &sdm845_res, },
 	{ .compatible = "qcom,sdm845-venus-v2", .data = &sdm845_res_v2, },
+#if (!IS_ENABLED(CONFIG_VIDEO_QCOM_IRIS))
 	{ .compatible = "qcom,sm8250-venus", .data = &sm8250_res, },
+#endif
 	{ }
 };
 MODULE_DEVICE_TABLE(of, venus_dt_match);
diff --git a/drivers/media/platform/qcom/venus/core.h b/drivers/media/platform/qcom/venus/core.h
index 7506f5d0f609..c7acacaa53b8 100644
--- a/drivers/media/platform/qcom/venus/core.h
+++ b/drivers/media/platform/qcom/venus/core.h
@@ -54,8 +54,10 @@ enum vpu_version {
 	VPU_VERSION_AR50,
 	VPU_VERSION_AR50_LITE,
 	VPU_VERSION_IRIS1,
+#if (!IS_ENABLED(CONFIG_VIDEO_QCOM_IRIS))
 	VPU_VERSION_IRIS2,
 	VPU_VERSION_IRIS2_1,
+#endif
 };
 
 struct firmware_version {
@@ -525,13 +527,22 @@ struct venus_inst {
 #define IS_V1(core)	((core)->res->hfi_version == HFI_VERSION_1XX)
 #define IS_V3(core)	((core)->res->hfi_version == HFI_VERSION_3XX)
 #define IS_V4(core)	((core)->res->hfi_version == HFI_VERSION_4XX)
+#if (!IS_ENABLED(CONFIG_VIDEO_QCOM_IRIS))
 #define IS_V6(core)	((core)->res->hfi_version == HFI_VERSION_6XX)
+#else
+#define IS_V6(core)	(0)
+#endif
 
 #define IS_AR50(core)		((core)->res->vpu_version == VPU_VERSION_AR50)
 #define IS_AR50_LITE(core)	((core)->res->vpu_version == VPU_VERSION_AR50_LITE)
 #define IS_IRIS1(core)		((core)->res->vpu_version == VPU_VERSION_IRIS1)
+#if (!IS_ENABLED(CONFIG_VIDEO_QCOM_IRIS))
 #define IS_IRIS2(core)		((core)->res->vpu_version == VPU_VERSION_IRIS2)
 #define IS_IRIS2_1(core)	((core)->res->vpu_version == VPU_VERSION_IRIS2_1)
+#else
+#define IS_IRIS2(core)		(0)
+#define IS_IRIS2_1(core)	(0)
+#endif
 
 static inline bool is_lite(struct venus_core *core)
 {

-- 
2.47.3


