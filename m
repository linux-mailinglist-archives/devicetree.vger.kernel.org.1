Return-Path: <devicetree+bounces-266481-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJdSD/v1lWkMXgIAu9opvQ
	(envelope-from <devicetree+bounces-266481-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:25:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C46FD15842B
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:25:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BDAA830416E8
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 17:24:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9362344D95;
	Wed, 18 Feb 2026 17:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ielVIQLr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fyd+XFvt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 942333451D6
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771435478; cv=none; b=fMy+euLqhHtrl0ivxVHu79iL8yBWebpAXu3UFWp9sYb7pjD9jdTnuJCvkzKWPIBWhqyCFqhP8CnZFCZ9uvEtf6BvEldnX9DzqYGvGLIKtauMuE4rX8fR9PkG7Bnp5ULXYWlzLkh1Kvyq+kCxQ+f1Jb+Zomp0b5QcJL4zzfFTC7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771435478; c=relaxed/simple;
	bh=L0VSGnbMcS5idMq8mU8nZkCNut2AlL8ZGoszJiLBsOw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BbFzTGwBu6uNrrFVtFWO3ZuOti1qc2oj9FR0z7ehN5A42icB3i2r6mlzlafD19VLwTAdQmBNv9sDgF9KU2/S9Hh5m3xuRLcEypfOBXlSw8qP1WIqFMkuX23mcq8wmVkwvMC6hYh6zkLtsKJcvLckwensMzIfxaJyfTZSLCnRaVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ielVIQLr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fyd+XFvt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61IB4nKh1624816
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:24:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oVDLLiMLvUBUbLGtgSV7smUPMaHbagFZ9gdAkhI4Enc=; b=ielVIQLrjLBemkhs
	j1lGH0AeLHOGgoEYnWedLipGILrULcWWlBS3zrHmielB87i8Ode5zWnXiEEJ7/IJ
	gGRGo2/uREoXu2qE/xcRkX9pxtFlBLENIJ6DG9u06ASFFFLYvtkuY37iZsNKJ+u7
	P+4vM4YYhDfJzsHSfakEeqq5ilVH6WS752b0b0KpwH2k6dz0r+OTBrapOCn+XGhH
	RthrGB3MENXVdcLSkw0mdfXdv2qN6Rcav7qkB9n3cYSh7a+3ccXBU+BcxMAiiirK
	rAyZKYcO9/uqOe9QOcbjiX8kio7n7A/RtEHsEUG9jlAhrPgf6w+fyPTd3AG7qNNr
	s+QJWA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdc7u91hw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:24:35 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb706313beso4514685a.3
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 09:24:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771435475; x=1772040275; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oVDLLiMLvUBUbLGtgSV7smUPMaHbagFZ9gdAkhI4Enc=;
        b=fyd+XFvthj0tnIa/m7OtmVlD1M0na3QZIAaGjFhGaKbzFY7Izb7x061QEhzucbVKCC
         zXIhRw3mOBqhOSV0lxfRDfT4oVLLcyUPLCP1/it7HR7LZBNyiiRbnyVf/h15rc8lqc6E
         FJ9AEfH0As5dyQrczVLCUaDk2GADZ+o5DD0Gt+DMd+UJP9ondgQJww0b4DltCBmzuRHD
         tINeFGOEaSBj/VHJe/UGHNawFGM/h4VQ62uFqBFRMgtz4aD+eqX4lL7mmaqDc9UNAxE1
         u6oRa0TdP9q5GyLZgvT4Q5FuhbHxIdfyaUNblq70ptDzJhFLrshIif4h9oqh88WQPa1+
         JKww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771435475; x=1772040275;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oVDLLiMLvUBUbLGtgSV7smUPMaHbagFZ9gdAkhI4Enc=;
        b=J3xMWe5yTxs+2utXTV24BtguL51aI4qktmJyZyeUJFXozqCSKzerdw4OS0lv6QHuEv
         nqXKtezzUSgkOE5MUwOiMReZHd7NEAvIfy8wlCPpeO5y6pbqtozHOkSWhN1egnSaPC7D
         pi2jh6McdwMByeZea0glluXnaW9V4w0tSpPOX9nqLYUPoRDwybk1sTti+b+NTW8zH4n/
         0dhl+Y4Vepxm4Zi3tDGqhjjFsijnef5hlsckKC7RFwY28/t1LsuNK9UcQl4A8+oUhluG
         43lVI2B6UeIORVovTYlYxJltZeEw7FbRpaKGky3qmr+06uLTI+NFEUEYfO7gczq752I5
         kh8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXmXcODLoOuCnW4VIVPWWEytfZkB8rRZJ6tNe4OYChu4Byg7G369NQA4EVPC8ktl92ldTXbl5z/yX+x@vger.kernel.org
X-Gm-Message-State: AOJu0YyrtnRZHeGVb4YEULQRhsfYTe81m7U3+fIKTy974oSVxwF1OjNH
	u8WrmoABDAO252NZwWg8SA/xvBAf43LTnGZoNYDfNhhwa68LssOtslSJfT1dz4JFngPtrip4BVx
	Ak/cuMuk5ZMcpN+WOMTo369VPt4APaOaJHjW07OcJDyfquIAVH4DWXoGwctASh0vm
X-Gm-Gg: AZuq6aIF6+vCppDsrJAKm2dsQBBvcGI0urTizF8h8qhTQa7HbAYLgxvS9nxP5IEuISH
	jftQ+JvHgPDdA8xeiGJmf5xPHOy3gX7HTboyrED7sIPa4uoXPz4mR0QPkJ+xwd1g6uekleicQcX
	LUHX38bIfxYqUvjPv/Bv1qGhtomvNkres4Fr48lefvIQs/0gBWroKWkia/x87DZiV92Ob9KXycf
	ax1/sL9P3Hxo4rNKjSumAoXXU9KAr3EOkHhSrUq1UGE6yzaIFDDM/Ov6bhV6q+UwsVZBuVO4NvK
	53jd4vJqQ0HbLJFh8GDRgzfrEs2pS2qmKLF5E9mV0+gFm4NJlRzYMycjzMqJYKq2OFyiddE5hwf
	GeQpkMbFL45HhGRJ4MSUz+2BuKEgs3NI4paSP0VniZ/P3Jw==
X-Received: by 2002:a05:620a:318c:b0:8cb:3870:5c1d with SMTP id af79cd13be357-8cb74032920mr287330585a.27.1771435474910;
        Wed, 18 Feb 2026 09:24:34 -0800 (PST)
X-Received: by 2002:a05:620a:318c:b0:8cb:3870:5c1d with SMTP id af79cd13be357-8cb74032920mr287326285a.27.1771435474259;
        Wed, 18 Feb 2026 09:24:34 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.140])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ac8d46sm44181368f8f.32.2026.02.18.09.24.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 09:24:33 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 18 Feb 2026 18:24:24 +0100
