Return-Path: <devicetree+bounces-222956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DD4BAFC77
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 11:06:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 179381882697
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 09:06:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 880DD2DE702;
	Wed,  1 Oct 2025 09:04:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fsGcKY/n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0691B2DD5EF
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 09:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759309481; cv=none; b=V21hTV0gpJJC9N19hKlkkGVMvo99nY1aKCiAT/UEXjXOa5xn8wSoAwVwRDVy/5vK9ZCgA+V4YBiukhIm5AChcjrnZZ0D6PIysv+bdjFTKUSxl0anO4yep++K02Fn14oO1rfuI2JfpeXF+4fXvHsVQnHnP2bDoNoO69AadrMXeDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759309481; c=relaxed/simple;
	bh=4S0VnWznaWtdgnfy+s9AoFLLT+aZCxWxxJMZ5f4FHhA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XRE7rYqvQllQQlj4ykBxYUMRy9E9RDrWk1wdFc/G3+PuAaLubFRk8Yl6xtsFqj9eyBeHwck0nCUYGmJBHEFOa45YkILopQt5xSxJlqxlp6uy7MIqg4wJvgokkBO7g1Qjyc5T5ViwFpapu5LZ2z/UCLCbqKrFa9r80e1kZXEV+sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fsGcKY/n; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UM74ic030548
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 09:04:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CfNVsHbqOEK6Djc44jlTWFITLsi2qwa8KQYpesfCqo4=; b=fsGcKY/n9ChfDxYE
	sW1NGuwvVgOdEZFxAmIuOIZKXUTjsG3Z2u7lQ/U1fPiotbaUtfEtJl9UmvDCWW+A
	tIk2pcXpnZSgjNTvZP6xl2ozx0H97IVeOug6GXxQCppNhK/StYAxLAj+hQpgiMy+
	44dnQ9koBf+QL4xHVJGKLEadmqQlg8PsZwH6LiUPEjk+nrrze/lusU5rKh98dB+E
	YYD6deXp6JNygXQiucgUfNL2Om9gvADO+yr1P9lV0O10GFz/JDKFJLxKm5XHQDwJ
	0GDxhf+0i9k4MJUWgQCI+xIhuqxdcGIdyCPRawXtMrx04pVUOfrJRWiFyCSMCR4D
	BMY9xg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8pdkq16-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 09:04:39 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-860fe46b4easo188044985a.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 02:04:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759309478; x=1759914278;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CfNVsHbqOEK6Djc44jlTWFITLsi2qwa8KQYpesfCqo4=;
        b=Xg+FdAd+qtBdI8eJgxPHa5JWO7sBZ1Qsr/NHLVTJYw8NiUUcnxdKxuoEOZokuOTUY+
         twC5MsOte5E3T1Md7Z8KS7AxVWwgd/cJ8hKVFjHl43KbijXBDFuUCp77+utLfT275i3t
         3yr+HsluKS788XhB+R5E2UC2Rd0ZQijmkd/cVOSte0aCwtaQQDVw/h01xL+gv7BxXCEP
         BIE5nTKZaEqu4mdPYd4Y18fOlYM9RUW18hjjr4GAn2vTt9dZAFeVcXqW3gleO2JXdazb
         CL3ip9sYHnnwy2i+OlP6n3tc0RvbU/1Admc7vQFfFB5RYI2Q3GSjtjpuO/ztvhHhm7kB
         bO6Q==
X-Forwarded-Encrypted: i=1; AJvYcCXTzCGyGNYGUGJktH8HVCfsoBJPlUlNpCf81XQqQ+z7rNGEAE2+eHddQEcP1Jfy2DZA2+5b8R9CDxl5@vger.kernel.org
X-Gm-Message-State: AOJu0YyROm4aSfVhnvAykDoY989i0WEHPdUHicA2kofevtfAn2giZLdh
	DUpnLw0YfPM6A0PsBFQAgTzOv0Nuy1DHQOiRkA+GxWo3/qfEluKg2mzx5+rgVSxcdcBuongaxTY
	dxQuq7XdcsTcCrt+hBio7jysiWs9FGum1hmIM4LeSls1wdfQBvcTjMaiiedxmLRUC
