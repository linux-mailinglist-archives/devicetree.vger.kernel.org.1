Return-Path: <devicetree+bounces-191447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 90631AEF5AE
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 12:55:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 19A2E1C012C3
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 10:55:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42C1D27145C;
	Tue,  1 Jul 2025 10:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="estkSzoU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFEB5270EC1
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 10:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751367321; cv=none; b=Ziltb9+pmrOlNX5piPCYZlDqy1uEZKrxWf/BrE6g9ApmEKwWMXs7tlZJ1maf/kL4WwBS4yBcn7Fm57fwiAxvQn8k0AWRQ40FkMuXaafjznmyLTKh7KlhucMIWV4Z+9GftVk9sNbT8tfbARu/7krDd17EwZaZLDb5767uf09j638=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751367321; c=relaxed/simple;
	bh=NCd5sIQQTpAQ9G791uZrqHLKe+SMtGOJg9CS63AJgdI=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=OVyXyawKhla3hXI4R60VPLFCx3qnFiRrUBOSc7LETsDJp59beNMp47COLwBCGhYAe+N5XZg2sxf8iqDnPnuPIBnwG4xh/bJcnzkPFlz1kUPVcCUOJmSSrcf6Yrr1TajwApgp3rlKpxthSvY725eXAUgn06H9zjeljrXHTlal+pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=estkSzoU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5619tDcP032111
	for <devicetree@vger.kernel.org>; Tue, 1 Jul 2025 10:55:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	e2pKpLvAmXhT0uHCFrgzvpgPRrPMpCsaV/9qCJmh82o=; b=estkSzoUBdzewSBQ
	d3RXgmpoLZabRY3dQl3Its1mpJ4RHISfg9oquS/Jf0ZgP1KoZRUrtlEAAzcYSXRG
	79YEly8t6j18uJZT64PLICD2kTgwfDicCGXBApuWZ0V/yK0XOMbs2vStfkvXQUfM
	Otg7+20N/eQJvEJM4aPJge9NeYzGM9QGINBw39rO3NwATXAh2DoGRuqoAnl6ia5T
	m59WuaM+qWyvBNrcnfIJUGVEqXlMkKuOYshmUc0vL1LB9Jb9Btq/dCN0pfkVsnAH
	R65PjUXf7V362P0ruNX+XOOwuHK6tofAD/EZ7zD8R/54q7/UoQgm0SkdfNuCcIGG
	QgfKBg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j63k8nh9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 10:55:18 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fd1dcf1c5bso11620946d6.3
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 03:55:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751367317; x=1751972117;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e2pKpLvAmXhT0uHCFrgzvpgPRrPMpCsaV/9qCJmh82o=;
        b=KAVg2W02vsmYHkNrZaNHhJ1Q8KuwxsCZuzBpfdyYao291H3eu3l3R5MwjfnplhiX5i
         yge+ldwK0F74XZJAD0tRm062GpU0rDqMRsbeMwk6L/SXbS5Hfb+nuW/r9qDb0frEQ9gP
         lfAR++rvfSa+NhAtGfpFJ4MRCkFHLWLnz2ml39H978TQTBYopVQUBi+cXK7cdtgUTXvC
         U/vZksuCljv/IucE1LUht/obJSXsDBxhpq0+y5pxmRJj5z8WW6J5qXM0modWERPra3Bb
         dDSYK+yjR/dX4aXD0HZ73QuwmgPT3yO6LZdFRzX0jNeu35zeCHj5omkXnmt299AiC9ca
         9dEg==
X-Forwarded-Encrypted: i=1; AJvYcCURyWEaPIL+xY2cDC7Seqcethf+rKO7JO1rjQ4/0RrofNIvQkIzlaYi+AJENv1onKHdXEvkVRcdkF0x@vger.kernel.org
X-Gm-Message-State: AOJu0YxRW1Yo3Y+r7I27svvlX1KQLqUszyRykeei2Mlyf6sMM0vVRkv5
	zl7VsK4F0h18hs3Zils/B8wpFKbdEKdMrZ3+UKDAg72CZ/8o7avdl18XI3AxF/7NYfnTs5VBc/V
	YyNIDKarYZUt7KdVZj1NBjvvWF/H4T8t2dW1/8GeRcx4d4QJv+wvydisJFpSbSVbH0duppFi7
