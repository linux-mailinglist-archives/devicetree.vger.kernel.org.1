Return-Path: <devicetree+bounces-233217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF77C1FF0C
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:10:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 025994E9F68
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:10:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7211334C24;
	Thu, 30 Oct 2025 12:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ykoe9q8W";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hgFbij1F"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BF823D7CA
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 12:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761826213; cv=none; b=hF3Qq+w5dPunaIXnc8eutQS5mjUwSaIagfwMxh6ZXM5+0t2W3w5IjuGmDpihavFVwWT3fhyYeWW3H1otpIXRnoJcDguuVyZOe009zWMzJkgfuWrUo0NqPMyhebxdiNY53Ty2uCKmtoOBnThdvomlRxJBahogRV13lxutl2eA/mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761826213; c=relaxed/simple;
	bh=jd2TFwtT3m7YtuBRYt6916y0qzpLWozcDqOfSDITFEU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ktv1NKtALsBc/DOtc+FMkP5rZgkWsGAiM1gfc4HS4w1zOUr01F7uo+74ZGkNEQ/MAh/Vk+vLNuVJkajyzbBunB8rDE0SPBonrPhyMWIfiT/YIBopBonb/pSjeB1TTzynHB2xKHr6QRkuX7iFqpZh0H6knOOioGJeaY5Hch6GvzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ykoe9q8W; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hgFbij1F; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U4xgYA2623009
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 12:10:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pxUEPdiXQ/pkRNp8hCBJVQjwahJhexoSWQ5nWiRefCQ=; b=Ykoe9q8WhrrjUlby
	aDghg3k3pRMGsxa750hEoqBzpkFGeLa6nGphqaXsi+5l2oGviPyfRjrsJ6/HKhGc
	PR42+M9y3aO1rRVRw7QNIcqNBLSrRmzLVZ6F4HOQTL7MR3mUTpmf6Td5l3rTg0J8
	Rvp96EhA2r1ddLrdtkaChvDngkCdcQsk9pXywtxH0/5joVI3IoHGxr1K+Kb/hpqF
	sWvEEIyrXoRZDMuKfVu9vTtmLlt5SFdMH+bNpEtKNZ0EpfXeqCl1gwJLYkoknbFx
	arPCZ7+NxY94tXt2qy35D8Y7KNOQgbTNR/y0s0HQ90/09GdyHXB3XkmD/CorCmnT
	CGEu0A==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a41fxh6nc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 12:10:10 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4eb86039d9aso2520261cf.3
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 05:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761826210; x=1762431010; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pxUEPdiXQ/pkRNp8hCBJVQjwahJhexoSWQ5nWiRefCQ=;
        b=hgFbij1FRIepEIj8A9S1edMTa2QKS5AiqiRUVCgaAYkopW7OR+fZp4e2JWI/sOLxcO
         ynyAQaIcO1CEgPG8sUlvMZWmPYs/uCCBe7YSD6v5eY6RFH8kqkSv1Ve32eVGnFK90e8S
         uF4qgkv/S0Nc/I1GMYcvb7V3WvI4Q+bwfcDuwElQLShheC3lCO3mtzOLQmqN6fG9bfPN
         k+tyQ/ND9L2PMlkvP1OElXfwHioVbaeejlDYcJClXeH3IlNwuz9iT/gzcMMn18pTJSmS
         NdyJFU3y5rXQOnY3dhISKE63RR44JefI5VngJIZLBh24GdE2N4+mOHHJn+23TyZls2nZ
         k5zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761826210; x=1762431010;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pxUEPdiXQ/pkRNp8hCBJVQjwahJhexoSWQ5nWiRefCQ=;
        b=ENG+YllKP8wkw5jzxOx6WDQXz4PsRIlX5BEWTS+bdKIVcB9Npi0uaaGlwxthlBlcnF
         N+nPhJs1jR9wMEH6OJkA6934DIB6KXK2Y24x0Rsay5AVpJbSoO/LW9L4N94+hFi7KajX
         791+qJmLYVH+X0CJCaDEhoFJvsr5glVy8DPM/Bz8A2zd7mA/vFUEFUKlx6CPf3Vpji2D
         PtD3Bd0yEEZmBLAThaAGHlmdvs6I0TuG7vvjM0gaLCIoYtDKedLbcex45WxCrJTi26p1
         /qVkpN6TyredXgqF5CTuSn3KCH+ey/iCEuM/n3lEnYjcPPScK4HwNA9NC86X5kyCPOsU
         hwwg==
X-Forwarded-Encrypted: i=1; AJvYcCWTDug0nZqeRXweMd/1XM2ggtO76OnqgXZsel8z4vFpGmZjSN06s3PrtlDFSEZoWHoEzpqk0Mr8hl8Z@vger.kernel.org
X-Gm-Message-State: AOJu0YxHxeCWADH2YyQy2h5lso7GRPjsr5KbU3KwiJi2ncuRMsiTAqq/
	Ldwl7XFALKmfC7qfMRKjJawz0G0EirEj3j10NDDyfglsmVKWJDn1RBDkHCUKSAh9tdsiwlnnyRC
	LdRHmE6Nmtwlsr5mIc+w5xr1IOstnGQ3V69/ngD3M/Br0KCavJ0cf5f0W2IwCoLRM
