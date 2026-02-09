Return-Path: <devicetree+bounces-263775-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2E2UO185iWmW4gQAu9opvQ
	(envelope-from <devicetree+bounces-263775-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 02:33:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB8C10AD7C
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 02:33:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2A1B1300DD6C
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 01:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E450F2798F8;
	Mon,  9 Feb 2026 01:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O2CWsiYL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FuVkpwnm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CF7125CC40
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 01:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770600755; cv=none; b=vDF1Bi3JUuHzvkGl3+8PqR704+vVp8scEulUezL8UUELG2A/oFA/4fHGOVd0t5t+nyZGOFpr7CBQY9aoUu8FcEXGsq/ZZxXZg7bsLQXrxG1yinHCah/UdlnEH+Tb2ET5m2uf2rQAwyOsWaDC25Upj4fUeYiAmmFZXzPWJmh9oJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770600755; c=relaxed/simple;
	bh=VfRuUvDLNQGtvgiSr1eaiBtwpSSv6JIHemxucUr//rw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=d+TJF9JzzJ7bh2IqjGWG82DQAW03Sj8ReLXysYufUDvaGnEi3n3kq4qNX7/wBmzIdTOjb4j++rOy21fzBqeP52z1DT+Tb0mVItxlF8sKF/unGSPvJc/waYztWmymmuYgOa+SpnMvNXIzTFYhZrA5LnoKLJonWTCewa6puIAaC64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O2CWsiYL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FuVkpwnm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 618NHdMH2595759
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 01:32:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	F0AY75pLMlp6UqxNfuSclKDOeELGzfL4se7wy8hQYlM=; b=O2CWsiYLh/58+NEY
	v41k9bVGGqDUgmjk1HJeAnKwdNV/deHPhFakOJYzfoCkOvM+vbFCqQqnXXELdIHp
	HU6MnFVf0MO7YYezdZUY2TIb9nk/+F1LQbbwtJQOZzTbtHgjhzRWDXRhknzS00lW
	lawXyNjyiMd7Iwg8Vj+/WwyGtbqDe1ogytb9O11Hxiq1Fx4qQX1u8iPIkFtJI728
	ytqcH2XuosBXv2Uh8NymS4hLkqwvQ/V4KKeysSq20QBgSGawvLGJY2iLMuVOOQ1K
	TKgfT2x1HD8AFluv/TpBVNUyW93M/jp8AYEQsTgAEt82GWWuPsVZs9y3cNNFhL/F
	YlmXlw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5xbfb8ce-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 01:32:34 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6a291e7faso1163916285a.3
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 17:32:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770600754; x=1771205554; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F0AY75pLMlp6UqxNfuSclKDOeELGzfL4se7wy8hQYlM=;
        b=FuVkpwnmsZKJoCsBtFFI9tMu3wjLkWMfzfgxPcin3mUIcXQyVjKXUdg6LAg0puuUTS
         4ulCNc8WkPg5Y1VmkVGXY+BdYlDHBdAee8yxOJhQwJ/BZR705FAuB1M4DNYk79++7jy+
         v6EBKh9wpCf6Eevcb7FAwDOJJcmuTyX2u+EyZIJsNEGj4765WBvy+afGP2hTJKKbtuM+
         yq2CCSbwAZyFX4IB1Nrk/AfpFkTX3vqA0Om6pL+If3V/VabHOypHNVbJTVrIpej/7gYe
         HPK0sTeUOEc8LfsIICk7/djRtaxLoLJfrbgw/czmhzxwARreW2mK+DtMauJKhlR/heaC
         LX5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770600754; x=1771205554;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=F0AY75pLMlp6UqxNfuSclKDOeELGzfL4se7wy8hQYlM=;
        b=cDXoZrQvQ7mkwWmmw1iVjRKvjsN5b60UTdB7m9VvNFKJZ4/rmRnTInvDCWe6Rx0zQY
         NFJRtfkfERoinxF+CZdAeBJmxVarP6U4kUrgk2UHaBSDkXVgYG7XkrGOcvSznuA4mdpD
         S/Ro7J+HJzgu2aBfXf+C5487pdaFp4/2bteoGqDGM9FwSm2jrETVnMIXgTaLppwhBs7y
         UJ8/8UUw17lQuz5FydlVoEgRiphKoJQPsSeLVmMkCsbBbl715ZMRBKf73wsuxnasCQA9
         WMvgrkaA8m/91TJolNiRqQoHrAkES/s00Lby2MUV9JlU4Cpm8Iw+WploC+wqcggEYWyY
         FGtQ==
X-Forwarded-Encrypted: i=1; AJvYcCXyMg98n8IMQx9uXB6o4J6SLNsQj8qt7jcIWL/KfPHCU3isqq3xVrV+GfBgSO/RFKsZXB1dU5vpcjHm@vger.kernel.org
X-Gm-Message-State: AOJu0Ywo+mM1qerj4DvgTqeu6GWFqbsSPfOlMweVrxwaqkSdHgRoSOjv
	9ttDXWfNjv2QpqbqnFZi/VlRbvEc9b5YroBf506jiEaKe8YCEQWecm9PS/AkKYIoE/stW/wk7kv
	gfy7010+YtByB1Oy/UZyAAEK7GMbUVIag4Q3ATQoy/KH/e0ALPV74pe2du7cCwPZV
X-Gm-Gg: AZuq6aIQPJec5ppk8am+EI2GQwAkbQUN22QyY7Qx3ZqKiftgcj22AD8HHiIpLLqOYYW
	UqD4UQ4BrAoqyG55U+VUsjL6/xVSfUs9hYN9KKZYQ6TRpwpBDv5shh8qcJy0x8BpRc3kEbqAHCg
	oSnEFgFmQQGp5krUUPl3crS8mos0j4jOjtujmrMlEnEn5xRnNjkDXc+H3gq2rnlkrYkvoUN5bSr
	bnipD1gqCKn/CLN9MA/RvcQxfERslGlDhMTI31kl5s/OWn6ZehqFHsMKcK5TQhOL/c4vfWSgSJ6
	kanfD3xMEYY4jMuNGmLv8q27c/zgF9m3aW0+dmVShM5Yu0OA5l+MBspNk+60A6KC+HCy3PppMaH
	35qpK9iBX/DwRTUw+LNR2mDCFJbRMlOc+1Zflcp9bBkcZS/TCX7wlohBO+/ZQkbfqolRcnGmZIc
	mNyQnBCRcNihrwzLW6SiA5g6g=
X-Received: by 2002:a05:620a:4553:b0:8ca:d5cb:6839 with SMTP id af79cd13be357-8caf1308324mr1279863285a.65.1770600754079;
        Sun, 08 Feb 2026 17:32:34 -0800 (PST)
X-Received: by 2002:a05:620a:4553:b0:8ca:d5cb:6839 with SMTP id af79cd13be357-8caf1308324mr1279860885a.65.1770600753615;
        Sun, 08 Feb 2026 17:32:33 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-386b623668asm21688601fa.3.2026.02.08.17.32.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 17:32:31 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 09 Feb 2026 03:32:17 +0200
Subject: [PATCH v5 2/5] media: iris: scale MMCX power domain on SM8250
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260209-iris-venus-fix-sm8250-v5-2-0a22365d3585@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2142;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=VfRuUvDLNQGtvgiSr1eaiBtwpSSv6JIHemxucUr//rw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpiTklEp1SHYK/tMVtAdeEzitep6eKN1Y6AdIHB
 LoWq/Im6c2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaYk5JQAKCRCLPIo+Aiko
 1cY2B/40cnEI4ve3wwu1Wagkpys/40BP9/mRGmvECJ5e8NzY/zJbTTs056nLWUZucUp46/iR/rq
 P+uxvSlrco8sSUpBs6ISCCOLr/zlehSBPF8fCqGoqYkhHocPWLQTr0ehoFMoSYFuA9yjSH4CVmt
 RGt2zvMVVRP3RAyIYIFR6IC+AloYguHbJW/cQmWlEkR4fMu2pR9PGE36lAy5SrkiBdkmUALZX5M
 vVn6Q4b/rccXinbFXw6uitoHmgvgMiB98dVXMi7o4qJIwOU9lQr2DBFMYqrdUrm4muxc1hekb2d
 RrI9c3epVoS0yCug5/7yr04tASuHkv2hivQJI8AV7gFDRwT+
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: KMgIPlQ7pQl2JfulQe9EpbwR_JeIxyyB
X-Proofpoint-GUID: KMgIPlQ7pQl2JfulQe9EpbwR_JeIxyyB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDAxMSBTYWx0ZWRfX4J2NPdMlQTzA
 0bnXdEMl501x/Rj2Zch6XxePY705S0X6vTYgyVPXfsToCZFG2LF/4Mdf4b4J48AAKmWH/FdnBke
 eKkusv0FRZ03cda8pbiioxxRBMozCVk5jAjLUpVdCXUKpkGMzh2qa/roVT0SEzZDdjr1nwTwGmn
 id+RjAiuJ99twraSHRVvZUEGqAL/KN4iNVU437CHE9IYV2EZFFm6l4qdqqNAy+st75NY3oPwgZp
 I9EJFv9L/WY8dFKJRCJ5JnxzdVFjKLjJ2k1pjdnsaEiRIpYnj2+SJXTJPdkWxoJH/W8lBpCVCQh
 UhHVm5alZ4xehaYhSC0uCN/LzP39mXLvmbbzDd0ZqwlyppCrfrZCV4r3ncWFYKbBnAGQmlqgvSl
 Mv8WGpgaTZVLYK5V9dn0NNA7pPdsRp9MOpi63E7zLnA/BBMmNMcGur8XyLUVMLwf2pZ+Agx0OO5
 dAvJsNlMziPyZcsZ5XA==
X-Authority-Analysis: v=2.4 cv=aIb9aL9m c=1 sm=1 tr=0 ts=69893932 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=_hdJGhFWpaytJYYtlLsA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 suspectscore=0 phishscore=0 bulkscore=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602090011
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
	TAGGED_FROM(0.00)[bounces-263775-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.987];
	TAGGED_RCPT(0.00)[devicetree,dt,huawei];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8AB8C10AD7C
X-Rspamd-Action: no action

On SM8250 most of the video clocks are powered by the MMCX domain, while
the PLL is powered on by the MX domain. Extend the driver to support
scaling both power domains, while keeping compatibility with the
existing DTs, which define only the MX domain.

Fixes: 79865252acb6 ("media: iris: enable video driver probe of SM8250 SoC")
Reviewed-by: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
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


