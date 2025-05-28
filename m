Return-Path: <devicetree+bounces-181169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92258AC6833
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 13:13:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11DFF3A4296
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 11:13:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47B3027A92F;
	Wed, 28 May 2025 11:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SXmpdtcw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D6C214236
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:13:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748430813; cv=none; b=YW2LJEhrghhXXUIrR674cOmo+rZqnsGJL04GImCs+lqf2t9XEmPXKOW3zZhAgXFyLi+XAMg5lgFLpfLAibOWmk+I7mzX3+fUuNgo7MVF1/TDQ6z2a+Yb6Ec3czbuGO0eDRDvKbDVR56efi3WiEVpTFqIPoqkCQedpP2VH21XkJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748430813; c=relaxed/simple;
	bh=kSxeXKRTq2AWY+QK4FBihHz03SpIclgrupOj+3QM8gI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tqAguSBM0rEBntQE6BtNqhycfWXl5QMsc7FJgJQLEBL0Vl3NSeifnNne/V8D1aX9xCIuhm55O7lf+3lqGzgBo3LS2l+gZESpabRKFawT5kYTeAGnmPM/Qmxh7XT+1C+fQLyJOfAB9j0eJWv+sgysIbVRbNjY5AHd8fdUDaU+azY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SXmpdtcw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54S7486s003397
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:13:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vgyuAx7dSshWcQQhWvUbmXixp8HbacWD1UD6odQRfDI=; b=SXmpdtcwbio5lhSK
	rN/v64jtZDFc8B9yTOIX04ce5thjB3uvDghaVCXJFic6wmAcctUmKZSU66L8weja
	cRgkn5jMhPFhuj+WKbIx/Q26n1Wl15ralEzIKH3baDjvZOxBsaNh0soGYkGeOmjz
	OQedSDimJPJ7Q2Np59bTbL3VxXoQTig9ijJFCSq2LC5a53stMbFjA+JNuZ4qBPn5
	8LtrbbCOkzvE0c4CP97NjquG2yabMRQOBpZk/cTBORCF4gNVpjVtMiwmSnvn4BQW
	VozEl3nf97Cp73G4f4fxfxG5/iShGuVIfH06rLzOVJqkueAs2dlmaiZceTbN33vA
	v3oFHg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46wavkusmb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:13:30 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d0976a24ceso79385a.2
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 04:13:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748430809; x=1749035609;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vgyuAx7dSshWcQQhWvUbmXixp8HbacWD1UD6odQRfDI=;
        b=s01NVeZQBMjo2ar0rr8exoKPNGSDuie3HaC5kAJwZpqdbjZ+RoqdP1q1SFAvOmPcmD
         XF4BTRlEFJXNu++QwN2IJDdhMQh3RBLF2VgQwhxSePCbCIDJlgMXaJtOMk9TE7JnAUZI
         vayII2k+5NrkI5FfZiT3XKQxxCe6s4uqQFm3dHE3WmJYgBYN3TZJyjngbHzIlXU2ExQK
         1AXzyYZDTIiswT+GLTU1DZH4hjLOlhyyhdLvs2RIV4E/q+nFeU+Iu57ntqEC1+i4Tk0L
         wU977TkhL300ZajB2v7l9SDdUQwV+iy9+/C1hnVm755RZKZQxx8bBFYgoejknrlsU/oR
         a77Q==
X-Forwarded-Encrypted: i=1; AJvYcCWQH32Qz1CtSMqZ47W6iPtiuAOTvci5cZsG7j4VoDskE3JvbsmGMfpMuwUJ9WvDjWBAtFC5P0gcsFMu@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9nrirVHEjfoa74IqukeZii8Y1N30VAd1EfV50EYJjSfoyk+Dd
	knzGw8X75g29ZUDG6XSzaCr9w6ZB3f7Sd00FgszCM51+BY+mPH0rEnrm+Rdo7K+3RMEa2daExun
	W2MDLTVNupA+FRkNea6Xxm5J/df8JInkfta/08vb9gqu9hp/dyu5YkRdciS/tCHyp
X-Gm-Gg: ASbGncuXucLssZqZWXQjNddF1BPpnWgnGknCxXgzOrB9kGnM6AN3kdA82q1QukfwL/J
	KDqHVzA84VwlA/sL1/wge+x+CI8H1jS0/1AF5vXr1VvsRCE/QrnjWcOqaH+RNyxRHx4m0fFuIPy
	JcqVIyOcXHQXAV8ZfkXnz9Svk2Lk94fRbLb8XNWAITPaUi7pBkhjrhGTJgVgJ4Cb05mCKpFoiwB
	ytBdUAHj3yXCRMJC9s9Ij8g5GM+RJG1CWpFNX4jYGzkPrLarNsgAvJGa3/UX1r42RTzhy3uztNb
	7HWymLc7Yw9g6mfyUHHnDihb2nU/GRes5FzgOhQhtXWqg/Fb5LzV1wNqV/2DLTdwWA==
