Return-Path: <devicetree+bounces-217221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C08B5710A
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 09:18:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B93EB1898D7F
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 07:19:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DE292D24BE;
	Mon, 15 Sep 2025 07:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q6aDHMK9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CFFC1D130E
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757920710; cv=none; b=Q81PMnVWuVOAbcEZWdFfKpL5AdbwOK8Fcy1PLoKHve2yUjWCkSkpsR8Ff/uakz6nu7Sf/IeSrwJgeTChTs5+e71+rCyLSKAtnVVLuhrRnhnCYilUINyseMIarK7cT2HFVdNidrDxds9zCOdsVcXkejyZ9XNwX58D1W+LUxmPWV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757920710; c=relaxed/simple;
	bh=RfdtUEfshvy974yJPEuKYRZCnsD9sadOk5+B4IIchgQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dfeJrkv6hQA1bZyQ4jzPdxziADcYVAwrc8yO7pl37Zi8qZmVc84km4lMt69uI7tz2ku89Xqhihn5ipsXF7qIP0c6PtY5+NvLCkAIjfpBXpnhaoIucAvv41WS5zbqZ5rc9117io4gdzhK1crtSdltp9T+RlsZjWGYt+Cb9JpHzIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q6aDHMK9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58F7I7br029631
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:18:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kZV267zGbAJfepcXaTiuuQWN4inCsP8FeAE5hho9iso=; b=Q6aDHMK9HuKE5Y3F
	NIiaSHrfaGl2cAbgwa4kUr9MKGdieLygu7fdAkUMPuaeJYhtK69sw0LgzBv+MvIR
	eisNrguxPBLtKqoBl0+09iKijldaVC3ojgS1IZurSdMXw4Ydzu0C/qrvqJZ0isCt
	LvjqHBk/hFOi57TCxYty41HmoAOf4jUDGJfEk8jh/ZUxFLY3uR7FMUtLYvfv0Y8g
	BJY+P0b2GCxnnG4f3aIPe/o50SteMQaMQkEdIVMi7qVanw1bvYypXf92oDzV6cFq
	h9jVXG4NCYKIxK38K4btLteebRdEZQv1uUvFAoEyotz1Xo1YiLPY3i7YYDFk/ASI
	7bG4EQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4950u53swr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:18:28 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-7802f4ccba6so1085436d6.2
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:18:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757920707; x=1758525507;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kZV267zGbAJfepcXaTiuuQWN4inCsP8FeAE5hho9iso=;
        b=wiiePexh1w0s9B6UdQTA3qh6RTMYSvmcFdhfbYGYhUPnVaZZU1pV4McS+n1VaZED2d
         NUcoolq+3MnPG9IPM6Ap9FJFTvUfly6wIkGZrbFnFzHZ3/zJhVsC5KqKfG4O/FPzNeFi
         qeRPe6tyQmGzhTjRzg5GkAvtCJ5DNBHSwPNeLaBxEvtaxsPyq9gf/r9uAlsL8nj/izhq
         t8siKoMmlgMtUQs7Twi5kWs0LujLxO+VMN53pKscnKJmBrP+6CivpDfdzCz60GFoqr2e
         0s9m9rnALj/CZJK9YZnmJnw9HQ2du6/6z1AbnDdMwUpIU5oMUNzVdobtwk6BX/a/yXU3
         cBlw==
X-Forwarded-Encrypted: i=1; AJvYcCW95jG6sliyIlEtXYTT0s+gIYv+3Y/r0YqPM032Stkm/CFX5MS6fxFJf47s9VSCSOYF76DwlvdswNyo@vger.kernel.org
X-Gm-Message-State: AOJu0YyHGv0ZozbSVX46EBz6iNrtXWuuZP3MCGGhdjn3sKn07Xod0YjF
	Snx4aEyBhHBF3yy4nHf830L1Xt6WOO7gJgWM6nCETrkPe22FwlyZQdrHoud049jciddbuYWRgg8
	+UMsDOkupzHVxFqVqsLERFBYYcAWRg9iIWkkPA9FukWmT4n451Ua4zdbNPKzf9dKA
