Return-Path: <devicetree+bounces-224476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B2ABC437C
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 11:54:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1D43F4F00DD
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 09:54:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 251972EC0AD;
	Wed,  8 Oct 2025 09:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QU7X0GnK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EC662F1FFE
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 09:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759917200; cv=none; b=G9PAUfWkFT8dp7uLy/MrkKjU7r8I4EXeG04SEqApj0JZPogjdUmJZ0wWBRcxFxr+g/+M9gjjgFM11vudJbpt/6ehQBI5/LQaKIpz8uObVOKRMX+2MtDHeecAQehpb+6pHvzcCKG0PgOI4uD0QTPp/5M4u8AYeKlFdxGZ2veHeDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759917200; c=relaxed/simple;
	bh=A/ljxTaixvVaouEEi360sIvfJdNqBvUqEUW4PZCQ9Js=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BLYNaGn6XNDsR6IabOMBC3PnhXUgeCnplrwwTiXkWBQeI4zHofSVhH3NQG5sPqso19MYjcSeK2b01JgBRWjSR3saPy4GVC/+chX+ff3iCGhovs+SrJzIEPQulGeGb12XoGGndfIC9Wb9QQAyyuuYd5mPSCSm52ABCY7C6JmqPrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QU7X0GnK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890SJG021224
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 09:53:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	t3d0Ehe0bvI1yeWqOhiX38fptBoU2YBdrvlRe0FAgx8=; b=QU7X0GnKHHJbtGN+
	pYdCK/pZRowE3bxySmMkpsX3IpW2oHHmL+x9dlo9dFmIBAFU2JxkxKaS1rznpnFc
	gL/8A6S/qOdG0GzenBkRrgvW0xbYosXTsHP7gbIfhf82Im4C5aEySxPQFO/84yp2
	IJlQ2eigXKV/06dHKH6078KU5UftydZp7Btuk0AZqxiLeeSsiiSHZzncZWUe5EGP
	y4fqhoSgunk+fR1jhkOoK+tWZm73keBh1VF910bqlsNvFuMLcK/wUBvv6qtmjuOJ
	E9GmlkzNFM9GAJc0eC5RDPcq2bvdq7M4V6ULD+/UBafzumy+AjEcO+oG7dfI76cm
	K/bb8g==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jut1syax-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 09:53:16 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-850553dfef2so19949616d6.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 02:53:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759917195; x=1760521995;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t3d0Ehe0bvI1yeWqOhiX38fptBoU2YBdrvlRe0FAgx8=;
        b=k+aJtbMM7s+06edrVQ7HvHcChq712YJ4M3s4aeD1jdKUCgNHPQuI3AQfU84w2kC9gf
         kydGLfx1D9kjXjrHxW2ZnfVI8aStyLlY7Fyk0k/xiTICq9L2paP8tnCYHW+UdDEiW2Fi
         Q/DGner/KmU7jscgwvIG7WUTj7L1uFqIlcG1G6zrBKDhhJH4HL0ncmJ/hvNTPGMWwlj4
         XPW+mfBqAk2FMIANmTWKBXd1X69KrKC+G/mlcj7eZ3Qh7f9k/WdVQ42dYzHrildfLLAZ
         uwxg5QGH42VAjnMW4Qi8qbHa/maIwUd/JPqLZlFrin8WRc7IrkB2LlWGBcRzf6abIL8e
         qJKQ==
X-Forwarded-Encrypted: i=1; AJvYcCWtxvBfaA+q7gA/A59daFif8Aga6IEc5c3Y3GPmC+YkB+ecRski89pSr1/HSYuvYKUWQP9nkOG6ZgMz@vger.kernel.org
X-Gm-Message-State: AOJu0YxG6nXp4M7v2X2+FbXfbCGXzf//4LmvfSuneandFDA5S2g7n007
	5OyrmiaMcGIauUUqsFYDN2/SM48/iV0s6qj9raXd+BgIR54VHzN7WZC456M0CakvRZNrPN9HQHt
	RgpxXYKDL6sGl8MftZLkMADNQPZJMbYJiI/hLvb3CFjZzKH+SFdIWQVfjVUZyNMZ7
X-Gm-Gg: ASbGnctC0zSgx5Icc8JJicoTvPF73YakfFHgNWo1I/2K0O95+SA6rhZA8S9d0BY6C3g
	SMXHoGIynl/mC0vOxf7HmEBfqiFGliVbsNBy3LEYUE29T36hnGXVnm5JamAeQrmAYevcsYBMBwC
	OZwOLDraBKAsC8w31GueUgrZhX8ddj/K2DPDskrm5Dm7iXGtaeOkrjGKXtxXUbTDBahBNlGGQIs
	MCypIHfPN9qj2ULr144smQ4Q6P8JK6c9cHs8I9cY6KSBYi9DmA0xFtPOvuyQWUrbRBoAHSsYXuU
	f75I7DXYH5HkOgf7FlcGhrkBjC302Rybkh1EazA8NB0LJ+1HGqYSllw9pFjYu7ucIDcZFwfZlkx
	kVaAjRAW12mhkK0LGECtcA55juOI=
