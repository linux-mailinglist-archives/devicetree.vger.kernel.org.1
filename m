Return-Path: <devicetree+bounces-263881-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBMkKJ6biWm1/gQAu9opvQ
	(envelope-from <devicetree+bounces-263881-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 09:32:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2726410D04A
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 09:32:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E1A353013A5B
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 08:31:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABDB32E92A6;
	Mon,  9 Feb 2026 08:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HTkXLcG5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JPL+nMrN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B8921D5B0
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 08:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770625885; cv=none; b=oJasuZUSdts9i3x36FBb5VRxU8ijblBxEy/a+3r2qrmkbSDrZCKgqCQJm6fzL8Ou6034Yl8AJTaV/oFa5jWrIYFUXf24/bE2UHO1tsMYPZSeIlQh3CLGIwmnV6dESCv+uB61hVlIKsA+X+QHyAU7k0DTFfKN21mbFb46Q8vx32s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770625885; c=relaxed/simple;
	bh=acWtPlqSNYG7iucnE5KZS3N80xNN16x6Cdrjg1XDooA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XapfK1DPr+zZ/sYrWso2sfOnniqVDjYRcOqcSvxoqd4nPo4g3Y9PEJhEK0E5kwXsPTXt9DnCEwbjyqpakz1VsA1LZKzd3H/hqzOtt72nkduzKyxNYEQAY45GWshXvDWN2i2tMMcv+7Z1BeDl022hACOtEFAzgAqzlLDsRQf5Q0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HTkXLcG5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JPL+nMrN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6195OBN33349550
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 08:31:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OecxfkDC+IFKVFRYE/kDLOT5hnCN5+E9Y4HzEM5DGgk=; b=HTkXLcG5ocHvrWqz
	baUEYH3u4sJ7wl2y6+6avVFn+kGjRjS/JEa0k3rTAodGxzw6MkEf5046E+vuQ0DW
	BQJxi2GbjE1575Ela2JN1bJsxat7DWfJdm7apb+aVKm73kv5em5A/KdIkOXOHHkm
	1pBa1HWB0IfgFE6jva/1tVogwy816hEIJHunTumV5ZBQpknNPw7znWEsVfQ0BiVz
	JreN4MyaTYw64yVYZ0+QVnI07IKrpXm654OCm5PZkuO1mW6jL0duwZdhxmoy5yJw
	ZzSHoVNCzQ0utcgO4hCliFvuTKgbdpK7pL/ypskXkxWNDSc7SjPlX3SDssR+bkj8
	1Hjudw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c79cy0m27-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 08:31:24 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb10b964e6so46123685a.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 00:31:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770625884; x=1771230684; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OecxfkDC+IFKVFRYE/kDLOT5hnCN5+E9Y4HzEM5DGgk=;
        b=JPL+nMrNbsfzKVC3q5FFl9wWSyAIhFUEdfXbE+Z50XmrbsIcbgc9sENpTSHuv7fkPo
         lJ9e22oVBVoP0iYgUILvlYvQrKCsyXTweQ5cMPwTXGpobsqtFDY8VWDWZaUha3y/M2Li
         p7aAbGfqsEO+CvmiEO+HpZUKr9W43C7ClQT6c7qvi/J8lH4p9HQVkfYpqbhZpcLf3Fsk
         +dqTjSXwVLsVNr5X6wsA6OjnaqkhYvvFj0IwXNbjoKLp+4o3FdX/BWMDp0/SNPtIsl3F
         xRC5bWOzzhUKIVTj9QkBrKGmRpZa0RUYJGipT1AFYo/rne7OlMlMmffz22yxIwJtSDew
         srRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770625884; x=1771230684;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OecxfkDC+IFKVFRYE/kDLOT5hnCN5+E9Y4HzEM5DGgk=;
        b=PiRnaSjrPWD/gt52wZ+wVfyGRAR24XOwQuBOPupR6Hhfn3tycJxReLNvYxnD7NwmmX
         OZAxmEKl/3qRvf4KQSEOsi7YHVsmfSQeOw/jqcXmGCtRfvWj/7Dkj3hxfcAtjeihNMre
         Fx3Kd+VeIqe9gbL5wim5Y13vEmRm4pkV4RMm5P29yjqoki2rgA5d5LFq83A4QRV59bw8
         dxPyyQXGlx6Ba6QQTUdpZM2hr+8KG54AUYUSn0ZnenFNd/EPxO2h2M+DWbd8nKHkbtxX
         FCrL92D/vpQrWmY6TMqiUZZzcieECvCmjMlTR6QT2omkJ9JZa95OfCQ41iv2+tUWJa0j
         tYsQ==
X-Forwarded-Encrypted: i=1; AJvYcCUm+/BOuq6rJJxgo0Jyua0Knnl/DPob9MUsDq0+pz9qhlaGcVVoDGnah6Fz4vxxxjLkVqTZOqvTJkAc@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb8mn8ghK2v2sPOf23SKOOk8j1a4vATrdMNRf6meUZQe9iUqEi
	+Tt1vdhL//NsG9aQd7KLzS2uzhTjPlUtxEBwnUzQ6n3ZEt29Fl+wIKHt4Viflb9ugwSjgt0otHr
	Wl/hGXUp+f2g2BU5dey/XwpUHt1oG68cDbgJo5LmG6+o639830H2tKtKPwN28TGdS
X-Gm-Gg: AZuq6aJppe29wvj9JhdeWWe1UEyOOnll6aXEXhAIuLQQXnV6GYKh6RrU1S8EorvPeVQ
	DCeuuzaZ2V1hsA8jOUu+VOeTdzj33Exlv4yEH/3Nik6Ym56RMg/PYU97Sw63Z5A38oBqY9QFx9H
	o5bONkTuaLJ+gp2I6hZuwYSBDzy3oGbArbfPfdpMW/CLosrktCkF8/WgKh5UDoyK6d8tbqH/4zX
	W176Jt+Kj0ZUcS6Ahegj8BSwMkGcnDzQVEwsTM3wSdx2GXR7HJK8U4awJB0QlGmUbfGmNR1edoL
	xJ/oUY6+jCthiTBxO5wpSvtS7aFxqkMJhqdazWaf/ya8hKeBdDnSz9M7SB0qpMBY7UCl6chWm5W
	1WMmGESaKUS2RjgVKpRnv+BWRIJn8DNDdtQdfogEv5E8U0z9j4CGDLt5Qf8TlcyaH4rQ=
X-Received: by 2002:a05:620a:46a6:b0:8ca:1ea3:3d9d with SMTP id af79cd13be357-8caeeb51263mr1143972185a.1.1770625883674;
        Mon, 09 Feb 2026 00:31:23 -0800 (PST)
X-Received: by 2002:a05:620a:46a6:b0:8ca:1ea3:3d9d with SMTP id af79cd13be357-8caeeb51263mr1143970085a.1.1770625883176;
        Mon, 09 Feb 2026 00:31:23 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8edacf1211sm350949266b.49.2026.02.09.00.31.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 00:31:22 -0800 (PST)
Message-ID: <24cfbe35-c611-4d52-8a4c-b437287717f0@oss.qualcomm.com>
Date: Mon, 9 Feb 2026 09:31:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490: Add Thundercomm AI Mini PC G1
 IoT
To: Roger Shimizu <rosh@debian.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <6cd569ad19ae8efb5f4244b3aa185754@gmail.com>
 <eb9c1489-4496-48b3-8709-739cd45c11b0@oss.qualcomm.com>
 <d398cd57-41b8-4646-834e-ff0c0b7ff749@kernel.org>
 <CAEQ9gE=kH4Np32xZdp+jzaTo9TMjtLVRD+xaimuKWxdag2Whew@mail.gmail.com>
 <b1d791e3-849e-4d76-bda0-816418f98e39@oss.qualcomm.com>
 <CAEQ9gEkA-Gw=96LJe3vf3S6ada5o-mDqjY9B6NNpSaO8saSfvg@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAEQ9gEkA-Gw=96LJe3vf3S6ada5o-mDqjY9B6NNpSaO8saSfvg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: Mj7ZXj3JdTQYgC7yoHxsQoyYBHSRmCuV
X-Proofpoint-GUID: Mj7ZXj3JdTQYgC7yoHxsQoyYBHSRmCuV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDA3MCBTYWx0ZWRfX396337ZSQK85
 qcXJTGiwV/l0V3N6MrVuh81tmk0+kwd7vvhfR9lw7/YpwgJB1ezi5NBC1oiGuhRyHUWZqILEFS+
 rEAT2vAUAMLlvB86/0pMEIfVbQPC1Ge13fW7BXysTTj6yHoKzBCFuht92LMBRW+mflW8uM/mzMT
 DrJUAEuzcTAdYfY861vh0CqFL3SCSAIA3oPW7cfPayUQ1OtxJWaAUxwSjuKJ5NF+fbp3zzqHw4t
 4g8L1TWeOhv829xZv5sl97Nw3QG3dLhz9DHs//BQ82+PsVOGRGLuj+GH31g+sLQP8H9FzC6nUor
 gMxRupHG5v4axRzyzZNDBo+r1dKhDuynKAUcCpZlsUak4Z50kZidiL5bXqeqz8s2ZvmiIFtdmr9
 eS+hpVeTCB9GA+RgT1jnwqIwX0uBP6jvRTHPJ1KXaYhJQ/e6VTXEP6Dt7YWEIxyHtNL/Ny5sm1G
 OlbhoaxRejhUDEMjDLg==
X-Authority-Analysis: v=2.4 cv=EtvfbCcA c=1 sm=1 tr=0 ts=69899b5c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=GlrKdV89IPGV611hnIgA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090070
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263881-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2726410D04A
X-Rspamd-Action: no action

On 2/7/26 6:46 AM, Roger Shimizu wrote:
> On Fri, Feb 6, 2026 at 2:20 AM Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
>>
>> On 2/6/26 10:55 AM, Roger Shimizu wrote:
>>> On Fri, Feb 6, 2026 at 1:41 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>>>
>>>> On 04/02/2026 10:20, Konrad Dybcio wrote:
>>>>> On 1/31/26 11:31 AM, Roger Shimizu wrote:
>>>>>> ---
>>>>>
>>>>> [...]
>>>>>
>>>>>> +/ {
>>>>>> +    model = "Thundercomm AI Mini PC G1 IoT";
>>>>>> +    compatible = "qcom,sc7280", "qcom,qcm6490";
>>>>>
>>>>> You need to add a board-specific compatible here, see:
>>>>>
>>>>> Documentation/devicetree/bindings/arm/qcom.yaml
>>>>
>>>> The true problem is that this would probably fail validation, so I
>>>> suspect this was never tested/checked.
>>>
>>> Thanks for the review!
>>> I did test this device-tree with the board.
>>> If you mean some other test, please let me know in detail.
>>
>> make ... CHECK_DTBS=1 qcom/qcs6490-thundercomm-minipc-g1iot.dtb
> 
> Thanks for the guide!
> I tested above command, it was passed for my v1.
> Sure, it also passes after I add the board-specific compatible. (not send yet)
> 
>> make ... dt_binding_check
> 
> Sorry, I never can run this check command. It reports many python syntax error.
> I guess the script has issue, or it needs patch to run on my Debian system.
> I'll report the issue to upstream separately.

It may be that your version of pydtschema is wildly out of date.

Nowadays the general expectation for using bleeding-edge python
tools seems to be for one to grab them via pipx

Konrad

