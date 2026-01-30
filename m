Return-Path: <devicetree+bounces-261313-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SAq6Edf1fGlVPgIAu9opvQ
	(envelope-from <devicetree+bounces-261313-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 19:17:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C728BDA7C
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 19:17:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 04A583003D3A
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 18:17:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6425934B191;
	Fri, 30 Jan 2026 18:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aZNVwP0/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OGsE/NGK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD4CB3033C7
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 18:17:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769797075; cv=none; b=RtrgHc6ifiv5ZkkkTB38Z6SlkKgPc/zPyTvsJJKWgZjg3URISwtlliiuISRviWGrRG5RfsRWuwIB1yeS4J0yp2ClBQ9er0SVX+oWyGG3ZxiXDdAGdZavX0NHegH/n23mLO+3sU54ejy5qZa4fckYPHmk+Mii6GLJij5xFOLl5t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769797075; c=relaxed/simple;
	bh=AlsGI4n7E1eGCZF97Ycj9wTUYV/116rK/XKXyFkE0OU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FqyfJqRLYnfSlGCTASvtZacE2sC7sgZS8/drb4JooX0ijAXboJq6gfA6x9EbcOIwwqU1KcwkJ3jH1pKA5L49eH46XJ14WRa068/7b3yTxP/Vp36P0an24HiSrbEE5KU4uW/6/Hv0Sz7pItw3+CPtfaRGvQiGcZk6obYnoKMeFvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aZNVwP0/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OGsE/NGK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60UEdFVM2413155
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 18:17:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yofwaTtZdItuKK8ONRAObKy8ywAmNqnO36FJ57xEjcE=; b=aZNVwP0/R5bSxwbD
	25iUPXCEZVrdpd5BvqweujlgyyfQ3RHUhrRJlfK64QP4skHB9IoFN6mPM/m0NM3J
	WM31S+TTEqlzw09M3wcqbEOh62hyqTqIaZkg+NbfpVf6+nlVLQEXX+8Hv4VgF5oq
	d93zGu0EfQvPBZwlqfif2pV8gY9Bk2gEpMJtf5841J+yLLz2cuStgEuc8219xSwX
	wr75SGS6vBQWPv38qoBxuLYTDF1i1s7pIiTSslkQkV8xf/aIIzmP8Rp6zpg/WgTg
	DYpuXn42CYekJZ/DH4BHhZHpsjFn5pHo6+t0cqm2owUS8mHLKK9+fB3499c7cHKS
	9+BXJA==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0r41j24m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 18:17:52 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-124aa710af7so13698465c88.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:17:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769797071; x=1770401871; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yofwaTtZdItuKK8ONRAObKy8ywAmNqnO36FJ57xEjcE=;
        b=OGsE/NGK7hlwqIhDfh8fz5aexSz7MET+VbwHAt08ycTrm1KhCIYaX2+x/JJQI/ZoLk
         neuBWIenl2f8OyQSAwbHSyKcL/Sez5/M6GwIWzc2OvseDvnowMfYIGlfJgk4B/y4VpeP
         T6NYzwg1yk5jpdvzXzAD9WMhELlVIFf1duSgy11gxMap1zJzzakjEIfkB28Poq8NItyB
         WtfUSrlQn2xlCr4CHztZpP9KB0e27svFVFakggUrrWQ8sGGfp16bBRG6OZ8FFdX1EmdD
         nwyKqpZKwc96GOr6WHIBBD/d7eBZyF0QYV/XHpT72JRI3z85aPme152QtF/Seb4ul6Jz
         ypug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769797071; x=1770401871;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yofwaTtZdItuKK8ONRAObKy8ywAmNqnO36FJ57xEjcE=;
        b=vFsRXlWjdL09kOPDymBDF/T5CuB+DNPVfX6PtcKK3TPwIE6foeDIlDJkwBRCbelGec
         mq6VubCg9f8SjHrHlDYg05alEJifiM7aBSvkIuWg4bCPs1+kdI8ZyfA/MOqfQrVWpfgL
         r3J+9BviwvJczWvZp5kT+Gxxg01afhdWtrBxDxcHzKZsOIhBxRvuKQfMwDdXv6BcZF4B
         qtFnDHcpsv+aHUs3jmCnrkOIWt+GgxXgQ4jYVSrOxNmoigZtZawzQt67tY+s2vRZorwE
         3eQUyA8q9Fszg4UfYpOnol7tbM5p59sUQnPaHRStspKB/TxKtpktxtsog3VMYBn5Ekp5
         u72Q==
X-Forwarded-Encrypted: i=1; AJvYcCVYJ6ZHyb5gdsuw9c5UQXGtGAyyZegw25dIwnMKG1MrNbAxOhjXSe67frqDDJ/uhF+vJHHWsMhhWiNq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1ze0RBSulMGEF9/EzZHl3TMS2nuWWTOrmzjtGcmFmoPA6nhf4
	thwHSPG072LZj1bp36xHYdlptFdXiwi/82r4vbI2mhgQux4cFJaKQx76bWUUWehrZhVMeRm5rcj
	tBLNNhW06BtF0HniYF6fv8nI0LNEFnONE6LwGtzPAZ/uua07X3VeNYhCQ621yH5Dq
X-Gm-Gg: AZuq6aIPz1LPhW7/2gEsr5JDFpr8gnW6BFTwFvzkgkZib6DJBKrr3QJ3QVCkH5RJxNe
	adc1zj/PDjbt36748AaROLPQuB0MHafEj9Ra7gcbfMOQ5O948uSca+tU9k0Lf8rTbJZgXjySA6p
	wnw7ae31ctptq3r1atyUbn90NhbQ3fOrlIXVs8OCdzJrL3V8CDRpRiNW/eyybeu2PfkUI35ImQt
	dDoufhunnBG70SfC2C8X6tF2o/MpWQViPb71GnRUeKJ4g757EaPYr2NRSJFDgf64w5bH9MdruMN
	Ghaw+3VRLrdLdXJu+w4nXMpCIhyAwPrWQYQ9IgJbK8BQ3tKacAIazhqg1DxngRgo+qqrr4fJcIM
	LpVw/rKrFhmOFLu2kddPUNU25KC4/QTjABcYybTxN1jFKCqbaPRtJ8IUtWdqWcwNO4KsISmADPz
	Brmg==
X-Received: by 2002:a05:7022:6893:b0:124:acc6:6dd1 with SMTP id a92af1059eb24-125c100fdebmr2127534c88.46.1769797071421;
        Fri, 30 Jan 2026 10:17:51 -0800 (PST)
X-Received: by 2002:a05:7022:6893:b0:124:acc6:6dd1 with SMTP id a92af1059eb24-125c100fdebmr2127510c88.46.1769797070680;
        Fri, 30 Jan 2026 10:17:50 -0800 (PST)
Received: from ?IPV6:2603:8001:3300:be38:483f:f354:ec7a:3a61? ([2603:8001:3300:be38:483f:f354:ec7a:3a61])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-124a9d6b906sm12204320c88.4.2026.01.30.10.17.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 10:17:50 -0800 (PST)
Message-ID: <32fcfd27-9aa5-4466-80e2-e39a9670476b@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 10:17:51 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT 2/3] arm64: dts: qcom: glymur: Add USB related nodes
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20260113-dts-qcom-glymur-add-usb-support-v1-0-98d6d387df01@oss.qualcomm.com>
 <20260113-dts-qcom-glymur-add-usb-support-v1-2-98d6d387df01@oss.qualcomm.com>
 <01de4054-eebf-4ef3-ad74-c806b208a848@oss.qualcomm.com>
 <6lieos5uudkgynizozrmzrj5ov57frzzl65b2fpanwbhbmehot@z5uhyv4ipyet>
 <4632ad3a-c893-449a-b0d1-48d9c93da7e9@oss.qualcomm.com>
 <86dade1c-3ac4-4352-8dc8-e7acaaf21321@oss.qualcomm.com>
 <tjw5y2tj7ebjsirqmlheidy6t62rt4k3lw6glbgss3krv6ccld@54y4gryghbeh>
