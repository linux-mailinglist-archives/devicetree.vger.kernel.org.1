Return-Path: <devicetree+bounces-135342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 77AD4A00945
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 13:32:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8ACE9188449E
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 12:32:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B51C1F9AAD;
	Fri,  3 Jan 2025 12:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CzC7AKHX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC99B1CCB4B
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 12:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735907520; cv=none; b=ouOsFp1EDF8/uBtLzSUaMaSfho1vke/3pBmpJf9luIak6b5DSc2Dgc40KP+LlqkqBwpT9lLP83LmT2FjTk29VZnsTnkgSlPSrRdc9NSXy/iQvAGPzgEakvncEkKZVuB0IVFszaXGFRe6/0toV6rNVKVM/HW7rUNGc46KjDWE0nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735907520; c=relaxed/simple;
	bh=2yj4zIXjqfOzUt/M5nAKi9Zr2TybsLG1KX7maAHaz/g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z6wmT1b8XXTSGRVXi9RDAhO+ptFXOAddDhz01vAyzqR4AQkwUPEz5XDFy6eOwNcZOGvZROohHF/XCk0otvM34zFaQzxi1PyRbAbHboNcJb8gzi6B2zkdbl0vwxMOHwsJnF9RODqJyONXJue0in1wEVfLycSYkDEM7O9eBy4Q3Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CzC7AKHX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 503C03vL004224
	for <devicetree@vger.kernel.org>; Fri, 3 Jan 2025 12:31:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MbCFGeASBbp+aJ8DCigGIuaacIDBYuewRX647FPnEuc=; b=CzC7AKHXnEq0S5ib
	sNhkbEcYLLdtZAJqkYFA4JoS3k48Q6X5Vi0oQoeJvQwq9ohc7oFnmUPnO5L1lxQA
	JNyh8zc2Ppex6ngwisCh9dwGOymnv2HZliTNTdMhm4mmdf4Q/WTKXxONnA+sGTGZ
	8BlsHkuo/u13k1hxkLJMMRjFbKaxXeBd5ykLXDggdInbRXw5sGCmFH1KKdhVExgB
	aDRyXzGwKjLdfxBnFNyNSzktlVjY0ItwRer+lnoa4waO1lXshT/E92PglFLh6hdH
	7awRqUuIjgFuKg7k9fPTtVY8lAy3/abYMHhmUREQpramWycJiOtYkTYG9ThWANsf
	44tJFA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43xfgrr1ss-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 12:31:57 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b704c982eeso107646685a.1
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 04:31:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735907516; x=1736512316;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MbCFGeASBbp+aJ8DCigGIuaacIDBYuewRX647FPnEuc=;
        b=avuYoYPpC9MOhJHjCGoezC9yCTMe4NICdecnxI/y0O3vwgNw90gJQUThscrez0RODk
         P1eAY7ZdfJa+DZxB1MCkT9zp5eiXXc08JU4HpixuGMKC1h9lfLVQdozizcKseE1TgT1Q
         QWqJdl7iq6PwPZk4hNlywQ8oBFEd5Rehgmfgok53TA4E/CQlql+BRIzNaNd64mXZG5mc
         RJ7RjCN486KaUEigrBMQCM+DrfAmHuIj8m9wJa+yUJ5WzSTSqcRCeQ/SRTTHRW6/BF9S
         eObXK6+TDit5nxkjlJlJTvuaGbaAfG3GZzLwwUsNiyBk1+y5IVMk6DUviy0vSYejjlCK
         4kZA==
X-Forwarded-Encrypted: i=1; AJvYcCWAsfSv0qWTGSfJrFncuw90ySwa4vZwWPYWLEfenLcp9trazAdVDuvq3z7u7nnvikdLsFLadyf0YEjt@vger.kernel.org
X-Gm-Message-State: AOJu0YzcqIPB8+d87Bz0lES0Hx2JIcMmlPnbXhuRt73mcyaQ4COG7EBo
	fnx5oiMgdoDgyJhzBLDbafddQNVV1GoPSulH5S2qtDuLudbOS24CG2w6elVEzjj0Ag6i5zSNgwX
	0E2pCC8B7Ri8vRGmiqeN7Pshnnw1sE0ja4B26A1BSZDXMnP4eS3yCqtzuwnuk5bg9/WeB
