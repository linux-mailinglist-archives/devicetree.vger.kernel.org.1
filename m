Return-Path: <devicetree+bounces-224535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB52BC4ED0
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 14:45:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 73A1519E25F3
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 12:45:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86AAF21D59C;
	Wed,  8 Oct 2025 12:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CTUylmez"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BCA2512C8
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 12:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759927505; cv=none; b=j3tvx+Eh/bLuKjmSKWylGZS8c62iWNTMUNmeXCTju+5BcDMNidfzU0K83K+7SvkLKV2+hKI8IGJVeRJvuSjWUM/VM4pjzlN8/Gw2bGyQaN8SyEh7cEbJdtotXjAb4hpFU8t5x8gxZwV8lIajOzC/vkLFYviL++fBM/w45gzgWgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759927505; c=relaxed/simple;
	bh=r3H8Lglxh6g+EZJFP80aL7W2Zh4kLp0qdaNdNibtZCc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dat8ScSCrkBVN0wST5XXWvTD8p4rvAoQMXAIO4+kYtcs/u+LJfSNw+dTzbY93YikkVPg85wIvK8n5lrSPYT4TTx+dntK6oRZ0jhXEdyjYW4jNPQ5PzshVGJ8wefTYighne+6Y62mKSwk4gbhognLHmRUPUCRPT6d5AgUUQr7OB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CTUylmez; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890PaU028903
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 12:45:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V4SEeZvSbrbgqu/r4DhrYahbkVZg9swdS/wxQIvKWh0=; b=CTUylmezdCRBVdxV
	6ycAzcUxgxndHMywcVRqAlaItVvxpKfoo+fovtBgSU0rgK7jA2qb8q1Q/PTIxipJ
	ra03yv+Vn5hnHQdJPgDCRqulDlCt2wfYoFwC4CzaefYpCMrmxeJym1ju9Iddmlr1
	GwaELSSVJVRFc5tk+tZRW/arH0F9v2m7aF8gMGdhqLAPB5GGPQA0ISYzb71Xf7/o
	ACx9KBZncU+HQ30b95aXo/rvMtlGQR+Kb88cVbe3/YGc87aIip/GykmQJtHft5+5
	rdWxXeyuiMaq6PWljf1eh1PDj8LHtmh3wxcyjT2yZaTuQdWHFFh/TBU53+GcMXic
	9nY2FA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49js9e2q3w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 12:45:03 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-873eac0465eso27286306d6.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 05:45:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759927502; x=1760532302;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V4SEeZvSbrbgqu/r4DhrYahbkVZg9swdS/wxQIvKWh0=;
        b=S+JinpDvUF9YBjOaQUwgqrxgDosigWii0HRlPmErjSPIn1X1PWpsaXx97gDgHLFFcl
         lSJXDvvAWeP+8xDY0/yyQnq7U1mZye3FCvO1gyQgP+ppPtQvjyX8l+5w4pJ7d5zQ4v1B
         VcF9VgcKRUIABhnCz4eEQ5Gkxo7/dz4vknSHv+cU9Xh74QLwcV2JhGNyzuMl98X4grE0
         IVOGhyfiUFJVQbPvm5eSdNfc6Fo95EpoNVH1wAv1y4Jas55uWiBH0Gg2QfvZ2CpxACRm
         QjQQd3mfgKxrsT1DpSONXV/5gyhm2Jwo39uJsqzjAowNfnBlgsSZXEktgM/WGmI1d/6x
         f+7w==
X-Forwarded-Encrypted: i=1; AJvYcCUkbEALc99mlqTXtauoq9BpqDSap4AjjZUa6Hy/cQ1tA+xAlWgFLt8LycVqTIgR+BF/yLjQzNGUkCEh@vger.kernel.org
X-Gm-Message-State: AOJu0YwkrmkA06Wj8TIADgDNtVc3UPESVK/qR2KWKOyFSO1MPcQuxBdX
	+3ikopbdy+/HJVy+LaUWkYNVKFcbZpoQ6Wp3gEwBm2b0D9hHnBl3L1VdHtOSmPvsBJ6S1CGhUPc
	kDG3++fs7NQZ24wtzrBbUgPaN0RV6xU/kttnHIFoS+F/XgqJGfhxc1HLQuXjq9DIOQat64zPd
