Return-Path: <devicetree+bounces-254364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0737DD17892
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:13:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6B4523003862
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:13:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39F833876C1;
	Tue, 13 Jan 2026 09:13:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FLYwQYyp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Yq2/jXV3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7236C3815F6
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768295622; cv=none; b=XrvQs9dNtU+Ds15UIQQK7NWAAfLdoVppMNHlBJf1tr+LTqdVqYMmunY3jR0ILBCmgNGb1h1Xd+W3w/7E3LPyQn9ofLSpHDt4m5K1mLaYB9HfcmWs6hq/Cm6RWnQcVSaXS43pDH5bN48PSylH7jkIcLIpPA3dq9F0rhCID04q1zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768295622; c=relaxed/simple;
	bh=Q1wYa0r1Hyd5dnZJUXucqongJqDvGWFO8VfhCJnw0Y4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DM3KmDQfliqriXWulPaa8QjOotK6VWRknmeNRFqXVi6IEJAIJWmdnoypvW5hr9BomvVQ1ij8austMNOA/ohGKQFiUGV65pqCGUSYPoPikZEAuqcvR0RO8X0FSCzMKl9ejyrFnJtfs5O7o/8s2YZNcW+/uiozfwfn7usX6gb4+D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FLYwQYyp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Yq2/jXV3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D7sdOx3300252
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:13:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q1wYa0r1Hyd5dnZJUXucqongJqDvGWFO8VfhCJnw0Y4=; b=FLYwQYyp+BA6tKSF
	3v+UnT3JUPuh30aVItflTjHPpQoEk+3ac1eOapGW/WIxqE0cIvqFWHb6hWG9n+KS
	tLpSaekguF8y+pH43JXz+kb7eVToX5C6x3HRHGNTwc1Ce0YL+pLExjhbGtnWf9kN
	KAWTmGxjfk2UAHB48Wu7XNSsiocBVm0rAI0K/ZLpHe8bvo+CsXUJfhdXw9VChqy1
	umHyUwGCNCr55oFrAlrgcBeKo6h0bBw2FOK6ICkA2FnIwhSrmQJc05EQ8tXgg/vK
	cN0+DOC7jdGxSmttdDJg9q5cgaeRD0qyGIEJ/fZvD9B7X1cPJbqJ3MAaLDBvlnc9
	0Zb+3g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bn6jma4xh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:13:36 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c1625bbc20so175850885a.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:13:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768295616; x=1768900416; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q1wYa0r1Hyd5dnZJUXucqongJqDvGWFO8VfhCJnw0Y4=;
        b=Yq2/jXV3Yr56QsqEyVcmE0lgySOjPcKfW/UK5p29DOat/JxVumXUiNPbv7ZRjNFxH+
         LGd9/AbKkE9hoM8Q54YJ0LZanLfWL4jGut1odKapWmnI1oZL4S4qWzx2zmM/mtxW6sxK
         +4PcZf9/tw9/sXKM+sYNXsQT/LRY7fet7q3H2vmRf37Eh40qvZhH0SHRDxTDC7IlyTUs
         sWnfYNUzJ7ZGACJ7cnqjWeHib/L8HnoaAe7D080iLhWeN0vkHbhYgoChnh6rW5JUszoQ
         aC2x7YEmytcHD1UsdfTy+c3fYDMCzhAY8opuMNy8KwdVYsnhG111nibk8OMwf7uFFGqd
         2s1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768295616; x=1768900416;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q1wYa0r1Hyd5dnZJUXucqongJqDvGWFO8VfhCJnw0Y4=;
        b=lHv4v1LDZRS1Yeb2uRON5/C5Hmo8gaKBPWNi/noewtQIyaUBDnICLjRGwmVJlMM3+Q
         NFPbL7hYLSNcDIz35MDEVelOt1Do/A989moI1CnfTwxCcFVCgNpWtXFG7x88U0zZVrsV
         oBga0zJqVqAwKEJV09QdZ91uWSzK2WIIaKHoROeKgXmhHEMbdfyXrqNvABmQSm8PKktK
         mpYxVzIoPUGTVFBNIhVTAms1XDwsa+p0bsEznv3jxOOzG10y+jHqXE9K8As/izt316eD
         pxJAj4VQtEG0WFHLcJhOrV0ngB+CVUGcActx6/sOF9ZHBNrhMAVoWEpsThkPwdpPXcgT
         lHxQ==
X-Forwarded-Encrypted: i=1; AJvYcCXTI3HDg2VP1Xu7UYgvpBRRp8Ic4Tar6c5ZkTMdQ4tFBODX9S0cknAZl89TF9wPTHkZoJ6Olf1ehJ8z@vger.kernel.org
X-Gm-Message-State: AOJu0YxzFpfpThJ9yS95kYugQJ86PCrhXqJhlZ5SlMY5t6Ys4GsgyykU
	0gaCFHiIItlgbo9CHCPtLzyKJrbl5A4lpnyq+N8Re2/BvJpmNwqwlgVlaM4ssmG1+Yxc/l0nMes
	HOCz2sx1UZILwQwrlMWYczrpWXspyGlTSvaAhYKSz/sq/NKQUK/cFtY4dP/OdR6OT
