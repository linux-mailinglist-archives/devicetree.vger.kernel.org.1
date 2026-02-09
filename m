Return-Path: <devicetree+bounces-263776-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIm7GnM5iWmW4gQAu9opvQ
	(envelope-from <devicetree+bounces-263776-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 02:33:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A6A10ADC2
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 02:33:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7C2AD3009810
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 01:32:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93F9F289358;
	Mon,  9 Feb 2026 01:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XIjwj72A";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Uy2Micwg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612882690EC
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 01:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770600759; cv=none; b=HgQmLY/585YWD63Ky+CQKhUCCaG0vS4VZqG9Yyu5xps3jJkcv7O83xSrdfYpxHGSFNRnpvEOMNSbqLXEeYpCHv2v5qCXAf28sBFTXpLwuPeINg082RzU408UGbcJUCeSZbnPaABp0RDw9FM8vghTGBTb+9cGN+p0kN5QGE6TnDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770600759; c=relaxed/simple;
	bh=h25ZBfASMsW19qNVMheDiw3xoIbeq4Li9u2pU4b/Roc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BlhssAvrHBQNzJlcuYNTeGYq9k+XIN1fgudS0vUySNsIG6tPHDiGHthq1klogQdSZ71aAHwyAUUYTKqGWDBz3TtlYEps/3k+zD9jU/M9SrgtK1QK6PuuISPLxlE2P/0Ew5t+3MDHPM5XON5oT0x/n9qyFTrToyyKX+yl7rajMT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XIjwj72A; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Uy2Micwg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 618MuBLs3229571
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 01:32:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TOV6wa0NpJIqPIMLpFjeBC8CWBIElaVmu+G/psZIY1w=; b=XIjwj72A3ZgeZPij
	5QSCx9z2UNrBUjI6NS5xwM3Jm47aKPwbYuENS70DsHE+WUhbY+DnLfRNsLOqI2lE
	UAWjhqjyv1D2Q93ZKbUwkBhOpLv4ymgRCv4CuSlqwB6oqkj/ls3k7H/8DhKkZZw1
	kK0BiIB+tGrHq2o2F+fpXTDgzzawczepfUAaHmMYl6zz8bNyMUi466on/WRJdDp9
	v4qnbaY7Kbsx4nhrPN0qIcjygYmL050z9zghhAiRAn+T4K0nTcQ6ali5Ywuku7mk
	lfvtU74DtRS00k+hAj8g3GGPUXIG5Ik3SWQTVyMFvYzSl8aJGspZ85BtmcCClEsK
	1tj3DQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c64hnjpak-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 01:32:38 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8947d47793fso162121406d6.2
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 17:32:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770600758; x=1771205558; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TOV6wa0NpJIqPIMLpFjeBC8CWBIElaVmu+G/psZIY1w=;
        b=Uy2MicwgM5dJ+5QxpYJUWDQm2LhpVVet/6TfabVhKrIqadP4p00rx9hu3Y6DTHrDTN
         hul/kCbXmR/5wsMEcUvr3T2BGJ1CzVZ7KlQJRJQfIo1V4cfkhSgCQsCOiAaKB8tnbMji
         Po+Kb+LqhNVXh5miy9pMivQjOpapEwWjDjfNybaO/bzSxXtJRRtXsmDOVO/4h5K5kyOR
         2NOXLA3l9eDepC0ydxUPxSUEX7r1w6ujIXk8O1bKC11dXyylEBgDfjY2IbgjXCx/NLxu
         wanSANiJWGgsfm8De0kQdEmRZDuQmUT6d8Jz+SlkviZLnWGQNXz0qlHxUWq9JGUcNEpf
         RZBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770600758; x=1771205558;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TOV6wa0NpJIqPIMLpFjeBC8CWBIElaVmu+G/psZIY1w=;
        b=T+Sja+Ck+Y6rxQONWFcCA2ky1XQpmwUxHi4dLlYaWfBWkxGUd2fEIQijZpKnnEY9nr
         8/4TOKw/pHm/y8VEZIxH6NmNPn6wzC7k6EgoAmSt4wIg2AKWVGlp51sWmOPgYS4nIZSw
         IomOcJOW5VmdeFyqwk1uMaZZ/9/u6JCVf6ka/1x1CLgYHjlsvHutX5OKKh+ppBWoT3xN
         NjXKUu3jpAkO9gkuyjmYpgwsK9PNN6j3R819c+RYqjJwUtQdlq0SttaGc/3lsXZQDOEf
         Xzi+d2kWZQcsiaxgMopd9tF2ZZ0qXdgRCJsBcPe5vSFNExprHshDwHeBXi3QOP/alf8K
         kZgw==
X-Forwarded-Encrypted: i=1; AJvYcCU0w6P/VaIsQ7pmUNV3ezFMV8+YsufO5y6IzROpXO+ka0GTHUEbRuOtpMTNNpjnMdj6k+yzw6IcKInE@vger.kernel.org
X-Gm-Message-State: AOJu0YwwK4d0Z6cL9Gt6vGvwRYN4B53XD5zES+qBxnQxqS6FtKIKpOmc
	QhbfOyfG+IFoMinFjhDcmkhUaTpQOFDBehUXcJhMFawMQ/bEA9h3/ckVrSon4Iu9/sOCPTLBMXH
	NN+4cqLULH8FHKAvD7Qrm5BEPzCEVA2v0Wy/n18pioqh8WHLWQxjvu6WiN0ktlgFA
X-Gm-Gg: AZuq6aLnwUiGjioYtTbYXJGgM2x+Odbie/zvZCUbsW9rEpn0AjJ0oEVMBvQHZ12bP9c
	x/Jr086I7PaniJO3TXa9zC2yc6K+plFhKnpgPn5V+yCcXLimEEMl98Xv9kwxh5hp2FEbXz5V2R1
	p9Cc897idjiRQUCOKSjinwuvsYRET30ubi72/mdi0OqT+ksSxjVXD/DGKxdyUK2PdE2s0KBpFUp
	cyoM6rhGf+oRqEExFsqA9AU86SFKxbEGG8HC4h3hni5+hfH1gDTea8OQ2AfKkyGXHd3eYMY3Ivb
	Urbg9x0ZzLTgrtNCPnbJj31Zp64Y7ycfTZqplGsKX7ArDkLqQqsIb2GTZd/A7kDHGFgRngRzKMJ
	s8G93PfC5pzCcYuSPDdTxsoS2m4qsMdLdiUX6mdjdqnXFJo7jNOJP8iHEGTO25CgMWsWO0L2Vsd
	GXPxRE3WaJ3lOwtbqlDvuJWK8=
X-Received: by 2002:a05:620a:404f:b0:8c7:16fb:ed49 with SMTP id af79cd13be357-8caf15f3e50mr1186188085a.63.1770600757726;
        Sun, 08 Feb 2026 17:32:37 -0800 (PST)
X-Received: by 2002:a05:620a:404f:b0:8c7:16fb:ed49 with SMTP id af79cd13be357-8caf15f3e50mr1186185585a.63.1770600757329;
        Sun, 08 Feb 2026 17:32:37 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-386b623668asm21688601fa.3.2026.02.08.17.32.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 17:32:35 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 09 Feb 2026 03:32:18 +0200
Subject: [PATCH v5 3/5] media: venus: scale MMCX power domain on SM8250
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260209-iris-venus-fix-sm8250-v5-3-0a22365d3585@oss.qualcomm.com>
References: <20260209-iris-venus-fix-sm8250-v5-0-0a22365d3585@oss.qualcomm.com>
In-Reply-To: <20260209-iris-venus-fix-sm8250-v5-0-0a22365d3585@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4385;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=h25ZBfASMsW19qNVMheDiw3xoIbeq4Li9u2pU4b/Roc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpiTklmAx4aZ2hlK7p2wOyGerBVlPrI0SiVfGEO
 7cUw5QIjY6JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaYk5JQAKCRCLPIo+Aiko
 1Q9nCACOblW1NvYRHXqqvwC14SrQf5Kb7IGBossoELCys2fKWgsAl3DJDi7Z9zKDZUlH5vDHevR
 LMnLpvhMOirfswsvXNcuDIm7cdzIm47YQLcciw7hJgZszidIPh6d972AyYIT5C6XKUkz2euf/OD
 axOKY4C1IUU5uhgokT6Hqbcnkg7x5e18XHh37fWzlWZMVZzm3YZRuqqkCz8rzd/Sqi+p8BNy/q3
 H4SxGxDKbY3AfZ/2SsN9k/p83rWWcX2TmX/Y/laUoghZ2LbERDy87yx2Wpgt4r9uUbAJAzgxM5E
 rny/sTaPrPK4ePk3jE8JBHLmpeeZ3KPC4/zafK1hMnftWBDh
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: A4VVRdLHXMdmtz4OcS9fj4qgUeJTL_qP
X-Proofpoint-ORIG-GUID: A4VVRdLHXMdmtz4OcS9fj4qgUeJTL_qP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDAxMSBTYWx0ZWRfXxSy+prUMORqA
 uuQxbboesFxPOt328hBxYis8ggTSXddMGyO1OJgQBkNFsFDMJ4WDp0AUoNo6t01irsiq3f3pOoV
 rJAZPIBXZPYcwFGMo60+BJ4JBeWCZ9E0/1QZ6c891vSf64Bk5wDeuP0aKAZpGE9R7p9azOUkEiZ
 s/TdTnVW7+CrD6dnrkUmiM+8eJuJEgjWQ2xHgHjHkVBjA9IAo06s/PFriNN4J6lC15yV18vpP4W
 RHbD+4EhHBG6zjds8lcZvg7nD5FGLIc72YHxn7sb90/xEqkMdWdqXySECYiERyduf6Z/w6IqT0W
 LeVUQBm+gzkociMh7uIUoklCW63pBlCeMqMLfbCwwwHg8W31NSWOm8VKaZLoxmfVjBwb5ydmH3f
 R35ZwBGJ0+ZvM8W3Y10hvFaj8/sI0TYtHZtTgMQLTe6PbKYttG0OXkWG47BYdhCc4aRszgf97cd
 TpjyE4sxULL4L1gMgkA==
X-Authority-Analysis: v=2.4 cv=SNlPlevH c=1 sm=1 tr=0 ts=69893936 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=xbrBj4A6o8sUajtV048A:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 suspectscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090011
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263776-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,linaro.org:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.0.90:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.987];
	TAGGED_RCPT(0.00)[devicetree,dt,huawei];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C0A6A10ADC2