X-Gm-Gg: ASbGnctJDJbEg8ADNfA9faAptl9fkyihvEFUlsFUSR5LU+xRU3o6LipDml7EAfhoGvY
	2CfOls5bpa34XodfwVyk17h/TcpGJeYBe0mG+teFDG23z+PdnhwMIcmPpOo3Vj4OMjFN2zC/L5H
	Oic1sdYg0O0XM7fe0LgkwWlCjb0YXdv8zUkCCqxRA4ux3IB7CrAd1pFlSAR9Nxem5k5nrsXcXYf
	CEC4qIkZH4WINdNzfZJclkDeFQi505Vf9zQCwukDN9n4JEcYPx6q3KS7H4nNxpG5ZlLsZ1YwuN0
	7TmxhctImXWvnvm59qzFX8TlggFmvHRCzXrNokmzXbS/+UwkUPsqLcLywI6qUfB+mVg7IggFwBQ
	wMMHidJexYCqezGqxDOJJosjLdkY=
X-Received: by 2002:a05:622a:181e:b0:4d7:6c8a:4792 with SMTP id d75a77b69052e-4e6eabd0e13mr30200121cf.0.1759927501512;
        Wed, 08 Oct 2025 05:45:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFbnUKO/zYDB9iSF9ESa4QTwR2bSSu9bQ/d2iHEFREb9o0Vh2se/SdtDCUQBFmHWqDx3PMGHA==
X-Received: by 2002:a05:622a:181e:b0:4d7:6c8a:4792 with SMTP id d75a77b69052e-4e6eabd0e13mr30199841cf.0.1759927501088;
        Wed, 08 Oct 2025 05:45:01 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4865a7ee4esm1637398566b.28.2025.10.08.05.44.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 05:45:00 -0700 (PDT)
Message-ID: <20cb3921-1344-4e47-864e-ea99759a1dad@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 14:44:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Update regulator
 settings
To: Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        tingguo.cheng@oss.qualcomm.com
References: <20250919-b4-rb3gen2-update-regulator-v1-1-1ea9e70d01cb@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250919-b4-rb3gen2-update-regulator-v1-1-1ea9e70d01cb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Hrl72kTS c=1 sm=1 tr=0 ts=68e65ccf cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=slaDHjbb3bi5TH5WbwUA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: DYg4dDqRHZ6RNRP0EBqm3KCEzozGZsXB
X-Proofpoint-ORIG-GUID: DYg4dDqRHZ6RNRP0EBqm3KCEzozGZsXB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAwNCBTYWx0ZWRfX85ySLw7AGLSl
 OzXp1hnAnFe4WHcFeYIL/VSH91VvRk8BS6ech62VEyj9Rmqz5wt50IRGepHKcRgYWDwQBAMFHI0
 tOpuKA4lsav91VxkLhfSha0LxXqfRtjye+hYxbgQRTb1bq3RabLRIQPBRXKj8ATLG1e/0A5sUFH
 r2HhY0fNUFAQQrnpuzEqX/EqRGuKc1vYFkmO0LOcqUPOMnm4fRLFNCQnFlFnMZ+tcn8KiuJicxa
 i0VwVyp5twigmupS7P1ukvplOMAgM9uojZ+UaCdnBNMOnHrhM5XsjOeFpIye7O7disfegCgNBVJ
 4MAToU654BmKVQLnMyMmx6Ak6KjWeBVBzAw6l7AgMVzo9fy4+S7LRC2phPcUddpCZ8Pr4Yl84sD
 imc8otPmLq22nFphA1w3ofEwtgowgg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040004

On 9/19/25 12:39 PM, Rakesh Kota wrote:
> Update min/max voltage settings for regulators below to align
> with the HW specification
> vreg_l3b_0p504
> vreg_l6b_1p2
> vreg_l11b_1p504
> vreg_l14b_1p08
> vreg_l16b_1p1
> vreg_l17b_1p7
> vreg_s1c_2p19
> vreg_l8c_1p62
> vreg_l9c_2p96
> vreg_l12c_1p65.

You should rename the regulators that have now changed their
ranges.. I'm a big fan of stripping the voltage suffix entirely
fwiw

[...]

>  		vreg_l9c_2p96: ldo9 {
>  			regulator-name = "vreg_l9c_2p96";
>  			regulator-min-microvolt = <2700000>;
> -			regulator-max-microvolt = <35440000>;
> +			regulator-max-microvolt = <3544000>;

This change is funny, no one noticed that before..

Konrad

