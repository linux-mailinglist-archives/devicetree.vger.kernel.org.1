Return-Path: <devicetree+bounces-115837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8D29B0D0F
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 20:21:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DDB961C21267
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 18:21:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF18C18C90E;
	Fri, 25 Oct 2024 18:21:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C8nCrUmU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141C67E792
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 18:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729880511; cv=none; b=iLgoomrrn241owFvGcQDplupqHQqmpOGyLLAZfsciSdO3YiohzMChU20eEFT33Z0Btu5dgDfZ6LNns7AVJ7eFZxQjfGQ9uRjf5NVBcZv19Dm5FP6E/gsUlgz3m6ZaLJN0kCsPUD6DCuLBbI+9IqcpCVxRygIpgekwVujJ8eD+Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729880511; c=relaxed/simple;
	bh=WzxkF5Pf2GgXdOv2NsMN74o4H+ZLyM0sRqeVFm/4TDw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VcZTOKTdsb4NbAMvaWr715yXUpfL2hC7hkJN5OREPKeKNyYpC6AND97pooAnNGM+gdL6X9BvaAarYkh9Cxg9CpPodTOxKlMjvlBXMH8nWwPhVzPCOuyojimEf1C5m8C7xeBFxfWnf86COLn5TI6eufu9z4i+bXMzNb/kJLv+sSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C8nCrUmU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49PAo4Fh006706
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 18:21:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Vma5hQAGnlL8WuEcR2i/409KbAY9l34Zk+QQ2K058yA=; b=C8nCrUmUimX/Rca8
	8KmzI9b1BIgEQMolLm+CTYKLZ1MQwBdaOGDiB+6CCFGXQfjVurmTQZxhH0autkTe
	dxc/+uF4eN1EcYxL5eEcQ38lgke1Zt9fJggfna7+ktGM3N+OVIEa9ZZKGuTGsqMv
	XB0ZD8xD8gFNz5IhhnvCaWAhYKSfjZMzunMADfpAXVMiXlQDPPsvEuyW7yX7/Cts
	ZI20glEHB0Xwio4eCN3qOZNQpM43oy7bVBWx5t89kWk9xx2GVP/fZwIqu4mWQwJ/
	Wn8AYBXrJHgXpSJ6fuDUs7G2z2EuIA6MWg2wmcxXLgEBosWI2yqi2u32LrDLKKTG
	jaahUA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42g9x6hd4f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 18:21:48 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6cbf2a4afcfso3832076d6.2
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 11:21:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729880508; x=1730485308;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vma5hQAGnlL8WuEcR2i/409KbAY9l34Zk+QQ2K058yA=;
        b=PMJfCWTQDAbEFhB/BFQQ3AzJRVqON+qyRypDKbtm9DHKj8cGrzADuIsdYpsCEiqcku
         6SauQpTJip4Oox16wyH2GoLtPLieTF/yPwPpC7lfOyyrNElTQVCmC9cC9ZOS56xDLz40
         h1dys4Jh7oVglwc7JTqkaIr34fs/gyxZ1XbN1C70qWuKoGOpeBUfzAG6xLQ1lj2VYTxk
         O1h9vDe95SMCS7xthSfOZKJ70EVLoH1slbs0z1MKArRiKlut7uDAXCsRXTIe1Q8oi51v
         rlOAm/sdexBeTksmarSC8ZBMWAMJjqLOIpfZ+1WWpuPB40b+vNwd1beAOWOfTbUUNea0
         wf8g==
X-Forwarded-Encrypted: i=1; AJvYcCWMohBXB1vCVluLZIjHGs1TYu+ixdBpuhWI0oPA/0hyDobCdd4UKK8xDrBR32mKMXqianQSlsjP8Ky0@vger.kernel.org
X-Gm-Message-State: AOJu0Yza+J3yXOVzBmhKRsvt8f+NBvcz+c6btzT+4jwja+BreMvFW1gj
	I1s0zmg69XFFcB0OpMAnAphu/oUYQz5s+1grHeOlM/PYE/PTb8jOXu1y7Vdb23tEzyeybVDlT1Y
	OvhFM9lFfbm4XmTor8FntmMGmfJIWfF7zNGQea1x1yhF5qxnKqpVeDdPiDdyX
X-Received: by 2002:a05:6214:21e3:b0:6cb:f5d6:3f9d with SMTP id 6a1803df08f44-6d18584a56cmr2412016d6.8.1729880508087;
        Fri, 25 Oct 2024 11:21:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHOieIrabKwACHOCPSD2dHV1t3BbZrjgf26iovU0+nwuQEpZiSR3ox0ODrmXmVGXSrDrY9V1Q==
X-Received: by 2002:a05:6214:21e3:b0:6cb:f5d6:3f9d with SMTP id 6a1803df08f44-6d18584a56cmr2411886d6.8.1729880507776;
        Fri, 25 Oct 2024 11:21:47 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cbb6297a09sm857671a12.21.2024.10.25.11.21.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 11:21:47 -0700 (PDT)
Message-ID: <d3431f6c-4fcf-4a8f-a33c-ac7e2994c6d9@oss.qualcomm.com>
Date: Fri, 25 Oct 2024 20:21:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e78100-t14s: add sound support
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>
References: <20241025153901.156891-1-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241025153901.156891-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: KxRztVxUoWQ-WwPfp80U4Chgg99ysmyV
X-Proofpoint-ORIG-GUID: KxRztVxUoWQ-WwPfp80U4Chgg99ysmyV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 clxscore=1015 mlxscore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 impostorscore=0 priorityscore=1501 mlxlogscore=928 suspectscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410250140

On 25.10.2024 5:39 PM, Krzysztof Kozlowski wrote:
> From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> 
> Add support for audio on Lenovo T14s laptop, coming with two speakers,
> audio jack and two digital microphones.
> 
> This is very early work, not yet complete:
> 1. 2x speakers: work OK.
> 2. 2x digital microphones: work OK.
> 3. Headset (audio jack) recording: does not work.

Very weird, works for me on SL7 (also with 2 speakers). Does it work on
Windows?

[...]
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
> index d078c76c6da5..7bc3756803d2 100644
> --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
> @@ -19,6 +19,32 @@ / {
>  	compatible = "lenovo,thinkpad-t14s", "qcom,x1e78100", "qcom,x1e80100";
>  	chassis-type = "laptop";
>  
> +	wcd938x: audio-codec {
> +		compatible = "qcom,wcd9385-codec";
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wcd_default>;

flip

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

