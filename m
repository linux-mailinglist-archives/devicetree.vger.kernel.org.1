Return-Path: <devicetree+bounces-224446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 863F1BC3DB5
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 10:34:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B48B3AB99B
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 08:34:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1EA92F0C79;
	Wed,  8 Oct 2025 08:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W8yr1+Ma"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D991F463E
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 08:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759912450; cv=none; b=NSDeSsjojG7JqPFiwoIodHXD34EVrosQWSnLDnB3psUmwole3+smOWekpJLMNtnjjG9NxX70vOxYxnlHxasJ7LagS8cKTdOj1hxDxm8XwuC8u43UsG99SBNUP6q0LK7EIl/PEpl5RoMBuWOya2QFpvP9jfnOGuU6tPP4QysbdBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759912450; c=relaxed/simple;
	bh=oLH4gL3sKlBNp2czL6jTG0vNHuT7xrp294jl0Tqqsms=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u1iiqkJVxnfb9skEHnNlyetseuXB3eJU7Ra/11qjmONXwuapaffg6Z4DzYEWfHMYKQp3m37ci70Xoc5TB9frpEC0AYoDyIOiLitnnsm+BBcbO4L3jCzTSV1UtbuzJ1QjrIt3/dqQrcJY+yWOBHisNhQOeROXw7UVITRZ+HbV4hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W8yr1+Ma; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5987amB0027789
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 08:34:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	96qvYt9PH2+8Esd4lI6EIlwJhfA3GfEiTtlpLaXBruI=; b=W8yr1+MacjgEdqSK
	l+PcG4AoE7zDkaffnYmhAbiLYLE/Tno4c28R1AsW8nPUjpI4UkXyQ8HVMHizBlTD
	FffdqEzBuN3SSYZALcoFhGZdh1+aLIRhnsAIBKqe9dKAhuexCD49SOZGmWnvU8ud
	fQISVl09dj1ADqX3m9qKM3WRJ5M0mkh2bPmB4Kxcz6mV+4oVfMNCQPuM06QTlb1P
	kkNjUoSllWQ3OrQij2BPYCt4lf4B22+UiI5wE8sgvLCLrbvKkIglo5fgEk5Mi74D
	zrCJHZxbb1w3iGxzDf3VuTrzVE+MY/iQLvPffsmClWEmiaVtnwCWWkKPoil7unr9
	eQeQTQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49n89hhj7d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 08:34:06 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-850553dfef2so19745626d6.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 01:34:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759912445; x=1760517245;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=96qvYt9PH2+8Esd4lI6EIlwJhfA3GfEiTtlpLaXBruI=;
        b=EfIkFSSnOd1jSimbGwb0xieU1Qlq77wMQmPb6iTyq5HmhOrgP+77not+OLIEKv7lHW
         /SV3faVF7XfYIyQZ+fJm+mS7FDD+1rpI0cUPo5LI/CxhUhRCV/Ova33/ue6+9W9LMheQ
         KPp38PVo+yZIvxIsGCOKTVwLHn6EwWD8W+6PftY/BIuVbrL5FQI0FMyrXtxZVQDBvisW
         /RdOnNG8HovD9bKDYtwFvvuW1JYjrJaYv6lx25qEjkNdW/2not4kKAnSzg694eNF5Ow1
         +MKuojfqQYPeFfB1WMTzfsZ1BmoawUSZZ1pcksw5/pct9oS6sKGH+uQlq3QNgm4bVnP8
         0OwA==
X-Gm-Message-State: AOJu0Yzp9nsOJM6Yragq7oG5Vq+GHAtCq9jFFihumMg0syHIg2Mj5t92
	szJAFbsjJA0Wr1YwxJIj1akhou4Z7PSbFywLERw6ciJWNBCS/ySxu5VuV+c2QAvXWwwDSJNQTqw
	/CsVUUQve0Kz8Bq89L+E1ug4vcNUgoysEk54ecG4ZSLOpTYE6tELrSeV30V2KYml0
X-Gm-Gg: ASbGncsir6EEOIQDcnSPcQ7CU05UvORn9Bia2snYdA7zmHqOwkPCHFYE/tueaXXBynf
	ZregPfhQRvngUOrDIgu6c6V9CZ7eZhjDshshylcqBhwuCii2Mr80t9yxjaebYyvMgZ3YVZBoitl
	BkHn6+xVLFzPUK/Qhz+UM7zPcvdMg8lie+MedMHarv8JwaTGBo8YteV25Ns5+XYJBAh0NW17tIF
	OwG5ZLit5uqhvA1c0BSF6kMbSiJyAuWIs8Aem9uuAPwtteS/rJ9E9td5/opeXzDtdJgQV5jXQNm
	5DpNrCk+/8tL4er89VZIB7LmXfbv6mS+VckI0AGUJURRW+/pH8myZxX8O0mWYA3oOKUuanqeriZ
	8MbWR6p8eAkGRl2okgmZe4lDn2EE=
