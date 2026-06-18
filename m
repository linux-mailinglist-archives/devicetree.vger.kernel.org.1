Return-Path: <devicetree+bounces-313328-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +Xy4ImK1M2pHFQYAu9opvQ
	(envelope-from <devicetree+bounces-313328-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 11:07:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3190F69EB79
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 11:07:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=ZSzMwuFa;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=ZuTSjRjk;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313328-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313328-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0FB753018D72
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 09:07:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 149E03BBFB3;
	Thu, 18 Jun 2026 09:07:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7450E3B38B4
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 09:07:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781773636; cv=none; b=DLI0xnXbDoh7mvZ3bzWWXNN1yR3KPDVesNlaPr42P3ZiD6OMaWX3/AZkbZ36ZutQD+XhOtirDDG5psNjElS/a6SgvF5kfzZfAmIX0j7qK0rPfgueFxwQgj1mWlVrx/YLa67JO7vdAj2h/Gd2Q3soYoCCUID7AjaG6qsblKnT0Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781773636; c=relaxed/simple;
	bh=/txVxAvLF9aMAGkR9CXzGeWqGotHA5mWrN9Q3pLZeUQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=U7xXlI3K4WN6QxRYxUZHTHPMGLR+AH1dyuhFcjHcZEQA8Trc98g7uuQnmISdex740H7Ev1mY1U0eIO5C1rxZS/7W5HMxHbUwTn+sckZNLbLZVIMQXIvwHzMEAipwhGaGN1vuY2tvLcFCAqUZfOylYUsjEpnJWTQz2Tsv7VG20p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZSzMwuFa; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZuTSjRjk; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65I8G1ge1157448
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 09:07:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FNTRNEjUl2bB1SNxPHc/nBXY2g2gOYZl5SKxQ13yWaY=; b=ZSzMwuFabmz+Foca
	YJGRHEaoDe9xSh5MWdsbu2cyVGxP5SsFiLiVC+7DPUwyxMpXjp01PkxCQw3FTisL
	LRuTa6qiUKFW6G5ZQt2LKWxAJAtreiZNESjxPQuoNwbferRxZsvbgbtN6Eo1B31o
	o29kCqt4PJ+9PPWcQOBzI5qjfQZb4IgZWVQdfTYv1a01BIv1LNLYXC/Q+ImtVCzt
	9Ob/FFGmRoQnKZYxivtj3yGXhdnuBt+7p3rHG4SJyAQJw++SCUctiaMwcaVuZv2Q
	zmn2NEblxvM8yOd1cv4DUNpPerwLlokwryOtdRoPkzijmbcOm5nPblciOfCrXN1E
	k5mekw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ev19a2nxe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 09:07:11 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c88da04b71dso504922a12.3
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 02:07:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781773630; x=1782378430; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FNTRNEjUl2bB1SNxPHc/nBXY2g2gOYZl5SKxQ13yWaY=;
        b=ZuTSjRjk1KOqohHEryWUU2K2N56wsQg/z/e3nX3fYZzXrB9pWqhxtARsN+W4xLqfHJ
         VHSSisIj4M+x+Vt9aHT3+RoL8Pqb/iVGjYspTto65rdceqm5w3q37FeAe/UMokLG6T+2
         N8u3slfvgaeHgBpGtzJNwb6TuEffX4wSRc5CGYKAexFqAkK+0a2aLW8LTIohKjJEnGrP
         7A9ZYAc6wGoM3L6vvb92MXing3mfaStIu+zueNB5PBsaRRMOkAlcz/A+pnyQft9CakJG
         GwQQnRHmj7poVUTrmP8EiyyJU9+zRPMfk7CONeNhDmjUa1ehLvtjLgKLDxg9YIFOzGBH
         q2XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781773630; x=1782378430;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FNTRNEjUl2bB1SNxPHc/nBXY2g2gOYZl5SKxQ13yWaY=;
        b=gjEFTiUI4qoZI7nputyN5wBuauY0Ta5MteRl/TsHW7m7bP/W9OARxNhYSvjgfl0flJ
         dtAj/APqRNsICD4V04V8Xh9cqVMM3evqLLzjYqYpjOAwjlFZREdstABh0SFzeaS4Pveg
         g6lQ7047yvn2MRBUufIOQshmAA4U9EI45EvobzkR3Wqw2dzJ/4yOaieXHbY1kICQjLXW
         ItvCYd13/nzJJXjnX97shq21XFMGVXhTosuNFblOqnAqms8wiwrCnNDTqS70KB6xeDmc
         sorDQNEON6nd8sIWVnZuE6hohZlPIbA3crxfIKd43RiKhV9oX1jLmg6NGZqy8lWKI3vJ
         Oiew==
X-Forwarded-Encrypted: i=1; AFNElJ99Ds5t0xweV/wp+kgHd3m4eC1jWqnKITJNZ5lvLmq3+i+zoJ6upWGXiA3jNOdBAurNJGn5O9zCAfnd@vger.kernel.org
X-Gm-Message-State: AOJu0YxV5LDfiwMepctBVyWXKr+G7vJBEqgEz4nXEBcJE9nxU12k69NX
	P3UOm3p0mI3XOXxgNquoGGEgqmbE0xOcg6k6TwIF6McpOfTl4auDKHcG4uJ1zpBEaVMg/d1rpfz
	EVy/lwWouJOXOcHWnOfX9oOKKjebKTQjJE7P50VhAEA2jUpZAfMUbSnLt3Ihl2PwF
X-Gm-Gg: AfdE7cn9DzyOP5sUB1Jsusp4MDExWfx3d9q8E157vnFC+5vqGHrh8DIdu6ukQ5B+LHT
	nA1a7mOp10shfG60kOoja6uJHn9uWDqiUf1g7LT03C7s8qe/3VF5kjWXPWRLp4+avghZ91ElHdS
	1rvjPWaqg3wxVF4Nl2jJLFGOBLS8ZyEypidJGHqrZLjLY+kc8FAVYsjH//i/wY/eYQESRMmg9Ll
	Nek92glxB/zWgxIQptqvw6enLf0wsGoNl7j2k1E9Wk8Nyz1SBWKWtUAtd1uh+6r/E4ctt7AmE/u
	cZwdLLKY0iP4Jb11T5j1/oMFKBSqKARkNOffA01JUr7O/MXPxFpjhqSd/8zZpqkJUtllbsCgvzz
	uY0EE06n8mZ2TW+mkXvLGtQb/RpJTk3Hc5owHz9PTvaGG
X-Received: by 2002:a17:902:f790:b0:2c2:21e9:5a7d with SMTP id d9443c01a7336-2c6f347dbc7mr20749575ad.34.1781773630391;
        Thu, 18 Jun 2026 02:07:10 -0700 (PDT)
X-Received: by 2002:a17:902:f790:b0:2c2:21e9:5a7d with SMTP id d9443c01a7336-2c6f347dbc7mr20749005ad.34.1781773629882;
        Thu, 18 Jun 2026 02:07:09 -0700 (PDT)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c4327ac794sm192112835ad.46.2026.06.18.02.07.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2026 02:07:09 -0700 (PDT)
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
Date: Thu, 18 Jun 2026 14:36:41 +0530
Subject: [PATCH v4 3/4] spi: qcom-geni: Use resources helper APIs in
 runtime PM functions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260618-enable-spi-on-sa8255p-v4-3-f5b5067e7e1e@oss.qualcomm.com>
References: <20260618-enable-spi-on-sa8255p-v4-0-f5b5067e7e1e@oss.qualcomm.com>
In-Reply-To: <20260618-enable-spi-on-sa8255p-v4-0-f5b5067e7e1e@oss.qualcomm.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        bjorn.andersson@oss.qualcomm.com,
        Praveen Talari <praveen.talari@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        mukesh.savaliya@oss.qualcomm.com, aniket.randive@oss.qualcomm.com,
        chandana.chiluveru@oss.qualcomm.com, jyothi.seerapu@oss.qualcomm.com,
        chiluka.harish@oss.qualcomm.com
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781773609; l=2053;
 i=praveen.talari@oss.qualcomm.com; s=20251114; h=from:subject:message-id;
 bh=/txVxAvLF9aMAGkR9CXzGeWqGotHA5mWrN9Q3pLZeUQ=;
 b=XlCL9PArLwZ+b4O6accMSjXrsls6A1CgsKC/2t4RXFFnqwlual08eHzfbWc2FWVDll/pB/6By
 7+lhi25hJ1gD9X4x/vC/oXmZXeC3rnqwZXxmsXYcM/sEom/Ct4RyfGb
X-Developer-Key: i=praveen.talari@oss.qualcomm.com; a=ed25519;
 pk=NGK/88fjyHXgfhIKwag7+uIytOmyOypvZ/hDFaYPEss=
X-Authority-Analysis: v=2.4 cv=YbmNIQRf c=1 sm=1 tr=0 ts=6a33b53f cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=i7xoKaWEWnc8ZE6DH4sA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE4MDA4MyBTYWx0ZWRfX9VClNfBteXJj
 0hAIlRAzHbgv+gYakOviXvv1H7UgCmv9ggIDKBipF2OCUIgftlfx4Ee1A/diB0kxCGtp9AAjEwT
 lGNr1pDdQPwfF8x49Lg8eXteeXODv4w=
X-Proofpoint-GUID: txXBzjeuwZLypIjM_N0oxhv5iASzblhv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE4MDA4MyBTYWx0ZWRfX5btoFvkOxU+0
 oAhWbrzfr10C5ZJMadqrzGfim6mXA06qSD+HBfUlFvog4ALNE1fqE5SCEwKkksZO1Ji48IfkwZq
 I+1Drbxyv6d+y1zUWwkpL6bBN9s3g24C02ThqCpJa31UnZMUMUdPh9eQvVXOvwvs2bu18P4m0le
 fy7ln3AwSI1QU+pwPSLJevfzSU075Kfk9zuYqxPW/dsT9dUerdoDlMD/EFhW1Y10PGlfLirLQ4m
 c8GodQwh73j+wn98pMaKRy2w4SWNnH31xxSpVuKOnypuM2Re5/p6Y5UYBTZO8g9u8w7Q5C6Ek1O
 79fPy8eF517DnZDWg07oYy336Kp7YF4SJnAdch0Ipe0SBkNeNqUc6twMtixbSBZfxFMH7N89k9N
 9R42NSBGst5vz5iBqXIYThD8cfVWD2wRSQOMkO4yv4hA8XUjAQhS3hWUVuXduYwaIkiJROCJnGO
 mU55KTZ/CZRCqABmWkA==
X-Proofpoint-ORIG-GUID: txXBzjeuwZLypIjM_N0oxhv5iASzblhv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-18_01,2026-06-17_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 spamscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606180083
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-313328-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:konrad.dybcio@oss.qualcomm.com,m:bjorn.andersson@oss.qualcomm.com,m:praveen.talari@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:mukesh.savaliya@oss.qualcomm.com,m:aniket.randive@oss.qualcomm.com,m:chandana.chiluveru@oss.qualcomm.com,m:jyothi.seerapu@oss.qualcomm.com,m:chiluka.harish@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,vger.kernel.org:from_smtp];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3190F69EB79

