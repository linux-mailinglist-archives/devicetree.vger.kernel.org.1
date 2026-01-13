Return-Path: <devicetree+bounces-254349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB59D17756
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:03:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6BEDE3018698
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:02:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21B453815E9;
	Tue, 13 Jan 2026 09:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nWVpAVnm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="G59eD3mv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9D53815DD
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768294933; cv=none; b=bBxn2kTLVS4IwtWl/vDZXxrcpQyvkpT+PcarIeco2BdZGp1M1sTdIMyRbyzywmyZPwrMMzP3EDxMAaPUzaCaTjS9t0qkcfNHgztnsHkFP9e/sZb9t08Y8T0kCcjNBg0gqwcmdii3MPpFqtGueYaSkobBNcaX6nemxXXJJ3cEdZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768294933; c=relaxed/simple;
	bh=E/rHAaELYlivdofu5n6KJxhOc3XRDcBNMHgQOTIvEb4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WQ3zzSoIhO/+RwwZUNiKRlPIwvB2b+NgYicnmfHjj8XIGk5N7tS43zgRBaMbnWeoiyrCOjeoZI3aE8493R2ScUs40b1PgPaTn9wlf1GbSpmtwn38lYtu4NKETDKX/uOrXg7cxzwVr3933HSblHQaR4tkA0gOSLDnf3Te74bZFtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nWVpAVnm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=G59eD3mv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D1tckb2751721
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:02:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GPT96PTGUv2d3VCwf4G28uAn4AI03K7pwV8OBWcEcrc=; b=nWVpAVnmbiBS5McH
	6KWxNlk8DbudJmoh7D3MH6Ixd0uJBZAUaawZIkcaqNVwAy2aTDM/QZdAgUBG2fHJ
	YYB7OedkXlsNPpjgv6g0WG2fBbnlyLDTkkxRpcw7IC1LGV3cyRdkZVM9Vj2vzqXo
	5hXqOo/2zexGOF2DXPuIg66qjKOw47UZadbVgfMrsRnz5ZE8LEOC5WgE5bukb9Ki
	BiEOlL6i7FlR0tSK/vK6CnhS1W3w86tPrfTLIyp57nstXf1tven3CJuX6znKSvjw
	MBvBWdpU02Kvbk697MA7DyTTNIHTQXSncu3Q8Ma/oSijFwYVV13BYvHDlKSBaU88
	TmI2Jw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnctjs3qb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:02:04 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88887682068so22224076d6.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:02:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768294923; x=1768899723; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GPT96PTGUv2d3VCwf4G28uAn4AI03K7pwV8OBWcEcrc=;
        b=G59eD3mvPyOkG2avGdcn/RTrI3VrcWWOpiwkj0kxorxUbC7Dmzyy417eUuxlxjYATX
         +3xPFBjgx7O/uCWk50kdCY4I1fsY7NyyucXdmUViHajydIOOZEioJhHBPrUdH4gvfpKj
         2+sPqnFh5F0tpP9CFn2YWT+ti3yHG6/H7np9vRUxaWtRnKg3dGZnTxYUPeSvb2VuFRrD
         mwY8ECdMuuAkCcYFZ1ewrbFIaucafxgGigdfIAMCHCo6w9T7GpD71kZ+uGnTB9vUhtxr
         tPfHAFIYUmBbwRZjgGYT/o2p9pc/KEIUDxdSXVdZMnXt9VKmYtbYfk9JyFSmi+dOos7y
         SH1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768294923; x=1768899723;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GPT96PTGUv2d3VCwf4G28uAn4AI03K7pwV8OBWcEcrc=;
        b=dyGp3Js4JtRp7lUzqrsTCpO64ML0YSrALuVFj+YSpn/utNePkbNifoZKYx77O0vtee
         YeGk1ajxhCAg0z/KlZPLeiv9YOLbYaJxVmAScf44nYqHD7p9S9TbKRlVUEdIR5ndR02b
         ypROVdYp1MAaVX1Ev9PCegKHHsqUenSXf6UzB2EadcghBPJ9RlP3JEAo3bExmd1UUEF8
         YN+DvGN6AAefZ5TStySrccjj0sKzZbE5Jo+kecamZrIIJUooXIVKQ9TslEGU1+SMsM1G
         1+0jjdTGzR062nM7jEP36x+ddS/lpYcTGdp2Gkbqm5fZM/utT1bMaAfEYD8yq9+Yn37r
         vtgw==
X-Forwarded-Encrypted: i=1; AJvYcCXjPVrtxTfNkozBq4wfJQGNIQL61zW4RjrVdJ5WG7MvFfCIC4hm3J9fQdf2rmO5i0wXQPkmwgeV/syt@vger.kernel.org
X-Gm-Message-State: AOJu0YzaU+YZQDeJd8J4oGiFvlbd+22/b1xCUwnTi7lmCOgD6VqfeqLy
	iBw5C7ikvQIiVO4cOrALhEkFDqsnyIu5dtFgehJ095GqlGlyVrORTJpIXmIuKuw5pdATQoCrDJy
	DeuDJDQBjjZ/c/yFcxz+9fiW6YE4CX9jfE1a097Jh9/NLstfP9PgULUANb9ynj5UE