X-Received: by 2002:ac8:594b:0:b0:4e4:a58e:9505 with SMTP id d75a77b69052e-4e6ead440cdmr24627181cf.12.1759917194876;
        Wed, 08 Oct 2025 02:53:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEC6bA5v1u+idL4ua2HM8tJ6bVay9UPd/1uXn1QC9RWuiyig/PmN4kVrGIBptf+wzMdeKoHhg==
X-Received: by 2002:ac8:594b:0:b0:4e4:a58e:9505 with SMTP id d75a77b69052e-4e6ead440cdmr24626981cf.12.1759917194391;
        Wed, 08 Oct 2025 02:53:14 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6376b3b8df3sm14313824a12.13.2025.10.08.02.53.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 02:53:13 -0700 (PDT)
Message-ID: <25a53665-d400-4bd3-a1ad-5ba8d3a0d9a6@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 11:53:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH DNM v2 4/5] arm64: dts: qcom: qcs6490-radxa-dragon-q6a:
 Enable UFS controller
To: Xilin Wu <sophon@radxa.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
References: <20250914-radxa-dragon-q6a-v2-0-045f7e92b3bb@radxa.com>
 <20250914-radxa-dragon-q6a-v2-4-045f7e92b3bb@radxa.com>
 <9a18cfae-4fcd-490e-b44d-6f9345cc7c3b@oss.qualcomm.com>
 <4AD4461A95C1A8F2+bc2124f8-d1ae-4fe4-8d0e-55872609d3f3@radxa.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <4AD4461A95C1A8F2+bc2124f8-d1ae-4fe4-8d0e-55872609d3f3@radxa.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: Duciq7W1X7Xcrf58oxvWYHUKamuTulrA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyNyBTYWx0ZWRfX5TGY+LdwCAt5
 SKzQVFn4L1/wHLxbxIJasRLZOvVrXV24aXIlAh5HVq+eRYNgx5E0Az9OqGiuiaWLTUEmHqou5YT
 g3Q/GNUrRvQ/g5j4dLf9LbBeBQFacoICYfi+hGNTkqN0BuNiCJPRUot/pDsBQHsdvRTxAXw/9yR
 E11Q2H1XSxQDsENf759mjPzygAg42FXpjzKJRz/Nge5jQ5Mc7rEfZY/kkd8o0JIl4g1348NKkpq
 0KHome85D9cJOew1x1qSlqrig2EPyfSiStIfm4ci81PBiYrmbqBMU3AoLOBdslWeYOwga0sCT83
 qnp0DIgqaQ4qv8+k0y8XRmg6kpuBoAqJlIc12DGAOiTf5YLDnet+ypUlXhdFgByLklYCbY5TXM+
 Nuw5JaVeu03yRd824+ssIwLbEni6bQ==
X-Authority-Analysis: v=2.4 cv=Vqcuwu2n c=1 sm=1 tr=0 ts=68e6348c cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=ksxQWNrZAAAA:8 a=u3vnbMqxRyurYkqyvPYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22 a=l7WU34MJF0Z5EO9KEJC3:22
X-Proofpoint-ORIG-GUID: Duciq7W1X7Xcrf58oxvWYHUKamuTulrA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 clxscore=1015 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040027

On 9/15/25 9:34 AM, Xilin Wu wrote:
> On 9/15/2025 3:24 PM, Konrad Dybcio wrote:
>> On 9/14/25 5:57 PM, Xilin Wu wrote:
>>> Add and enable UFS related nodes for this board.
>>>
>>> Note that UFS Gear-4 Rate-B is unstable due to board and UFS module design
>>> limitations. UFS on this board is stable when working at Gear-4 Rate-A.
>>>
>>> Signed-off-by: Xilin Wu <sophon@radxa.com>
>>>
>>> ---
>>>
>>> This change depends on the following patch series:
>>> https://lore.kernel.org/all/20250902164900.21685-1-quic_rdwivedi@quicinc.com/
>>> ---
>>>   .../boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts     | 29 ++++++++++++++++++++++
>>>   1 file changed, 29 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts b/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts
>>> index d30cddfc3eff07237c7e3480a5d42b29091d87d6..3bf85d68c97891db1f1f0b84fb5649803948e06f 100644
>>> --- a/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts
>>> +++ b/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts
>>> @@ -482,6 +482,11 @@ &i2c13 {
>>>       status = "okay";
>>>   };
>>>   +/* It takes a long time in ufshcd_init_crypto when enabled */
>>
>> Huh? It only turns on some clocks, writes a couple of mmio registers
>> and turns the clocks back off, could you investigate a little more?
> 
> More specifically, it takes a long time in `qcom_scm_ice_invalidate_key`. Considering this platform boots from SPI NOR, while TrustZone doesn't really support SPI NOR storage on this platform, there could be something broken in TZ.

Hm.. if you change the boot order (if you can on your board..) to start
with UFS (which would require reflashing of all boot sw onto there), does
this still manifest?

Konrad