Content-Language: en-US
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <tjw5y2tj7ebjsirqmlheidy6t62rt4k3lw6glbgss3krv6ccld@54y4gryghbeh>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: AuISAI9_A8T8VqKXhqFoZThQUYHJ9s-u
X-Authority-Analysis: v=2.4 cv=W541lBWk c=1 sm=1 tr=0 ts=697cf5d0 cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=ZdPEQgOY4kJE4xoCbToA:9 a=QEXdDO2ut3YA:10
 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-ORIG-GUID: AuISAI9_A8T8VqKXhqFoZThQUYHJ9s-u
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDE1MCBTYWx0ZWRfX/3uQfaInCvUP
 RVjmVKFoG820gtDlSXhe/vkfXztUgMVtAarWuiiy3Idl23NJZuMQ6trSfI00N5GSAt6y5n8XP+d
 Uv+KzbmN03sHMnGvwS611aj/yqB6gl2pgGo/bQ4YJq/oXVbVUb2Ok7tehV5t20GKUT1VY2ym4y0
 fT4L/pW/Lj/gFJd6UQzNcosledTUBctkxLLT4urBwBznwaXa1Z/YfUMHum0as2594LmRkuBFMeo
 GkiDGwtEYbSzMOQVwiho+GrOukzEU0f1OS+APwd6F+jPvsYYwVxAv7qVk0u7w3//alK/8lHBFym
 J9rIoDy1QcxH8sKEQ3p9tg8iTd58DOmvkXDDysKc7FG3JXTeVTzlL2lcBmZJ/5dqowf6vQmTe21
 Mzfsq4+eBDWbee3v6d00w0ffc+9uK075n3GfaHM+2qQ6pCAGjddMxQQRI6v5woAI1rxWnF2JXtj
 zDm91rb93lTciPTZP8g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_02,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 impostorscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300150
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261313-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wesley.cheng@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9C728BDA7C
X-Rspamd-Action: no action



