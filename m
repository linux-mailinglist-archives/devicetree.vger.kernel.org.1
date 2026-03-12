Return-Path: <devicetree+bounces-274696-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJzGKS3lsmk3QwAAu9opvQ
	(envelope-from <devicetree+bounces-274696-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:09:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4676E2753E2
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:09:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9904D312EB23
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:59:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BB603F7E8C;
	Thu, 12 Mar 2026 15:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UAogwpW1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ApatdNC0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA8E43F7E7E
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773331028; cv=none; b=isQ9iVi2DSDotPECLer4BKP53kJ1Fkge8/hDQUfyHwfULe0SpfK6Zk6HAikCCpNQPhRni8Pp4Iwo3Pjmp7r8yco7uOF+7MXs4fSZmahxMPruDQOmoAU+hFd6TS1J05dtJfIrcvbzk+Eq37YMjx1TTXBrPe1VFFTR8zYrH9cwiHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773331028; c=relaxed/simple;
	bh=NJ8bSQsvrNv+RgGH0vB23hrO6pcccX75FiYOSctThyc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hDIykxXOOTf9NBH958nvIrMQ61ZHgoo9RhZLnG+XOH422L7ypt8ankeVYLaUsCPdvnOUDRLzLddepr6wEpiD9GNH6i6arDh4e+gGkM5QKBKRfDTDqwkHDR6ZzY+O00IuWEYrxWgtJ0bdtzvtUFBPFS6UwrcHMIn3sAWXkrnIXeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UAogwpW1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ApatdNC0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62C9gYLs3136615
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:57:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8DNHnd5q8JdYb6diJR/PxRQOacgTSyQ4yOW98Kxsp1k=; b=UAogwpW1dWU/TImE
	ZbICTWi0OvIucvMecCyElJTr/J2CJm7t70H4QiRkz30tFSWkOMiINvfywFBJqvNW
	NtIwLEat9FOyQTz0TCFt3vqHkA0hTVyarMnUt2o8Ey836wCTLoZPL1MNzNC75JLa
	IJqG32ds499MKUzv1GaXickIsFJ4IywImtXG8zfN6Qo2rxZ7qPBCOVt/2Ps8V/zc
	182Wfwg2rAikLaombnJchVq1z64sWRgjHg/Dh7TbPO3n0FZHy/fuq3sG93Wte+Fu
	TpDCHQDckdkvTfU4aPLOrAZebkmbuRJihn0r2Xw9NYbjxhAtF5VlzTgoMXotOsej
	l3XtCg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4wap08-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:57:06 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-35a032cdd78so4934343a91.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773331026; x=1773935826; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8DNHnd5q8JdYb6diJR/PxRQOacgTSyQ4yOW98Kxsp1k=;
        b=ApatdNC0pukw37oZPlbHPH3+ZFntHIbg+BJx8L/5cyGBYS1gZ+JRimmMFko1W3bKPg
         w5cuJF0JAFSr9p79G4niLOwKMAaW7WOSib50Ft2wczjlFhhOOhUWYXNSX8wqSU51dvmF
         kNGYQhenW5pyw17mGMYahMQJtFVAdknD2m8Mjy74eYfnKDTl5SlEPRWNbB3FM09gUbZ4
         nw9Euwh7QmD8bDq9Bz7qy91ivKCFD4nKVQ9s1vU4gBGsm3EP7Xng+RsfWwSiqbOzMBKd
         /gnmEMZAjftWo8Yzu4mRR7vNWfIZx1y9oaIr1bDAcIDfCUewAVfyw4L0b+3SMmvvUoma
         yGhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773331026; x=1773935826;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8DNHnd5q8JdYb6diJR/PxRQOacgTSyQ4yOW98Kxsp1k=;
        b=R8x6WiDZssWb8lVba9r+jJl+sgco/cpIn+nvK8RgBmh5jd8xFzsF0a0Dki56Yb5Q4R
         S10KopbWxLpewWxSWNEy9FEnm3iU/yJVZ1rMcGm9D97EHjRXPzgBBgqRag9aH2Iqi7H3
         YqaBGQGM7aL4peFgSgol3iwj5JFsp8WB34OWp21/dUvqzjzPmJGSxpn2dJMtKhbspuPN
         w8mpaa3y74HlsnZNdKyHZk3evm1laxmeF2x4FsjDXuxhuu13AQlxrzwYDRpO9aNOODWN
         PSm44GHkFo7uEKWWtm4wRhCpXeYzxrlHLDMJ5+E/a+xNBpu3vkwjQfgrSPz5ZHxlsY1q
         P5yA==
X-Forwarded-Encrypted: i=1; AJvYcCU48onoX135BpDtPZPKcL6hqLgsuSk08DS280c01iAsz7D7NQYZ7ZXaxfs9G6MDYewtGzTeW2mCGE6j@vger.kernel.org
X-Gm-Message-State: AOJu0YyaCRKjmBve3vzP6GcEplDtuhJCDTPqbpQD5TlujJEul2LIkxZJ
	n/H5IYI75m61wiTVY1y9rbSDquKkh5KSq5mwzMx3bci9wspeEn6hNGeEg1XGQjB16nTSrbkHBtc
	8GD7LS4bTjEdLLopP7Jzxy4TFeoUdeWJP2gGYs8/KH2/HS2DqnFaEHkcNSe9Fs3DJpHmY7Qb6
X-Gm-Gg: ATEYQzy+3xeA7bkDVRduWbqAzb64+Xlx1Z0J1IL87n4U+3ebsrDRQ1NzKNn7wKysfA0
	GdcTf3jVkneR2HKs7CevJI8pSK8P5937gqRy6yFRKscnf5NaR7mL/WQr9sANM8J9740AWMf+uzy
	JSmghJrYNWwrw6EXK5QNtaKk9rwfzuetp+d3yu1dwLyGqqltkNDk1RB73FY6hfsEwVc3kEvfP8o
	yWtGX6OPrB5A+2eLrbuQo1NEpe2MytQzjv0ORBCrK9xq5vEuOOVRZ8xJPwoQit1fXugp3juYu/m
	gbcICbZeAHKWigdmK2jwmDg2PAGjSYzaRm69XKGK7SPZWqtQ1N+XiYImfsyZRWc6wIjJVn5Onoy
	+ALvk+1wPXhl3cplbAlxITeqfUeA2ZZlsKdScLDfDNIW1Do3Rsw==
X-Received: by 2002:a05:6a21:4c16:b0:398:98ab:71a8 with SMTP id adf61e73a8af0-398c60e59b5mr6961771637.47.1773331026033;
        Thu, 12 Mar 2026 08:57:06 -0700 (PDT)
X-Received: by 2002:a05:6a21:4c16:b0:398:98ab:71a8 with SMTP id adf61e73a8af0-398c60e59b5mr6961755637.47.1773331025620;
        Thu, 12 Mar 2026 08:57:05 -0700 (PDT)
Received: from hu-mkshah-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c73cdf254acsm6067852a12.11.2026.03.12.08.57.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 08:57:05 -0700 (PDT)
From: Maulik Shah <maulik.shah@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 21:26:39 +0530
Subject: [PATCH 5/5] Revert "pinctrl: qcom: x1e80100: Bypass PDC wakeup
 parent for now"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-hamoa_pdc-v1-5-760c8593ce50@oss.qualcomm.com>
References: <20260312-hamoa_pdc-v1-0-760c8593ce50@oss.qualcomm.com>
In-Reply-To: <20260312-hamoa_pdc-v1-0-760c8593ce50@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Thomas Gleixner <tglx@kernel.org>,
        Linus Walleij <linusw@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773331000; l=1197;
 i=maulik.shah@oss.qualcomm.com; s=20240109; h=from:subject:message-id;
 bh=NJ8bSQsvrNv+RgGH0vB23hrO6pcccX75FiYOSctThyc=;
 b=rD0Ei0HSh9bbNMlw0dI2qpz+6AyCNXkRaaS1CmS1Irc/Wb18gwuLl/voTRP92EMMN3BehT5Ll
 O36yLyjrWH4CLeTbMsPqsmoB/2Dt9Qn264LPwq0a0MeKmX3QBKjnuST
X-Developer-Key: i=maulik.shah@oss.qualcomm.com; a=ed25519;
 pk=bd9h5FIIliUddIk8p3BlQWBlzKEQ/YW5V+fe759hTWQ=
X-Proofpoint-ORIG-GUID: 6hcggR6bkRstTohN-jRktJ_wq6qktAAz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDEyOCBTYWx0ZWRfX4g9Yu9urle81
 JXBrcMeQ8FvsCaT78ubpTZTl5Qzn4fXOPP9QpVG1Qy+VcoRimb9mPSSNz/SrsoUMhlBvJ1WHc8x
 P899lYPVNcV3vp04DCukJsZd2AwHkDiREb+Cejh6HH36RxzfLoP5+w1r47Ok/HcDTOWuO5l+qT5
 j0P1yXHFfJxkwT8mOLW8756vrUYfB8JqNLGPR7GteSi1+bWVYsSmkVD2B3K+oWk/w0y5enZlZ1L
 D0uo6BGY3nhFEJRcN1i2sG9VM0P8Z1D1/c3ia9jSH6rBmCPjef3YStCJvXxViQC4kSEOIzjG2GW
 jeTIZPkxtj9rfjPPrYLqtBYfpyqwQP6DLy1bVBp8ZMOXjcXZT0EP+v4VfZtblpR9CIUsVdHhxOO
 p/IrhZ9paw/MbdP89V2P/peECEnkAd7D0WLVCFQZNLJ3kNOtgfq/nXkMDQDcuhw/n1lRdP4Rw6P
 JbmxWFmO+4LCWzSEXmA==
X-Authority-Analysis: v=2.4 cv=YucChoYX c=1 sm=1 tr=0 ts=69b2e252 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=xCvdDQxbVn5SMwWwlOUA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: 6hcggR6bkRstTohN-jRktJ_wq6qktAAz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 adultscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120128
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274696-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maulik.shah@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4676E2753E2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This reverts commit 602cb14e310a ("pinctrl: qcom: x1e80100: Bypass PDC
wakeup parent for now").

PDC interrupts no more break GPIOs. PDC is now set to pass through mode
which allows GPIO interrupts to setup as wakeup capable at PDC and pass
them to GIC as SPIs. Update nwakeirq_map to reflect the GPIO to PDC irq
map size.

Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
---
 drivers/pinctrl/qcom/pinctrl-x1e80100.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pinctrl/qcom/pinctrl-x1e80100.c b/drivers/pinctrl/qcom/pinctrl-x1e80100.c
index bb36f40b19fa53eedf68d46d02986410d07a733c..04e08680f996bb06f1e3123c45863c184a3fb205 100644
--- a/drivers/pinctrl/qcom/pinctrl-x1e80100.c
+++ b/drivers/pinctrl/qcom/pinctrl-x1e80100.c
@@ -1839,9 +1839,7 @@ static const struct msm_pinctrl_soc_data x1e80100_pinctrl = {
 	.ngroups = ARRAY_SIZE(x1e80100_groups),
 	.ngpios = 239,
 	.wakeirq_map = x1e80100_pdc_map,
-	/* TODO: Enabling PDC currently breaks GPIO interrupts */
-	.nwakeirq_map = 0,
-	/* .nwakeirq_map = ARRAY_SIZE(x1e80100_pdc_map), */
+	.nwakeirq_map = ARRAY_SIZE(x1e80100_pdc_map),
 	.egpio_func = 9,
 };
 

-- 
2.34.1


