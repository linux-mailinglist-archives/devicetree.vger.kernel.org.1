Return-Path: <devicetree+bounces-177417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E27FAB7741
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 22:42:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 734B41BA69CB
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 20:42:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2666F29617D;
	Wed, 14 May 2025 20:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fUb7GOAh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90551296159
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 20:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747255312; cv=none; b=LHNLGProrwApfYPOxiM1c0r4jO2Z6p2KKNM3uzs0MluVdsuwqX+PqAMSb2Q2fMgO+RgqjIaQU7WJo/BQTu24mWV4/uBxuLDvBHdhCaWn8whKF7DXF2Fsy/AKCciTijCZ9hmXjzkNa89C/SYloqRotp2FqfUHZqVoD7dMFOKfrlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747255312; c=relaxed/simple;
	bh=rUK4scPkzZakFgDXHbi8BfoYHgboRKWeDbAQdsEl4zI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ajOEkpRBKmVkQBI0eXBLJmDaTsnqMo36tXUFBAtsbLlg6+s0CoQTFGkY07a+zf2YQSOJcFGyIMrvq/UTVwp4e1RhsQZ0J5U9x4t62k3CYJ3uc2iLEhE35FE73xv4lrn8TYeS+99oQvt90V0qQ/RircooLuUDQ7A3OzAiJwHIPWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fUb7GOAh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54EJDpiL003408
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 20:41:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Mjtp2bpakb8zijMOh2vfgyB1
	1iNvN+koMsm1Lt3WJgA=; b=fUb7GOAhZV2NpdRKbTaWEDI5KuVpmLWMoYGqJqy/
	pBtd4TeJ5uWbj/95o4bpffcNXZTqRLrUtRlKKdVt0ghSl93kyHSdR496clxjSSPU
	FrzJXx75Dn/u7A6m4GAoWWLVKTcuBeUrZTk1ETww8r/guLZT6X3JaETba9w0u51L
	vaH8LHxSAfTGy/CdS7VvfD+XzicvcsLnU1qLbCxueshdrf4K+KWso+ihGXP+Qrw4
	9o8IQV1Cn2MP9hkif0I9UXTHALEJMe1UjVGnpbx03isCpSJQUPWmAzwAywr9ZOWQ
	wy2C64awwjjO9dV3X6lYBaUV0i/iI+qIGkUM8XwE6aTK6A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcpc0vh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 20:41:49 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5f3b94827so35369785a.0
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 13:41:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747255308; x=1747860108;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mjtp2bpakb8zijMOh2vfgyB11iNvN+koMsm1Lt3WJgA=;
        b=tyaRYMK/ZOtaFC80k+m7ykFNj14nD7DLvlh+kuYjfllk5MRKtI8ai7ehGO2vjTVy0c
         Rn/A/Xal/kPaXz4HoNPElFlps9jVjF+IjJ2SZ4UpCsZdsT4ipukeLJLKOAko+f2Gp/tS
         N/MAVERUcnO99lSSBOU8v5yE8sAKnpgt9dBLwZjau10+J7S3KcvkNcZsu1r7gpaxbezE
         djO/GNkbu8WffgtZ0LQPQWvPOTrWVv+Tj9sr2t71O7rqj1Ps5R8OfU/xkiZGsRVkT7m4
         cpouPt1H50vYxjFDf0r6/90Yq8aN6wJKEAWNWTDP9E5JTSFccWnof9xpR+JAgcTtVqHF
         mqcA==
X-Forwarded-Encrypted: i=1; AJvYcCUebTrVSiqvxdTK1RaEJhqsbcEP21UmJTGMlKLXnOlFHGFwiLc2SpDGQA3YetZQHrMIEZ6KCuMTgUAR@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6RMAq4dJ76U8npNBzJmqVzDA3y0B+EnsvghuRcMeLLOVJopmT
	3xgyUghanCyLuNiO6O1G0fPwQylqWeAZsiK1pRkld96mk6FNADAgSRnX9sT7RHYi/tonJjP+V3f
	OYAQBltfg81q+DZqq9vwoqgp9BPZUE2blbJkkKfP1EW75fWb4taV2KheLS8VR