X-Gm-Gg: ASbGncvhsdWwfNYAhR9sQupBrs6ROqs2+4Px5q61pTROsw5oEDhKgpLV2D9kZJlkOIN
	inXNjPG8VcEgqIibE1G7O/ioWQVH37Xdl92Q4cFpduoYtSs9HleH5IqPxIoHossxS6Tu8eQq0/O
	KRcjdOLkoVlIppOMQixdwTMKEcIrv4oktCY1wA2eR49cndyw57zChFkMX10PcArJjJL88cYaA7S
	FCeH99kQQ5VEuhHoapValG5pE/+qQnCOA2AJ0U47zNDJaIEF3Q1BjcVfEf5pl5s1OGVOD7fSRNu
	ennYkgr4n8KmV3ox/lXTwasME0V19jXxtEwWHxUfl85qyzv8o6TDgoUdT4B6W2bdNzzFuJfokd4
	gZTYIPEv3MS87IHXiUbFDeDEEHa6XY5zL08HbP5KGq9cWIPlPP2jCQ/lA
X-Received: by 2002:a05:622a:93:b0:4eb:7dac:7b8d with SMTP id d75a77b69052e-4ed15b96605mr51174471cf.6.1761826210250;
        Thu, 30 Oct 2025 05:10:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGjKUftHKD5iwZFIXvL+cWkh3af7aBrfhPO7Rvee3DX5GRrSJ9Lhh0HGntfL2AaDfHVn8TupA==
X-Received: by 2002:a05:622a:93:b0:4eb:7dac:7b8d with SMTP id d75a77b69052e-4ed15b96605mr51174011cf.6.1761826209522;
        Thu, 30 Oct 2025 05:10:09 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85398444sm1707115466b.35.2025.10.30.05.10.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 05:10:08 -0700 (PDT)
Message-ID: <259477b9-0e14-4785-91d4-67c5a94331eb@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 13:10:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: Add support for Pixel 3 and
 Pixel 3 XL
To: David Heidelberg <david@ixit.cz>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: phodina@protonmail.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org, Amit Pundir <amit.pundir@linaro.org>,
        Casey Connolly <casey@connolly.tech>,
        Joel Selvaraj <foss@joelselvaraj.com>,
        Sumit Semwal <sumit.semwal@linaro.org>, Vinod Koul <vkoul@kernel.org>
References: <20251030-pixel-3-v2-0-8caddbe072c9@ixit.cz>
 <20251030-pixel-3-v2-2-8caddbe072c9@ixit.cz>
 <8d32460d-894b-472a-a262-4c6a60fbcef1@oss.qualcomm.com>
 <7f686f1b-7cc7-428d-941d-82883decee49@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <7f686f1b-7cc7-428d-941d-82883decee49@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: BEfTxrhByxRLqzIaTpUdTRyv4UKtzteS
X-Authority-Analysis: v=2.4 cv=UJrQ3Sfy c=1 sm=1 tr=0 ts=690355a3 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=doW-QTn4H8VJJv8t0iIA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: BEfTxrhByxRLqzIaTpUdTRyv4UKtzteS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA5OCBTYWx0ZWRfXxMAo2hNE7OmM
 +3NnCk7P+8pUY7Y3euqav5G7eGFHtx4AclIjnjENXJCO/bpiiIkFRA5lYCIE3fmxEL57mTfhI5p
 IZJ2D09l/yuYcIwI9M0joTFUg9qE6N2ahyPCiT9dqUX7oQOjUms1S6fNEzTLAKqzFhmR3pJkgVm
 3PnzZxtFr+Bj1vjuznOYDD/3bUv9Wybjjs0zJNZstnPb7FtPhYg8eMLeVlOW/xTZ36XHUWBC8Tm
 nI1z8MvJ1fkKU3AiMdZJ+qcV1WEgYYB/m8zKm1ib75rRNjN+u6zgfrgP9D8LSjydhluVjcAw36k
 31/uwIJPORImKzI8c5dTfGyVj2TGZ1vjZaG0VGdmk3e3N/NS04oQzjrPX+FHuTrj0UqIfrkj87d
 nN5mZqpZ6ELgMFdk7pVFId7dDOR+NA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 impostorscore=0 phishscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 spamscore=0 suspectscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300098

On 10/30/25 1:03 PM, David Heidelberg wrote:
> On 30/10/2025 12:32, Konrad Dybcio wrote:
>> On 10/30/25 8:24 AM, David Heidelberg via B4 Relay wrote:
>>> From: David Heidelberg <david@ixit.cz>

[...]

>>> +    battery: battery {
>>> +        compatible = "simple-battery";
>>> +
>>> +        status = "disabled";
>>
>> You added support for both non-proto boards based on this platform,
>> there is no usecase for you to disable the battery, remove this line
> 
> Should I keep the status = "okay" in the board files or drop it too?

Drop it, nodes are enabled unless they're explicitly disabled

[...]

>>> +&tlmm {
>>> +    gpio-reserved-ranges = <0 4>, <81 4>;
>>
>> Could you add a comment (like in x1-crd.dtsi) mentioning what these
>> pins correspond to? Usually it's a fingerprint scanner or things like
>> that
> 
> Sure, I looked into it, but I haven't found (so far) information about the assigned blocks. In next revision it'll be addressed :)>

Thanks, you can usually correlate them to a QUP instance based on the pinctrl

Konrad

