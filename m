Return-Path: <devicetree+bounces-222939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8DCBAF9EE
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 10:29:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 89BBF194028F
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 08:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24BD128151E;
	Wed,  1 Oct 2025 08:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iKeOwXXw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEE911DFDAB
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 08:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759307368; cv=none; b=LHUZJIlcuo7XutNRrggRJY3Vb/KE/cg5jXUTLRU5cRP0HUKOkIlHSexTAS0bd/jKSkl3S2BK4RLDyuxTOmTWw1dBB2IsptkI1i0eMwcP73TdoAj9+8mp3fpiei9eOBCyveQ0wgfJDeDWthjjc0h26YBLh+zjCe7QSpMizy80VnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759307368; c=relaxed/simple;
	bh=GJyYeYBHgy3xU5bBVM/7TBQUpVqwyswe9ISkR//AIrQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RUb7dV40Ebzr99TRkcrLQVZkYDCDTTm8iJLGflS0MgvlbStDlJsWfdm4faOMV8q8fWClHNYhD0n8/F2G8rM24FCe81EyYQuW/TV+sJ3wAIWI9eUqsj323beofCr6oEPZBDN15mSPpBIEY6ZDhLEhQrjWMUCl8vr3q7UQUArM7M0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iKeOwXXw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UM74f4030548
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 08:29:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tlGyIBE+5l5QzImcJDdIrFcGN7HtYMPqbdjDmPS9GTo=; b=iKeOwXXwxHqn0lv2
	S89T90rOjaSXW1R50jxrbHh8M42QKQcO6KDkTqXh042ZYQuJOfcGQy490v8NUkL/
	vgu0NmGD0DhZptmRhx3HthjkVRzSCu288/T6npvjXOSOOo9I9z3cNx+tszJDXt+R
	2vl2/FqXZUop/VnyX3pX9NKnMWPk7bOoy6QbOygHMh1MPzeanAXuR67JqZbVh6vf
	CQG2iPwKZ22ecLXE+03NU8n/u+SvPvEJbCCkr+33wLpwfxjT52BtYMFKXecMxmVS
	t3FxKnj/J0Jo3xh5ijVCfpnhMewCZZUmzK322iXdcnsSwRtvPyRR1CJr4eotZdqa
	KP446Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8pdkm5a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 08:29:25 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-860fe46b4easo187154185a.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 01:29:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759307363; x=1759912163;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tlGyIBE+5l5QzImcJDdIrFcGN7HtYMPqbdjDmPS9GTo=;
        b=U+nFQIR4JoVSXrh1IGHd/IZ03fUdL4MmuQn20idmLYiKM+8oqnulh2Kdn8uFWRyVx/
         Wer1P6zW3m4ejcXyVEkVLxu+gnmfoUuzs+NQkz7veSpd2Lr40m/QPvdXXexZz220cKgr
         6UaBH0BOEBORVXXcVtI6tbAmpebI6tNIPMyIvi5z/15qLu0z00cT7+RmaccRrpH/HXyB
         dyY044I0UwOa/JuWLO9C3FTteqXeT0yEKt8ZNFfRSqQGefFL98oyZDz4qU7PVEszDw2p
         lw+lqNgWW0P5Q6WN6ujSWrszY89Jz6pRflm9+yonuGZNlJWYBq1Tc8/zuiIvh9DR5vyJ
         0IBA==
X-Forwarded-Encrypted: i=1; AJvYcCV9Y0AKyM7QYORbcUWgyTiWo/YmwNa6VqONzj/98p/ELbN7aHhGTC9afACKZNz+gPLLMqLvspnzidYd@vger.kernel.org
X-Gm-Message-State: AOJu0YxALhZl/uaVDuGBzNc65V49upH+Mr0x7SRh7CmAB+A0DPYGNgTE
	nhIVhzj2TeY3FCALZJR0dThwaIh+Gga5YdkyeHrm5d2hgF7PneAFr/YUKJjocD9tCngtX3Aysfq
	NYh9CZgJIZsswmrn4boSwPRiiXiKHig+sQQXVhKQxnS1scX8rCKouzyeNpKKkXF3uOE5I0xxQ