X-Rspamd-Action: no action

On SM8250 most of the video clocks are powered by the MMCX domain, while
the PLL is powered on by the MX domain. Extend the driver to support
scaling both power domains, while keeping compatibility with the
existing DTs, which define only the MX domain.

Fixes: 0aeabfa29a9c ("media: venus: core: add sm8250 DT compatible and resource data")
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/media/platform/qcom/venus/core.c       | 7 ++++++-
 drivers/media/platform/qcom/venus/core.h       | 1 +
 drivers/media/platform/qcom/venus/pm_helpers.c | 8 +++++++-
 3 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
index 646dae3407b4..cad2df84ce60 100644
--- a/drivers/media/platform/qcom/venus/core.c
+++ b/drivers/media/platform/qcom/venus/core.c
@@ -882,6 +882,7 @@ static const struct venus_resources sdm845_res_v2 = {
 	.vcodec_pmdomains = (const char *[]) { "venus", "vcodec0", "vcodec1" },
 	.vcodec_pmdomains_num = 3,
 	.opp_pmdomain = (const char *[]) { "cx" },
+	.opp_pmdomain_num = 1,
 	.vcodec_num = 2,
 	.max_load = 3110400,	/* 4096x2160@90 */
 	.hfi_version = HFI_VERSION_4XX,
@@ -933,6 +934,7 @@ static const struct venus_resources sc7180_res = {
 	.vcodec_pmdomains = (const char *[]) { "venus", "vcodec0" },
 	.vcodec_pmdomains_num = 2,
 	.opp_pmdomain = (const char *[]) { "cx" },
+	.opp_pmdomain_num = 1,
 	.vcodec_num = 1,
 	.hfi_version = HFI_VERSION_4XX,
 	.vpu_version = VPU_VERSION_AR50,
@@ -992,7 +994,8 @@ static const struct venus_resources sm8250_res = {
 	.vcodec_clks_num = 1,
 	.vcodec_pmdomains = (const char *[]) { "venus", "vcodec0" },
 	.vcodec_pmdomains_num = 2,
-	.opp_pmdomain = (const char *[]) { "mx" },
+	.opp_pmdomain = (const char *[]) { "mx", "mmcx" },
+	.opp_pmdomain_num = 2,
 	.vcodec_num = 1,
 	.max_load = 7833600,
 	.hfi_version = HFI_VERSION_6XX,
@@ -1054,6 +1057,7 @@ static const struct venus_resources sc7280_res = {
 	.vcodec_pmdomains = (const char *[]) { "venus", "vcodec0" },
 	.vcodec_pmdomains_num = 2,
 	.opp_pmdomain = (const char *[]) { "cx" },
+	.opp_pmdomain_num = 1,
 	.vcodec_num = 1,
 	.hfi_version = HFI_VERSION_6XX,
 	.vpu_version = VPU_VERSION_IRIS2_1,
@@ -1102,6 +1106,7 @@ static const struct venus_resources qcm2290_res = {
 	.vcodec_pmdomains = (const char *[]) { "venus", "vcodec0" },
 	.vcodec_pmdomains_num = 2,
 	.opp_pmdomain = (const char *[]) { "cx" },
+	.opp_pmdomain_num = 1,
 	.vcodec_num = 1,
 	.hfi_version = HFI_VERSION_4XX,
 	.vpu_version = VPU_VERSION_AR50_LITE,
diff --git a/drivers/media/platform/qcom/venus/core.h b/drivers/media/platform/qcom/venus/core.h
index c7acacaa53b8..62ab747291b8 100644
--- a/drivers/media/platform/qcom/venus/core.h
+++ b/drivers/media/platform/qcom/venus/core.h
@@ -85,6 +85,7 @@ struct venus_resources {
 	const char **vcodec_pmdomains;
 	unsigned int vcodec_pmdomains_num;
 	const char **opp_pmdomain;
+	unsigned int opp_pmdomain_num;
 	unsigned int vcodec_num;
 	const char * const resets[VIDC_RESETS_NUM_MAX];
 	unsigned int resets_num;
diff --git a/drivers/media/platform/qcom/venus/pm_helpers.c b/drivers/media/platform/qcom/venus/pm_helpers.c
index f0269524ac70..14a4e8311a64 100644
--- a/drivers/media/platform/qcom/venus/pm_helpers.c
+++ b/drivers/media/platform/qcom/venus/pm_helpers.c
@@ -887,7 +887,7 @@ static int vcodec_domains_get(struct venus_core *core)
 	};
 	struct dev_pm_domain_attach_data opp_pd_data = {
 		.pd_names = res->opp_pmdomain,
-		.num_pd_names = 1,
+		.num_pd_names = res->opp_pmdomain_num,
 		.pd_flags = PD_FLAG_DEV_LINK_ON | PD_FLAG_REQUIRED_OPP,
 	};
 
@@ -904,6 +904,12 @@ static int vcodec_domains_get(struct venus_core *core)
 
 	/* Attach the power domain for setting performance state */
 	ret = devm_pm_domain_attach_list(dev, &opp_pd_data, &core->opp_pmdomain);
+	/* backwards compatibility for incomplete ABI SM8250 */
+	if (ret == -ENODEV &&
+	    of_device_is_compatible(dev->of_node, "qcom,sm8250-venus")) {
+		opp_pd_data.num_pd_names--;
+		ret = devm_pm_domain_attach_list(dev, &opp_pd_data, &core->opp_pmdomain);
+	}
 	if (ret < 0)
 		return ret;
 

-- 
2.47.3


