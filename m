Return-Path: <devicetree+bounces-276924-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OzMJeY4umkrTAIAu9opvQ
	(envelope-from <devicetree+bounces-276924-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 06:32:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 384F22B5F36
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 06:32:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 47A62303DAC4
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 05:32:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAB21361DBC;
	Wed, 18 Mar 2026 05:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XhHSY6R6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XaqEopDe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC1F23C8A0
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 05:32:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773811929; cv=none; b=QVXHbpj/vKP1iqj4YboEqem60YZueiEcBnz7NcfwucEwjwUK5T0K1AURuA3I1ZPkvg4TELP2yIkBaVXju+rZfjEn5mrCDhOM6ncA7ThDubxiPJ06WtDvjtbdI9pP9mv+QeSfJnoMVlRONt+VfgEAofIbZmuwiKLW/Q7mVYKxSR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773811929; c=relaxed/simple;
	bh=qybZ+1d3Yz3X2dUPhdbyn/og422dq4oDePxozmDiMPA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T6WlhujulJI/BCmHLj3spQzQgM8fhK7dJrCVVVZczvChkz3+At8PWNVJlLJj1TvvzuI5loKRNd2dA7Y+nH+3UZCzA0TVfQdSg8NhKa6/yjaDrsJajg/SAKK5vSF6zauiZujacLKcdy7u4ccg9MHOHiNs176lbCoDJhsKwDKQClU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XhHSY6R6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XaqEopDe; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I2iwQ01261076
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 05:32:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VWaNLn2Pv/wB0ecutyRpzxhD2eM++i2+pWNnwur7KbY=; b=XhHSY6R6yJUtxNmW
	vu5XgQ387GJb2rHG0AKUkom9gaYfFyNzPJXC7ZsgQ37QRlERRt2nJ0C/qYPQVfVg
	3O4PjwHq5u7uMd9hvsiJf7XaLGEY7+3Dih/8rkpy2IjlnjybhSy+AKzWyND/Cwc/
	Mf+pjd3vKWe+reSDBVr0JH7t1kZwUjqxQHBoRC5XY4slJcKLy7eIgJqdDJTCLpoS
	w+NRwDMdC9xJjjtMT9k6EPQO532DNw3GzKWl52UpUm6lHJBvKqkgMIS+GXK8C2Ji
	aTyiy/sXwwmO8ZAm1EJuHLnQO65IGDjfRKmQIFI/C4ikOp8e5VHH3p31naOTVdp1
	7SGXVA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy5g8kx62-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 05:32:06 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-82a106b687cso2607752b3a.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 22:32:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773811926; x=1774416726; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VWaNLn2Pv/wB0ecutyRpzxhD2eM++i2+pWNnwur7KbY=;
        b=XaqEopDeOA5lt2XWlrakm5pu6hSIezTpVK+PPKQHkWglHAI3m8sOKP3k4WI9RVJ88d
         R5JPVMOAvzFYwSHS6ZTI9XXJ3Cg8WeZzu5eq+npkgC3KQEc7DyX98KrCRjTUSndU36fz
         XKTy6K2tP4Mtg9B562EipAY5fNIE78+fhiVZ94eXpe3VswR/pmGK7UUsoQlp7YL9TPJO
         sET5BvbfmpezOUV6mDDj+ePEjnnf3WytQNt/NvrFjfEDWre9d07sj7kPglXQoEWD3sAR
         gkmrQ4zqJy4EVkbQLf3OR3HpmWmAyVAsA+zkEDIF58Rh9K7ndecgzmVTL5qbDb9ybW7p
         K8Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773811926; x=1774416726;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VWaNLn2Pv/wB0ecutyRpzxhD2eM++i2+pWNnwur7KbY=;
        b=NO44wBoEmGXRj6F21V+f5Ma/OoSVQsmlFXj2Ikoq2dppRPoF8kpqdBXq1jG7RUPdCK
         RkXG4Cv0xZ6eCC8obodzip0ML3WuBTSKXXB/451GIQYkfnBL2n9ICijOoTdc5RnEWAws
         fInvdNIjMa+b5lyk9W1wwMbANfxR0lbu2W3ZZ2c4a966EeBtp5aSq5VQI2zWT8zZWhmn
         4Pj0FOSGPQmWv4r7zTEM+TO7mo2MI3VMcooMZ00wHBmB5f1Hbi0qTleLuqszsP9zhUjF
         LG2/h3q/lTlm8chbHr+VgjQMihfmMAXoTWRbr5c9C2TmRmU0aeqbEgsCDS71gUeT75KE
         NpDA==
X-Forwarded-Encrypted: i=1; AJvYcCUL9Y06MlIc90SxXMoobun3iNmEktWU0NxUcfChUEbOFW9TMqZj7V1QOLJIVd5b7+LmJCDPFm5h1dWh@vger.kernel.org
X-Gm-Message-State: AOJu0YySCZoX31DzZEx2SgjX7ZrWC5YfdY+sxuNr1WrDwBymFx4wkyjj
	Fo3kvsUsax0uoQxnPAHgOiXiCHwaXhBbGlh1sWImzTkR3BZDgrg/6iOfdGF7DXJBwq6nKikbS5R
	E6jdyk4XpiXnEIyyFx48ymhBFPUX8J3VrqnV8VZYMgfWzG6RRXM3hOKXltRcGpkTK
X-Gm-Gg: ATEYQzxdnXxvBwSTWpgAgvUg16QCMHY17TYWG9SXVNgvbR6+UAIakAsHGeXOXTsGMD6
	uPm3Ko1UeMmH8RKW9D4t4fj60cxZe+3h8fJvnE6HEffz0+LZ+uvKUL3ye+NXRHNtkR8VWH7LC4+
	wftAi3oXKmeixnH4vY9Oq+CxfVg77KiMg8TJii614elhWwRM1LPXFYmqv+SsmL1hzpRGAmk4HRx
	Po+551s6HZaw/EwtuDPjcssRCM3NR2CWnRI5XwYa3iyplGh3R74TCT5UgKt5xi6x52k6iNsFlok
	xCFWCr47Uc403AjDm9pDqidVe6dIjPRv9VZr5bZe55Gu+oJqGEXiaeN9D7+9Lz+7pNcZxnQ6ykv
	ATnSK9FPFiaRPr6FIYuY86Z977fkYWQ1kTcOXC+P2KnKRD6J1laXf0Q==
X-Received: by 2002:a05:6a00:2e16:b0:800:8fdf:1a54 with SMTP id d2e1a72fcca58-82a6ae6d191mr2140093b3a.34.1773811925945;
        Tue, 17 Mar 2026 22:32:05 -0700 (PDT)
X-Received: by 2002:a05:6a00:2e16:b0:800:8fdf:1a54 with SMTP id d2e1a72fcca58-82a6ae6d191mr2140063b3a.34.1773811925474;
        Tue, 17 Mar 2026 22:32:05 -0700 (PDT)
Received: from [10.0.0.3] ([106.222.229.118])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a6b52e5a0sm1493717b3a.4.2026.03.17.22.32.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 22:32:05 -0700 (PDT)
Message-ID: <83b9de30-cf6c-c6a1-4cdc-e8b1bf2678f1@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 11:01:59 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 2/6] arm64: dts: qcom: lemans: correct Iris corners for
 the MXC rail
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260313-iris-fix-corners-v1-0-32a393c25dda@oss.qualcomm.com>
 <20260313-iris-fix-corners-v1-2-32a393c25dda@oss.qualcomm.com>
