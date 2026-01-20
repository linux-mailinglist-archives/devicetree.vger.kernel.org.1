Return-Path: <devicetree+bounces-257519-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4NgdLrPTb2mgMQAAu9opvQ
	(envelope-from <devicetree+bounces-257519-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:12:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2574A150
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:12:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0002F84A73A
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 16:58:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 493EC33D4F9;
	Tue, 20 Jan 2026 16:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A/LhGTpL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aMVJwbeQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B389833CEA1
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 16:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768927923; cv=none; b=ANeaTwUEZsoeISouNwXhEc+jF1Hwg8Ll97veBmyEPayjjvSplgvYF4XNCNzWD4r/P9CTv4fjrZnIad4+NpMBM5JvsYr3qBSxysM8IRLSgCpphIW1hpYhOLLB6o/PRb4cOV0Le4mqKyAuctzlKnw5nF2CiwQr2jfMJ5nFGY1270A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768927923; c=relaxed/simple;
	bh=CCPuKReYRvj41JQnhT+HuPW9azB1zQxKUlg4cII68YM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EGYDscQGqS634kQapswlDfD5FM+vy8aL2+9/zQymstvcSIrRJvcYsQLDYb4xQp9PGgk1U8bCZEtd6S7r/MlS210V5Ya+Rw5vNQc5gsxmvptCcYyM8FhiQBRagmbZVwNnVGGu3mvSoncpsFZBvHur/86IF+YW3iH5Cuc4rcBNB+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A/LhGTpL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aMVJwbeQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60KEOqIM1408482
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 16:52:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JalpaZr5yUHlMHrok9kWcJgMbCxWC5tE8ZNzAsaa1uY=; b=A/LhGTpLo+qcA/zD
	7r9LZxOot4g0vp9T5qN2dBy0K/D+nuYRlTyeNgvlMKKcjYGpxypDfmUig3q3ajTx
	j6yf869lBaItv1xkZs2OGLzI8fFv1TLnHDcyssF2JCa+K9x/avgf7PSCkBDZsEsY
	mi6kXz5jE1IT3dfctCe0YG43yRadMP6zsnQH2sAH0z5cT60nLzAxDKc39+LuFu9n
	E2lxvNmp7YG7oN36C8MfurAvG+jh3xZ/Xg1IXXTiLWal+4iq5PnWlfPpfuV4juzc
	SoGTzqEStuO75Rdt6pAx86Wqsfo5mNxdBUONdNBer8e0oI3mLI9RuEicwPHnpArZ
	umGqDw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt4y2suqd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 16:52:00 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a089575ab3so50352525ad.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 08:52:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768927920; x=1769532720; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JalpaZr5yUHlMHrok9kWcJgMbCxWC5tE8ZNzAsaa1uY=;
        b=aMVJwbeQyD2BFa3U27mjilOa9c5OpDsOPh5oR67LdipG9IHsyTvSSc2b4afh3PHM5i
         IarkGk0PO6+2NRWr64b49uF5uV2tqZUxoNwKy4E1uKCRTSc6lD9w3LELIClPwwBBbKv/
         qHgqr3v0Ob+oPhq1tHxoPW4LtBRyQO4wxuCBooz2JZ16Pqf7GdJFhUKeTrEELKnbccxW
         00OPvH0+1BKBEduyHGAtgU+8aH2SkBB5FB39hQgY3EQbnF73ypKeAHDNmZKEVwrerZSv
         arVCmSvTQw0bGsL5rcNGqvUYoAmWfAwwWeAwo+/ljFMkK175Z7Evq2YxslTipcrrY1oO
         lTcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768927920; x=1769532720;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JalpaZr5yUHlMHrok9kWcJgMbCxWC5tE8ZNzAsaa1uY=;
        b=YXtkyyeSY6YJsxR8dWlQe7Wikh9c26ta2sOyv0ETs1EtgNaP4JCgNY50FeGBnnseLd
         /m0LEQrXtidtxQszm+Uf7x0gb4Kmp5Io6hXs3Q+byjUMM86Tg4qyfcEgFOzbkk1Y5Uia
         pWanRtwtvN8vKgS0r3u7tUa0JHseF+3OgUe0LaovETdCKIIdyQVOagZLBs+qB/Xd9qSv
         0agMqYb9zcOAe1JByL1gD86lqZlf1VUsRIeUVjC+NYFowo72wzksBAZuk18naofdG/RB
         rFMBgGO2PvG4Df+rY1vVBSR3sjDVuVaKb64pZFf++ZNFIH0dYJAXCqcDqclta4dMCw8k
         BNFg==
X-Forwarded-Encrypted: i=1; AJvYcCWR6cPdSGE56qRW7Zzm7QDdlje7rkIC+O2ff1n8tdPoCHBtCun740riKqg3x90f++I/VsRHf3iyYoZd@vger.kernel.org
X-Gm-Message-State: AOJu0YyT3NOOEbaUwNTkMKKclBA7utJ1Pt5EIdodvjamItUdEIipWyej
	bGChG02n4zEdZMqzqgYeh2uWoD4uqTKqI3iNKAfdtcWjIXZ2rCu2gEHBXOsLRE3TTdoc5pjIJkI
	GHuSxqe3mM8BKSiWzx5V0VRBtzEx35u+ptouX9oYoA11nXD9+UZ1SO/Nd/oNRjmcL
X-Gm-Gg: AZuq6aKkBlhfLkKdLiKhMt7DNv8F7+mJMjBJgLoR4lbAjHGIpPLIOfzYecEaTbjMz9O
	B5s+DYcDw7xMKf69iqHanIa9JaqyTn0GdrwmDrFMM3Fs8aMH/tZeFnUydXQYA10rAL6Vn1ghn0O
	icK1VVrHO04CbQBwVY8uqmEwyteuV9E/Z1TcoNtQgOyyUuqr3zYntby2iHh5DFcAJ0uxLkEwPKt
	LCsj2Kf50WzX7QZkySRLB3z36hBR9PnCWKqb7fh/vDPH/7ki1Sxg7K19GqfugkpOitHNGLT2Vq0
	PFpLRiyERaQLUKbR96n8W44Ye7yIJgeurA4SGLP1zp1qwEbBj1QgL35Z0NiiqnTeiNN/NkEMVOj
	PsoKI/fhZcFczGPoAt4zZQTG09WsSWMWYvsDsvw==
X-Received: by 2002:a17:903:228f:b0:2a5:8d30:58f7 with SMTP id d9443c01a7336-2a76923cc64mr22709605ad.17.1768927920120;
        Tue, 20 Jan 2026 08:52:00 -0800 (PST)
X-Received: by 2002:a17:903:228f:b0:2a5:8d30:58f7 with SMTP id d9443c01a7336-2a76923cc64mr22709425ad.17.1768927919485;
        Tue, 20 Jan 2026 08:51:59 -0800 (PST)
Received: from [192.168.0.195] ([49.204.25.225])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a71942248asm130052615ad.98.2026.01.20.08.51.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 08:51:59 -0800 (PST)
Message-ID: <3e973c02-c804-43c1-863d-bb160108face@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 22:21:52 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: clock: qcom,dispcc-sc7180: Define MDSS
 resets
To: Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        cros-qcom-dts-watchers@chromium.org,
        Kalyan Thota
 <quic_kalyant@quicinc.com>,
        Douglas Anderson <dianders@chromium.org>,
        Harigovindan P <harigovi@codeaurora.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260120-topic-7180_dispcc_bcr-v1-0-0b1b442156c3@oss.qualcomm.com>
 <20260120-topic-7180_dispcc_bcr-v1-1-0b1b442156c3@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <20260120-topic-7180_dispcc_bcr-v1-1-0b1b442156c3@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDE0MCBTYWx0ZWRfX8lf2AtOWZiaJ
 37P91oiDru116CexhCFmv18n+PKBnHNhioJ0DaRKXkJNLTjezPYrvqtR0yh3zpoIc8Wovs730bY
 PFWPDK8S8YLkoo/dLHo/tHlMm8TG7Z5dJZDy/0stNY+eilN/MkXtWZJ6HecVfhZaF5XEe9qxZrf
 bF8KxBza7qOqXtdUtbiYDSpbHGw78d4O1osdzWuCIaYVnqHgf58QxfeZEVubWupCM0ksIJNMUMz
 Kh11s1GdUrCQ/l2KZnaryvftIAGA8SnKiSwKVMzyU9O+HRq8G2JxbGPkUujbS66qtVYF96ZukPW
 HpCaypykcyTnCOpEvUl7oaMBe6bqOAIFb5i6vSEPipyJr0/3TXlndegabJJPLI0se4EexRWjlZZ
 SZ9DeWNnbEYijSfaUkR/POEV3y1ufuZ3AnXTmJIMLOX3zS/Ty2P7JDxbzlWm6u30zUe0gwWXFJ6
 FNoQEr6seW5w238V8hA==
X-Authority-Analysis: v=2.4 cv=Ds1bOW/+ c=1 sm=1 tr=0 ts=696fb2b0 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=NUZ/Q5sP+scsJfd5oYcUKA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=o43xtqzOwXQgjmHM5CwA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: N-aIyI0-jOLia04VfCp6Oo31_yYPSN0V
X-Proofpoint-ORIG-GUID: N-aIyI0-jOLia04VfCp6Oo31_yYPSN0V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 clxscore=1015 impostorscore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601200140
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	TAGGED_FROM(0.00)[bounces-257519-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5C2574A150
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 1/20/2026 4:49 PM, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The MDSS resets have so far been left undescribed. Fix that.
> 
> Fixes: 75616da71291 ("dt-bindings: clock: Introduce QCOM sc7180 display clock bindings")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  include/dt-bindings/clock/qcom,dispcc-sc7180.h | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/include/dt-bindings/clock/qcom,dispcc-sc7180.h b/include/dt-bindings/clock/qcom,dispcc-sc7180.h
> index b9b51617a335..070510306074 100644
> --- a/include/dt-bindings/clock/qcom,dispcc-sc7180.h
> +++ b/include/dt-bindings/clock/qcom,dispcc-sc7180.h
> @@ -6,6 +6,7 @@
>  #ifndef _DT_BINDINGS_CLK_QCOM_DISP_CC_SC7180_H
>  #define _DT_BINDINGS_CLK_QCOM_DISP_CC_SC7180_H
>  
> +/* Clocks */
>  #define DISP_CC_PLL0				0
>  #define DISP_CC_PLL0_OUT_EVEN			1
>  #define DISP_CC_MDSS_AHB_CLK			2
> @@ -40,7 +41,11 @@
>  #define DISP_CC_MDSS_VSYNC_CLK_SRC		31
>  #define DISP_CC_XO_CLK				32
>  
> -/* DISP_CC GDSCR */
> +/* Resets */
> +#define DISP_CC_MDSS_CORE_BCR			0
> +#define DISP_CC_MDSS_RSCC_BCR			1
> +
> +/* GDSCs */
>  #define MDSS_GDSC				0
>  
>  #endif
> 

Reviewed-by: Taniya Das <taniya.das@oss.qualcomm.com>

-- 
Thanks,
Taniya Das


