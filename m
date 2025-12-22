Return-Path: <devicetree+bounces-248738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8AACD560D
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:46:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B792F30019C0
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 09:46:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3A1D314B7F;
	Mon, 22 Dec 2025 09:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MqdMhbHw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XYi6+M5M"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6884D3148D9
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766396696; cv=none; b=lPaShsnYVpVicT1us+EU6isiohuQ1j7lDbVal+DxsXg7f931QEIy0GGAxMms95v5lbYF6GfmftE0ysy7zyQFsbAl9AeU6D1v0YrAaWwbwEs0DA2btEeQMQu7i9D/P6RmvMXH3EcaDF2MzWCJlgA+bn23y3QLYIlH31Jkcp6pt4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766396696; c=relaxed/simple;
	bh=gDeZuqsY/mX4JbrVYw75BFZuw+PuUzU/ico42hhVLSw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Bc3XaOY5xI36MeeLpzN71wgMVA/ZP/7wSZHV9yhOYkDO2UpQuXNJLVExC5ijf2/TM7Wjo82JLa/QjaYXgQ35LvKunAy+l1aGUjlGAkN4CPbZOY3uadmrSOA5JtmvhEdp0JThcZt5sTJZ6/F6CEIm6+zyVs13kiE9114p7oA/wp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MqdMhbHw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XYi6+M5M; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM6ZxYb4117913
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:44:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	B+AccpGqqHKllmisBF66RiETa2U03BGY3xkaEIHS4m4=; b=MqdMhbHwNJ9aXyzx
	UbdszCFY4nclcAoKxJYjiZ/lPp5u21/7AkhlaxK5Uk5Tc7g9MdQLJ35agie5CgAm
	t5HJAFoyjZ3QeW7TjvweZ3L/poeIu0q8CROuRcEJ1GSJryxOYoZOaN4Hi6g7sgZi
	b1U4XPkooX2fM6BWk5aeiZhsZuVeIUnWOZdViSQBvtoXU8hRaN20xAQTQLto/u4N
	3A0N8CGU/twObug4ijdeWOj/oEgB44DMBG+fDntc9oPOpVrv3OJinA/dCfPkoJVk
	LypJLoQNSjDjZpMoVdCUk3os6otcZkygbA3bF5CA/XjzeX1oG2EIASFXN1tg/rfF
	ZW5X5w==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b70v28jde-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:44:53 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8887c61412bso13481916d6.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 01:44:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766396693; x=1767001493; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B+AccpGqqHKllmisBF66RiETa2U03BGY3xkaEIHS4m4=;
        b=XYi6+M5MXf/ouZ8xFgjY+KhiyjDULI8qmd77zdM37jOojBm5ydhcfIa3zRw3nehVfT
         Jhv+oS6J9EyZxxzTpccN7b5wJyx8Y2stIoP9frKH+CB/tyCLp9k+uYYUBheVZDm8IZlK
         uCl1TeoDDNx4QCH0LqWPSwaoNCZJ+rsFGvvOh1Dyye7ImOf6ivFvsgiH1oAuQ/KnyIW1
         tqwwxwq6w2Uc4IF7JZTp2Z6kYbO+Vix0i2bFjdQ1XlOIMMoge5ho1PXQEz404AOUPKm7
         LptVx/1oeYhB3ANy5O6Ofb57fcz7fnKzKxcAsv28ILwuuLMJz1pgxMBcKRmytj/EK4PY
         YYfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766396693; x=1767001493;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B+AccpGqqHKllmisBF66RiETa2U03BGY3xkaEIHS4m4=;
        b=fY9ZJtGuwwQbm1XU6z4I6Vs9IES3tE7Ij0mCkKLU9l0buuuaya44hLAoJqvM88V107
         pmu0/Dr2CEysFA37xObXAlvzdkcnBD2YeLcWkm2Q/Pv24qgR3Sh9Ox9Dw5DbAY5CE2sW
         xd8LU0FKsZcS3gf8YKHT8Rg8qt3yfCR1fgCYMM/hKixagOvHMccQKE0hhNahKwypMxnZ
         hE+Zn3g38gjF+f2T2nmUT3oUS6a+YdN88+e1QGL+mcw2WBAoN1Tlpo4naMOuVhKm8RzQ
         Nly8eSl1m0erv0TkEH2cUT/sJGFI9vurcNd0pE8scVpXYEy2zY4yYbkdSw3yJFX4jK+Y
         9h6g==
X-Forwarded-Encrypted: i=1; AJvYcCUhSzxgAWyJEgBOKgCNF9NfhCxLPGkOFB36LARFnml41kImDjdVd94JSwbndd3M04De3uGQ6Mv+qDdC@vger.kernel.org
X-Gm-Message-State: AOJu0YwK62tiDwE61I44ifHma9IB81XPX+WgQmPJh2IDOWRP0UeHAmJB
	7f7/t2SqDrT6cfasDAnUpaGXP3qxr3TyE1vCWM2UdPerEqoH6N7uyqPr6ILof80h6hkapHNoFOo
	PJrcbFbqUphrYFAirSZPtmNT5t8bdZrCEHWJheackNijVtkJRmBIsFyMR4kfmu6JJ