X-Gm-Gg: ASbGncuwojRuqxzzcVL/rO6hD6sSNrsbCSXSZCUdrx9vHWpZou3lA1ZLhIk+7Gw7raF
	SHuYx9gyMaYd5RPGmnGUofFrgkpwFo1wsVlP9E4W3VkxmHyIhqLvdAX+rzocvEiaqscV5GGr8w+
	wZwnn7UmiRyzDr/zixqRyIimSMg5HkgFy9s1L8uZZBhPrSxVy6+ZIDSI5fnYCeTrXiLn3o/HTB4
	0LEoORh3Z0qBvxLhkDMZmbIeXooRU9M1vMR682yhaWJAYoaBH45GKPMUiJ6xhfmvl6fhCd+P8xq
	bplzUEoJD/UKEbCvN5TlVHG2bJE22nqQqnY=
X-Received: by 2002:a05:620a:8003:b0:7b6:e196:2219 with SMTP id af79cd13be357-7b9ba712ac7mr2883151285a.2.1735907516242;
        Fri, 03 Jan 2025 04:31:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHJbkwMlFjrpul7f7rm7EIo2HKdAdjqxPQgCG5zocaULMWfd6CcUWsoarcjbH3mzF+GWbpG/w==
X-Received: by 2002:a05:620a:8003:b0:7b6:e196:2219 with SMTP id af79cd13be357-7b9ba712ac7mr2883149985a.2.1735907515836;
        Fri, 03 Jan 2025 04:31:55 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aae8b802f64sm1692170766b.108.2025.01.03.04.31.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jan 2025 04:31:55 -0800 (PST)
Message-ID: <9470fb05-0fc2-4bdb-9192-ae18997aff70@oss.qualcomm.com>
Date: Fri, 3 Jan 2025 13:31:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: ipq5424: configure spi0 node for
 rdp466
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: quic_varada@quicinc.com, quic_srichara@quicinc.com
References: <20250103063708.3256467-1-quic_mmanikan@quicinc.com>
 <20250103063708.3256467-3-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250103063708.3256467-3-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: dVt0zv6UuoeyI2gImAlyypt251g-IM27
X-Proofpoint-ORIG-GUID: dVt0zv6UuoeyI2gImAlyypt251g-IM27
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 mlxscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 adultscore=0 clxscore=1015 bulkscore=0 spamscore=0
 mlxlogscore=971 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2501030111

On 3.01.2025 7:37 AM, Manikanta Mylavarapu wrote:
> Enable the SPI0 node and configure the associated gpio pins.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---
> Changes in V4:
> 	- Revert the 'renaming of spi0 to spi4' and follow the existing
> 	  naming convention such as spi0 and spi1.
> 	- Update commit message.
> 
>  arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts | 43 +++++++++++++++++++++
>  1 file changed, 43 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> index d4d31026a026..60cfa8708eb4 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> @@ -23,6 +23,36 @@ &sleep_clk {
>  };
>  
>  &tlmm {
> +	spi0_default_state: spi0-default-state {
> +		clk-pins {
> +			pins = "gpio6";
> +			function = "spi0_clk";
> +			drive-strength = <8>;
> +			bias-pull-down;
> +		};
> +
> +		cs-pins {
> +			pins = "gpio7";
> +			function = "spi0_cs";
> +			drive-strength = <8>;
> +			bias-pull-up;
> +		};
> +
> +		miso-pins {
> +			pins = "gpio8";
> +			function = "spi0_miso";
> +			drive-strength = <8>;
> +			bias-pull-down;
> +		};
> +
> +		mosi-pins {
> +			pins = "gpio9";
> +			function = "spi0_mosi";
> +			drive-strength = <8>;
> +			bias-pull-down;
> +		};
> +	};
> +
>  	sdc_default_state: sdc-default-state {
>  		clk-pins {
>  			pins = "gpio5";
> @@ -57,3 +87,16 @@ &xo_board {
>  	clock-frequency = <24000000>;
>  };
>  
> +&spi0 {

's' < 't', please re-sort this alphabetically

Konrad

