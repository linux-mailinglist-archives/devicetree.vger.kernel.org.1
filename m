Return-Path: <devicetree+bounces-180756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFBFAC4CA1
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 13:00:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EBD5A3BD3D5
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 11:00:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14C7E258CCB;
	Tue, 27 May 2025 11:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fB9yk8K7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5DC43ABC
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 11:00:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748343646; cv=none; b=LLWuKcNt3m4Tp0dJeB06EyVXZyYQL0AQVMQ0S5gwufCxBfht0+rmiyoD3Xv2F1aHziido3D1Vny+OCTW2X5BFJp5xJiZsPpBGkjxoFWMQaJFHCF9kdeFNs4QmfXGJFo2oYhdMrD1XMSa71oCABW8X3T+6gZSS4ww9xx6q2xcFp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748343646; c=relaxed/simple;
	bh=U6pKDs2mOQBNxfLvwMT/KbWRi6T7oO/1foUXXEwPqko=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sSUdG++Lk6J7DQdsuSXK0O0vWw/0JRB/n1xbEeaBYGz8wNp+uByEfmyA6+ZhI7GM5541BD/RCsb61GcrFhKWDQEl4kC7x9Eck5HTyCyYVaws+pO7yPYhyfZqvOm3pG1nMAtSegxpGl3IO6qwCUcU1NXbXW5JsW9N62FGr381Iy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fB9yk8K7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54R4JeNW012264
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 11:00:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zgVk85DAmmpZs++PLF2UBmQ+DGiZz0Emih1vTSs5OXU=; b=fB9yk8K7uV8T/fq6
	DO1Ni/h8nKW7CNmKL96zZ1bf0epG22PvNYkhTmno5rDgk2+OzHSmXigIIm3o6foz
	To1Zppqw6y+7fKH3A7LscpMUJupwr8dawfyi5Bme2vi+Kpd710uu6Q+xnccmYqOi
	4JeaueW7dj/+EOHecWjN+hTYCctbSWZSwPDu1rkYZM/EjDp3tKY7Wzq/YVi+sN0U
	C09I7hiprznbgkEu8dGez2ivfULrCi6jNbVXtpMJnPy5pi4se76oAOTQg0Q4o2BC
	gt2NzvjoRe2w9fdG+fFoBsSEiz9Xgr6XEf3fC1hQsaZX6gVzenwRUZu0BunRdCNJ
	2Z1uzQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46w69190dx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 11:00:42 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-47ae9ed8511so3076601cf.3
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 04:00:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748343641; x=1748948441;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zgVk85DAmmpZs++PLF2UBmQ+DGiZz0Emih1vTSs5OXU=;
        b=aQ/8ULuBp5LoqhkeoeHlc8RdUgOlPtewbAsbnpDqkdQqUNu8h2vdBJ/uucPt1JZ8bK
         WPkribSrWblfq72VMldnMqq6r4uf8WiDeyqxLka2gKqi2s8n61sPQFBbqUiMjMPqp0aF
         SSukmYQ+gW0W1f8dSwGbou73G17bfE7g8rHfArGKu6c+sX3Ujeemmg9PUAtz0fz3qWdH
         dR9BUuEy1F1iwBXjIxaOHUzKi+45SFX1WCOPJLFq/2V7/zGECOobM/sFptYYsArrVj2e
         Tm6HGVSioQRTztf6pxY6mAfpDDaDPvgu/jacMs5rjn+zFrUhIy696Gy9/OaimOFx/DmK
         YRUg==
X-Forwarded-Encrypted: i=1; AJvYcCX7EbOsCP1R5K/1wN5xohCtdaYDv8Zty40ZusULd25LBljfCTaHPbKNynZRAfogiwRrPerloZLAnPaK@vger.kernel.org
X-Gm-Message-State: AOJu0YwF/sWnteaNsa7CfG1IdBJbWP99f/KKiBFTI/utOS3omH2IM6s2
	qS82H1gab12hGMLavlANBk5cIvZAXXduVjtgzsYJbbZx3eGpKQCKmF18E6V2VCZt5odWEmxXf6u
	0zbbi8/oQlx12Ze3WdWuTCBO500nndkHyD/ef6MKaMmsdcJysuVgh8KaBveDWsXQx
X-Gm-Gg: ASbGncuKuciKo4H79ToivL4tpGyQLFW54vBGfqrvMnclR65ziRzfqnepUFyaXAEtWMc
	ovm7LKRLTOCwQ24wYvmyT2YcCUhYDg9mytDlO6QT8mSNgS6kLa/Swric2lqQ+iZkqKz81wS76mI
	5eawePXZzq+V49dkBASvIZ5Fmf8xKPOjy3Qjotv+0rj0pFfnmHVG/z1SUTZe3DqE3Rq+HLTl61O
	PTSU3VVExsRICOk1KmQsJoYtOi9wqmMqvNenwpH21kBrv06mKjc8Q08nVAk2YrX3kRwktvTNQ5a
	hb7LA33CBJvtn6IHpMdghrfBbJFR2HRt5EjGIABsho67J+Ff8d21OhMJ5YXVRd67aw==
