Return-Path: <devicetree+bounces-261871-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CINOA4S/gGl3AgMAu9opvQ
	(envelope-from <devicetree+bounces-261871-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:15:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FE3CE06D
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:15:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3E08C303961F
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 15:12:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B219378810;
	Mon,  2 Feb 2026 15:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oEXYM0LY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="f+jtW2cM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3B5378816
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 15:11:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770045118; cv=none; b=YgmfDCo7l6dxziCB+4hnGmkXrhq/8cAlngXxCvq88NVxkNipj+h07Dp4elt0lede9ogUxHWNV+IxFHNWrr54cDiMh3LiA+p7IQOwRkF3DRi7ltsMNEw5Sw3GYOdvBpWXV8X2UAgnw4awCb16MM69KxNQ04bus/NC36Wk5FwHEo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770045118; c=relaxed/simple;
	bh=OZr9ZTlaroAleY7MwtWXX1cJKnosxtGblpAeyNoK+AU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hSqq3Ex8Ez8L1VQoIpnv04okCZO9d+f8EcJ+iRH04nLFWpJdCUguOQM7+Qt6AkR5NxC23DXdZ4y6OMwXRya7DzMu1L8UfikU66t6eMkrAdhL/KkeK3uN5+i6iGOWHNHv+6HPup9c/6GWG+lc2bVA9xh/jmZoOHoxi/dN8Eivtes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oEXYM0LY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=f+jtW2cM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612AtLWK3916015
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 15:11:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pmf+AHruoKI1g45Fl88mwp2EJ/7UQ9ULt/yYUiyYEc8=; b=oEXYM0LYygJ9y248
	t5Cc5u7L27obzG64rqeUh/MxtPYtmjBB7VD/EB/s7jw8+HgwnEpbELV79RNf49mg
	tGgqUjsZ9QQZgfcFVrxedjZSWxlvrQF/ho8q2aYrUlp75980a1oam8c3u76yOqLX
	dG23x0GSzShejp++jpzuT7gyomsDpwc2rEjh8RpusUxPx59bpQiT2aDzB1VuZjpV
	XzVpl10+CyMr2hfX4wMCSWDRTalT8BK6lXYhlBA4mDX57Y//gHszHE7Iop00+pOY
	ptkkYAdAv+qDnNXWsbEwtMuYetZt+36B6rNvvE5fKhmEdpJMwjzjpXGhMFJb/rA4
	DxENMw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2tkmgpvr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 15:11:55 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c522c44febso100514985a.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 07:11:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770045114; x=1770649914; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pmf+AHruoKI1g45Fl88mwp2EJ/7UQ9ULt/yYUiyYEc8=;
        b=f+jtW2cMgerHZ9EvK6ihHjyHvObhYhaGjqH4RekEDntRZTFkY/HL+iYYus/yVIKUmD
         PopMqFuPoAS/eflRo30FYJOyELQVsMF9dBLAZT7xsbdjcAtGDH4l2Zx4j0r82P5g+RIW
         1ezgMujZuHIj8Pzrlyq3J6P4XAYNM0t1NRKl0KKfmUi8MbQPMh4HfZsE/97ES62nuVXk
         7GEcp/oe4yf+RJ0zCW5eReRSueCulOoid+FoLY8vfmilBbKG6Wk7sNjPhpcN+1u2THkW
         Lvu5fJAUowP2ZlzvwUgP1MwkRA035NVhnnMUCFq8yhSl/aKiXCsMrFePiwurxmnt38ZQ
         /k0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770045114; x=1770649914;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pmf+AHruoKI1g45Fl88mwp2EJ/7UQ9ULt/yYUiyYEc8=;
        b=tlPijwdJTkeVNi1KB6KH9FiEpJjXgtQ2Ha4WQcFPwCaLWi79NR2x+crMLx/6LpMpm6
         8wz8rl7J2IPx5wDHx/yc0QaVu2BrufyzuaG/eSRAXRXcvKHqPRj+PT+MFCXkSqaWs0EE
         AzwfmyY5GCP1iFjHUbklh2Pxqm8cLvml90dWJM66gkrSkhAz6gd7GHLeKpnNZ6iVemzD
         aK8j4FMjPxFM1Ju8AmIfeTFbdyb0DUEuUyk+cC//Iw72NrOusZZe0t930CVGEjsbAtM7
         dr6RFKtpaJrKRq1miFQ7UgeILB16VpaiGAQFzjMINMMKZ4XRTtqOuL9b3FJYpGFQU7Rl
         WGDA==
X-Forwarded-Encrypted: i=1; AJvYcCV3giKh8+RPKBg6gKWXNJ2+NIhbAL8hNY4klxPVtWkUcOEUpDwxAhOBZIMs0WA3CRJ0hVIrISDE09KD@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+QptnD2JdGWwg3xIxJlslHL0v+zL7XzzOEH5Dlbd1H40ieohU
	xp0GBf5KocGbHvU6xpWBUangRrzynxbtz7aarrA1lRdWzT+Cz07csmbT0rB8QlClXniqRsSgUVZ
	NkSvQiSpWpffLOnHcuyZe+XUlfg/Ni9PMpG+HQyDMoP70npQabuWKd4mJonkUW3bu
X-Gm-Gg: AZuq6aKm7qOn2c8rgmxrpVjGl6AK8UwRRf3+rdtXIWvvEVgV6di3TGJ6Pxlc3vER+OB
	PN5592HN2d/We0PFeo3O+TAUVbrVbhd4aiUsQLrYqAnNzUvg7KvRX/WNAUeDYSl2ra4n/6BOjDO
	IekN3GydniJmYDaCnJdYzVgMLRKCZi15/bfg/4u11OKocTEUNQA8xEyhSQo1QD+uhYEn1nxpdbw
	PBc/tTQ9sHHvmBptE+1nc7gcF7ffmwg6Q40rqHA9bjmyxUwE45P3U3AjKaXaD7i8KIuxfmkLVDd
	6GPD4Eei9uBYI0TrUoBA+RnRsX07zwD+nj+1j/jm0q2KyHWOPFA8c4GNkfcrunZmSv8pNpiYWO7
	A2TRFZdFYi/0yXCyOrqlH8uyEe0sWkRbNzlrlvsDktNWx0BkKvoO/KhTrGR2XsmrMlrw=
X-Received: by 2002:a05:620a:1908:b0:8c7:17af:7ae with SMTP id af79cd13be357-8c9eb2f98acmr1116691885a.7.1770045114371;
        Mon, 02 Feb 2026 07:11:54 -0800 (PST)
X-Received: by 2002:a05:620a:1908:b0:8c7:17af:7ae with SMTP id af79cd13be357-8c9eb2f98acmr1116685285a.7.1770045113527;
        Mon, 02 Feb 2026 07:11:53 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf2ed584sm897220266b.61.2026.02.02.07.11.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 07:11:52 -0800 (PST)
Message-ID: <6fa17bda-4d4a-4b31-99a2-1d2b606b663b@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 16:11:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] Input: aw86938 - add driver for Awinic AW86938
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Luca Weiss <luca.weiss@fairphone.com>,
        Griffin Kroah-Hartman <griffin.kroah@fairphone.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-input@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20260128-aw86938-driver-v2-0-b51ee086aaf5@fairphone.com>
 <20260128-aw86938-driver-v2-2-b51ee086aaf5@fairphone.com>
 <aX6whqw7XyaKMd9m@google.com>
 <472d7db3-db34-4966-aa17-588e1153ba12@oss.qualcomm.com>
 <DG4EAYDXMGQS.2MKAJKDFQCFEG@fairphone.com>
 <34fa533c-b9ab-4025-b9ad-4041837e790c@oss.qualcomm.com>
 <aYCCv6nI2QkvD8rb@google.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aYCCv6nI2QkvD8rb@google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=TaebdBQh c=1 sm=1 tr=0 ts=6980bebb cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=R3g-FwLwWl9o4qomehAA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: DXVrLZpnD3dYrBnKlAtxiRYzEXdhLfeM
