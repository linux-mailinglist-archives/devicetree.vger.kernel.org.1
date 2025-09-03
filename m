Return-Path: <devicetree+bounces-212318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D575B425DE
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 17:49:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 652A8548642
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 15:49:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEB7F289E07;
	Wed,  3 Sep 2025 15:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PDzCgIi3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2588528A3F8
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 15:49:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756914543; cv=none; b=SkUl14aE/lB0+r6kRVgmuCr1buUFGpuEdN8SLLkVFKAHjyddXbCHIkEI5yJfgSsvjpaGiCW9TDkgl+KrixTIpd/4cOd0YhUQu3Ewu0HirsW3MSg/T2qNDts+PLpuWmeU1iftNWZ+SaqhOnSIcIXhiK4LlzyfIHlHPMQX75pLm4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756914543; c=relaxed/simple;
	bh=2ULE5Uv18O/K63JtWkZrrT0etatA9GQnGwfHqCmI78M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IzOaywJpQtXXrCO00y3mAAW1q9WO80DzXYSVOkQTBYAP1y+MfBw6kKlt+yxARWboLFbAuqC6WfLptum4IiJMnk81YzPCeCn2/2rKN9LGjYgalIj05D1d73Bh8DeckiKxUTBSv3bYI+KphSbWFAg/ajMXPSuFP/mXuZTdttAYLoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PDzCgIi3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583Dx3ir019913
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 15:49:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3Ggl7DnvcqKYKRzEbo61Lin5r472AwZUwG2xdc4arsw=; b=PDzCgIi3Qd/Vy9Az
	A8maAscO7Q86iAzljoe0zUekiLoqjN7lglPGAna3zEQVRqpTy/KgeDUTZ1vCwYkd
	GC0tyEIfjTikDJq0v8nalCcEZf6fEEAv0doheJVHKL35Tqmto9Oc9onIcLTeE2qp
	ZGQOEImLc8Ud1dvlDVJ6aAiBpYsRkwBbDW2T9K8EfAnpZy8xqetkw/6nWJUNyStE
	DnIeJiZDA6CLxzmn4UAlzLVPmnK4uOXmsEoLL3Y+5un8d/Vlxe9VJhpmxojudApr
	1a+QiNwEqiM0HIQ7m5giF1oLaWhYnxuirjplFr1lnEmk+aL2KY/U7cFNTY8Prdo9
	O3RXTg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utk94310-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 15:49:01 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b2967fd196so80311cf.3
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 08:49:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756914540; x=1757519340;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3Ggl7DnvcqKYKRzEbo61Lin5r472AwZUwG2xdc4arsw=;
        b=diuMl/0bUG/TsOknyVq4XyWy6tx5wXayg88SwAMULsvviG2s4qATR6vlFdjrIltzby
         QaR1ZtAnR8bkg5ymM8Th+1N7DClCof890SobGC7T49RpGZaw9qAJ9cbZ53PSHjCtjWeo
         tgfo0QFTTmK2ZJoM2AcN2Z1Elf9H0xeAlqrneP3vsM4gXuVXlDoh87pi1twrTyux4ANp
         ne3eCUR4Z7AKy7fWAb+h40IFV94w1SRp62mDJHkl/HJ/CzhGA7j67ARSmnlZCHEdv/4Z
         P1xnYKPK8Ell6SMHwmENTiTaHBJVvDPsCCQ5DvH5SxCooiEbGO20KRKgaQEXsvOoBD1f
         AVsw==
X-Forwarded-Encrypted: i=1; AJvYcCWPHkWYkvorwUWIgnG676e+FfqGIKXsQ+ZHlGRpEXyhQG3Nj3nPiyVFijD3CJFAOXFL0Co07u0P66Fi@vger.kernel.org
X-Gm-Message-State: AOJu0YyqFYWTBOxnCkHdrNIikUasft/DJsuQCAgQuhI0lCpU5XLW0AX6
	i2yFtGJMcxSnq4BWedVna1v2oN59euDYG5Qmio1etZqA3Mdwf7AjGjhDcB3irrz8FQrpSLDWWBv
	3a0/mcdEomEXOkf/lOX2a2+ypJpLWUgqvAq3DfSuTc4PUP+99iudypSkkaMCMatx8