X-Received: by 2002:ac8:7fd4:0:b0:471:f437:2973 with SMTP id d75a77b69052e-49f484b59a0mr63741721cf.14.1748343641575;
        Tue, 27 May 2025 04:00:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG+5TD+MYI12ASNGgNhrVbg3teRggfUA7Nt0ihpblmSv3AXfO5j1mU3F1jH13ruzx816Fmvxw==
X-Received: by 2002:ac8:7fd4:0:b0:471:f437:2973 with SMTP id d75a77b69052e-49f484b59a0mr63741331cf.14.1748343641067;
        Tue, 27 May 2025 04:00:41 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad88d055609sm100472066b.28.2025.05.27.04.00.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 04:00:40 -0700 (PDT)
Message-ID: <337068fa-adc2-478e-8f3f-ec93af0bb1c6@oss.qualcomm.com>
Date: Tue, 27 May 2025 13:00:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] clk: qcom: gcc-ipq5018: fix GE PHY reset
To: george.moussalem@outlook.com, Andrew Lunn <andrew@lunn.ch>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King
 <linux@armlinux.org.uk>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org
References: <20250525-ipq5018-ge-phy-v1-0-ddab8854e253@outlook.com>
 <20250525-ipq5018-ge-phy-v1-2-ddab8854e253@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250525-ipq5018-ge-phy-v1-2-ddab8854e253@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=WfoMa1hX c=1 sm=1 tr=0 ts=68359b5a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=qC_FGOx9AAAA:8 a=UqCG9HQmAAAA:8
 a=rZqdB0JiAKPJAkIg25gA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=fsdK_YakeE02zTmptMdW:22
X-Proofpoint-GUID: 5hVGtJxHiDAmBvbrZtLiH6b7ohQdBM-_
X-Proofpoint-ORIG-GUID: 5hVGtJxHiDAmBvbrZtLiH6b7ohQdBM-_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDA5MCBTYWx0ZWRfX/bzgczgQKEyM
 PupPmzoayqkFw3LQxK9BEg3ljku4W+qag5ZqrsBxPwb3dT7Y3YZpt7RwWGRj+M7zhWZri7h43HK
 s4pbszd3uEiLY1RijHvk3AdPXIbDbcS9cnQCuRniM/twjRhTeBRjyC35lPUvFaQOggY6olBx0PI
 x4FXUq6mnXUBptERXRIwDQxfkEKpo9OT2GY+//W7dpAK+U6Em1QQlSQm8VF+fU1GwXKRY8Zdbhl
 g+Dy6wGtvN9ygaucMPd+F1U7eFUw2G/VWgPZSRPLvI8vzk3nnKjlpJ729zEIfuPMo+msADcXF+5
 EILSv6QuuI/FNuaXSg7OIzUowKbF+RSy4xIplR4Mg7SMVcaTg3eJsoG0sghHjFvJTuARini4VWg
 t3N3Qsb6+tJ0nIxBqjqYK4qT+9KXaIcksCIU99eOIDbkkO79QuDyQteWMvHLvF7Rh6PC5bZe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_05,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 mlxlogscore=999 priorityscore=1501 mlxscore=0
 bulkscore=0 adultscore=0 spamscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270090

On 5/25/25 7:56 PM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> The MISC reset is supposed to trigger a resets across the MDC, DSP, and
> RX & TX clocks of the IPQ5018 internal GE PHY. So let's set the bitmask
> of the reset definition accordingly in the GCC as per the downstream
> driver.
> 
> Link: https://git.codelinaro.org/clo/qsdk/oss/kernel/linux-ipq-5.4/-/commit/00743c3e82fa87cba4460e7a2ba32f473a9ce932
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  drivers/clk/qcom/gcc-ipq5018.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/qcom/gcc-ipq5018.c b/drivers/clk/qcom/gcc-ipq5018.c
> index 70f5dcb96700f55da1fb19fc893d22350a7e63bf..02d6f08f389f24eccc961b9a4271288c6b635bbc 100644
> --- a/drivers/clk/qcom/gcc-ipq5018.c
> +++ b/drivers/clk/qcom/gcc-ipq5018.c
> @@ -3660,7 +3660,7 @@ static const struct qcom_reset_map gcc_ipq5018_resets[] = {
>  	[GCC_WCSS_AXI_S_ARES] = { 0x59008, 6 },
>  	[GCC_WCSS_Q6_BCR] = { 0x18004, 0 },
>  	[GCC_WCSSAON_RESET] = { 0x59010, 0},
> -	[GCC_GEPHY_MISC_ARES] = { 0x56004, 0 },
> +	[GCC_GEPHY_MISC_ARES] = { 0x56004, .bitmask = 0xf },

The computer tells me there aren't any bits beyond this mask..

Does this actually fix anything?

Konrad

