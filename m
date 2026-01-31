Return-Path: <devicetree+bounces-261459-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iEeELl49fmkvWgIAu9opvQ
	(envelope-from <devicetree+bounces-261459-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 18:35:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D80C3485
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 18:35:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 70C5830327F5
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 17:34:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4E0B35DD00;
	Sat, 31 Jan 2026 17:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F+doxs1F";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kkN6sP/O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD71335B13D
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 17:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769880841; cv=none; b=Dn+pmq68R3ACRdA8ntroHMf3PyCR1GZzynUO/i6gNPp87Qo69D5ghb9lM2AbDZy0rCiz4FNCZj10jSXkns7sjHv+2OHlRBQVpOTDBXBmfP63hmpfJ/LiVVe9XoC1s2UXupvTlW5FqD4kt4FiykcK38+oLzvDpWe8hB2Trx0/uZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769880841; c=relaxed/simple;
	bh=6NuffNWnnJdps+Qa/VbgdTchPyycTYPYQqXXf6EKyA0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=m/p5r1Mz7LsvA9SVK6bB7JQLf95Jp5/OhhQVNCjwsKis23SJLdwuZ5uQT70u+5RW8PHIRa1jYozcojGbOf8Ze+cL2PGJZn6o00cRwKOGDIASt2OoNvhH9eh+bMpfsYK5fNREEH8qZEqmM2KwGjegcuJxJS1uqd6SNVAKGYpV2Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F+doxs1F; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kkN6sP/O; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60V4Sh9D1510027
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 17:33:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1XGvQ7yGrJV4bV5rx0wYu9nGDUQZH8c18eThksaF4dU=; b=F+doxs1FJcGTnZg/
	bV/lX7tGB3hf+z09vrsD9q81oB+OqDCbttrCs94GzDho/0pttseOehozx46zldwS
	RTA6Hra7LAL4iqCZucu5z6e6XUnKqX0s53PKM91qkeZdS960eSFtmQ/LRrf/N0DQ
	VVj/PaROaBAE2GPFdS3IRZgx8q035AvQ8aaHt6HLkl7flh7oPK4SRoV8C/bjQDiV
	tXXuBFWw4vRAIDKOKfdTElkqPSRTBenhMXwe5c5BMCEha39IoXPAC+44PeNO2lzi
	J7X+QO0O2TdmQru8+m0U2NKiwYqJuEp1kCOh0UMSg54D+BFlkXF8JZmZrBJyHxEq
	GPcO5Q==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1ard17bs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 17:33:58 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-94838cc73bdso4017107241.0
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 09:33:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769880838; x=1770485638; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1XGvQ7yGrJV4bV5rx0wYu9nGDUQZH8c18eThksaF4dU=;
        b=kkN6sP/OtzT9N3eN+WSEKiQVAJzG95h6yRXbhs0K1u/XDAohz6rcofUz7kwF2ytE25
         uzsK9nLNpb4lRqE8GZoAlRRqCOw1/Eu9+OSR9649tLoKoBOmfqlPR3/KdVGbqoH9RfZs
         EKNM5gG0NkvD+3+MmA1UwnOgmJkyB2N9YO4STLDJWfHp3R7rBYW13lNGJMBWkukDdD0C
         RO3rcMBgugSsapN9RGD28BbazvCF6ii9YauhujF9kcwttKgMj1ZFsafPwBBSwkPDc89H
         pL8Lk/gnqDcybfBzZIT+bfSqqpMc609T66AGYLz0rBnqgZdu9PAvJKxhoB91k+ZZQ/t5
         Mlfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769880838; x=1770485638;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1XGvQ7yGrJV4bV5rx0wYu9nGDUQZH8c18eThksaF4dU=;
        b=Krx9xwXJJaiG2giUwxuu4Dm8DNIUYTJdblDyp1gkpymUo1vWmo3JF7tMFdMiMP4Rut
         A0LrQl0RP95yMruvjQM4ouiJx/sscmviEdETkizQfQzRlFBTXaliuSLCQYrPTXT440LE
         AgQqnjmdx06RXM6w4HyvS1PST4v4wMUuZoN2y1dNFUsYAd4PQUCS2FDqxOBzpPZRCVa6
         EY5Do/wQvAsqUBlWt3TnBbZPKgzlUE04weEGb7O8YIp/D3FNqdEKnds2X6YUh8Y/WJY1
         ak/IJLbVdoxn6Yat1G3EhGYP+UMAssTlwl37TXyZJ63tTIJlgGmOHTgS76Gzzcf8s1Ad
         UxdQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJkJ4+8v3+wfHjYtr/5FQYSfJPTPSBXzDlG13tvBur9IKHSXG0Ae6iQu6NS/5G1zIwjWf1iCjcj4YK@vger.kernel.org
X-Gm-Message-State: AOJu0YwKtuvNZ3Zg70IDy7EGVkNT2uMRGYxbuBVsPpEs/Qr6qG65zaoj
	2b7JyJEx7fy+Ehk6KbFo/ViVRmxW3b/VxP/lV2qVfYzhrwD2dAx0XaGh48gqOcFH78Skkj6Qul8
	kKcfCrxMtozUqX8nAliJnsJWFQcRpQUab+hKJx8QkazNW5nsQXIwWxjPML5W6lQmN
X-Gm-Gg: AZuq6aJT0PN83ZBg+0Y5hzxeSJe5IttHzxrDyODqargLu6PasLOy4m85hGEWGEgBKIB
	goLi2rsiJlJXS7E5Oih4f4mtlwnnN5DTsAIVAUaRNavpx4XCDTZBeei+TGgEqie3g5HY3syc/BL
	73M64aSwpAUlCEfQOqkoEdR4rv69PPz3UkMhgL1G9E85ucpmAI0l2pX+Yz92Nw3ifI3IeRJeba8
	QYlw+OSWntpJ9GG9czC+yCF8otkJDXZT1FuH5UICnwnhETdvDYK7Y19+AY4bm0BKw8MLhurQBuj
	9NPXXyWv2HrYZ/YGZRvdnyS8lcggs5/l7ePI0p9gYyiHnJpRST3k2zk9vuPWIkCQIZvd53arnO9
	hrCzwWDXknm+ynu3OhP0Xbx3I3yEznt8OG3GP/rRazEpaRpmBrLtSwMBH6zxMli759hKjwDz8vA
	v7cvQvzVeIAE1Lpt27FL6UHIQ=
X-Received: by 2002:a05:6102:1a0d:10b0:5f8:e4f3:3e25 with SMTP id ada2fe7eead31-5f8e4f34cf4mr1139390137.15.1769880837824;
        Sat, 31 Jan 2026 09:33:57 -0800 (PST)
X-Received: by 2002:a05:6102:1a0d:10b0:5f8:e4f3:3e25 with SMTP id ada2fe7eead31-5f8e4f34cf4mr1139374137.15.1769880837385;
        Sat, 31 Jan 2026 09:33:57 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e074886f0sm2443236e87.24.2026.01.31.09.33.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jan 2026 09:33:56 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 31 Jan 2026 19:33:46 +0200
Subject: [PATCH 4/8] media: iris: scale MMCX power domain on SM8250
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260131-iris-venus-fix-sm8250-v1-4-b635ee66284c@oss.qualcomm.com>
References: <20260131-iris-venus-fix-sm8250-v1-0-b635ee66284c@oss.qualcomm.com>
In-Reply-To: <20260131-iris-venus-fix-sm8250-v1-0-b635ee66284c@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Hans Verkuil <hverkuil@kernel.org>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dikshita Agarwal <dikshita@qti.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-media@vger.kernel.org,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2077;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=6NuffNWnnJdps+Qa/VbgdTchPyycTYPYQqXXf6EKyA0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpfjz+HOacaBmW57OXNnQqMmJ83pOUWH3gs04Jx
 wpiz4uKWMGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaX48/gAKCRCLPIo+Aiko
 1cFiB/oD1i+aLORDkXUUhBH2qmdqJPt25QMTI7gACuH6n5p+pWvc4NFXlDyxgVENFXqcE4D1gBU
 IlhRKb9OhPjPkUy1lv34I16kmkxYJWUXWqKQnD6z3SlouR6ncSArAg2H/q1WQhdOpG5+FR2mdoB
 rYN0hOyntieoAw8BWYVc64EjtB5pkvDd2VxW6cp3MyPMoZdyXwOI+d/Af7W1y8jURagZwqQ+Mj/
 f+7dnJ8NNTv7ZUuy8U9BLpiCQW6EICsQe5Be8/0G8Cyq56og5/4/PcAE53PPGwp6sYC39CUZjLH
 B7mHl+CmK/SoFU1RSRGR26Mw4PxGh2y32xXiZR5bv25+tVAj
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMxMDE0NyBTYWx0ZWRfX9PjkatELc4B+
 s1/BvALWvJTYhidcumCV3FkE5RXck505jv5CXXR1w5/FMB4nlg8et/LgTj3Vf180XadWiyeHi99
 dZMwc/16fvz/0c6DvGVNPkCG9T9qChbywLvWOm69KtHUulot1O+hvc/HcRqQ9XPeFxLHLD6hVdk
 m1uz7KaWnJwaanStqlkTciu6gZeQJrtAlGDMIkf+k73eCbLnc8kZgjF2oLkoM+NT+oxuMpXaQ0Y
 r03iGBJyhHcy5ne2sr/BYXBFxxC9JSm9FA2CYMhwDUuAnojsFHiA8kI6ObzJ7/LNJ9TvbhhLTFR
 3BH7quhUCvQsuRdd0KJUoAO5BwXvGsKglsp7JYz3EHUNw+ofXYjUeaqmlZ7unajvfVYT8qkShhK
 0XyWFmlwgJ/9ZyllBpEmVg7njVywlvIDZ+XmsdYxpZwdH3Ir1x/fqqholTITtiKv9UrGPBJtRuL
 CxLtlH9KnKEwCA33Yqg==
X-Authority-Analysis: v=2.4 cv=J6anLQnS c=1 sm=1 tr=0 ts=697e3d06 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=_hdJGhFWpaytJYYtlLsA:9 a=QEXdDO2ut3YA:10
 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-ORIG-GUID: -kXuC34nrUgpKdHeWpQ_JPjZQ0HG1osy
X-Proofpoint-GUID: -kXuC34nrUgpKdHeWpQ_JPjZQ0HG1osy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-31_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 adultscore=0 clxscore=1015 spamscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601310147
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
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261459-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,huawei];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 36D80C3485
X-Rspamd-Action: no action

