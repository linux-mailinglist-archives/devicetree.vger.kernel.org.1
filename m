Return-Path: <devicetree+bounces-118744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F49B9BB719
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 15:06:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 53C471C22592
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 14:06:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF9CB1494B1;
	Mon,  4 Nov 2024 14:06:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WKfJfpDD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA44613B797
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 14:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730729197; cv=none; b=SIGFxuY1m78cwxfkiKN8dRpKPswzCxxDdvlaatbWIXTa5vmic24rOZyIpVq+XzPx0ELSIA2PwdHaaq4vnfWg5xgtp+a7QVdwG0eVmelGExk8qnvT0xzAojYcH512gKhd7AICh+tbuzx9cwyXMUHWCxrunKCY8qBam9Qau00VksE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730729197; c=relaxed/simple;
	bh=boLrYQ9e50YIzisfXirgfR9tZGcXWIEEhT8FxZQYTz0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=InMgCL/YRoRE/TnUUAHgHz/F4Jun49TjLYhsNNOv6vGFlmjecKo4CKEE3D1K94TPH0yAbfI859fNFSHNmjl/zeFPnumi8iuZmt0x4sMhC1tb4fe0x/0Ip0EFYJ3VRFxURBgzB9YhgvBmNziu7UzmvLmweo1KXtYqv6AtTHuNsI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WKfJfpDD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A4AiFmK024363
	for <devicetree@vger.kernel.org>; Mon, 4 Nov 2024 14:06:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xJUr+78OsAjR1XkAqPodG3wXnB3Itpx7Wgqz/RR6KeU=; b=WKfJfpDDPTvb8Bkl
	9rpgsFi4VTGHxnKZ+WHe4uZKxFHdcZW4ovAHE6N8v4btl1kmyRGiBqwY+MH8Zuc1
	9jIk67u6y/0Nknfu93ZzaWU2/TFiyYGfagsLg8Vw83nU1fiDYge0xLwv/rsDIBwX
	tGLebyFSbcs/JPhfQVUwA60hrKnPaxAc81aCnR6ijtDlBjlOfWlcjaYIi7jmJq+V
	2zJUf2i9fNvGtXaWL+8IkI2l2muEjsykMzUXe7z7SCqhW91onhWLFyYbD79ryF/G
	VmTMWaMzaiZ8gntvd4Pcwe+DAPKsWoyKudij3cVBiliRRHPjbTV3d/96+fQ/H4fX
	gagcaA==
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42nd8hcc5x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 14:06:35 +0000 (GMT)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-5eb61688d1bso277249eaf.1
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 06:06:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730729194; x=1731333994;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xJUr+78OsAjR1XkAqPodG3wXnB3Itpx7Wgqz/RR6KeU=;
        b=py3XhZkyyb+A7axlhAQyUYqGJgMfUaPL+Isji9X1d/2YFNlNtEKFjJr8oY2o89v9em
         lK47Ucf9Bs8+W7tc6CXUeIjMrKk/CCjwGcJ/zQCF3HuhH48vbZO2XUXhkN8+E9yIbRD2
         FoJv1+y9LIm03uE0wi9GL47ixG8m97CamKTy51I4FA3ZCwNFuBwn8HpeT9GbsLoH1AVG
         US+kdPZIz/p/+zAanGm4jNgmTdiPlavgzZf/aOIqS/tjLaVr4IcYTfaWOi2ZNdGdrA0l
         C7v8ikxkk4ZQgKLUuly1GeBArFhw40TzdVgnTvO9dwkylU4oMGetv5Ex5jI42xfbDYEq
         UNXA==
X-Forwarded-Encrypted: i=1; AJvYcCXtUL3CQ/jZkFxvYkD0hVltdkoxG2NYPX6M8pyWv6LVNI+wC3ASoot0CeIe6pcWkuw5wSkkoF3qC+oA@vger.kernel.org
X-Gm-Message-State: AOJu0Ywd0hPCkLKQdI2CuvPtcJbByVrUskdrZPxXCp/lBrJStef8QfTE
	IzMPTub2cd/Led+PF1GmuDRTo/JjlXJbXjr9uWvAq2j/HT8O8uYJT3Xkm9cxCAJoUx05R3EhK53
	Zl7D4bPlC4ct8+0Q2HIOW/HLApBysZBRA4NNsTXRTuIN+gYgALKhk3nAG+Pek
X-Received: by 2002:a05:6808:1811:b0:3e5:f9a6:ff5 with SMTP id 5614622812f47-3e638248adamr8268458b6e.2.1730729194018;
        Mon, 04 Nov 2024 06:06:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG3glwYPgrrn3bLA20SfuRtohDBCQZR/xk2xWQCdWoU3C+XBiGNvqk7NsOLh+xpn27lknn8Tg==
X-Received: by 2002:a05:6808:1811:b0:3e5:f9a6:ff5 with SMTP id 5614622812f47-3e638248adamr8268451b6e.2.1730729193733;
        Mon, 04 Nov 2024 06:06:33 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9e564c6150sm551280266b.81.2024.11.04.06.06.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2024 06:06:32 -0800 (PST)
Message-ID: <c6f8ff2e-bcc1-480a-9ca6-0b55991c099e@oss.qualcomm.com>
Date: Mon, 4 Nov 2024 15:06:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: x1e80100: Describe TLMM pins for
 SDC2
To: Abel Vesa <abel.vesa@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Johan Hovold <johan@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20241022-x1e80100-qcp-sdhc-v3-0-46c401e32cbf@linaro.org>
 <20241022-x1e80100-qcp-sdhc-v3-2-46c401e32cbf@linaro.org>
 <a282021f-5e61-480c-84c4-272049e28244@oss.qualcomm.com>
 <Zx9P+HQMOkJsJGcj@linaro.org>
 <327507d8-2dc7-4645-ac3d-d68ff31a84dd@oss.qualcomm.com>
 <ZyS50DFLhHVlnRtd@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ZyS50DFLhHVlnRtd@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: GLSzR8-iGe80lnZlsu6LZeCO6GjYPWt1
X-Proofpoint-GUID: GLSzR8-iGe80lnZlsu6LZeCO6GjYPWt1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 malwarescore=0
 priorityscore=1501 phishscore=0 clxscore=1015 mlxscore=0 impostorscore=0
 bulkscore=0 mlxlogscore=963 adultscore=0 suspectscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2411040123

On 1.11.2024 12:21 PM, Abel Vesa wrote:
> On 24-10-28 14:10:54, Konrad Dybcio wrote:
>> On 28.10.2024 9:48 AM, Abel Vesa wrote:
>>> On 24-10-25 20:34:19, Konrad Dybcio wrote:
>>>> On 22.10.2024 12:46 PM, Abel Vesa wrote:
>>>>> Describe the SDC2 default and sleep state pins configuration
>>>>> in TLMM. Do this in SoC dtsi file since they will be shared
>>>>> across multiple boards.
>>>>>
>>>>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>>>>> ---
>>>>
>>>> Not very useful on its own but okay..
>>>
>>> Fair enough. For some reason, I'm not able to get sdc4 pinconf
>>> to work.
>>
>> Any chance you tried to define 'sdc4_cmd' etc.? This one seems to have
>> sdc4 pins on gpio127..=132
> 
> Yes.
> 
> But since the sdc4 pins can have other functions and since there is no
> device that uses them (yet). Shouldn't we just skip describing the sdc4
> pinconf entirely as that should be done on a per-board basis?

By that argument, why describe the controller in the first place :|

The possible pins are predefined and physically wired up inside the soc

Konrad

