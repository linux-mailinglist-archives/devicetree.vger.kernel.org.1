Return-Path: <devicetree+bounces-212627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8FDB435DD
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 10:36:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2051C17595F
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 08:36:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B2822C11D9;
	Thu,  4 Sep 2025 08:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cyj21BVX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD50B2C0293
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 08:36:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756975004; cv=none; b=jv35qxN42tzfbajpQ08mQShkuvCcm9QzZsw0BdipUvyJHOrs7l7qldnkwMQbmCGVQDCNxAo0z3cjHZdTxsT7Qan2bxJb811fpaF1MZMD3EXUOWtj6nV4cyyMhSYEPSTUYdruBWNjPSHx4XbGOhcmjFE5J6hWRK7x8bAEAjKGXj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756975004; c=relaxed/simple;
	bh=wlXLu2i/WQYmekM/QAUNxFzAI8qAFenvyNsA9m4Q1lA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X3JLgs9uiqxw5UXC0WDpbM1FhZISpUm6wiqqeAPBNMrz0bZ3PBWq88qtgPxNrnZBPxc1WQLoHFuMiwZKWXk8GZopTdFrw0iLGrlTWNFuT1+E/9FaLZshAn3gGUMkJ9SNSdBRe49SCsfU2zlHTt7OUzgxvxlClxY3cFNb5YkEZqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cyj21BVX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5841QoLZ017515
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 08:36:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ob/9EPKXbAlmq/wMeNAH2aKycYOp6bcGcPl57wUYZt4=; b=cyj21BVXV4SsgpDw
	mq3KR6OkubGAtGu16ar7rYRYtUBmKFSUYhUKDOkIKlyqQhNHRTLeKxfASbUHBDxr
	Y/gJA/zaECPwGXO3MXGNbWF6efQpckYMPMcDWkye/0meX9LlOmwcEJOwm1kPkx5P
	lioAugAgFPBZHvmKQUN6SAoNhca+47+ADh+is6aTd7xymm7QoCIvdjZNtOmTORi9
	h5H32XH4D2XBff7iTmWuKWdliulxSFqx2gyA8wA56besVkcs2y2wHtkrvLS2QLur
	WTxRU6HWjH5yZdYcpe8fy3m4NZhRHWWYo4+LX7bv7+5KdIyGsuofXsqBrpNBoSt8
	UUQkGw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48xmxj3bgy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 08:36:41 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-72a0a533d63so145606d6.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 01:36:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756975000; x=1757579800;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ob/9EPKXbAlmq/wMeNAH2aKycYOp6bcGcPl57wUYZt4=;
        b=G6rZsKDGiQ5e8z5xBi1CX2+suv/8NNxsoyaTR+z8HrpSwHoUhXIR28TkhMTu/PbUmR
         BYIAJjJa5mnyYCB/8ghgmt5dhM5jMB3d6iqE9RTRc8KM20DSy+U5aCzABhoW/vjAUGo6
         lzSJab7Yfy0qfA/72R7wpfq1zUvKG4zzk4i9+2qf7hSBvUiYJepBBy4TOeDnbgUKzwb/
         DtpqZkdKdN6SkszhJTIe9ZxdX0lLOBXPfyk6vvbVHy/JMjFWUUhP1tfCIrxxDVT4bQKO
         VqX71lRAYxUxbL3feKx8O/p9t1M2pItOPLiXqYU60OUWyxssHmMwHb4X8W5G2430C5KY
         HZhg==
X-Forwarded-Encrypted: i=1; AJvYcCWahOx02XnRI489eeU80EPYQsVO/53HyKNUhJE518EiTjUvKoDO2juzd8hWHlCl7d0TtpoZkGZ46Fda@vger.kernel.org
X-Gm-Message-State: AOJu0Yx900WgFmlyd1kMAGyD7mwq8dtlqk8x+TM4noK0ijZ30fxf2hLw
	LXH0GDD0pbCVL1UXY2DOXDwrI0nMT1noeBFtCEzzWYgzZVHQllrd+f1YAX5HqLVwV6k/xbo/KVi
	j4p8S1QywoKBsJch5fgA9PLiczAU5sd+NsLphWcPSUF0h6T6JIyh4mb2juEB5cdaO
X-Gm-Gg: ASbGnctY0tcFlQmVUXwdpXP+idmS7ZHX5sbEWCKdx6F4rIlsfXx+dujVRvx+4LZ3ttn
	NDHPFRt/vaAB2ibJq6XEugCCT+iKJ4spZEDZNpwn4+EKKnSAwXkw4i+0DrXwpvlkRong5m71uH7
	Uu6DnCub8Y+dinuc55O9+yQABbziOHku+PYgOruqlC5+hrcxrNh7+4bDhCv519Q1hgmIt79sGq7
	4yUlEZYDC7AdbqUaPAksgZoM5osQHGdWAWTmnlfjMpPi5JGYt0Pt5/rXZC5mhpH43t4uyw14ixS
	gbwACapPD/6IGpqPkxzp+zylV0WikbambilmPCefQ+OtLEtYknAZyASLpFq8RuZLotAqSM/5kZq
	P/clLT5u0zusuFI+4APk59w==
