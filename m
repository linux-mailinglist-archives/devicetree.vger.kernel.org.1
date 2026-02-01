Return-Path: <devicetree+bounces-261558-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oNf8CCUwf2k8lQIAu9opvQ
	(envelope-from <devicetree+bounces-261558-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 11:51:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BF8C59D6
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 11:51:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ADA5C304EAB5
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 10:49:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DE07330B30;
	Sun,  1 Feb 2026 10:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oN6PtP+2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="J/bo8qBw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8EA326D5E
	for <devicetree@vger.kernel.org>; Sun,  1 Feb 2026 10:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769942961; cv=none; b=nY04SJdSJAZpGyMkN9CsNxaX6y1sktbrOJBOTc2qcl/nyIUdSk5jmAZtDiYSH4zOuhoz8gABir3tDIZT+nGbZ8FyiftDpR+5UzzYtql9/CKGagI+MC1CR82BGyklrhR14K4XvxbTyQIk97NxHMYEEjxcR1liHY7dPik3Xs0buSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769942961; c=relaxed/simple;
	bh=6NuffNWnnJdps+Qa/VbgdTchPyycTYPYQqXXf6EKyA0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gK9esUaElNDO813c6zmWEqG0x5ax+2uBYuzL495eBJQ8snBWhQ2z4Gpp7DZ/7ubeUi/KYw5+EVW9v5j+Y4lY5zk2HoZxwaHhVwoSTpHhSMhUgZanaZK+e1ktSHx7LnVnxJ9UBinw52BCAmUe/LciqzNgxVMQZztmeFxyrv6p37s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oN6PtP+2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=J/bo8qBw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6118eNLZ026652
	for <devicetree@vger.kernel.org>; Sun, 1 Feb 2026 10:49:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1XGvQ7yGrJV4bV5rx0wYu9nGDUQZH8c18eThksaF4dU=; b=oN6PtP+2s+U0HXnh
	61bYVgoieOSchIJK+Dn0r4UAAgEck3X2LZ5TZSBzQp2oUc2TRNOwyzaTel0k/Ion
	TJFG1m+9JLiHIcABg1Xd6QSPRohjHflU2dExg99aCNpKCug9nxVu3tgghj4fBOat
	UJwMwrZgBjJs881zDzEl52uQZy8R3w5FP4GellcZ4OVCUijcO+scR/bWPLHuy62i
	UiPGdwfWZkjmvZA7uzJ3T9BPeRLKBMVcufkLB9Ip8MUontFtBr9NV/XtK+dL+btT
	xS/NLnjWHDp5I8IU0cESNCY3A5o94uUjHeSRvaWUJrrxZMrZY2Xzz5uRMOqCN4jR
	0GIO+Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c23h1g4ku-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 10:49:19 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-502a341e0e3so105666411cf.3
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 02:49:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769942958; x=1770547758; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1XGvQ7yGrJV4bV5rx0wYu9nGDUQZH8c18eThksaF4dU=;
        b=J/bo8qBwSjlAAHDkuPvKrMf80gcpFCKDIqsN4wvgXNdNjz+/u9ApLzyq58v7CIYMh9
         lPh6dho09sH8L+N0JuQdW4RcZIo/bYAPgcS/DP6BOmuoUheToBQxP5d0WzqPgAshJSDl
         50Lg0zOvyJ0Jw/auFjgAfmbBmzJKWrL6JTzVV03ExChW/UwKi+y7Dy+E122z0TEJ0EaU
         07D19gAVQJ/LDdR0k8MKGmPSRE5ujwqlyYPLHCqS53WhRpyG/hhElr5FEzzBAkjT5LgU
         ruheULL7vZl893zx9gDKUSjP+Dk7tnrGOhnkdpZ5IdxzBL+pNjm6xCs1xbUHwYDapXKG
         PiJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769942958; x=1770547758;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1XGvQ7yGrJV4bV5rx0wYu9nGDUQZH8c18eThksaF4dU=;
        b=gbEl49XwdKpuF4F1mH5MOhNNRt/D7NaEqKjB/PN0/HjYPHLxjGM0LuzqfLxI+LdT9n
         8VqTzD0tb1mtPdlQJ404fk6gWfETwiR1AaU+efKcglBHPKvgBtqiurpncn14kwZHNI2R
         twpVT6TQLN3YuCkUttaAkJ+17cGg/4/hcBWJJNveFHjmfFQ0h4sItmtGqYwulHtKD4/6
         VPz4vDbWwRrUrf6D64J9WmxKiCNE1ig/HiXio8jyYuS1XIbBNQlmLcJMNJWeC0z2ORU5
         ftYamQuqCLur9OHKaanOzWvRDISiHPFVLWOZSH/AlwsZYzF+mRhMrOtijwfcANcGRwZ5
         /nLA==
X-Forwarded-Encrypted: i=1; AJvYcCVp0YdEAJ1LUnTeX0hOcV8KvQ1uJmMI7DEBDhY3dT5IgU4aOpKKCxVOdMw0Bh9Kspl66dRHYIBBqBQo@vger.kernel.org
X-Gm-Message-State: AOJu0YwOUVGRlkmacNCo1Dt8Olu+lSOX3/DIiKnDNFMHkKI3v3AKsuxk
	LL3Bv1CRp6Pw+nYHQt/dlnuvC2T9fl15Dh7y6wjq3bGWsO4lbRmUQQQFeky2e+VSIzjnYhiQc5P
	2iuX4n/pQIGbHBE5JYrJ2uqmXlmi37JvXSfIoYZ3J6PL87j+gGlkQA9wmO3BddP6P
X-Gm-Gg: AZuq6aLCtto4zvMjxsLPN19j8v9kvhXF8xnra/XPKs4iUu3A315nVQsuLLnyvEuRggI
	Em8FdP/fDLV4Np/uArAEcZQ4AmGtjJ71W3XV1quiP1WIO081tt+gB781IWcmiT3ljaUR+loXkuB
	2YNNi9sXXGa17tImU9u9Buo0z626tQdOhb9afcYSfj1ZMkmvFH7QLBjyfxu2IkST2YTTs7aCpe5
	pWvHUi+sYqY2UgIP0ptIm4b6tnf6lV1S/2MDX9o3B5nNnsGq1EXyuPnmBHD0xPQhYhPB9l0EiYR
	Y0tZTJRvRbdzllvNhCS8HmqwQC8xOdaHxX0kVSKkBvjybcNQW3DaYJcU3DUtXmHxRlb9lJ7HskJ
	Vnm2APcXDJqXaHDexpMOwOAgNBKjV+U+HmgcKX5N70OdbTuJxpsr+keOpDqk2l+6pYDI7hkf+ks
	9B/4+TDGhANJ+5Z2D145ciqMo=
X-Received: by 2002:a05:620a:bcb:b0:8c9:e98a:d9f7 with SMTP id af79cd13be357-8c9eb26f7bfmr1045807385a.25.1769942958130;
        Sun, 01 Feb 2026 02:49:18 -0800 (PST)
X-Received: by 2002:a05:620a:bcb:b0:8c9:e98a:d9f7 with SMTP id af79cd13be357-8c9eb26f7bfmr1045803785a.25.1769942957675;
        Sun, 01 Feb 2026 02:49:17 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e074b7a8csm2835006e87.77.2026.02.01.02.49.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 02:49:16 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 01 Feb 2026 12:49:01 +0200
Subject: [PATCH v2 4/8] media: iris: scale MMCX power domain on SM8250
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260201-iris-venus-fix-sm8250-v2-4-6f40d2605c89@oss.qualcomm.com>
References: <20260201-iris-venus-fix-sm8250-v2-0-6f40d2605c89@oss.qualcomm.com>
In-Reply-To: <20260201-iris-venus-fix-sm8250-v2-0-6f40d2605c89@oss.qualcomm.com>
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
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpfy+lu9qhcFty2QIzhWPlD4ewtU5ybkSHWwKy5
 57y3sCL5qaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaX8vpQAKCRCLPIo+Aiko
 1c+bB/91FST6j2IqsZG5xQ54l4E42G7wu0q6Sky/D3OqlrU0bL1N3hNLQYQVjuSNRLWLox5TQwq
 3aCRZWc5G9RFYqiVJ/j1wou504OeD0g/4erL5Vb+YsGk2NAvuHf/jweydv0YpEmy51CbZh8isBs
 xUOW/HDKUQAcUCbnK3O85QqfWCeOdPM+NfeVLMAyft+h6EU7lxuyE4+ZDwVOJyBtS2UCdT+IPEi
 XXs3G4g0VaekM4kt4fMoSyIuHSyS1x00p8vxfRXIJO6Z8PyrIMI/Ge00vC772lHXkE3cITue2KO
 Twtw+NOcnloK6RgTrApDm9gIwcqZeL3Bebk+NTbGsJTccpBy
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: slIIX46rBLULuUQrQmCFVZnqXVStx1Rx
X-Proofpoint-ORIG-GUID: slIIX46rBLULuUQrQmCFVZnqXVStx1Rx
X-Authority-Analysis: v=2.4 cv=Fu8IPmrq c=1 sm=1 tr=0 ts=697f2faf cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=_hdJGhFWpaytJYYtlLsA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAxMDA5NCBTYWx0ZWRfX8zDvxMoVfckU
 eCd9doKT9ZhlT0GH6O0vF/hGniVShX+C9DicMwKGxJ3H+GATZmY6OIKEsqqbhSM4ECn8R4KMPAy
 /fxhpcmw510+4QLlDssJ1gvR8I8G5bIXtTGyBzT5BJVEebdFwm/yCkdmcOh0wcZHutSFdxkM2h8
 DemQ5UT6r/VrOtN7SmaFc75LRVtJEw1sImds/mCer52M5jpJWayoNCRWrbQIl/QzvFZP6GMhWbu
 E9inGBpby2bqUaWKs6JSboWz9BO6Y5/kc+AEUQfut3wqKdjSwVaqPzQnSxYIQ5+lJL8mX6q4RRx
 2MNTDqc5v7WaS3/1Q0VEkw+9cnMMsZ9acEDLnfnz0KNPFtvZDYhyb4FHiUZhuTcQSjEoHq9lHy5
 7eN8FsgFf5Ehz5uoHc9BrUyqE91RfVewhZd3ggb/cOUEDwqCh6KiO79cqIXyUBBkrUtRcMG0vng
 IHL2DZMxc58wdVIjo0g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-01_04,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 bulkscore=0 malwarescore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602010094
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261558-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,huawei];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B1BF8C59D6
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