X-Received: by 2002:ad4:5c65:0:b0:6fa:b954:2c35 with SMTP id 6a1803df08f44-6fab9542d12mr26075876d6.10.1748430809493;
        Wed, 28 May 2025 04:13:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEeKRrREHf2m6YYb/SYCGixIP+aO46rPYYipbA1Vi8xkIBSTUT+o+9WPcrWNSOLCsqtY0Enyg==
X-Received: by 2002:ad4:5c65:0:b0:6fa:b954:2c35 with SMTP id 6a1803df08f44-6fab9542d12mr26075586d6.10.1748430808982;
        Wed, 28 May 2025 04:13:28 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad8a1a1323bsm90175166b.84.2025.05.28.04.13.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 May 2025 04:13:28 -0700 (PDT)
Message-ID: <9037fefe-aa40-4884-97ee-b81ff8346944@oss.qualcomm.com>
Date: Wed, 28 May 2025 13:13:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/6] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <styd5gjksbsqt7efylpfn6bgwgyvt6zexxiooihjsnmp25yigp@unq7dor6gso2>
 <447c3b13-8d6d-4bcb-83c1-9456b915a77e@oss.qualcomm.com>
 <inpfuxskvmrebxitqtqwzvpnpicibo6zakgk4ujpcrqrpef2vw@nhclj5rg7axr>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <inpfuxskvmrebxitqtqwzvpnpicibo6zakgk4ujpcrqrpef2vw@nhclj5rg7axr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: e22-jpL_UMc8OmLKEcumufrQG6PAftlI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDA5OCBTYWx0ZWRfXxqWp9OnUUqUS
 OGV6XDQbJRCz1SBTZbDih2ewf00SdIqia0UscVESCXuxGvRm2hBcbll1VMXw8G4e8Kxu+o9BQ7h
 gnH0ndujR4R9Y51f+Jv0yuIjReragrIhhy3CauPa1dXD8EM+dmVeYj5dbOW4sslIYkv6qNUvNFU
 /Co/0GwoNQI8fHjwPSgjUCfti7adplwc8OiBRWS07WhEDB8ZhqQ8dhEGuBdFISYal2KyJT/5eAy
 /lNp0n/fsIxfs+WYdeerR1tsRMUwC0lDaAbABnvDaYWj9I4UavbCeaeg5G+SGv+hGobuCuQZoAr
 J2YWUfgm1ys47UFLgHEufaRwRJWAnA7WBH6g9iqv1Jl4qjj4iuiKxj7GP69SQQBW/xP4iWzggqY
 tvtu2fIYqH+Xk4Ns6YDU2/fo4mrzKFemuTSWU8ywgeDQeoryXVglPj3krmXTrX9BGhPFlzF8
X-Authority-Analysis: v=2.4 cv=fMk53Yae c=1 sm=1 tr=0 ts=6836efda cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=PC4tWo4A_DL9_zoQyE8A:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: e22-jpL_UMc8OmLKEcumufrQG6PAftlI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_05,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 impostorscore=0 phishscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=564 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505280098

On 5/28/25 11:00 AM, Dmitry Baryshkov wrote:
> On Wed, May 28, 2025 at 12:24:02AM +0200, Konrad Dybcio wrote:
>> On 5/27/25 11:10 PM, Dmitry Baryshkov wrote:
>>> On Tue, May 27, 2025 at 10:40:02PM +0200, Konrad Dybcio wrote:
>>>> Register a typec mux in order to change the PHY mode on the Type-C
>>>> mux events depending on the mode and the svid when in Altmode setup.
>>>>
>>>> The DisplayPort phy should be left enabled if is still powered on
>>>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>>>> PHY is not powered off.
>>>
>>> This series doesn't seem to solve the USB side of a problem. When the
>>> PHY is being switch to the 4-lane mode, USB controller looses PIPE
>>> clock, so it needs to be switched to the USB-2 mode.
>>
>> I didn't find issues with that on X13s.. Not sure if it's related, but
>> on the SL7, after plugging in a 4ln DP connection, I need to plug in
>> the USB thumb drive twice for the first time (only in that sequence)
> 
> Might be.
> 
>> But there's nothing interesting in dmesg and the phy seems to be
>> programmed with the same values on both the initial and the subsequent
>> working plug-in
> 
> Please try using a DP dongle with USB 2 passthrough (there are some).
> Or just emulate this by enabling DP PHY / DP chain for plugged in USB3
> devices. Would you be able to see the USB device on a bus?

I only have a dongle with both display and usb that does 2ln dp
(I tested 4ln dp on a type-c display that I don't think has a hub)

USB3 - yes, USB2 - no (but it works after a replug)

Are you talking about essentially doing qcom,select-utmi-as-pipe-clk
at runtime?

Konrad


