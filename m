Return-Path: <devicetree+bounces-125739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6901B9DF150
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 15:52:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2EB8228151A
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 14:52:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FFA619C57C;
	Sat, 30 Nov 2024 14:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RJgJy92+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0AA2198E99
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732978318; cv=none; b=awvx4t9pwbzKlE+KWpBIGPsrfCKFKNe9KyyjgRLp73MWUM6qTz/W09VvrSwAbdhdqqUihsraxDT3iyaGe92ihC8RNjbBRKIyMmHD5aZurPKL7iBEhZhQzPYzuXhY024laUIf979HO+50K10mZvAWuK9VmtO6fYZtw/iBHYXzfbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732978318; c=relaxed/simple;
	bh=MfaGnELOaQ5gOsaPvyuhIsLmNcOCwrCezmTYb1mno9Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E173Vkyzu+pikJDdSJ0r/RQ25A4eoRqGCuaidTz5N/n+dHRvMe/x1EVRLv2EwMtcEOKhpSXa6ZTUKjRkK473HnX8D/z4ai7gM+Ww+H172nqgJD5ayLyr+/jJIgfsSdBuNKyTI5vWgsIfGaZ5aV4isCtywd33ug9nguOnaN7vDWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RJgJy92+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AUCOwwu003697
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:51:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WwdVUV3H85bPaeLC5AvA5iZ5iMUqfV8KmmDWPe0AejQ=; b=RJgJy92+HLpqVydl
	Jnc7cTYnPCxiQ6X26t0WKagFa9pZd+oJwAIrpqLji5jgZM5oG+UHd5FnbDvbh8Vu
	JD2nc+nZ2sDGxWGXfsoDXDIqdYF+IOGwbqqPdnNc76XW8kw4ZXb1Q4dZu2pXG031
	1i+18TgIr0qY8bOsyjShCLCyeU3icKDs0HxpK/g0OvEOhCxzR70kAlVx+6Uhj1GY
	hC03s2WtUYTjr+c1Qm885yZTkpUzw/bv5aoCmnJDbfYGHn9m0ANfqOlWp5W2/cl/
	M+rT3ojW8e3uHMN/TlfOTqAXpLebljCHkfi6VC4icur2jh63chKHRuyv21DD720J
	8AqXLQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437snqrysr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:51:55 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4668f2d0e50so4686621cf.0
        for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 06:51:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732978314; x=1733583114;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WwdVUV3H85bPaeLC5AvA5iZ5iMUqfV8KmmDWPe0AejQ=;
        b=j+STIN9gQqZhFrqu2Kyg41O4Xm5Hf+5FpS46J43fuXnfLh+4n59qVKrKfA8q52x65W
         cp4Fs73117ty+vpNSLhfErlskFIKbG9fxH/jGPRjXHw3SrYwcS3IWvV27nP5VgaZfXRE
         imfB23P4Mibc/PFZcDmbU/k+uDxzBRfGxMZW+EP7e251eH1JklDeV0EhQ/eel/1jO08p
         VwiQRCzABkFVo9/neZDkKDTXNKbhfQ2ny20pk/zmEQAIXgrtaD98u01dwVx7QejTJJ+X
         nHVmuAP2ZRl7K1ubVm+x/qKsc6dNLvJleiqp0jXIOoQ3d4uQ9o7uizc0McS4Rqv5cYN2
         +sxQ==
X-Forwarded-Encrypted: i=1; AJvYcCVZM0e7+gorN0yB2JdZXc7kTzQox4lI9KttTxgceu0WF8r+AbFZPyGZUx1AuJnrTgh9d2NhgO7TIb0Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yzrlhj+ytmw+tQl0h1edvQPAGYgqK4wkouVIwrZEgv5lNim6Xjd
	XAtxWssbsKHgRBKgg+ih1rgXYDH2n1SniZ9eWbXDczOX7in5/Chcz69hLKON/Pw3NOGuUdnq6AK
	HN6w+kZHeXIlGrJalaxuKpgiC9oQjDI9aNlRcLPSdE2bwiy/lhIB5mnpoGVXD
X-Gm-Gg: ASbGncsGZW5YDjoDNR3vMneCCJ4eXimLVNcRpSSHjVtlyNxYU96ZAu6u9z5eTnn1mNx
	30HcaFC1RuCI+cfBbpMLhhry2G38+ytVK12r386uPbFMRgRTgTAlZvYxJMjKFDFfeQXeDVthtMC
	nKefyCz16npvUUKxHv2CnbwT8BRqY8HQNV87DRiP8d3I4HN7hqLBp7MZe+eqchAkBcajjGrTXQJ
	+BKfAagOuGpLgBBRc3GgUemskDlqPYD+kIE5nPwFpBwb0FVk8wv+Y6VM9+QgwIG231marVon0rb
	U8/eVZVt6vxQGXdK5J81//KtkTJ/NPc=
X-Received: by 2002:a05:622a:54b:b0:464:888f:aeaf with SMTP id d75a77b69052e-466b34b7946mr105027451cf.3.1732978314400;
        Sat, 30 Nov 2024 06:51:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGdstzmdIicxiEtW5GhGF02zRwFODG+w6QXwP6kxFCd68zCj4hbtp4yiYHjjDbGlXKe/BYeyA==
X-Received: by 2002:a05:622a:54b:b0:464:888f:aeaf with SMTP id d75a77b69052e-466b34b7946mr105027271cf.3.1732978313957;
        Sat, 30 Nov 2024 06:51:53 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa59991f0ebsm284508766b.159.2024.11.30.06.51.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Nov 2024 06:51:53 -0800 (PST)
Message-ID: <206e1dd4-7e71-4e84-af80-19a0d448b469@oss.qualcomm.com>
Date: Sat, 30 Nov 2024 15:51:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: ipq6018: add LDOA2 regulator
To: Chukun Pan <amadeus@jmu.edu.cn>, Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Robert Marko <robimarko@gmail.com>
References: <20241110140019.3426181-1-amadeus@jmu.edu.cn>
 <20241110140019.3426181-5-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241110140019.3426181-5-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 28DLBZjtKoN3fuBKyT76ODLRqoGuHZyD
X-Proofpoint-GUID: 28DLBZjtKoN3fuBKyT76ODLRqoGuHZyD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 phishscore=0 adultscore=0 impostorscore=0 malwarescore=0
 lowpriorityscore=0 suspectscore=0 priorityscore=1501 mlxscore=0
 mlxlogscore=942 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2411300123

On 10.11.2024 3:00 PM, Chukun Pan wrote:
> Add LDOA2 regulator from MP5496 to support SDCC voltage scaling.
> 
> Suggested-by: Robert Marko <robimarko@gmail.com>
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  arch/arm64/boot/dts/qcom/ipq6018-mp5496.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq6018-mp5496.dtsi b/arch/arm64/boot/dts/qcom/ipq6018-mp5496.dtsi
> index fe2152df69f4..0a57e1afe218 100644
> --- a/arch/arm64/boot/dts/qcom/ipq6018-mp5496.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq6018-mp5496.dtsi
> @@ -31,5 +31,14 @@ ipq6018_s2: s2 {
>  			regulator-max-microvolt = <1062500>;
>  			regulator-always-on;
>  		};
> +
> +		ipq6018_l2: l2 {

s/ipq6018/mp5496

Konrad