To manage GENI serial engine resources during runtime power management,
drivers currently need to call functions for ICC, clock, and
SE resource operations in both suspend and resume paths, resulting in
code duplication across drivers.

The new geni_se_resources_activate() and geni_se_resources_deactivate()
helper APIs addresses this issue by providing a streamlined method to
enable or disable all resources based, thereby eliminating redundancy
across drivers.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
 drivers/spi/spi-geni-qcom.c | 19 +++++--------------
 1 file changed, 5 insertions(+), 14 deletions(-)

diff --git a/drivers/spi/spi-geni-qcom.c b/drivers/spi/spi-geni-qcom.c
index 09feb6577efc..025165c4b952 100644
--- a/drivers/spi/spi-geni-qcom.c
+++ b/drivers/spi/spi-geni-qcom.c
@@ -1130,16 +1130,8 @@ static int __maybe_unused spi_geni_runtime_suspend(struct device *dev)
 {
 	struct spi_controller *spi = dev_get_drvdata(dev);
 	struct spi_geni_master *mas = spi_controller_get_devdata(spi);
-	int ret;
-
-	/* Drop the performance state vote */
-	dev_pm_opp_set_rate(dev, 0);
-
-	ret = geni_se_resources_off(&mas->se);
-	if (ret)
-		return ret;
 
-	return geni_icc_disable(&mas->se);
+	return geni_se_resources_deactivate(&mas->se);
 }
 
 static int __maybe_unused spi_geni_runtime_resume(struct device *dev)
@@ -1148,15 +1140,14 @@ static int __maybe_unused spi_geni_runtime_resume(struct device *dev)
 	struct spi_geni_master *mas = spi_controller_get_devdata(spi);
 	int ret;
 
-	ret = geni_icc_enable(&mas->se);
+	ret = geni_se_resources_activate(&mas->se);
 	if (ret)
 		return ret;
 
-	ret = geni_se_resources_on(&mas->se);
-	if (ret)
-		return ret;
+	if (mas->se.has_opp)
+		return dev_pm_opp_set_rate(mas->dev, mas->cur_sclk_hz);
 
-	return dev_pm_opp_set_rate(mas->dev, mas->cur_sclk_hz);
+	return 0;
 }
 
 static int __maybe_unused spi_geni_suspend(struct device *dev)

-- 
2.34.1