X-Gm-Gg: AY/fxX6vn4INxbYHH4j2wQcn9Vvhv3pcvdqtKVC4sGoc0q2EvhUxpq0qD9oyTV4S2Bi
	QMII0uU5JThcWiLqnwCrY6gfSAeaD66g4HYe9aZCh86t8K4u0FZurq0Z0YCdO3G/cfCbgH3mnhA
	NJsYTwVHqzqyljJ150lpiF8WuvDDU9AW17NyCVb1WUx4Oog/OUe4BQQUy6PWW53D/pI8MsY38Ch
	GZ9hcn2uPkkip8kB0YO29ZYVJ5eoT1zlPhTw64NkKO2wNM+tgekBkvvdrQmshrLSrH72UPNbMJC
	PXgcNnktVBdN9evLARs4HpH9bxcf/zZ7NP4AKkjJJ7uLC7Wr4SYcam/frXINaaLdy9+ewO8YDRD
	I79Z2qbd9i6HY1Vps4vtKUFbEy9IQn8eQ+W84nAEZlx49rCR/pWmJ9CD2coKj5mWDHIc=
X-Received: by 2002:a05:620a:1a17:b0:8b1:a4dd:3d66 with SMTP id af79cd13be357-8c38937c32cmr2408382185a.1.1768295616005;
        Tue, 13 Jan 2026 01:13:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFE8mvcWRAOYV5ntkCc0OUS0wbdHsZPJoeeWyKuzfEDiYGM4KpwhZ7FxX+eV+Ru1vacAffWUA==
X-Received: by 2002:a05:620a:1a17:b0:8b1:a4dd:3d66 with SMTP id af79cd13be357-8c38937c32cmr2408379585a.1.1768295615516;
        Tue, 13 Jan 2026 01:13:35 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507b22c3absm19741005a12.0.2026.01.13.01.13.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 01:13:35 -0800 (PST)
Message-ID: <68cde914-0eb9-49bc-a2c1-20becb91469d@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 10:13:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] arm64: dts: qcom: sm6125-xiaomi-ginkgo: Remove extcon
To: barnabas.czeman@mainlining.org
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Gabriel Gonzales <semfault@disroot.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        Biswapriyo Nath <nathbappai@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-hardening@vger.kernel.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, linux@mainlining.org
References: <20260112-xiaomi-willow-v1-0-8e4476897638@mainlining.org>
 <20260112-xiaomi-willow-v1-3-8e4476897638@mainlining.org>
 <57ddf3a4-8e4a-4072-828a-9145f1f30d12@oss.qualcomm.com>
 <9063644cebbd401057533ff11df3c9c1@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <9063644cebbd401057533ff11df3c9c1@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: tVjyzUoYn-hDJkHa3qx4F_zJFi1Esjzv
X-Authority-Analysis: v=2.4 cv=SK1PlevH c=1 sm=1 tr=0 ts=69660cc0 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Uyhorv2uAAAA:20 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8
 a=0eC1ZI4lsAi7hr2-BaMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=AKGiAy9iJ-JzxKVHQNES:22 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-ORIG-GUID: tVjyzUoYn-hDJkHa3qx4F_zJFi1Esjzv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA3NiBTYWx0ZWRfX6fCTjlwOtrXJ
 gM+q+jEZqjX/lq6JenMpcFBh8ELH6/iu6A+RsHMbXxXWT31buCmNQb9XClCyyLCJ3XuoO6sNVm5
 dQKAH0f+o74BE5YEnsvvG8fURS2nmvOA2rDmH56EIQvS38wBvvesVSkgId91OiKIB2met+dCiSO
 PWpEtp/x9SlnpZPoBr2D3rMcohxW4pWdSHRac+EQKZGR6rSMKeM/MDb+Xuh0P7NTJiik3DO09Wc
 AtMP/mlZUg76avevNKzk4l5+lVv6xOVlDGenV5um9EAy+xXutqJ6emJIKfBCG1ypiYG0jZhs96Z
 OTF7T1SoJ3O7hgTWanSRoZAaSjrqgIEOs4jw0f9OWUl1L2aqdzxGmkFW87Lj1vPLLF59NUDbRTQ
 uSgnKdzYp+u5g2hKyEQR2Po2F4Yaqf4VwpIhcRMqmnvI5DaPVVsqlc8lem1JFCZvL2Es2ba6LnD
 0rO09oS/vZtkwJ6JDsg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 clxscore=1015 adultscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130076

On 1/13/26 10:11 AM, barnabas.czeman@mainlining.org wrote:
> On 2026-01-13 10:00, Konrad Dybcio wrote:
>> On 1/12/26 9:13 PM, Barnabás Czémán wrote:
>>> GPIO pin 102 is related to DisplayPort what is not supported
>>> by this device and it is also disabled at downstream,
>>> remove the unnecessary extcon-usb node.
>>
>> If you put the phone in fastboot, and connect a USB3-capable type-C
>> cable (making sure that it's not a fake one, usb3 ones are noticeably
>> thicker), does it show up as a SuperSpeed device?
> No, only high speed is supported, and qmp_phy was changed to nop_phy at downstream.
> https://github.com/MiCode/Xiaomi_Kernel_OpenSource/blob/ginkgo-p-oss/arch/arm64/boot/dts/qcom/trinket-usb.dtsi#L99
> https://github.com/MiCode/Xiaomi_Kernel_OpenSource/blob/ginkgo-p-oss/arch/arm64/boot/dts/qcom/trinket-usb.dtsi#L89

Alright, thanks

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


