Return-Path: <devicetree+bounces-258183-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBZTKTiIcWk1IAAAu9opvQ
	(envelope-from <devicetree+bounces-258183-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 03:15:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE4060CA8
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 03:15:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 234F8443D3C
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 02:10:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F168037FF7F;
	Thu, 22 Jan 2026 02:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BZMT8Z6a";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AvcLSG21"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C02236A026
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769047772; cv=none; b=Wt1GyuLMRv5b6XbaqxVqP+tiRD0pB1+rRtzj3bVDoZJUkecqg881DF+u+YXGgM+j0ggl1JSKOi8o/i74LiKhyddmbq4aB1MuJvNdNVamZdUUwkSda72JhZiIvEsOYAUrPrPKxf1B2sL2cRFCdlZU0Q5eS3/Iq+k7tJMnSal9chE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769047772; c=relaxed/simple;
	bh=U3SBm8Q4F2Lqg46nftP77Qbyf63TqJWnGptxyfW3r6I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CuG5JWoYifcRzjR9N5yxF0kYZNamnWEwkz/bv3wqBftekBMiKOu5aPYXcFgKUMPZdMyj80DOxez8Xr55DX36APPgEUwmIkz04iKAelCrws5rpYX41EysN5lg6HC0NHfluE/R8bcNdO85QQth6HXowu/vwBLZzTeVzuwT08YxAKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BZMT8Z6a; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AvcLSG21; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60LNW3c2646072
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:09:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2hUWnOSTgpb39HiN4iScZAjggx5kZGetEG2O1nLvCqo=; b=BZMT8Z6aMJtCZ+DZ
	wUklgb+eqJn24hQv0mrEEtwD7crXLJ6a/eRC63tiFNslClsoD58FML5FJmCgLPml
	+V4f3R/4f7IUhJEEvDsmom518hdnVAyzFZILBU9DekztZoGZZaYsxKeTWIgkWYVy
	Y+xOvKS1algFUWKM4Et3pkWLcMMPe9TBu9jLGFXVK+GEsThGuwAXMtNMrnpBqRQC
	cYGlhPS7yYd0QUIi5BeG4XRfCcRlhIVeGpL9Mgvh9cVpJQIyz2UayEF5vZiLSR2Z
	/wDNKY102NxP+Ikyp4blk2IuzQ1iH1mJLdFEh9jnJOTdGPlP6J6GI8BMV0ymE6I/
	vGcL4w==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bu8j9rb0b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:09:21 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29f25e494c2so4763165ad.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 18:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769047761; x=1769652561; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2hUWnOSTgpb39HiN4iScZAjggx5kZGetEG2O1nLvCqo=;
        b=AvcLSG21TshtbJL0SaLulxFmjnvVvx+bGg+e112a0iE6JxdNn6FjpBWK54/JgPx2/X
         4F5HwB1MH4VUQclIJ6YFYyoU7qcO7DLIyquDRzbtfhx5UetDzjNF8w0k+i4FvPLQiOSD
         y8gGzkAxAtfbLtqlav7N5zGWe0ojzvZZVry5d6UA8KguOLQEpcTokf8M5rWB87iVsQc7
         VosiGYziAaOunyN4Ct2En2HoYAwKzimiK+N8Gl9+/IUZfirCc0ieG9zN/yld5a/7p5uW
         eRbjaI6TmtzdUGY6VljMA1kGWqPwJLDUTlxCBzGOsnPSvizQ56wPS3hfP+KXbq3gSAHP
         rvyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769047761; x=1769652561;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2hUWnOSTgpb39HiN4iScZAjggx5kZGetEG2O1nLvCqo=;
        b=OiciPcHfE79NVSeDbgiB+7c7kq4DONnG4GECbJFemO2u0Y1cYIYwbJKwb0wkSPWLL+
         pg4MVmys8JPz3E4EOPU1/BsA4LdybEm4i7ejvKt6ilKPm0BHGpVlkqZ2DEm/GNnYD7kM
         +zSgUfYomPbRsdZe0unZr8fB5vcxpmH4e5ySr/4QT5X+0oWgtu34dugtyPrM4yypzRvb
         G3x9A3rtz2euCTQzqDKoPBS/RpkrbTRoKsWanhFnULelZyGyceI33Zi16mbophZ20Nie
         rJHFWJnExwlttxLacljtiBLBYDB6Q0xdy8Vpi+GZv77fnIIFIMoyVmRns+T0Bo1KhlFV
         k56g==
X-Forwarded-Encrypted: i=1; AJvYcCV9M/ejLr1oAdmtk11HsdQxSWld6ih7UhrM7IBI+oMS9fKoRa5suL2ipeVNruor6mQ+oG/ByPFK+08g@vger.kernel.org
X-Gm-Message-State: AOJu0YwVk44GXM7aI23uqbfo+qwVY2ZhPdwDy2Z+7mO+CBrvpciyyd1n
	Wy/WqnI+ZGuvxoqMCA8w+OFbgauBxwfk8itvtj01ZKNCl8T8wgW74EVBPUAWmvTAjjn6zhbAdq3
	Ua9UenZvGGTkpht42FBG8UcsCaWkrxD+qOFiICtFlBSd8JicXFztRANo7ofs4sV/z
X-Gm-Gg: AZuq6aJCE5GKrFHux5G3kmyrwTXl0M588RCdBWxjlBKnJrTq7WdQPNkwkxsBG+7CPCQ
	axLqFmcGt61m0OXw7Teq89vethWxz9z1tJddevJaYO0lKI2rnaJ4eZXnl/WXDcGRDqL7FkimZO6
	5fLmEis9xS6zc63zNA6t/5AKbOkl5EM5BO5OHWrDdBu/w5FDpyzJ3iS9Y5l1abxnKXIrfBV0hkJ
	t5PzQXpNLKNlzRTBvpkz1h/0mWb4xrOpfzQdLobth46ILPLcIAxSp7T1HH9bXgT8QrQDwi2QxgM
	tEcNM7eBkU/rtkms/RoaxAExlOlHZu7ByLbebstTk0XTee3XShXcLwtwoBVvyuLi0wDJD/3dGz+
	UL0S9cYnLnga5wVuTcDZp5R3kMTrsJB9tKvAx/8mjm9c9w1/oC75TWiSkvbrTTbpZkeFRDVH1
X-Received: by 2002:a17:903:2ac4:b0:2a7:a6fa:eddf with SMTP id d9443c01a7336-2a7d2f47348mr14195215ad.17.1769047761103;
        Wed, 21 Jan 2026 18:09:21 -0800 (PST)
X-Received: by 2002:a17:903:2ac4:b0:2a7:a6fa:eddf with SMTP id d9443c01a7336-2a7d2f47348mr14194925ad.17.1769047760623;
        Wed, 21 Jan 2026 18:09:20 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a780a4631csm49710305ad.18.2026.01.21.18.09.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 18:09:20 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 10:08:21 +0800
Subject: [PATCH v10 8/8] arm64: dts: qcom: lemans: add interrupts to CTCU
 device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-enable-byte-cntr-for-ctcu-v10-8-22978e3c169f@oss.qualcomm.com>
References: <20260122-enable-byte-cntr-for-ctcu-v10-0-22978e3c169f@oss.qualcomm.com>
In-Reply-To: <20260122-enable-byte-cntr-for-ctcu-v10-0-22978e3c169f@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769047716; l=769;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=U3SBm8Q4F2Lqg46nftP77Qbyf63TqJWnGptxyfW3r6I=;
 b=b0vwksCJSZDVDR3oLaXtrkBBvR0U8dzLyYweInT8NsLxQOJVcZxRM7jEzAoSzriNC6jVcmj4I
 hz9WDiif8OjAXAC7wlDvD7OgH5Qyw+hXKLUZ4uHJM9F3pTHesvINDnY
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-ORIG-GUID: ZGsO2nvLE2-PiPTPqPXm5wCIPOI33hhC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDAxNSBTYWx0ZWRfX6TzWK6UVnCWM
 DT4COItV8nNA+K4Et3BcCVc8bna4KwU33tYRMbczhYVaKdWSY2wSbDz6vHq8Yi6M8ZNZpVDTb2b
 jrSJ9Q2aQBl/4IZWb9qXxRX/uSob8enNkz4nMMI1Bis1G51YuPTHuWiGFJ7RiG5yfrEotrFydJ3
 n9ytVMQbm0XgYX8CBHSIvu2hsGF0L+OTBl5wFoD9CaUnYRUF+t2ib1zZzF5z1vvKwbYG4bwf5YD
 A1y7mX8IxtbL5UNwt5q2Vhz9QCelNe+AYrRgW5CJxr/c4Xcl2qEDdIrcoz30Dz8E+i8G+dbS/f2
 gs6ao3W76KFx0bSBriApD/R23uYzmpnyLuFERTSDtsdPsWxhiHn9/EKfbnBKWbbGdCG0sjQm3sR
 BaS/g7R60nLMVMlEfeV7Gvokq1M7vIdXhkgBudCXclDGopc5JX5hNdwRxP1u9D46fqJZFpktzhQ
 LqZH96TBxoN9TPWQ8jQ==
X-Authority-Analysis: v=2.4 cv=U4CfzOru c=1 sm=1 tr=0 ts=697186d1 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=gBkj9RZkAcI1HbXH1KoA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: ZGsO2nvLE2-PiPTPqPXm5wCIPOI33hhC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 spamscore=0 adultscore=0
 suspectscore=0 bulkscore=0 clxscore=1015 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601220015
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	TAGGED_FROM(0.00)[bounces-258183-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,0.61.12.232:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4FE4060CA8
X-Rspamd-Action: no action

Add interrupts to enable byte-cntr function for TMC ETR devices.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 0b154d57ba24..75a468ddbf53 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -2776,6 +2776,9 @@ ctcu@4001000 {
 			clocks = <&aoss_qmp>;
 			clock-names = "apb";
 
+			interrupts = <GIC_SPI 270 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 262 IRQ_TYPE_EDGE_RISING>;
+
 			in-ports {
 				#address-cells = <1>;
 				#size-cells = <0>;

-- 
2.34.1


