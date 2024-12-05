Return-Path: <devicetree+bounces-127633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDE39E5D7B
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 18:41:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0E8BB188466D
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:41:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 279A4226ECA;
	Thu,  5 Dec 2024 17:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YGBKQq3i"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1963224AF6
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 17:41:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733420498; cv=none; b=KjwIpJRPGyTwCQlYcxy9I835sYEQvdqmxZUm370SYHNjDeBW+pl0G7t3t5FjG1ng1SfCjkY18Rpv2zf7+JvpJTt+N+C0aSXQHUTa99IZeetyvgfAVBle/kq5v5UPnsQ1F1P4Ykb9aBOqhN1+XU9z2Y7QguMve+ZhEl+phrGQJ8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733420498; c=relaxed/simple;
	bh=6FzNAE6m2dYGEz1uwmeGhq25mZHNGBGIpgBDnJuHusc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZG4sHT3mHlKSNKsuDSjGSYxlWDiRWhlJc1WCv+VR+ETjhe27ThJrIQTGPy6UsKO9C7ymSBoKx7kKKkRmFpTC6CAcGWMoOUld28CoOtsRBkvvw355HV7WB29vfysJjVO95HqJbifskyeyz31hYzXbgHa88nFo0QoKr0PCVoyk75Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YGBKQq3i; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5HaaBr016410
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 17:41:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SXzRRGsyc/c2BUi8PcPVnuNR/0fJO0GE8qnSNFeaoZc=; b=YGBKQq3ixqo2vJNe
	8jq1scLTuRD8CCWNa/HeKAiG7hb72nhoipa+Ejo8ai9knqUZmlCAs+hbP7VesZea
	gMc1WUN64LZjb/ifCCZpw5hw8ryfR6kPaoqB8a4qYDPQZhkvlohZY6ZESTH22TA8
	knDKsigj7GsqigXLaiEpQorq9CKoRSSajiEKARohZpc7hbqy1RoqUlZhQscIeXpR
	clMa7Ylb4sSyRq8cAdNthFWhrITs1aqtKe+rApPMFV+GTRAld3bvBL67OWqfQ0Ah
	pJhBPw17seOWdYuwxb9wFUeH5mA9mM9pzh4zhgvyY3eEw2L3E5SLnCKxFgHnNUCz
	SxOUFg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43bbnmgymh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 17:41:34 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-46692fb862bso2432441cf.1
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 09:41:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733420494; x=1734025294;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SXzRRGsyc/c2BUi8PcPVnuNR/0fJO0GE8qnSNFeaoZc=;
        b=MSdG/QRNnUsaAJly3xG0XEy13CzEUSTysn8W3iWlX2TZ9YzIXlHL30FnZe5BGRvGhI
         YRP5+CH2Wr9KMIvtuN1mbo0y+JfipkNdhZ3s2F/R+SOhiov1YkLrzjDXb+T3/vBoXjZ+
         CXgndrkxFJmb2GEcztexy7ae69FV0/xZ2w/k+DeJEEOBFAK879gPa6ir7XdZdFEFa7y/
         hoQFmDY6rBD89zbOrO3tHzoKcTlyVCSYyT7eAhm5B7EwLwdC+c/6eLuIoZMx8gZJMB4D
         tlt6qNDFd3Gu+x5h1978065kPYnAD0U0zH4G6MNJe8tffRhodXgDoR7uIWsVeQJgvGw/
         YJgA==
X-Forwarded-Encrypted: i=1; AJvYcCWK5NtQ4EuqX2NShTXJYhh+e6/rKvq4lzhU59UF26EoO0fO1IPL8fSp+0+C4TYtpkypRT6JsUwe8uxT@vger.kernel.org
X-Gm-Message-State: AOJu0YxG6NH267uzB+B1DhgudK5qQneuRWKhd1RsqHyQ4ElcBt6vZMwa
	OeC5rw4VcC3fJWdjU5yw9q8eD0wT+pukaGNT1QXqv2fm1hLs1LMXiJw2wAxTSGhThKV/2Kf1bD2
	OxyqCrTZrDcEpbsWfGI/SytQoAw/uVBfAFUxP9QdBTkcrKgmO+tSRkX/Tr6wz
X-Gm-Gg: ASbGnct5FzKmk7gaTRxNm7q2N6s/LzGqE1xB2vIs1dua8gGPEJiXsen4/7iH1ruN+KU
	6jSS2tlwI8HRyYo236K7OkvcHdIDRlJ1CmMwTuPi/bB6QRTx6vBkDOLXmpD/h4R24ETVYIpr4Pb
	CxvIhZFaOcSkjI4gI8HIoxC8c8DA8uJ10SkfifwXawefghawLOl1UrWCpwgmJSZzPjY+yhzcnwv
	tc5hS+lxI53O40lHsRwwScQ6SaTs9ghbS4ghXNB4fEeuYD3zDWOZAMBo1emrcw+FfRJ1AwUgIIw
	xTxckjqmkvW/Evr6+8BZIIyRcd2XCqQ=
X-Received: by 2002:a05:622a:1b0f:b0:460:e4e3:457 with SMTP id d75a77b69052e-46734eeed1emr69381cf.11.1733420493591;
        Thu, 05 Dec 2024 09:41:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE4nDHz+0THtItB3ZVRkcOhOY37nBmuqywfPU8W/DhGboRjz3vQnXgf1jXoqkNHIizg2v5WdQ==
X-Received: by 2002:a05:622a:1b0f:b0:460:e4e3:457 with SMTP id d75a77b69052e-46734eeed1emr69151cf.11.1733420493160;
        Thu, 05 Dec 2024 09:41:33 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260ebaefsm119579666b.197.2024.12.05.09.41.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 09:41:32 -0800 (PST)
Message-ID: <bccb09b9-e139-439f-9a1d-2d17265edee6@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 18:41:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 8/8] arm64: dts: qcom: qcs8300: enable pcie1 for
 qcs8300 platform
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, robh+dt@kernel.org,
        manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com,
        lpieralisi@kernel.org, quic_qianyu@quicinc.com, conor+dt@kernel.org,
        neil.armstrong@linaro.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: quic_tsoni@quicinc.com, quic_shashim@quicinc.com,
        quic_kaushalk@quicinc.com, quic_tdas@quicinc.com,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20241128081056.1361739-1-quic_ziyuzhan@quicinc.com>
 <20241128081056.1361739-9-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241128081056.1361739-9-quic_ziyuzhan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 8qGaDiRWji6WfQFeRPVsw0_aOt3syVnD
X-Proofpoint-GUID: 8qGaDiRWji6WfQFeRPVsw0_aOt3syVnD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=858 priorityscore=1501 spamscore=0 impostorscore=0 bulkscore=0
 suspectscore=0 adultscore=0 clxscore=1015 phishscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050130

On 28.11.2024 9:10 AM, Ziyue Zhang wrote:
> Add configurations in devicetree for PCIe1, board related gpios,
> PMIC regulators, etc.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 42 ++++++++++++++++++++++-
>  1 file changed, 41 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> index 7f97f771c44a..a83faba0252e 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> @@ -214,7 +214,7 @@ &gcc {
>  	clocks = <&rpmhcc RPMH_CXO_CLK>,
>  		 <&sleep_clk>,
>  		 <&pcie0_phy>,
> -		 <0>,
> +		 <&pcie1_phy>,
>  		 <0>,
>  		 <0>,
>  		 <0>,

This should be in the previous patch

Otherwise lgtm

Konrad