X-Gm-Gg: ASbGncvBjo8IE9hWCx89eygvlGGwBuglkIN8QvHuGMxOYMAcKbBQkCQrILOtkno+rtO
	d6OOXE1OR57EO53s+9qGJWSW+rx5COD8IgFR0a7LqxAtrmJ4eJHvKYMxYpj5ShCkhNhUPRrxQcv
	Y7Fc70hY+XAAa3B5sFonIwAMxHGVBnpy0PxliSLSnVJbh52BlYd4bYhKEZpd3vjBb3Wr0yyS1C7
	oSUslevy3YtT8PRh8MEbYhLXzl5qzveWeHBhIvov7jpoEyhc6x4F0WRK5v3HQKRt4xe5G9HFhcY
	/j8HeFI0JIyCoqFYl+LnFwQTFrHsSEt0nRXCecfA4/rPBCWNR/n4coxjqBbFTNYF/PpiscNX7W4
	=
X-Received: by 2002:a05:620a:2904:b0:7cc:7704:bf87 with SMTP id af79cd13be357-7cd28847321mr718008285a.42.1747255308100;
        Wed, 14 May 2025 13:41:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFIv0FZP5V22QFAaqy0UmracF7uLbzENjoAZw0LJM2m+3CM+j1fWH7H1eegN8tzKPugcHv6GA==
X-Received: by 2002:a05:620a:2904:b0:7cc:7704:bf87 with SMTP id af79cd13be357-7cd28847321mr718005185a.42.1747255307745;
        Wed, 14 May 2025 13:41:47 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54fc64b700dsm2396390e87.130.2025.05.14.13.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 13:41:46 -0700 (PDT)
Date: Wed, 14 May 2025 23:41:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RESEND] arm64: dts: qcom: x1e001de-devkit: Enable support
 for both Type-A USB ports
Message-ID: <knljchftq4rl7ve735jmqso2lhybjrmz2axgd2xrqr3k64g6zy@f2fx6auvb4bj>
References: <20250514-x1e001de-devkit-dts-enable-usb-a-ports-v1-1-8322ca898314@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250514-x1e001de-devkit-dts-enable-usb-a-ports-v1-1-8322ca898314@linaro.org>
X-Proofpoint-GUID: Zt9OWkXQSJe1mq9jLH9gph8f1xdz7urT
X-Proofpoint-ORIG-GUID: Zt9OWkXQSJe1mq9jLH9gph8f1xdz7urT
X-Authority-Analysis: v=2.4 cv=cO7gskeN c=1 sm=1 tr=0 ts=6825000d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=-ogRkZ1lWjz2smMNko0A:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE0MDE5MSBTYWx0ZWRfX7Ct1VKI6MTn6
 J2zwOeAmpPbsufspFllLRfjZEr+R0Na6vOgFH7G6ysIyfKlUFoxC5s8Cr5C0uzt31R5vBO8cKCY
 h37mFUzV26HM7GD+bjKfNHwxCsorNSk84/4zxb7ND2+HbIinqP0uuFIeVJcJEe8qf9HOocMYp3K
 oxVOAXaZknpWGkVajcwn9kQ2tRwAYbepvSPb28ZYK+RfMGCpK0neiB8lxMAan6OQcHf9Wr/pEal
 SYEOr8Cb4AyjizOo12uciNPXvvGoeqxHKdVaWDLrJan0Wc6g4aJYcSuXH6X9Zojfq5uT7LoFYr9
 k87VzfHDuqfhK4NLnYqLgWpgmc3QOrOIyLVU3KdxSNZixP6LEXWlPDgLnjh48BhrZqfLCghpTZa
 JIJ1388uzNUzPgrpLp9pj54rb5J8PJAI7koPqPKmcDhwcSRzlq0XEk9kqii/YBEfSjjMScSs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-14_04,2025-05-14_03,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=381 spamscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0
 adultscore=0 bulkscore=0 malwarescore=0 impostorscore=0 clxscore=1015
 priorityscore=1501 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505140191

On Wed, May 14, 2025 at 11:14:30PM +0300, Abel Vesa wrote:
> The Qualcomm X Elite Devkit has 2 USB-A ports, both connected to the USB
> multiport controller, each one via a separate NXP PTN3222 eUSB2-to-USB2
> redriver to the eUSB2 PHY for High-Speed support, with a dedicated QMP
> PHY for SuperSpeed support.
> 
> Describe each redriver and then enable each pair of PHYs and the
> USB controller itself, in order to enable support for the 2 USB-A ports.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e001de-devkit.dts | 86 ++++++++++++++++++++++++++++
>  1 file changed, 86 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> 

-- 
With best wishes
Dmitry