X-Gm-Gg: ASbGncuH3VFNFAFxlCk8AaS68d1y/GIejBmWnHG+rXdwdQsOb+DpsTMY3NTdtzNQtBG
	ejFr7/lDCGZy27TEXV5YcTQ7jMk5GvYL8TCVOrC9YOQrY6qqkmb6ZHALIk/XlnzQdM7QAJOVJsG
	nMMwQ5CgVKovfn94J01ZMeQyR0UTr9zcO4PQGyXU6MHYXnhJt7Pq0EIj/oAUEBXBFbhSw6KdQaZ
	xCjnR/DKUw/13Ata85vKVmK0qXUiGxzsU7F0YQKfevfc3VRA5N4+YW4GcRbiknwRwvq/wt8LZtq
	6UhmDt/sW7MuGMAXTDy5obF0W6bhEWKjvdQBgCHxNeevaLCXvf9pO2yH1I2TGpd6Pz8kwv0gazX
	DnFp6SMab8tKpaQu2sHh9yg==
X-Received: by 2002:a05:622a:f:b0:4b3:d28:c94 with SMTP id d75a77b69052e-4b313f91b70mr146098371cf.12.1756914540047;
        Wed, 03 Sep 2025 08:49:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8vnUHPJqOH0REja14CHlT+z31FOaCWS7wMTdIEIxmuSsVShd2Q0XwbPMpBWacrkr5+rw7kQ==
X-Received: by 2002:a05:622a:f:b0:4b3:d28:c94 with SMTP id d75a77b69052e-4b313f91b70mr146098141cf.12.1756914539620;
        Wed, 03 Sep 2025 08:48:59 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61cfc4bbbd1sm12231373a12.34.2025.09.03.08.48.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 08:48:59 -0700 (PDT)
Message-ID: <bbf6ffac-67ee-4f9d-8c59-3d9a4a85a7cc@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 17:48:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 03/13] arm64: dts: qcom: lemans-evk: Add TCA9534 I/O
 expander
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
References: <20250903-lemans-evk-bu-v2-0-bfa381bf8ba2@oss.qualcomm.com>
 <20250903-lemans-evk-bu-v2-3-bfa381bf8ba2@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250903-lemans-evk-bu-v2-3-bfa381bf8ba2@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: CzIM3bqUfjS0hIWnDZNqornS0LrfTFli
X-Proofpoint-ORIG-GUID: CzIM3bqUfjS0hIWnDZNqornS0LrfTFli
X-Authority-Analysis: v=2.4 cv=ccnSrmDM c=1 sm=1 tr=0 ts=68b8636d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=nLpcdTFfG50SK1Npur4A:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MiBTYWx0ZWRfX4BSqjxG28s6m
 BAC4DM2gVBDTY6zVgtXPUvjPufeUAzZ7lVvKou158aqmhWm+jWboomk74dUp9smxm2wseBq3PuY
 rDD6dYmKaVPHEp9LD7eWoOtqk4Dk3yibg8iUHBInLLiwVcDIj6mN9UHg5+9cHKOiGvnS6Z0p0OB
 X4o3hRze+Y5PhmU3EXGE/cqt1PSeutMiFf5cuajVU0NiPH9K0Lb0PO/RsGKIGY58RBhwoQfw7PG
 3EM3OnEZTFSWUX9fvY4r7RalEN8iCwzj7D3wZP/KccoC/af5xwKV/axtUT5HQfxEPuacijgyAga
 d4En7biTgx1TGqqdvVzg5V8zbRgsQ+1ip/1WTvMTdA2RXcROCmbjF25vrMwvxMjadkSPn0GLDcC
 EsEQa2TF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_08,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300042

On 9/3/25 1:47 PM, Wasim Nazir wrote:
> From: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
> 
> Integrate the TCA9534 I/O expander via I2C to provide 8 additional
> GPIO lines for extended I/O functionality.
> 
> Signed-off-by: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 32 ++++++++++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> index 9e415012140b..753c5afc3342 100644
> --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> @@ -277,6 +277,38 @@ vreg_l8e: ldo8 {
>  	};
>  };
>  
> +&i2c18 {
> +	status = "okay";
> +
> +	expander0: gpio@38 {
> +		compatible = "ti,tca9538";
> +		#gpio-cells = <2>;
> +		gpio-controller;
> +		reg = <0x38>;

'reg' usually comes right after compatible

Konrad