X-Gm-Gg: ASbGnctJzXehByhZkv5sfVVXwwUv9ojvPx1ySl223sCxXaUaPYHdYQw3tm8Xrj7Zdby
	hQSVn1mNIin9uUwJehxFdEm58Avss1pxJL6TZ/FHHqB7fVR9akxh3l27MWd/P/GvO0ZGwfIYzPZ
	qJm+XTCW9uZBWpz+CHY5pg/K6CECuprhPCxEltk7WgAxNmXcmJ41/DHBMsZ1vbHSyQTW4C4323x
	i0PSypJ9dV5muyPlxMXMMytuH2WDhZ30WeUqJObbuhLbMweRgQuczDRJIxux5f+6H5Hc4w2p+eA
	hRM5TNcUeNZSACXm1N2HO9lR3NLV7yberk1XYVdvMapWq2Y2kaGYfU9Fv1W1vniNqHBhG5FFnLs
	ww8bTdIrnl51lkngEWl4T4az6p6w=
X-Received: by 2002:a05:620a:1a9e:b0:864:1d18:499b with SMTP id af79cd13be357-8737116c812mr242353285a.5.1759309477672;
        Wed, 01 Oct 2025 02:04:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGvUheZabbjOtgcpxEsJAvrgUPd6M+/fvvGGBhC3LzERbkqgTcCF2xkTYlVk3r+qDVu6l8ZEw==
X-Received: by 2002:a05:620a:1a9e:b0:864:1d18:499b with SMTP id af79cd13be357-8737116c812mr242350785a.5.1759309477158;
        Wed, 01 Oct 2025 02:04:37 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3dc2cf61dbsm666298366b.29.2025.10.01.02.04.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 02:04:36 -0700 (PDT)
Message-ID: <42463474-7fba-4df3-9dbb-24140581690f@oss.qualcomm.com>
Date: Wed, 1 Oct 2025 11:04:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 09/11] arm64: dts: qcom: sdm845-lg-common: Add camera
 flash
To: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
References: <20250928-judyln-dts-v3-0-b14cf9e9a928@postmarketos.org>
 <20250928-judyln-dts-v3-9-b14cf9e9a928@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250928-judyln-dts-v3-9-b14cf9e9a928@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 0lAb1wmH80JtKujBnxPuxwMBMOA0spYf
X-Authority-Analysis: v=2.4 cv=MYZhep/f c=1 sm=1 tr=0 ts=68dceea7 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=Gbw9aFdXAAAA:8 a=INp5xvtxXxILuIktMPQA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-ORIG-GUID: 0lAb1wmH80JtKujBnxPuxwMBMOA0spYf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzNiBTYWx0ZWRfX3PCZYpfcwkyb
 qxfKRdO5yMqYJotpdmfPShe2DlwYHPl6GgEyJix18pkNO+9syF75aD+itGXTio7L3YJOWxKwuyR
 4ZU4ZbHerizUbxqu7NtW49rLsaCCoMT56Bi/TuJTTJEJVOWTaGhE3uFeb/VGhGextp1Y6QGjsYN
 HMNL+eBV1w2uH5dn48SWmMYRF2frdnzAqAEsws2RfDXxqhRe+XmQnY4T0TjQzlnIzPpbGPTC6qv
 Xqh4T8mgmvvI/KqRN1Y+AIj4L7taXzrUVSKk/Mf8uHaO2ahTyPE6br+UtFz4WFZRlJRKSuo0G4R
 oDhra/KDNFsAzR0mgTl4H29UoKqfI9prCb/vgoeRPo+aH5+8ML2MR8Brrawn3GavX0u5uhlvUrv
 HvVj8jKiUn4d0BUdOKL1nFumEQlZqg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_02,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270036

On 9/29/25 7:05 AM, Paul Sajna wrote:
> So it can be used as a flashlight
> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> index a8c8706f2057d36d5ef4130f11d9ad417f93d575..f309e6ebc075a691c7a522238b4a93ba9e63f3c0 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> @@ -509,6 +509,19 @@ &pm8998_resin {
>  	status = "okay";
>  };
>  
> +&pmi8998_flash {
> +	status = "okay";
> +
> +	led-0 {
> +		function = LED_FUNCTION_FLASH;
> +		color = <LED_COLOR_ID_WHITE>;
> +		led-sources = <1>;
> +		led-max-microamp = <850000>;
> +		flash-max-microamp = <850000>;

Allowing the same current for flash (brief on/off for night photos)
and LED (flashlight which you normally toggle through quick settings)
sounds no less than suspicious

Konrad

> +		flash-max-timeout-us = <500000>;
> +	};
> +};
> +
>  &pmi8998_lpg {
>  	status = "okay";
>  
> 