Subject: [PATCH 2/5] arm64: dts: qcom: msm8998: Drop redundant VSYNC pin
 state
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260218-qcom-dts-redundant-pins-v1-2-2799b8a4184e@oss.qualcomm.com>
References: <20260218-qcom-dts-redundant-pins-v1-0-2799b8a4184e@oss.qualcomm.com>
In-Reply-To: <20260218-qcom-dts-redundant-pins-v1-0-2799b8a4184e@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1003;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=L0VSGnbMcS5idMq8mU8nZkCNut2AlL8ZGoszJiLBsOw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBplfXJFvy59hJkSdjhI/x8j3LMr/OHgwrFJeguX
 HKH9YIoGSmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaZX1yQAKCRDBN2bmhouD
 12EwD/9K3rKQ6ru5uCuRUiPCMKpANuf8JWwW1egHua7Dt2Ef6L+zLa1ZXFtONGygeGnFg1OYNCR
 2endQ2hplwe61T+t37MBc2NvfQzZciDGTIX9Xm6LYcMB9W2udQcSaVOT/eNdi3vDcMvJtEesuI6
 j2gMd10riXCO2T4NO7dlD46shJ2lwrnw5E7uDB4CqIRsjVGvs7eLbQewZ/C858mXwqFO6Uzuzwq
 ZKUVDwo7lTCTuHIQjjyL1aXV78vd9MiI6pPMWJH2cfwaD6SPBP/UVA0z69SR0SEfQ2JZKcXeMP3
 yWXfdHBcR9PRLuLqkjqTFYQWZE0Jk5bB9JnJ9JqIYfFp6vdYfH3xu9RHuPjh1pqp8VbV5PwKzmP
 zxbwYxZk49rNlMuurlaIn635+41tRrfgc5TdF5dOZO0xuIjmBxMqvms/2hRBiof0lVM+r/6TtJM
 exzlRcaJg2Mb7AujEjP+dMjnvA6xQZNaA8QxSSVaABIEfFoyeldI6x8PNNh5yqLMcwZpVg2mWzR
 udPraoFUjN1WikLEb5Lmwl7Ri0IaVdbyKjXmU3JfWBX6bE4tTeJR/gbvLZKFGPdPbUASOHz78F0
 S85RA/xrmnxqsgaDvGmtbsePakGm4AzSjDzelkRDXrAiLTdq38tJk/sqAuS90Sm1heSJv+b5pEK
 AT5VicaE/n8PREQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: 2xZKcliIQkc5sDz0FuLMu7O6EFcvVLHO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDE0OCBTYWx0ZWRfX6KQWnG7OU+rV
 WfMpnyEORtG56HuCdIyssH+CByjFdSKSq/hfv6jFnJkJ+i/vELpSAYDtWpQomd2qCV0crPSFgvE
 iLKaVWZG617gjyyi2KmHDiztgpPVuG3tWm8lSMrnbUvWQ163tFdewjg2AYDrLWrixNNPkG2olhj
 z7oovBlfWqHqDly3rISwgU0s0/ZZZawaAE3oPFeW4uYMoT79Pk6x8jFpjsUep50wG8eLhGUEsZg
 kyPTrKHSbaWor86LVfenK5+49qCT3jz5njT2ptfTo8qyvM5Rj0+aklcqRXlU5pPZCtaFQH0/g63
 YiC+XRNMfhcX7dPrcNYDe2VaPr/zG7GIK8l1NhSxrHNBs463rUT7vZWprsacF8WdZNKUOiLc7h8
 25YS4uJ2IQ/U6pWNf4em3qQlfB+DgEnTlGuxEXbVzdx19soBHfgXZj7ShTtQuC4RmziAJVltG2r
 lpeuhhUf8O6QFQ9gLOQ==
X-Proofpoint-GUID: 2xZKcliIQkc5sDz0FuLMu7O6EFcvVLHO
X-Authority-Analysis: v=2.4 cv=daCNHHXe c=1 sm=1 tr=0 ts=6995f5d3 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=6nO30s3o7FuWeffXwhKHTA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=8yVsgoJE3aPY5vqtA_wA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-18_03,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602180148
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266481-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C46FD15842B
X-Rspamd-Action: no action

The active and suspend pin state of VSYNC is exactly the same, so just
use one node for both states.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts b/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts
index 0cac06f25a77..30222f6608da 100644
--- a/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts
+++ b/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts
@@ -543,14 +543,7 @@ mdss_dsi_suspend_state: mdss-dsi-suspend-state {
 		bias-pull-down;
 	};
 
-	mdss_te_active_state: mdss-te-active-state {
-		pins = "gpio10";
-		function = "mdp_vsync_a";
-		drive-strength = <2>;
-		bias-pull-down;
-	};
-
-	mdss_te_suspend_state: mdss-te-suspend-state {
+	mdss_te_state: mdss-te-state {
 		pins = "gpio10";
 		function = "mdp_vsync_a";
 		drive-strength = <2>;

-- 
2.51.0


