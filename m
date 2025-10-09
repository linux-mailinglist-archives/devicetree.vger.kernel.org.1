Return-Path: <devicetree+bounces-225022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B2CBC997D
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 16:45:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 70DD04F9731
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 14:43:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94DC22EAB99;
	Thu,  9 Oct 2025 14:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dFl+dQt7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E51812EA46F
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 14:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760021027; cv=none; b=XLDpyP41iJmp4a9U30ebQQ2v2bUTsHMEXE6XEtOU92UjSCjY1HQ+wpUICk/ol2IW/JxQXkCEE0Hk7G+12qmx+5yWmUjTGI0Wc5bTTkpkWpow+7QsFCAf6IMOWuyhfHYDnsAUhpHB6iIadPtpH0VxnR6nF7Xtj1I4EAoP4UjRstc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760021027; c=relaxed/simple;
	bh=YPRTmJAiC9PVnBhnzgVMwPCuYI3/xLbW6iu/nD0qQM4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L/B/zjs937GE0zsvNk+sDxLir+k7DXZtwD2zm5LE9YW9OFPprgI/R3JjqRTHVGKxNQz4d4D/Gb3Hmwd4FRbnVb24wDsixn7lXv7Y3RVa5tMsX2OkF3YBZVHy89WvCJMxpXZSMowQLHV/cTP8IBAQD04u1Rvu90d2LwppgEX5bCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dFl+dQt7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5998V28a031745
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 14:43:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RAZH4VC4YYHQ6vhW18teDI4p
	FX/oOp/YSqgiS6ax0y4=; b=dFl+dQt7KQmjjst4Rj1u/l1+XUsbjL6mzSC7XGCy
	qH5Lt7HCf3kKnGoq/cpjA9m/7/ZxMFClL4iQ19w01YNYVjdc5Om1p9nWRa8wq3O1
	vZEmPOyKVze4NDs0L+Ej1KcsUdzW5Nj8T5yvdKXhE1fgCc2tbgtu6HA3PyUyyLfw
	nxHBUmGQmqwIy8wtKmzhXQDE/ot8IOLHZ+VR4n23Wot5ofcjBUwRg1yolNS+Kbsn
	Ntk+eUrTIlvTHNNpV8bD1fqpeSwkDKwnOWq0YTxVt1eLqbF2UZQ1XlRQiYfMbnml
	iBBYkSqgtW97vjU23EHKW9wEqNjccxy7w44pwbRVLi4SsQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49p9m0s5re-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 14:43:44 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-7e90f268f62so26517366d6.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 07:43:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760021024; x=1760625824;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RAZH4VC4YYHQ6vhW18teDI4pFX/oOp/YSqgiS6ax0y4=;
        b=NMzJiGOsJ9M+rFZt9tlMdQNBg+WBKxPtHHNJpzdt0ebPehfW0F9fgm/f+hx+peIvlr
         nGP7fk61imspWUNt1HGowInHHHZT6rmigXMYnNYo/TBYojMB9J2UtyI0rx8fo87b1Wwi
         cvp6rDX/Z2OmBPSpBE/YYwgjyAQDASbC9CYUSDFFbjyz6ED4tsmWZ0Td/tLjJEdgqYHb
         LhcQco8jmm6ucT+lb8EnjTJWwpqx0urXStElxDuZp0JPrRAYBtnSFXYlu4bGSIhU+Grs
         34kB8kXw12U+WeRbiTkXFYu0XF9rCbmcGPboNbM2KRzSTnT2nJ/WrRLg5x82ftvZJEHU
         XASg==
X-Forwarded-Encrypted: i=1; AJvYcCXyZfGL+uytEPOoRuat6eRxNahkeSQ1FpdsZfHzAIduD7i/pR2BzLXXV/hw/zBvZ9oNfpGDef4sJok1@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5Twi5W0wW7WKFaFutVQ6VEWGqs5IgwajpYw7ynZ9i9FRr2N3X
	S0eak+4AzBUPccKf1XaYM3MaT9SWnzF69CeI5nAtj3r8DLnq+F+zvfp13dhEN0UxP47JzyoYmTV
	FUge3WnZyQx/69ImZYGw3+GkQL6jHUIHaHU7+e7xlUq1VR+RUiYq/+C/QJgsnH+JT