X-Gm-Gg: AY/fxX6ztFjeDInxpBjQNgYCazdlrf9CkxkLVt36QMW/pOXkV74HPI8SWavAA8Wxddj
	FjkpNbq9Nq7P+9Nzcd0ouBkj766nlo/UBzdUCp1cmyZtm1WYhHatiy3+F+F4UltusKjizP5TL2m
	xRSUD8SpwK20/+ae79mUJL/HlK7gnxKtFfuzkyfS+XBQ3x06i9cAmi3Zkjk9UNyMNvcq+hnxnGf
	iHUj0hHYp2R8/WsywR5b1IpR/zIu8M8351qhnNDHHL3HwSU9Uc/51OeBFN9PJ3ymfaBEqJIRSwo
	O43poNBD+K5cYKMlR0G3kN7oWpEu12E4YQLdrL87m0KJfxjQZtJOS0m2ZMkvVLBlLDjEbi2h4/T
	1fhkAC2gxsLSM/rBvoEmBdFgrl3mwgEdqwMVvp9tuwr7Tlx2m0bMjRpKD3RBa1sKJkP8=
X-Received: by 2002:a05:620a:4086:b0:8a3:9d53:e1e5 with SMTP id af79cd13be357-8c3891d3180mr2156778985a.0.1768294923395;
        Tue, 13 Jan 2026 01:02:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFULj+4gsDIhecmRQEo0sCnejhnBMw9iTjvTptjSk6XDSfCyRFrWMa5xhAnDNPYWfQ/IFWnyQ==
X-Received: by 2002:a05:620a:4086:b0:8a3:9d53:e1e5 with SMTP id af79cd13be357-8c3891d3180mr2156773685a.0.1768294922810;
        Tue, 13 Jan 2026 01:02:02 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b870776b642sm748875566b.21.2026.01.13.01.02.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 01:02:02 -0800 (PST)
Message-ID: <11ee77c1-2ea6-4c7c-b955-22f10d879ad7@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 10:01:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] arm64: dts: qcom: sm6125-xiaomi-ginkgo: Fix reserved
 gpio ranges
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Gabriel Gonzales <semfault@disroot.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        Biswapriyo Nath <nathbappai@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org
References: <20260112-xiaomi-willow-v1-0-8e4476897638@mainlining.org>
 <20260112-xiaomi-willow-v1-4-8e4476897638@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260112-xiaomi-willow-v1-4-8e4476897638@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA3NCBTYWx0ZWRfX8Lnx4J9jOpqd
 qBNoZoxExbb68+MfXnjLeLlxU7gol1bLp35LL/O35i8O3JLVkKZBSwUkxAekzif6pngTGRhU4bR
 NhQmCVgZrN+iluyCxu8bIygZvlWIY5o/+OSyoC5NpJ7+JV8aUpJnyixM+g+HehzVySsNOb1fmxj
 tpGemDrP6GcoMWEcDb4R/YLXSXyxx99Ia2Bv8YTs0XBk2hmZftJo8IW0n8xsC4coXbINFVSxsYM
 qxQ+JT0TuR00R0uQgvM705pUnSNQ0djE2djLv/z/J+IKf1v/FvqG6XFi+zrejkXXlS0kJOGWrvg
 olHCVtnIYVFs3tTCKNoLNWqfVUgGO/xHpfm28EelCwC70j8WxJMcQN1zve4eX+VMUPlYtMEEpfF
 IhLxIdxN+r/+/xLoDx2sKpjMfrjfzmNxKBjZSaSYSBpgPvwn+uvroNPEjZ7vYXrRa3THzO8MRN3
 f5OF43xKr3NxBINnNKA==
X-Authority-Analysis: v=2.4 cv=Ls2fC3dc c=1 sm=1 tr=0 ts=69660a0c cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=tUk71-pQmeoK5jN-DnkA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-ORIG-GUID: IefXAPsVtLdOUOVxQpr6s5TtfMeeq0wQ
X-Proofpoint-GUID: IefXAPsVtLdOUOVxQpr6s5TtfMeeq0wQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130074

On 1/12/26 9:13 PM, Barnabás Czémán wrote:
> The device was crashing on boot because the reserved gpio ranges
> was wrongly defined. Correct the ranges for avoid pinctrl crashing.
> 
> Fixes: 9b1a6c925c88 ("arm64: dts: qcom: sm6125: Initial support for xiaomi-ginkgo")
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

That's odd.. were you able to confirm that these values are alright for
both the Note 8 and the 8T? 

>  arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> index 666daf4a9fdd..163ecdc7fd6c 100644
> --- a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> +++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> @@ -296,7 +296,7 @@ &sdhc_2 {
>  };
>  
>  &tlmm {
> -	gpio-reserved-ranges = <22 2>, <28 6>;
> +	gpio-reserved-ranges = <0 4>, <30 4>;

Any chance you know/could deduce what they're connected to and describe
it, like in x1-crd.dtsi?

Konrad