X-Gm-Gg: AY/fxX6+B9UWVx7wI0L2pNBpZvPkhUJps8VJ5ogOzh2ya+osetX85EIfREpTdzMUI6g
	DbsAqNnIEYXq0YQw4uwUvAld833dW/9GjfkjsQDp3eE7+awxXW8HUUfRbHEewsw0DsniyP1G/Nb
	KCwFPGs/Js+HYoawbBL1P1TFdiQPKVaFw3vJRQvrbzheY8DIlYG3kBXfUW4zhBJxC7IrQBNxxdU
	UHxwu91GOaSHW6R/Z8F+VtMEvlF7Lme/c/0sXFeUM5ZgW1u9yeu8iz4hfbeP/3/MXnaaGkWikZG
	O9dQf6kWH74PA0JFBJGtAEWqFi//b0bGYBFlQ9UHTmQbm/vCEHIphkBJzzDuW3AD+ezfQzWB1rC
	534sNyw0A+v1HoRpJJHo2CQAUggjlf+71FEzwfQiQm6y6vXVEx+GT1WSz8z+qcFBa0g==
X-Received: by 2002:a05:622a:11d4:b0:4f3:616c:dbed with SMTP id d75a77b69052e-4f4abbc85d9mr119886741cf.0.1766396692688;
        Mon, 22 Dec 2025 01:44:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGciiC9QJQfTbMMl50jGBWxbytT1LIvE/yMa+ImnNP8FDTauhEpA+iM44pnGXH17N1WmOVHMg==
X-Received: by 2002:a05:622a:11d4:b0:4f3:616c:dbed with SMTP id d75a77b69052e-4f4abbc85d9mr119886491cf.0.1766396691967;
        Mon, 22 Dec 2025 01:44:51 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f512e3sm1033516266b.67.2025.12.22.01.44.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 01:44:51 -0800 (PST)
Message-ID: <76fcf840-e0ce-4647-bff7-4d2f6ac09777@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 10:44:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: monaco: add QCrypto node
To: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251222-enable-qualcomm-crypto-engine-for-monaco-v1-1-06741d6ea66a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251222-enable-qualcomm-crypto-engine-for-monaco-v1-1-06741d6ea66a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: DN2n9acbD2yhLIeh1A5VKm5Pbzk6CNQM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA4NyBTYWx0ZWRfX3C4qPAniBltS
 QtXTQBtPNMRWIjVjzby2HAhv7e2dU+Qhwl7sZMB0BUyT485qer0jRrmeL59t1Exbm5c7yyOpdPG
 Qr2eRO1NnayPYfiwKash0ovJlIpbaykhRxYKM/YqniRVcs+oybtvgnZbkKzk/so/r35ZVC19cWq
 YEi+tthXtVpnX9V2GMUIv4Opm2jJYOIFWx1ITlRBM3v5R9NYQqxqW5RpOFNoAVZAapRw+c/Ciit
 zbLugWVeyVySQNvZUor6Kky5uvE+ZkPrt9IH2oUvCrl78dhSEK+FAeuUmbGwYxfkQE5gv9cysBv
 lXBTHsQaJMJvUfdBg01SkwYCmnt+CUCYbTZtoge1qDbVAh/1FgnsliT79fgIl4p4K+Dt467dZ8p
 8tWah/K/SUGSxoxHVcv//JnM21zvWPC3Ff7/BnV4cDS5Nb2B4gwenLK0iMZTnp4BgQl6JynHUbj
 C9zePWjMjLxe5ZA09Rw==
X-Authority-Analysis: v=2.4 cv=YOKSCBGx c=1 sm=1 tr=0 ts=69491315 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=_OpZ_5cEmvcoVn8VV1UA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: DN2n9acbD2yhLIeh1A5VKm5Pbzk6CNQM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 clxscore=1015 impostorscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512220087

On 12/22/25 8:30 AM, Abhinaba Rakshit wrote:
> Add Qualcomm Crypto Engine device node for Monaco platform.
> Bindings and Crypto DMA nodes for the same platform is already
> present in the tree.
> 
> QCE and Crypto DMA nodes patch was applied as part of the
> commit a86d84409947 ("arm64: dts: qcom: qcs8300: add QCrypto nodes"),
> however was reverted due to compatible string being miss-matched
> against schema.
> 
> Resubmitting the enablement of QCE device node for monaco platform
> with compatible-string being aligned with qcom-qce schema.
> 
> Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
> index 816fa2af8a9a663b8ad176f93d2f18284a08c3d1..dd0b9ea27fe1cdfbf6aba07e98183871be7ee889 100644
> --- a/arch/arm64/boot/dts/qcom/monaco.dtsi
> +++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
> @@ -2350,6 +2350,18 @@ ice: crypto@1d88000 {
>  			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
>  		};
>  
> +		crypto: crypto@1dfa000 {
> +			compatible = "qcom,qcs8300-qce", "qcom,sm8150-qce", "qcom,qce";
> +			reg = <0x0 0x01dfa000 0x0 0x6000>;
> +			dmas = <&cryptobam 4>, <&cryptobam 5>;
> +			dma-names = "rx", "tx";
> +			iommus = <&apps_smmu 0x480 0x00>,

"0x00" makes no sense - "0x0" is the concise way to write it and
"0x0000" would be pedantic with the width of the SMR mask field in mind.

Please switch to the former

Konrad