From: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
In-Reply-To: <20260313-iris-fix-corners-v1-2-32a393c25dda@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 4CX7z4O86zVrJPdQ130EULDvosJYQURN
X-Authority-Analysis: v=2.4 cv=EeTFgfmC c=1 sm=1 tr=0 ts=69ba38d6 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=RgczR8+8wRjDfzPIf2UjDw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=uV8CjdeucaoOSxDd1EUA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: 4CX7z4O86zVrJPdQ130EULDvosJYQURN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA0NCBTYWx0ZWRfX7E1IdiDhBZ/f
 n7w241mXxHLrtUsOltXtkbkxQRa03ajggEmLYSJnMPXKiWn7xIQ+HG+aMfXmMed1G0cUNPNFUpo
 XIZf9+HiQTqEMXDIuvdqfgR5dyT3OAR6OSpkbJ8cWdg1RkQ+ZDSD7zQ0abMgHRr4a/zI+BzKlNA
 FtbO9/ZoOCWIbomKm0lHQ9E56znFB8jd6DcyL0UAIPPpyu7dqtoXt+VWg1lT7dpLqzxFvMcVoFa
 kmiAVY4TMcyJyRaTepixPpz1CQhiEA9jUbOQvaU9QFdLmFu0qcef5IMK479/tj+ih3ioeNhmSu/
 tQMkNRhDtMYT56N6N1qIW2T6PUFENNsAmemUVeDyLTJAV6f8v0NVCOoAljytjqLfYMzYxedvuMq
 FyxkKHbMsk/CDLxQ02qME+aF/ghsS6s/iv6GPPD19U8vXqAz1fOo7+nGWJ0Q0gaacPukXaw+SON
 0pKG/PCjG3JEuuNnceA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_05,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0 spamscore=0
 phishscore=0 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180044
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-276924-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dikshita.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 384F22B5F36
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/13/2026 8:57 PM, Dmitry Baryshkov wrote:
> The corners of the MVS0 / MVS0C clocks on the MMCX rail don't always
> match the PLL corners on the MXC rail. Correct the performance corners
> for the MXC rail following the PLL documentation.
> 
> Fixes: 7bc95052c64f ("arm64: dts: qcom: sa8775p: add support for video node")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
> index 67b2c7e819ad..147ebf9b1ac6 100644
> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> @@ -4625,19 +4625,19 @@ opp-366000000 {
>  
>  				opp-444000000 {
>  					opp-hz = /bits/ 64 <444000000>;
> -					required-opps = <&rpmhpd_opp_nom>,
> +					required-opps = <&rpmhpd_opp_svs_l1>,
>  							<&rpmhpd_opp_nom>;
>  				};
>  
>  				opp-533000000 {
>  					opp-hz = /bits/ 64 <533000000>;
> -					required-opps = <&rpmhpd_opp_turbo>,
> +					required-opps = <&rpmhpd_opp_nom>,
>  							<&rpmhpd_opp_turbo>;
>  				};
>  
>  				opp-560000000 {
>  					opp-hz = /bits/ 64 <560000000>;
> -					required-opps = <&rpmhpd_opp_turbo_l1>,
> +					required-opps = <&rpmhpd_opp_nom>,
>  							<&rpmhpd_opp_turbo_l1>;
>  				};
>  			};
> 

Reviewed-by: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>

Thanks,
Dikshita