X-Gm-Gg: ASbGncvvUDpYsJ/sExzodUfJaXxuDiPRw/XN9AWql+8m1b97i+/mtkBj/d2MjOA4Jqr
	53vCb8dRr8tbMfX70YTELyiAHYyiBmlPFBPy4SKcVDdq7VgAwHpOPHD4yr4R0o0evkx0F8pXLOa
	xcsjyIyK6J2cQN9+2wQvTb3qCt7rKtmZKTB8zWTAA24zk+fFX1mZWIoPZ+ZieJEJ/YmabktTzB3
	ltJdy4WTzBUrydwZvgTUA2kCVdDY8ZIZxlGjMBHogyVOu4v+ZXARuMA+lryyqrHTOq30YXFy5J0
	PP+FHsjBREDB71S7B0yd8LkEe/tAIyhL1scirbTzckJlX4UNVGVrbUFX8vTOkSg1KAdijav43R6
	ATYkKR+VLNCtIzNG0hK5RxOvkwo4=
X-Received: by 2002:a05:620a:17aa:b0:856:40d2:b1a5 with SMTP id af79cd13be357-873765c02d2mr260637585a.13.1759307363504;
        Wed, 01 Oct 2025 01:29:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFIHr/OLBZEdgkn80ZN1dE9xO81kbu8cI04yKLGhC2XiEY6aWxZ/xP+utxgdYGLZbef2R3pXw==
X-Received: by 2002:a05:620a:17aa:b0:856:40d2:b1a5 with SMTP id af79cd13be357-873765c02d2mr260634885a.13.1759307362978;
        Wed, 01 Oct 2025 01:29:22 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353e5d7351sm1332312266b.7.2025.10.01.01.29.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 01:29:22 -0700 (PDT)
Message-ID: <fc5d2d9c-7200-416f-ad89-4c1907e313c9@oss.qualcomm.com>
Date: Wed, 1 Oct 2025 10:29:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] arm64: dts: qcom: qcm6490-shift-otter: Enable RGB LED
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Alexander Martinz <amartinz@shiftphones.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Luca Weiss <luca@lucaweiss.eu>
References: <20250930-otter-further-bringup-v1-0-7fe66f653900@fairphone.com>
 <20250930-otter-further-bringup-v1-5-7fe66f653900@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250930-otter-further-bringup-v1-5-7fe66f653900@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: U_yGgXOBW5us1oPx_Gc1CZhGSPbLt64J
X-Authority-Analysis: v=2.4 cv=MYZhep/f c=1 sm=1 tr=0 ts=68dce665 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=dlmhaOwlAAAA:8 a=6H0WHjuAAAAA:8
 a=EUspDBNiAAAA:8 a=RgqGmV79IvFMSyKAuVEA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=y4cfut4LVr_MrANMpYTh:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: U_yGgXOBW5us1oPx_Gc1CZhGSPbLt64J
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzNiBTYWx0ZWRfX8PtQo0eJ/vwa
 Z5LTPcqS6w19YdLrHm+vw7fte2A4xKrPZGc4U99SYlpVcb/KDzccEHhpesKfdJCMksR4I/aDhcX
 4bAxfSrASTTPLLVhiYGXim8GnRtXWFFm28wfkeQup90FASA5T+qr2+X5OecbTGIfxO3CmyaVGVx
 uJgo7kH4wKntnxEZcbVPQzIlr91/nCGvwnsYGYhA4cpKxWqIVXp/JNpi/wZV721r9qN1E2/9P3s
 JCbh030COIm8o89IRgFXcTd/Dje0gnyzPONSAhWiNBkDvtGVyPj9DzoWN8y4Z8XPr5jGK/RnqJN
 Hm4rN26aF3dYFyPNcD/4P7R1uiRMlOjculZOJNk93NTymxPtCTAacqXnEsBg0uCG12vwnnOc4fh
 E4OXEVnMWKs4T2LSU+9OeFYacthbdA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_02,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270036

On 9/30/25 4:32 PM, Luca Weiss wrote:
> From: Luca Weiss <luca@lucaweiss.eu>
> 
> Enable the RGB LED connected to the PM7350C (PM8350C).
> 
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 27 ++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
> index 36cc67469615974c193ea3a9db1b2362869d56bb..b4c69dc50ed0f0b3cb45341a01c89210bd261993 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
> @@ -632,6 +632,33 @@ led-0 {
>  	};
>  };
>  
> +&pm8350c_pwm {
> +	status = "okay";
> +
> +	multi-led {
> +		color = <LED_COLOR_ID_RGB>;
> +		function = LED_FUNCTION_STATUS;
> +
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		led@1 {
> +			reg = <1>;
> +			color = <LED_COLOR_ID_RED>;
> +		};
> +
> +		led@2 {
> +			reg = <2>;
> +			color = <LED_COLOR_ID_GREEN>;
> +		};
> +
> +		led@3 {
> +			reg = <3>;
> +			color = <LED_COLOR_ID_BLUE>;
> +		};

I assume you managed to confirm these mappings are correct.. sometimes
they are not what you'd expect

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