On SM8250 most of the video clocks are powered by the MMCX domain, while
the PLL it powered on by the MX domain. Extend the driver to support
scaling both power domains, while keeping compatibitility with the
existing DTs, which define only the MX domain.

Fixes: 79865252acb6 ("media: iris: enable video driver probe of SM8250 SoC")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/media/platform/qcom/iris/iris_platform_gen1.c | 2 +-
 drivers/media/platform/qcom/iris/iris_probe.c         | 7 +++++++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/qcom/iris/iris_platform_gen1.c b/drivers/media/platform/qcom/iris/iris_platform_gen1.c
index df8e6bf9430e..aa71f7f53ee3 100644
--- a/drivers/media/platform/qcom/iris/iris_platform_gen1.c
+++ b/drivers/media/platform/qcom/iris/iris_platform_gen1.c
@@ -281,7 +281,7 @@ static const struct bw_info sm8250_bw_table_dec[] = {
 
 static const char * const sm8250_pmdomain_table[] = { "venus", "vcodec0" };
 
-static const char * const sm8250_opp_pd_table[] = { "mx" };
+static const char * const sm8250_opp_pd_table[] = { "mx", "mmcx" };
 
 static const struct platform_clk_data sm8250_clk_table[] = {
 	{IRIS_AXI_CLK,  "iface"        },
diff --git a/drivers/media/platform/qcom/iris/iris_probe.c b/drivers/media/platform/qcom/iris/iris_probe.c
index 7b612ad37e4f..74ec81e3d622 100644
--- a/drivers/media/platform/qcom/iris/iris_probe.c
+++ b/drivers/media/platform/qcom/iris/iris_probe.c
@@ -64,6 +64,13 @@ static int iris_init_power_domains(struct iris_core *core)
 		return ret;
 
 	ret =  devm_pm_domain_attach_list(core->dev, &iris_opp_pd_data, &core->opp_pmdomain_tbl);
+	/* backwards compatibility for incomplete ABI SM8250 */
+	if (ret == -ENODEV &&
+	    of_device_is_compatible(core->dev->of_node, "qcom,sm8250-venus")) {
+		iris_opp_pd_data.num_pd_names--;
+		ret = devm_pm_domain_attach_list(core->dev, &iris_opp_pd_data,
+						 &core->opp_pmdomain_tbl);
+	}
 	if (ret < 0)
 		return ret;
 

-- 
2.47.3


