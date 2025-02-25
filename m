Return-Path: <devicetree+bounces-150991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 43663A44168
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 14:55:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B8A7C17215D
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 13:54:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B885926B095;
	Tue, 25 Feb 2025 13:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G1mPuaKt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3F3F26AA98
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 13:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740491613; cv=none; b=jO/YbMkX+KgUj9Q+QgbqIMIW038kvZrlYyDEB8wtJM6nwbRRGoAaM1sr5kOa1E+EfUsiyzkzWQxx90Adn9EWR6UOGQmVL8qzVb5HL64zHUqezeTMMOC+Ly2+9/0YUmYq9ktaU+jud/hp90sevprQEDsVJNZekC8rvX6RMEcMDRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740491613; c=relaxed/simple;
	bh=0fm8dD2GSkal7pX6wfp5ldr/EGe8/x09E5/sp8nkiRw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WRB+a2UeRr88cUu+vQbz59PlPVTkA6Mv0Va30h6x7BVRgn2expwOj0b9q6mF0oatbH7MPrlif6HCOcnvlfL/G+/ZiDmcgOrT/Kn1gEqV+wJzq3anwt56UC0noJYnL8p66CK06Sbwf4PQEpt1O/IQtIUIiKLJeYSjDrsLm3HkxSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G1mPuaKt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51P8UHXq003790
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 13:53:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7+T0FemeMk1vQ5gyh6YIRlKas8xebx73MY0rmeqa9fo=; b=G1mPuaKtVzc6rcuV
	CU+lzck6KziTNtt/ZgpmsArrjlHL+NEMOTTaeNr/IPFeGriD11MDKpbekFXtI4OL
	YNjCet3WyBgSK+JkvsCbU7+trRI7JcSbt+xM14QE+tsT6WNkLqVxT7VWdVh8lBbj
	fvoFwhHXrJOw6XPONF0k+fpDz3vE7HOV60c1f4J+CRdyuud4wCYfTEXyJVVuj2Pt
	rnxxZLpd/T9Uw0l/4RgBWB8vuFKa23ZZQmBu3ASB7GO+tVe0TIlSsRsT+ZFnl8We
	cE7SCbU8+4Yvvpq6pszcklsQcCs0JH7Yz2/cJ6UbCc1KAN3CDyb0cfluxNblP3B+
	GyzvTg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 450m3dd29w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 13:53:31 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e66c7e5348so6512856d6.0
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 05:53:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740491610; x=1741096410;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7+T0FemeMk1vQ5gyh6YIRlKas8xebx73MY0rmeqa9fo=;
        b=ckBB4bFYVQeGvgi8AhOXlLApPTrWEzGpsfuag+WLtwdKJaNLjlt36T4bUtlir8wRtH
         SyQRnsktYIMjUyK//ZpPL8v7IqF0A7k0oD4B4KNyS43tog5VofdlwymgkULj+omvZguN
         ZUXsnPJbF+mTqCBxtv54UveQ/ruiFagPPVZIjA84Wieo4Pl4/yScE3qKLfM9OSs2mAon
         7nFf6q2jyJXwSy+U+egrqdINRmwTkoHMg3tdzpg4nbbuZaYBdGbplQFzYQUXR5ZsOnae
         fPefCTrhxm05EYwljOA4DmMPlGLJmiuf9DDEnHUHs+0yP8BfdrwfpacR3NnRUp+jfK5l
         PqJA==
X-Forwarded-Encrypted: i=1; AJvYcCUjeoLb7JKI9CdYIrNPGjTrW6ez64ljSbdOe1EAftjxCShIGtxUMMxOvQePA8ZD+P805T4UhDkUfEGk@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5azh7ZLTymbA3RopXTBGOJs1sJCVufu9RwodrGOjPmgwq+fL0
	cmmkFsIPAMQ/OQbh45Du2hBLhERoJs1Jx0GDQtbGWubJoGD8eWQWrqJYnyatgJqfAiAlT5fVFpG
	C7/+RBz/94C3BlCuT4kAeN0zEgM0sKmQDtyua7uJR3Jt6IMkUi7cHh+bLFigb
X-Gm-Gg: ASbGncs78L1zXuv20KuyMtI3Z/z6JyLoFZNqACGW0NWBDEnynXaIHfaxdXAihpg1F6d
	djyh/W126wX5hNxCqow46cE5682wYlIgHMIouYgXGLJa0KsqUaSh2vjaAeVG7PzxXc9gBz8NFT3
	efL6grtTQiN7TQNktNEORvZZCIkJ14oVbNlxobfikoPGg2s4Gjl7qHZg9PsVPoTDSp1xkP3vI6C
	o5bKVT55DYYSUetvL9yEChqi6boR26S1bJ0TSRSv9XFo5ZUqSwWtx4tnzKF6LVlyd1hxGXwxjoW
	HtvA6Od8TU/a7OYeax1vtDbb7CB15mflB5PFZQ45JtNsxVbtjGmvwWoVpaFa/FdQ3GkcdA==
X-Received: by 2002:ad4:5b8d:0:b0:6e6:60f6:56db with SMTP id 6a1803df08f44-6e6ae96757cmr86033976d6.6.1740491609839;
        Tue, 25 Feb 2025 05:53:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFpLsxtECdHESHTNPzz/+xdF8LEgDeZCxkFo9jJSwp7RyqzIE6McvZorZtxRBNonQfFw/rxRg==
X-Received: by 2002:ad4:5b8d:0:b0:6e6:60f6:56db with SMTP id 6a1803df08f44-6e6ae96757cmr86033856d6.6.1740491609479;
        Tue, 25 Feb 2025 05:53:29 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abee2fe29fcsm45391666b.123.2025.02.25.05.53.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2025 05:53:28 -0800 (PST)
Message-ID: <be947420-f37d-40e5-aedc-01acfaf25060@oss.qualcomm.com>
Date: Tue, 25 Feb 2025 14:53:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qcs615: add TRNG node
To: Abhinaba Rakshit <quic_arakshit@quicinc.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250224-enable-trng-for-qcs615-v1-0-3243eb7d345a@quicinc.com>
 <20250224-enable-trng-for-qcs615-v1-2-3243eb7d345a@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250224-enable-trng-for-qcs615-v1-2-3243eb7d345a@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: fLhHhAs53UKGojpI8qBgBdZj-_BQUWQ6
X-Proofpoint-ORIG-GUID: fLhHhAs53UKGojpI8qBgBdZj-_BQUWQ6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-25_04,2025-02-25_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 phishscore=0 mlxscore=0 mlxlogscore=988
 clxscore=1015 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502250095

On 24.02.2025 10:50 AM, Abhinaba Rakshit wrote:
> The qcs615 SoC has a True Random Number Generator, add the node
> with the correct compatible set.
> 
> Signed-off-by: Abhinaba Rakshit <quic_arakshit@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index f4abfad474ea62dea13d05eb874530947e1e8d3e..ab0bf68fdd8c2e223c242f70e779a3d9374292ea 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -973,6 +973,11 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>  			};
>  		};
>  
> +		rng@793000 {
> +			compatible = "qcom,qcs615-trng", "qcom,trng";
> +			reg = <0x0 0x00793000 0x0 0x1000>;
> +		};

Please move it so that the nodes are sorted address-wise

Konrad