X-Gm-Gg: ASbGncuYSspv8FcfJ/OdDlyCEHmftz7m5sjuNpNqM6hSPK21ul1apFZzcIc0xic98gH
	21vf6Tfy1AtK0SwtJnQsMTu7AUoiyKpfuUD+fs+2To9i5Ga1DC96Ol7L+tdGRN7274QljsDZJyY
	8scTFXT78olMV5XpYFRHgR0xOXIrpNdeulbuDbAGYlCLSIlpsBzIz+G36CkAQOAYA6uXgAr7LmJ
	kIZIVY06wr8vpjy4FSGEN4Gzo8i9JzEf6Nu45vvXrzLvPwOYKO5VcoC9vjLQZ9AEBR/gESwHFC4
	t6aLgSLsL1L3K7VF00dp2a2Sx60e0TOSTOby4l7TMlc/IOD5piVYZJmM0gl35bSEb7Q/r/2UBB7
	Fq3EZvLZ2SY7EyznQMd11kQ==
X-Received: by 2002:a05:6214:2b0e:b0:726:8d13:da3c with SMTP id 6a1803df08f44-767c3772701mr87916746d6.5.1757920706818;
        Mon, 15 Sep 2025 00:18:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGG7fCLxQ6z7xmoYKJ3boF9j/ZgGnwmZqrMmvyGalmjSbO2uXoz6sKz7oSM6s6OaaZY7WTQPA==
X-Received: by 2002:a05:6214:2b0e:b0:726:8d13:da3c with SMTP id 6a1803df08f44-767c3772701mr87916546d6.5.1757920706314;
        Mon, 15 Sep 2025 00:18:26 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62ec33f57dbsm8550654a12.25.2025.09.15.00.18.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 00:18:25 -0700 (PDT)
Message-ID: <33c43646-a8d5-49cd-b27f-093b73517bd5@oss.qualcomm.com>
Date: Mon, 15 Sep 2025 09:18:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/11] arm64: dts: qcom: sdm845-lg-common: Add wifi node
To: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
References: <20250913-judyln-dts-v1-0-23b4b7790dce@postmarketos.org>
 <20250913-judyln-dts-v1-6-23b4b7790dce@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250913-judyln-dts-v1-6-23b4b7790dce@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: vxZUqZs8u0cGKT2C8tklfL10KCzREFb8
X-Proofpoint-ORIG-GUID: vxZUqZs8u0cGKT2C8tklfL10KCzREFb8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAzMSBTYWx0ZWRfXx0WOvjHqYyzb
 TmM3UrYtF/yN5kWGTchwqxFC8zwWu4BwuqZjIlLqAwudmEkl6hovc3iiSni4skCTuoQpys/gC+a
 k+aDHPNbq51kIlc9kxbSAEZIDdmSssBKkz/D9XN3IyDCQKUynP74etkfFGxAeuA59iRljqKEfR6
 XF16kMbT0V83+ooaywzdRELII3GjqT8phv2C0XwZmGGoTFK6IIJdgha7qI5XeqzI8Ol3HdhZPZz
 35RT/M/A9n/4GqnESCR0VYyBQs11+5PEYRvCdHxfuZsWFBvbqRyfT6Ed8W5HEslDtBpGhZjybqT
 l5Pf0CnI8pDVtJhutrooFtlFczkCeSDVd+GGXlFi/40X+SwhLZJp/8+Dr8eHlRx2SKFjv0tjYJq
 mohdXASq
X-Authority-Analysis: v=2.4 cv=JvzxrN4C c=1 sm=1 tr=0 ts=68c7bdc4 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=Gbw9aFdXAAAA:8 a=qoi5gUcjuFCQQthds88A:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_03,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 spamscore=0 adultscore=0 malwarescore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130031

On 9/14/25 1:56 AM, Paul Sajna wrote:
> Wi-Fi now works with this patch and relevant firmware
> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> index 1bf2f2b0e85de174959ec2467076a95f471a59d4..585582ff4e0bbe8c994328278d5e5dd3a280ddb6 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> @@ -682,3 +682,16 @@ &uart9 {
>  
>  	status = "okay";
>  };
> +
> +&wifi {
> +	vdd-0.8-cx-mx-supply = <&vreg_l5a_0p8>;
> +	vdd-1.8-xo-supply = <&vreg_l7a_1p8>;
> +	vdd-1.3-rfa-supply = <&vreg_l17a_1p3>;
> +	vdd-3.3-ch0-supply = <&vreg_l25a_3p3>;
> +	vdd-3.3-ch1-supply = <&vreg_l23a_3p3>;
> +
> +	qcom,snoc-host-cap-skip-quirk;
> +	qcom,ath10k-calibration-variant = "lg_judy";

This is deprecated, use qcom,calibration-variant instead

Konrad