X-Gm-Gg: ASbGncu6IV8mvSW6nyS462xw6aOJtF/cesl6jRbbUkwUTO3GuP1UW6wcPNf9Y+3u+RU
	LzG+7BkkVHATK8OcP+zzxhM3GfCHOo3MQP2fpZ5smn6doIAT9woEIeQ9FhlbQAwKskXPnxJ4lbq
	kGRIJaDeKx9ktpblGSIjXX0CEFzFuENt9S0wmqjN93LQDhgLSmoFUEg/aurALoPB7x87uSqabD2
	3SB6mMwOt7JUbodhyvRdyOZQo8K3S+ZIAz5f2Hz6nrlkUxABZe04QRFkvR6KuPpfhw3s2JhUdSX
	SOaNrphRvdke1bn2A+IaZSURqBpP+jNo9JueDECxKlQBGatDZ0/7cssEtZIi+3M4PstpQE2g1g8
	ta5SXUk3QjcQz32UsSGKiHFgnHRRC4FyGZw81/4puQBoQ1aQ2N23cd8u/Ow==
X-Received: by 2002:ac8:7f89:0:b0:4b5:fa2e:380f with SMTP id d75a77b69052e-4e6eacf39bamr101335781cf.27.1760021024081;
        Thu, 09 Oct 2025 07:43:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF4VQzRJazCe5lQEKqHSB+Ox+znELuwpSDAoZB258VOx5j06Ir/+zHOtX7IKN48V2PCiISpAQ==
X-Received: by 2002:ac8:7f89:0:b0:4b5:fa2e:380f with SMTP id d75a77b69052e-4e6eacf39bamr101333161cf.27.1760021019850;
        Thu, 09 Oct 2025 07:43:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5907ac00be6sm1099313e87.23.2025.10.09.07.43.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 07:43:39 -0700 (PDT)
Date: Thu, 9 Oct 2025 17:43:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Alexander Martinz <amartinz@shiftphones.com>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: qcm6490-shift-otter: Enable
 venus node
Message-ID: <si5h3szt3msd7mcbrfdotbs7wxi4bh5cfgp3icoxuqprsz5tqr@tk42ox6okse4>
References: <20251009-otter-further-bringup-v2-0-5bb2f4a02cea@fairphone.com>
 <20251009-otter-further-bringup-v2-6-5bb2f4a02cea@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251009-otter-further-bringup-v2-6-5bb2f4a02cea@fairphone.com>
X-Authority-Analysis: v=2.4 cv=a/U9NESF c=1 sm=1 tr=0 ts=68e7ca21 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=7Ovdx5uLAAAA:8 a=EUspDBNiAAAA:8 a=6H0WHjuAAAAA:8
 a=5-T4x24SdKi4UNUJpXUA:9 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=TQZWkJv5rNK5-PaLMsrg:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: en6WZ0rSKYVg0SjLQa9slEBYZ5AjhZm8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA5MDA0NyBTYWx0ZWRfXyWRxGqMVUt3L
 1Vnv6Ax8s1RY+oAUOTSi+c0feTsSix4ePeC/7eu/mJbemyfbnbhn5tHF3tMuIJbcQu/lHBN5zwH
 4SuY/p+ElWqLQ/+4Gd0RbqSHRE1sCaP5jC49pr7h1Z0yiGDmotnaoMXC1iopTf4u5p1chRT0qfo
 7SJlqMV1wifUMnz7zyK1GHbt4oGvGaooEmkhiMIBKjJIbye0FPggETea23jCjkhUarIxo3Q4vji
 K+y80P4V1XP6XPqSQfZy114vxVqfAeFOrRLdOvOcDgBmcGFx2BnQVMgmEMZTdTI/knbxqJ+sMus
 qdFvD4hHAXxAq88ZwLOzqyxS5zOYlf8UzPFhsU2+Iq4jAA1ZhH3vr7ytvHeW49PCSbZ8CLEFGF+
 RmYWRdn1noVzcIdAmGAND5XxaSxdhQ==
X-Proofpoint-ORIG-GUID: en6WZ0rSKYVg0SjLQa9slEBYZ5AjhZm8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 phishscore=0 suspectscore=0 adultscore=0
 spamscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510090047

On Thu, Oct 09, 2025 at 11:06:36AM +0200, Luca Weiss wrote:
> From: Alexander Martinz <amartinz@shiftphones.com>
> 
> Enable the venus node so that the video encoder/decoder will start
> working.
> 
> Signed-off-by: Alexander Martinz <amartinz@shiftphones.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
> index af6f7b41201d..a3e6b6a96530 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
> @@ -981,6 +981,12 @@ &usb_dp_qmpphy_out {
>  	remote-endpoint = <&pmic_glink_ss_in>;
>  };
>  
> +&venus {
> +	firmware-name = "qcom/qcm6490/SHIFT/otter/venus.mbn";

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


> +
> +	status = "okay";
> +};
> +
>  &wifi {
>  	qcom,calibration-variant = "SHIFTphone_8";
>  
> 
> -- 
> 2.51.0
> 

-- 
With best wishes
Dmitry