X-Gm-Gg: ASbGncsVC+Xuqu/IBnRE/baSZB9j7uup+jduJ4Ye9fr8QT3exbUbcJJYW2X2iLiJPNw
	CKCKQlxI9IgZFSvrrybh6d0/HocmgXLAfUpcatyyqCzhSjkcKZXJ541agu4xYZQg5vk+4lteJd0
	w0+3Gdd/XXQmJ43nfzCJNuBJfGQPWCkABRYUz2Z8ct+YG0WtRYXkg6BfdB9w3Q6uNbhL0zau8xQ
	W3y9oXWKwEFbU06FICg21khhwcjnWbfT2et5B69nFWs3iEpfIVYRg5NuYqTXD8CD95H4M8hcD2X
	t9LOXWgu8ewIcbkx6o43JbDbJXymU2CQiDGyZiv801J7jLQtJSJvMSFdaT/GcrPkx1T9IaFdnwH
	7Lw4OtKzJ
X-Received: by 2002:a05:620a:3710:b0:7c0:bc63:7b73 with SMTP id af79cd13be357-7d46774f6eamr135172885a.13.1751367316971;
        Tue, 01 Jul 2025 03:55:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFFQqI9KNTOy8LPHCm3hRNrOV23xCgE8dnjQkn6eZsL8uc0BW3Nf4hDGABNBn0BIgxQLuAUPw==
X-Received: by 2002:a05:620a:3710:b0:7c0:bc63:7b73 with SMTP id af79cd13be357-7d46774f6eamr135171285a.13.1751367316401;
        Tue, 01 Jul 2025 03:55:16 -0700 (PDT)
Received: from [192.168.1.114] (83.9.29.190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c831ccb44sm7137232a12.57.2025.07.01.03.55.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 03:55:15 -0700 (PDT)
Message-ID: <f931e284-6ae6-4177-83bf-c6eb1ce583f9@oss.qualcomm.com>
Date: Tue, 1 Jul 2025 12:55:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sdm670-google-sargo: enable charger
To: Richard Acayan <mailingradian@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250630224158.249726-2-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250630224158.249726-2-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZKfXmW7b c=1 sm=1 tr=0 ts=6863be96 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=fKQzr7EGRj+VoE0XNsDNvQ==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=pGLkceISAAAA:8 a=6ieJxNg1SIxEGqXPB-kA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAxMDA2NiBTYWx0ZWRfX0s+jixqFSoKX
 SiGKElanIZny8afkn2pzs28LLrRD+2wRajmYRHddpiR1YQJYcW4mnnWyujMG7KlO8A2Qa+LarMO
 74FT8/mg/2qSVlabFe3+NPe5XRvEroToDUdtHfjTOjl6zhDOBCu0LkuyOgGh6YMKgi7ZxYFjvrV
 sWnExrP0XrHtem6deB7VTKLB0ipWEXkSo+tRqG+ctO6mZHqVWE6vHYXzk2u8grSPfShxMplOWNW
 wclfrt0g0k/YZ3AYZq4EqrVY+vupq8HVjh8hFGLYP8OtxWvHXY3hEBT2yKL4ACw6cH99IG3eWhS
 dMpM36og2zwdg95M/QUn92MfK43dGLgZiwFCNEwRiVlVNnXzPVc7SZLIoE1TSTzkh2IhsjQY+p6
 5/P/YTkmtOc3aKAOZrrFY586W/Jn/9SFW1N6a8lvCIVjMCjiRKqwLYq0wMWSql9RZluLeVj2
X-Proofpoint-ORIG-GUID: wOAFuSQrbT_2AdB9XD06MezNHvih1Bvs
X-Proofpoint-GUID: wOAFuSQrbT_2AdB9XD06MezNHvih1Bvs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-01_02,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0 mlxlogscore=809 spamscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 impostorscore=0 malwarescore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507010066



On 01-Jul-25 00:41, Richard Acayan wrote:
> The Pixel 3a has a rechargeable 3000 mAh battery. Describe it and enable
> its charging controller in PM660.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  .../arm64/boot/dts/qcom/sdm670-google-sargo.dts | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts b/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts
> index 74b5d9c68eb6..d01422844fbf 100644
> --- a/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts
> @@ -33,6 +33,14 @@ / {
>  
>  	aliases { };
>  
> +	battery: battery {
> +		compatible = "simple-battery";
> +
> +		voltage-min-design-microvolt = <3312000>;
> +		voltage-max-design-microvolt = <4400000>;

Does this match what downstream sets into the hw?

Konrad