X-Proofpoint-ORIG-GUID: DXVrLZpnD3dYrBnKlAtxiRYzEXdhLfeM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDEyMCBTYWx0ZWRfX6YBEpOZjEbX9
 RsYqNagcOUIocvOmL3Qo7L7f2jfwMhoFAXcUwy5i9TscVgN0P16+l6I/vPhDfSqOon6YqH4wzZn
 33a4kWKLyFN56bBiwYkRyJ7knd3MQCs+BcvgHXrH4B4zY7bw19rVHJzS/eGSpcxsFT2mf3B9QTy
 /FyijCFvm4cD5OBqpBzd20k+nC7ulpQxuBOB3KEA5qFyrGvsvjZI5jGJXyZsiFYLV7h6KusL7LP
 9HXHueaGocpKKbaeFm5NkswSms9Qo/JBkfuhJ1scljZmyv1rFirDdpA/ddlprds4Lt03G4ea7jX
 bHf9wh7L+zDToYoU7ubro7mfWEe9SKRdPJ/dCNqHAyeBZeT2xosppWpc9YHJ05Upb+aLns0q1Tx
 tX1aMWMlmqAmxPbY2dEjWlQM8FY6cQRjMfDyOBVvw/OzExZecQlj0OrsViD7kUhM924waj+mzp/
 bbl1yoC2xPrx/H8SNHA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_04,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 priorityscore=1501 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020120
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261871-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A3FE3CE06D
X-Rspamd-Action: no action