On 1/28/2026 1:38 AM, Abel Vesa wrote:
> On 26-01-27 14:26:47, Wesley Cheng wrote:
>>
>>
>> On 1/27/2026 3:46 AM, Konrad Dybcio wrote:
>>> On 1/27/26 12:41 PM, Abel Vesa wrote:
>>>> On 26-01-13 14:13:32, Konrad Dybcio wrote:
>>>>> On 1/13/26 1:33 PM, Abel Vesa wrote:
>>>>>> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>>>>>>
>>>>>> The Glymur USB system contains 3 USB type C ports, 1 USB multiport
>>>>>> controller and a USB 2.0 only controller. This encompasses 5 SS USB QMP
>>>>>> PHYs (3 combo and 2 uni) and 6 M31 eUSB2 PHYs. All controllers are SNPS
>>>>>> DWC3 based, so describe them as flattened DWC3 QCOM nodes.
>>>>>>
>>>>>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>>>>>> Co-developed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>>>>>> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>>>>>> ---
>>>>>
>>>>> [...]
>>>>>
>>>>>> +			snps,dis_u2_susphy_quirk;
>>>>>> +			snps,dis_enblslpm_quirk;
>>>>>> +			snps,dis_u3_susphy_quirk;
>>>>>> +			snps,usb2-lpm-disable;
>>>>>
>>>>> Other SoCs have a list that's much longer, please consult Wesley if
>>>>> this list is enough
>>>>
>>>> Checked with Wesley. He confirmed that this trimmed list is fine.
>>>> He said he dropped the rest since they are related to the power saving
>>>> features like USB2/3 LPM (l1 or u1/u2) and we don't seem need those.
>>>
>>> Is that to say that those erratas were fixed in this hardware?
>>>
>>> Low-power states of the link are no less than desired is possible..
>>>
>>
>> I think it was misunderstood.  We should keep the same quirks as our
>> previous targets to enable USB LPM support in certain cases.
>>
>> snps,hird-threshold = /bits/ 8 <0x0>;
>> snps,usb2-gadget-lpm-disable;
>> snps,dis-u1-entry-quirk;
>> snps,dis-u2-entry-quirk;
>> snps,is-utmi-l1-suspend;
>> snps,usb3_lpm_capable;
>> snps,has-lpm-erratum;
>> tx-fifo-resize;
>> snps,dis_u2_susphy_quirk;
>> snps,dis_enblslpm_quirk;
>> snps,usb2-lpm-disable;
>>
>> There are some questionable ones that I'm on the fence though, which we
>> should consider removing:
>> snps,usb2-lpm-disable
>> snps,usb2-gadget-lpm-disable
>>
>> USB L1 support is routinely being verified on our devices (in host and
>> device modes), so if its power over performance, we should consider removing
>> the properties to disable USB L1. (esp since we're defining the HIRD
>> threshold as well...)
> 
> This should've been sorted out months ago! As part of the initial bring-up or
> even the initial submission here:
> https://lore.kernel.org/all/20250925-v3_glymur_introduction-v1-23-24b601bbecc0@oss.qualcomm.com/
> 
> Anyway, is the following list the one we should use then?
> 
> snps,hird-threshold = /bits/ 8 <0x0>;
> snps,dis-u1-entry-quirk;
> snps,dis-u2-entry-quirk;
> snps,is-utmi-l1-suspend;
> snps,usb3_lpm_capable;
> snps,has-lpm-erratum;
> tx-fifo-resize;
> snps,dis_u2_susphy_quirk;
> snps,dis_enblslpm_quirk;
> 

This list looks good.

Thanks
Wesley Cheng