X-Received: by 2002:a05:6214:5006:b0:723:dfda:4da9 with SMTP id 6a1803df08f44-723dfda4ef2mr40388366d6.5.1756975000370;
        Thu, 04 Sep 2025 01:36:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGvAsFu4ylylSfq9/uyfJ4vjffVIaIc5Agek8eq9JOpd99sdw5nqzrfMbFYkou3AOlz1I8NHQ==
X-Received: by 2002:a05:6214:5006:b0:723:dfda:4da9 with SMTP id 6a1803df08f44-723dfda4ef2mr40387986d6.5.1756974999549;
        Thu, 04 Sep 2025 01:36:39 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61cfc1c77d0sm13953740a12.11.2025.09.04.01.36.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 01:36:38 -0700 (PDT)
Message-ID: <be87fb2f-7036-4039-8ba2-63d54a9ae732@oss.qualcomm.com>
Date: Thu, 4 Sep 2025 10:36:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 4/4] arm64: dts: qcom: sm8550: Add max-sd-hs-hz
 property
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Sarthak Garg <quic_sartgarg@quicinc.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        quic_nguyenb@quicinc.com, quic_rampraka@quicinc.com,
        quic_pragalla@quicinc.com, quic_sayalil@quicinc.com,
        quic_nitirawa@quicinc.com, quic_bhaskarv@quicinc.com,
        kernel@oss.qualcomm.com
References: <20250903080404.3260135-1-quic_sartgarg@quicinc.com>
 <20250903080404.3260135-5-quic_sartgarg@quicinc.com>
 <6deac56f-e21a-4447-bfa7-a414084676b8@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <6deac56f-e21a-4447-bfa7-a414084676b8@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAzMDExNyBTYWx0ZWRfX70rq6WjUq6ob
 fqeRodRRGPTXMoTBIU3F8HPWi49JcpdNHRkuA1bXI8zTvpDwSko6YZcWUHmS+Ed2sid6+98g9Qa
 fZ0XkKFSkHnbJ92J9LmCnjYhbC5U+QDumEaSRAXW2oucRa6j5pkE3eT/N3PEKQXYZbaFeDQvCBj
 e9+PslpatTX8CVLpPklG5vOHvr7SoI2l08fR4qS64x3wqp6IHPEQp0JnNPpnlY3V9B9TwEE729n
 Xgovs8Ln/violuA9hqP/tvC4cufA0fa1ucCB3Vk58LNsNQXdd/bG+s6aYsWPQ7WjRGyR4RTJJsI
 IaAW/V8wv+ErKUDxFR2xUjokaM5nyympoJoo3G+stQ2ZzBP6uUvwlAbFy+MDo7XgqWjo+njUK7O
 UsdMZBoW
X-Authority-Analysis: v=2.4 cv=a5cw9VSF c=1 sm=1 tr=0 ts=68b94f99 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=yp4Pn_RnPQDUuFz1ZG8A:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: bgjYc8RT6z3UY2cm4Nw_tXSVNPtA96Of
X-Proofpoint-ORIG-GUID: bgjYc8RT6z3UY2cm4Nw_tXSVNPtA96Of
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 phishscore=0 impostorscore=0 adultscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509030117

On 9/3/25 10:21 AM, 'Krzysztof Kozlowski' via kernel wrote:
> On 03/09/2025 10:04, Sarthak Garg wrote:
>> Due to board-specific hardware constraints particularly related
>> to level shifter in this case the maximum frequency for SD High-Speed
>> (HS) mode must be limited to 37.5 MHz to ensure reliable operation of SD
>> card in HS mode.
>>
>> This is achieved by introducing the `max-sd-hs-hz` property in the
>> device tree, allowing the controller to operate within safe frequency
>> limits for HS mode.
>>
> 
> Probably we will now replicate the same discussion... And it will be
> happening every time you send the same and not reflect it in commit msg.
> 
> Bindings say board setup, this commit msg says board config, but the
> patch says SoC. This is not correct.

Both are correct, looking at the problem from two perspectives.

The bindings description mentions board-specific limitations (e.g. because
"the board's electrical design does not allow one to achieve the full rated
frequency that the SoC can otherwise do, in a stable way")

Here the author tries to argue that almost all SM8550 boards are broken
in this sense, because the reference design did not feature the required
passive components, making most (derivative) designs sort of "broken by
default" - and only some (if any?) vendors decided to go with the
additional components required to lift this limitation.

This in turn makes it fair to assume the developer experience would benefit
from having the SD card high speed modes always work (with the slight speed
cap which may not be required for the 1 or 2 designs that took the extra
step) without each board DT creator having to track down this property
separately.

Konrad

