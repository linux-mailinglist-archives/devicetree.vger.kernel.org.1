Return-Path: <devicetree+bounces-261556-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uN/WDrYvf2k8lQIAu9opvQ
	(envelope-from <devicetree+bounces-261556-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 11:49:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC228C5908
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 11:49:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 087F830041DF
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 10:49:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FF9032B9A6;
	Sun,  1 Feb 2026 10:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J+fSOL8o";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LXonr7KX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA988326D46
	for <devicetree@vger.kernel.org>; Sun,  1 Feb 2026 10:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769942958; cv=none; b=d1h2QvbtFuVJmGN8DjwDo3S11z2CBH3ULnxf0lcg/TYEdw0qLb3SviptTtCY/JMByvJoHXEDYoPwksjFbIYRGYlTCnbuRjK9xKj3gihnfieJb71D5kCxCDxjwS0o+zuvQJnR3lrncOonaEbxCvUFS55FgDPuF3Os6ofRdANIGs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769942958; c=relaxed/simple;
	bh=32YQR180l4XuatpViT6nfN9ULShKtuaugvJ8/48mdxQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IQ7iGBOuwtaOCtnFdxSmjzsJpxY4vlPbJ8qvpUyZCr68xU49SGVhu6UM1zDseri/fRdtd+G5wTFigkoNIBvm0qMSFF65FuovFFMeIyfdlW5LN/FV/hKSTkwozEHzLhVRcgoStCsnuDEc4E176rUfZ0/HpwdtF5TSGDw4ZKLE9sI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J+fSOL8o; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LXonr7KX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6117SVj33512948
	for <devicetree@vger.kernel.org>; Sun, 1 Feb 2026 10:49:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	M1pl67zhaQRIlZ7r7pA0ZyoUVVuJsyuZALZX1rr0pn4=; b=J+fSOL8oecJ7htUY
	rnOB6a3qU6Xuj3iE/3SWCU8jRB2OA2RaeKEc8TqCusqzgO6Y4g1WsoNPxvzZ7R/L
	nkIDQJiIgkeNh+b08w7MB6Dnr82x+gNiS9/WAEmiYmJ8BDdNzmKLyIAkTBQlzaA/
	6vh+yuz/0sW2MCaggJbwgzfoA99kboaLhAmXwtxGsE39MOGQursySv8NHmstUf5O
	HG/DjjJrL+W1EHj/iRe/Bu4x0h49lsGDxATGmUP6GZdaUioNNU25OqlQnIlclQNC
	k9XATVdbJZUX+u+LRaFibeloS6u/sOO+R7tqtzMyyY2jFiv16Sq6GuH5akEON13z
	gpCfnQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1as4tfka-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 10:49:16 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6ae763d03so374836985a.3
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 02:49:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769942955; x=1770547755; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M1pl67zhaQRIlZ7r7pA0ZyoUVVuJsyuZALZX1rr0pn4=;
        b=LXonr7KXMKu6OjLrpKR9QKi1L5El0DwbLeoVB9wkez+a1rAahvb9Zc9vem85VhoTi6
         sSRFGwPhku/Hry1htGNrTKQa31j8M1mthvB2MT3r8BxQBpWl4JwJq3xszHCgydcG2Gka
         TVgFQRJ2k7icKAiMa5gr2aufnaMYb6dBL0sQkgnXLVk6wwOoBmbOJVs9nNZj6Of+DKho
         gAAUc68Gk6I7B/HLFZzVMiBdG/vmtBgPrB8azncs/PSoLTW48VX7PXMvf124pbsSY1nZ
         rQzAT47pe/0We2H9mhSooOjmX2kN/6NcFdcQR2dk8JqndoMDunzuC/w0TTHqan80tmRY
         wvZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769942955; x=1770547755;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=M1pl67zhaQRIlZ7r7pA0ZyoUVVuJsyuZALZX1rr0pn4=;
        b=aD8inNvN6FxTMpzWyq7F8rIiHvbbm0j+9ZknrvJvY1aB9ZCwtH0EnS/pKkwOyx2/l5
         pkS3AAZfXX8YuSU942JvhS1vmoBwiYvGkZwWKtGFgd/fCmTGWOoXiO9H3lHvVA9DG6RN
         d4zCohCA7CNP4+4pIzYj0Cv4paePUyye2dJODsXqitBI9rxaeVlmaKZChctq4Z7QnX6B
         +HNHwWvSma605bUOqjP6tL3v4doT8QXele1FSqBjlnxTCpi2Dtt0kM/VEZ9kmupoFUPj
         wExJpe2T9UTLncLhZ28LTRtA0q90fEnQS+1Nn3DvgikEFrO+Jkg/1uRMLBXGK4qs74UB
         jdoA==
X-Forwarded-Encrypted: i=1; AJvYcCVxTWYujC8KGkWTk9lAAJp4P8r1ItmXO6vFrT+aNaFXan6Hj+EVhZkUomb9EBtVLrUvbwj4n1/ApJ/x@vger.kernel.org
X-Gm-Message-State: AOJu0Yyk2SvkBIqkFkZPiDdpp5IrZ7HdUw7J/e+KW5SkBG/FC1iqOSqw
	4wtt3duBTLVasFjUV+R2wdJr9bN2I3e5NFxgUu//b87e0uN58ayPgD81TSBo0yaiADbBUumNnMr
	/Zq4dORQUQvFY7w/THwXU9/8jd8e1yEK61U82mIchxCip51OmrHhj7SvS71THiwNi
X-Gm-Gg: AZuq6aKkFr726AWH4XSzs9ciRcUj3lmymznL3C9N6KvCLfACHxooo2nbw/NTzIinjBT
	9c0p50ZuswQMSTUH/J39SoYx/M1U//TcYY0xncHV4G8rzOLvTr61Ow8BKKKBTdrKCRmBvNF1NlE
	BPckXBojWw2tQNfXHG2UVVgO8zeC4W0l93Ut7oDqHn31jgImLD+s3EEF68iu+9wnfqje3KicSKb
	6g71JFFxSv4MZtz6Ljq49+M32r7wHrwrySTdjn+XdG5oUTt9UwwIMzzX3xrKj/jpSF4nBXeggGL
	KgLXzSQPo7BFlV3ytR7tMWQteUFJgNzwOHx+ZqHJ8G5qhKY0km38y+zP7K1Y5wloDBIszfZIUG2
	1qFlKEOg5gGM9pVct1KZyiavWSAuxx5BS1PVB9XxLGmrDvpowaE0j/R6nGfkYnAMpgoI77hflZa
	Zcz94GjTo1pZLQ7fo/FEyEB5c=
X-Received: by 2002:a05:620a:2906:b0:8c6:a85a:5204 with SMTP id af79cd13be357-8c9eb364f83mr1127876585a.88.1769942955081;
        Sun, 01 Feb 2026 02:49:15 -0800 (PST)
X-Received: by 2002:a05:620a:2906:b0:8c6:a85a:5204 with SMTP id af79cd13be357-8c9eb364f83mr1127872885a.88.1769942954578;
        Sun, 01 Feb 2026 02:49:14 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e074b7a8csm2835006e87.77.2026.02.01.02.49.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 02:49:13 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 01 Feb 2026 12:48:59 +0200
Subject: [PATCH v2 2/8] pmdomain: de-constify fields struct
 dev_pm_domain_attach_data
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260201-iris-venus-fix-sm8250-v2-2-6f40d2605c89@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=880;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=32YQR180l4XuatpViT6nfN9ULShKtuaugvJ8/48mdxQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpfy+kyu/4kaubF+LUVuH4Re7eRBOaxduY4IJPt
 cXB0D862a2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaX8vpAAKCRCLPIo+Aiko
 1aRuB/9WBlRYvHMHWuVOGRyjcbOrZio4cJ42F43gS/VLCY0xeqGW/Mca12KWFPezXuLAppc+RUn
 Ku4AIG1IbCuKx3vVrZz24t619lL3DXZLWKNWR4O+bgiYys3B3BZiwpQ6UdAHcz4EVEQAO4l6Xxz
 qIM5qoSfNUCS9mex4aqDiUgyOW4KpIAMyTAsVyeaE7/2xDrvmJW+cPCkDKFMdp5RputgCBc+qBh
 7VWcqxKMpJ0cc8eiGwHznJ/eFVz9f9YGZ1OLRwNN2SHdJ3Ah1dMWCWo/ij/o0f1qimYu7/XwE+/
 DuAPT+2YNHGocojIFbyT6n67q06WMtGWPpqD/NHN8Z9B83Ph
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: AhBQduBISYtc9JUB-auZQDKQ2lnblXzs
X-Proofpoint-GUID: AhBQduBISYtc9JUB-auZQDKQ2lnblXzs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAxMDA5NCBTYWx0ZWRfX+m+Wvd+rxN22
 HPwpLWw6E9N5dPqHKAJYhxWpnKIsmjqLj33k9WIePJbMaueS1D/rjX9N2MJlURnBa2Z3ghCdlBa
 rl7fV0BgRGMvRQKBcpkb69r9xgQxpgM7fzSVUtWrZQbBnlfpRaJuRnw3HQ/eL8kmqL2MCy3cMck
 cRSw/8CYHihkdd48AuYw1+BaHdZXh8L3KHBWnqDbcEEuoyI9XpVnkArh1NAeMy78qSVx6LKPexO
 5dWiVrDs2xr9Wq24GTT2oH9iiVmiP1tALNtRWflY+6BKLIiub6oBLqXNHjd+WcA98uRACegSdme
 oP6PoJIi/3aT4WegnIB8WO4hFqpCNdmkW+y6iuPmtEBYXiqlgxZAOH/1kHJzFNqgybTPGKlcOe6
 g+xsL+8VanDIcuUnQTR67e0zrqWDmGXb/iU5TKiUfDCfwDHassIkUeMaZ3tkDV7ZZtH+T+CCjQG
 Qa4vnsxcxdIBNwzc8fA==
X-Authority-Analysis: v=2.4 cv=bIEb4f+Z c=1 sm=1 tr=0 ts=697f2fac cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=0MtQHd9Mo8yxAPGUVWwA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-01_04,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 lowpriorityscore=0
 adultscore=0 impostorscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602010094
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261556-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,huawei];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CC228C5908
X-Rspamd-Action: no action

It doesn't really make sense to keep u32 fields to be marked as const.
Having the const fields prevents their modification in the driver.
Instead the whole struct can be defined as const (if it is constant).

Fixes: 161e16a5e50a ("PM: domains: Add helper functions to attach/detach multiple PM domains")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 include/linux/pm_domain.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/pm_domain.h b/include/linux/pm_domain.h
index f6f6d494f728..b299dc0128d6 100644
--- a/include/linux/pm_domain.h
+++ b/include/linux/pm_domain.h
@@ -49,8 +49,8 @@
 
 struct dev_pm_domain_attach_data {
 	const char * const *pd_names;
-	const u32 num_pd_names;
-	const u32 pd_flags;
+	u32 num_pd_names;
+	u32 pd_flags;
 };
 
 struct dev_pm_domain_list {

-- 
2.47.3