X-Received: by 2002:ac8:7c4e:0:b0:4d9:5ce:374e with SMTP id d75a77b69052e-4e6ead2c524mr23170531cf.8.1759912444788;
        Wed, 08 Oct 2025 01:34:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEnBHdB/VM2af2NJjNuVbyejWL9PETbDr/MrcW1c2vYD+dYad+sKWfv4fFHmFxNwUckGnx2NA==
X-Received: by 2002:ac8:7c4e:0:b0:4d9:5ce:374e with SMTP id d75a77b69052e-4e6ead2c524mr23170341cf.8.1759912444217;
        Wed, 08 Oct 2025 01:34:04 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486606bd5csm1609320066b.44.2025.10.08.01.34.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 01:34:03 -0700 (PDT)
Message-ID: <823af9ee-df4e-40de-bf30-084442bb1d2c@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 10:34:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] arm64: dts: qcom: r0q: enable max77705 PMIC
To: =?UTF-8?Q?Eric_Gon=C3=A7alves?= <ghatto404@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250920014637.38175-1-ghatto404@gmail.com>
 <20250920014637.38175-4-ghatto404@gmail.com>
 <53b1a622-3afc-4fd9-98b1-3c166f563ad0@oss.qualcomm.com>
 <BB4E3024-F897-452B-9D3F-250ED2D52195@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <BB4E3024-F897-452B-9D3F-250ED2D52195@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA3MDE0NiBTYWx0ZWRfX5DwIRk64MxBx
 IX3tyLh3ABUbNyiWymaUSyEMauk/MDm3bQXBmN0zcG+iy6ZFyPa1eAkgEfSUOAsupzK0EeZcabx
 9aRz1StBAOdQ6Qp0NDlwyC/frGJubfUKo+gC0o8r3e05R1F/hCxMwpGqtyBL18AG6cQLJ/3cynS
 G4kfsMJGTdOlANSLbAt8G3CME2d/V7oKCtehOViYos9XXvNnphZ40SOQEwg1iu8RkY0OY4R1bfm
 bW8n1y2Gj5nBqIUrLg1+6vej+t1j1U7iuo453nvk3PJ9bGE9U5VHNhOsOP6Dx5PIeTvk8hP1yZb
 PZpBpDOUG0/8qeaQjL2HQWiKH/kcsY/vrWdT64LELmBXoOxmdUUFO0DQnGLW6UU+v+f782sJEHZ
 oRCuzvP702Mb48MtfzuQr88rEKxsgA==
X-Proofpoint-ORIG-GUID: MYZzEufolXUzewbYkeBl2ls98of2I1ph
X-Proofpoint-GUID: MYZzEufolXUzewbYkeBl2ls98of2I1ph
X-Authority-Analysis: v=2.4 cv=cKbtc1eN c=1 sm=1 tr=0 ts=68e621fe cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8
 a=HA2ILUQYlQLclBA0Y7MA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 adultscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510070146

On 9/26/25 4:19 AM, Eric Gonçalves wrote:
> 
> 
> On September 25, 2025 10:06:53 AM GMT-03:00, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> wrote:
>> On 9/20/25 3:46 AM, Eric Gonçalves wrote:
>>> The Samsung Galaxy S22 uses max77705 as its charger, fuelgauge and haptic
>>> PMIC, enable the fuelgauge and charger for now.
>>>
>>> Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
>>> ---
>>
>> [...]
>>
>>> +&i2c5 {
>>> +	status = "okay";
>>> +
>>> +	max77705_charger: charger@69 {
>>> +	    compatible = "maxim,max77705-charger";
>>> +	    reg = <0x69>;
>>
>> Please use tabs consistently
> Sure
>>
>>> +	    monitored-battery = <&battery>;
>>> +	    interrupt-parent = <&tlmm>;
>>> +	    interrupts = <5 IRQ_TYPE_LEVEL_LOW>;
>>
>> interrupts-extended = <&tlmm 5 IRQ...>, here and below
> why extended?
>>
>>> +	};
>>> +
>>> +	fuel-gauge@36 {
>>> +		reg = <0x36>;
>>
>> sorting by unit address is welcome
> Sure
>>
>>> +		compatible = "maxim,max77705-battery";
>>> +		power-supplies = <&max77705_charger>;
>>> +		interrupt-parent = <&tlmm>;
>>> +		interrupts = <5 IRQ_TYPE_LEVEL_LOW>;
>>> +	};
>>
>> These nodes should be children of "maxim,max77705"
>> (see drivers/mfd/max77705.c)
> What do you mean by this? I looked at the driver, 
> should I add the pmic@66 node and put
> the units inside of it? Because starqltechn doesn't do that and
> places them outside. Also, by adding the
> pmic@66
> node it expects to have led/haptics nodes as well.

Well, the chip comes as a single package, so this only makes sense
and the bindings (mfd/maxim,max77705.yaml) corroborate that.

Just looking at the YAML, you should be able to omit the LED part
if it's not connected anywhere

Konrad