On 2/2/26 12:04 PM, Dmitry Torokhov wrote:
> On Mon, Feb 02, 2026 at 11:19:36AM +0100, Konrad Dybcio wrote:
>> On 2/2/26 11:14 AM, Luca Weiss wrote:
>>> Hi Konrad,
>>>
>>> On Mon Feb 2, 2026 at 11:12 AM CET, Konrad Dybcio wrote:
>>>> On 2/1/26 2:49 AM, Dmitry Torokhov wrote:
>>>>> Hi Griffin,
>>>>>
>>>>> On Wed, Jan 28, 2026 at 04:51:14PM +0100, Griffin Kroah-Hartman wrote:
>>>>>> @@ -717,9 +746,19 @@ static int aw86927_detect(struct aw86927_data *haptics)
>>>>>>  
>>>>>>  	chip_id = be16_to_cpu(read_buf);
>>>>>>  
>>>>>> -	if (chip_id != AW86927_CHIPID) {
>>>>>> -		dev_err(haptics->dev, "Unexpected CHIPID value 0x%x\n", chip_id);
>>>>>> -		return -ENODEV;
>>>>>> +	switch (haptics->model) {
>>>>>> +	case AW86927:
>>>>>> +		if (chip_id != AW86927_CHIPID) {
>>>>>> +			dev_err(haptics->dev, "Unexpected CHIPID value 0x%x\n", chip_id);
>>>>>> +			return -ENODEV;
>>>>>> +		}
>>>>>
>>>>> If we are able to query chip ID why do we need to have separate
>>>>> compatibles? I would define chip data structure with differences between
>>>>> variants and assign and use it instead of having separate compatible.
>>>>
>>>> dt-bindings guidelines explicitly call for this, a chipid comparison
>>>> then works as a safety net
>>>
>>> Are you saying, that
>>>
>>> 1. we should enforce dt-bindings == CHIP_ID (what's currently done)
>>
>> This
> 
> No. If there is a compatible chip with different ID (for whatever reason
> - maybe there is additional functionality that either board does not
> need or the driver does not implement) we absolutely should not refuse
> to bind the driver.
> 
> Hint: this thing is called _compatible_ for a reason.

Right, the reason you have in mind is fulfilled by fallback compatibles

(i.e. "vendor,actualchipname", "vendor,similarchipname" where the driver
only considers the latter becuase the software interface hasn't changed)

> 
>>
>>>
>>> or
>>>
>>> 2. we should have both compatibles with no handling based on compatible,
>>>    but only use CHIP_ID at runtime to change behavior
>>
>> This is spaghetti
> 
> I really do not understand the aversion of DT maintainers to generic
> compatibles. We see this in I2C HID where we keep adding compatibles
> for what could be described via device properties.

This is because it's the only way to allow for retroactive changes that
do not require changing firmware. That's why ACPI carries new identifiers
for even very slightly different devices too. Once the firmware containing
(ACPI tables / DTB) is put on a production device, it is generally not
going to ever change.

CHIP_ID registers are a good tool to validate that the author of the
firmware table is doing the right thing, but solely relying on them
encourages creating a "vendor,haptic" compatible, which I'm sure you'll
agree is totally meaningless.

That's especially if the naming scheme makes no sense and you can't
even factor out a common wildcard-name (which also happens to be the case
quite often)

Plus a compatible is used to restrict/modify the set of allowed/required
properties, so having an "actual" compatible is required for schema
validation to work

Konrad

