Return-Path: <devicetree+bounces-235585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C59CFC3A387
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 11:25:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5A68C1A41C79
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 10:17:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC4FB28640B;
	Thu,  6 Nov 2025 10:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G4PKp3VV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SFrWSyr5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B93253950
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 10:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762424214; cv=none; b=JDzoce2pmit2d/7dTBofpqIHHEhhnyHH84QpKQghA0VvPFMWDlL55weCiSjRLhXdbac6muZoE5nv128bSxG32KKBjtdqWXHrdRD+HMLhAXGFzbnGBD6KZXbqtZRiRj9aSX6Gu0q02HSpcQ7fkBDDBRgR8DSm8zGaC4giHra0mbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762424214; c=relaxed/simple;
	bh=DGWoqCzKmVs/0jZaz2EfOrEZl/PlMpk1s+c9/RziQu4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CK3EjLMh73c+Z53TLKJQmVFyX4SlQpdsYsCtgc1Bax/glWr4NOdLDrpvm5JEUv1McnkNBeXW77W0RvZq59p0f07i4Ys9fVut42NWih2qQwvQ+4PVVmS2XT9nOiNvTIpSOboI8HBuA8y+8sJxzOp349Spen6IVEgf9DfS+9BJ/bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G4PKp3VV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SFrWSyr5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A68QZo92164467
	for <devicetree@vger.kernel.org>; Thu, 6 Nov 2025 10:16:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ld70hxnphrhk4Kj9QGrjJNc8gxNktsdj/F6KF/k5xBc=; b=G4PKp3VV7uS3XdTy
	dsvqGawJORmig4RZ49jJ8EuwhGH6kLiJHpm91IYw7JNzhG61Y3JEMqh/XK4EdQSR
	rjiZwffD8TtenicOLftHqmaq48QoXgbOP9cLrgHrIbQB016267qcUh2lbeK5B7Bg
	ws+7DGCG+36jKfx/XJEQzAHVKqoCJTyw7XJbJDCMZrWgnoItI0HsKq537U/dXqcm
	+OpPiSkJnt6nc2l7TJMA+7Y7x72mvE6Mh5J5puF4CV7TM7MWJxkp41ECBwzejqKo
	XJJdbZOZC10TmY80+mNqfoagAnwUJfbBVNVGQdtaQVyw0NZKOs7BkR6v43NSPSCW
	bkRWbA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a8g6esn17-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 10:16:50 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b633babe5b9so32857a12.3
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 02:16:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762424210; x=1763029010; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ld70hxnphrhk4Kj9QGrjJNc8gxNktsdj/F6KF/k5xBc=;
        b=SFrWSyr5oMcRZbq2rTKvyc3C5DJ8uJ6gLdsfHO8drUIpb43mUKZK9Ce4AY7UODeHDj
         eKjTWeCgsdFv+KBja+GOcnKt5z4QleOZkrhF8MICdFgf/IM7TX9gIJDafwY4HQS8nd6T
         sYqoKCc8kLedOlP/eAF9g/3WFWUVdsaHNTiM/m7fwMSN3zm3pSl/RTm8X8Zw6PWmj+OY
         Mi7uW0J7KYaQp241rIJ+sDAA2ADWquaS3iZdpGepDBYu3YB06GjN6teg6IkE0IeeUB5z
         V8gPd9tO6cUwjo1R7RVTXHAKNE//gvuUxvDo4h/74XHWOWleKBKDRsAiXrEO4wq9dXdK
         JEHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762424210; x=1763029010;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ld70hxnphrhk4Kj9QGrjJNc8gxNktsdj/F6KF/k5xBc=;
        b=Bl5RQiuQXt4rSxKM1YWMxCON7Kes6CF/b3ISJr3zUUyRQZJLdcAHb/whnRdJzOQ937
         kNsBa0j6/FTP1J+DvE/itKD9Cl7KGzo706Bsd9h98z6wZK8smkW329wMJ41IojT+QJHx
         HxKzZvf7nWInmAosr/h/gIjHCLxc3dS49PDqVkZMQKea7W/Z/rv2SgmG+0OECJO4sj5x
         zzNA18IiBHMc0ZDU5lnFD5VP0t2AJTkH2fn3BBkbUWT+fglUT1l9yhs1LA9vJPouQKAL
         7sclRQPpZEzoSe1zkXi2mp+yaQa0TGvxU6CPKGmKY9ZTcpFfp3OyUuQpBNhRakjie0v3
         mJtw==
X-Forwarded-Encrypted: i=1; AJvYcCUEmdtIqUvWnhFHSEwDnUZg9zd6Hq170WgwyPRioGCDP65yv6pE6YGPgyBkmVcL65o4W8j2t5K8+m10@vger.kernel.org
X-Gm-Message-State: AOJu0YwX11udjGpaok3bHygs1bWDog4VeAUVgw88qPPltG+cE0RtQfM6
	2TtQD7rp059pw6E5UpeMzp+yiyOBcM26vOMjMIVqmmdnx7etL7a6qQI1T3clQjsogp3iktqDARs
	EwiVSkvGmWIGyIfOT76K+cqwe5ENE75M26P4kVb2QNIQ/QcY2KlAcPjNsOWjd9AQ/
X-Gm-Gg: ASbGncv+FnSG9gf/6+hWyLaxXBxeaVbRTfUVhuGJPXA6eifpuYG/37dAkFwwLVGvQ0l
	4RlX5HrirpWwn5t1yy7eTelDQQlYlKo+eVs8cO1V5DtIGDE7bwxsEnm1/OIbc7PXDZb69npFLIG
	KTw22ebWduMT4EarunIKqM/H+mgruqxDjwghkjq29XKBIbYcuO5Ld5/B8fKrt73ScFJL6sgbjsj
	2wY+l5n8tIxW9OJeZCWsXU9rI2Q+i7StjbbQrjH4pweXz6SklL+GsQ3Ggcr/mUjAVZt0D9nZcLu
	H6cdEeXw+8EHZRgYmLoCFOcRJ1f6+q3Tsm1SJDBHHgOL8f5Rq5R7m2lj4tIdswMj1PYNyrsu9JJ
	Cr1hQs6CSeDmw++fIuS3TvuGVCaOQC6bquw+waGQTrA07gDPVuZoOOW5rsVqIxbu//g==
X-Received: by 2002:a17:902:d507:b0:296:4e0c:8013 with SMTP id d9443c01a7336-29655b1d5c2mr21368615ad.6.1762424209460;
        Thu, 06 Nov 2025 02:16:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHxkveGzxOeBDZzm4RdgFR5ZBXc88H70L9ilN/dHlVAMe4qDjUOu4tDtQfp+FEslZh4bwV/SA==
X-Received: by 2002:a17:902:d507:b0:296:4e0c:8013 with SMTP id d9443c01a7336-29655b1d5c2mr21368395ad.6.1762424208558;
        Thu, 06 Nov 2025 02:16:48 -0800 (PST)
Received: from [10.133.33.129] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29650c5fdb5sm23392665ad.44.2025.11.06.02.16.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Nov 2025 02:16:47 -0800 (PST)
Message-ID: <b5ecf5e7-4dc4-41ac-9b56-7c52afacb950@oss.qualcomm.com>
Date: Thu, 6 Nov 2025 18:16:41 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mfd: qcom,tcsr: Add compatible for Kaanapali
To: Bjorn Andersson <andersson@kernel.org>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-mfd-v1-1-6c8a98760e95@oss.qualcomm.com>
 <b623c7f6-f28f-49ba-b6f6-25084117a6b3@oss.qualcomm.com>
 <l4mb5pi7kz7uuq6o3eueoxl2ngt2sdd6dv3kyudw6i54co5v5h@w6ya2nuas322>
 <ad00835e-bc20-4f97-aba6-e1b4f5e97191@oss.qualcomm.com>
 <f2q7a7r7quq6pplcn3kklwrhdc6hxa5zvc7osygshtyurwyvi4@t5iyragt7irh>
Content-Language: en-US
From: "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>
In-Reply-To: <f2q7a7r7quq6pplcn3kklwrhdc6hxa5zvc7osygshtyurwyvi4@t5iyragt7irh>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA2MDA4MCBTYWx0ZWRfX2CGsgV+16myi
 fgWCwhSA6thrijqEdBQN4rY9sf6MjEj3lVuD2/6uOF+R2mvx25z7tEU4DCJR21y6Ss4PWlen61p
 dT57lRZpLQbFYXkpsXO6T77wXMSEvIPRzKc4zLI9AWCYUDaIaRbHnWit0dIAnYhW4hXXc8VQ9nB
 1KB0FXMdbOfd2w6nDO7m18Ve+qNDMV1MXzR9iryBNHDYE8k2eS47sY6ZOeheF8Bih+jF/PJC0TG
 wPXHw3WWiF39F9xabYxX4Dy5E71El+ZalPEfwDV1SaaxQIz+O5exwRhbBDWVplvlaipHWM8avvr
 CC5pjtAEGIw/MIZUuWczNRDR0ecs8PNs4TflaM/r5TAK3mU3Fp+z2NtDkKPMNWSX0SkegmxTUR+
 QesUSxo4u4ZD5yBC/XvAUD8bO1LMIw==
X-Authority-Analysis: v=2.4 cv=D5FK6/Rj c=1 sm=1 tr=0 ts=690c7592 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=ON1wIvcCeMpCzfIEu8AA:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: eiiTmEQWBz77TKFV_Kd73lfBhoG1qKqD
X-Proofpoint-ORIG-GUID: eiiTmEQWBz77TKFV_Kd73lfBhoG1qKqD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-06_02,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 phishscore=0 suspectscore=0 impostorscore=0
 adultscore=0 priorityscore=1501 clxscore=1015 lowpriorityscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511060080

On 11/6/2025 5:06 AM, Bjorn Andersson wrote:
> On Tue, Nov 04, 2025 at 01:35:01PM +0800, Jingyi Wang wrote:
>>
>>
>> On 11/4/2025 12:02 PM, Bjorn Andersson wrote:
>>> On Tue, Nov 04, 2025 at 11:34:25AM +0800, Aiqun(Maria) Yu wrote:
>>>> On 9/25/2025 7:23 AM, Jingyi Wang wrote:
>>>>> Document the qcom,tcsr-kaanapali compatible, tcsr will provide various
>>>>> control and status functions for their peripherals.
>>>>>
>>>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>>>> ---
>>>>>  Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml | 1 +
>>>>>  1 file changed, 1 insertion(+)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
>>>>> index 14ae3f00ef7e..ae55b0a70766 100644
>>>>> --- a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
>>>>> +++ b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
>>>>> @@ -48,6 +48,7 @@ properties:
>>>>>            - qcom,tcsr-ipq8064
>>>>>            - qcom,tcsr-ipq8074
>>>>>            - qcom,tcsr-ipq9574
>>>>> +          - qcom,tcsr-kaanapali
>>>>
>>>> It looks good to me. Glymur didn't have this functionality verified yet.
>>>
>>> You spelled Reviewed-by: Aiqun Yu <..> wrong.
>>>
>>>> Remind for review.
>>>
>>> No need for that, reviewers will review when they have time.
>>>
>>>>
>>
>> Hi Bjorn,
>>
>>>
>>> But that said, most modern additions to this binding follow the common
>>> format of qcom,<soc>-<block>.
>>>
>>> So I would prefer this to be qcom,kaanapali-tcsr.
>>>
>>> Regards,
>>> Bjorn
>>>
>>
>> qcom,tcsr-kaanapali is used to distinguish with binding for GCC:
>> https://lore.kernel.org/all/20251030-gcc_kaanapali-v2-v2-2-a774a587af6f@oss.qualcomm.com/
>>
> 
> So, qcom,kaanapali-tcsr is the clock controller region of TCSR and
> qcom,tcsr-kaanapali is the non-clock controller region of TCSR?
> 
> Sorry for not understanding that earlier, but this doesn't work for me.
> 
> It's a bit of a lie that TCSR_MUTEX is a separate node in devicetree,
> but it's always an nice chunk of 256K in the beginning (or end in some
> cases?) of TCSR. But for the rest, there should be a single tcsr node in
> DeviceTree and that one node should be a syscon and a clock controller.

I've been dive deeply on this tcsr block. And actually the tcsr clock
controller part is a very small trunk size(0x1c) of the tcsr block. And
this block have contain other multiple purposed sys registers. So maybe
we can have a more discussion on how to have device tree node describe
this situation? It is not straight forward that to have a non-tcsrcc
related area being described in tcsrcc.

What about option 1 (tcsr_mutex + tcsr_dload_syscon + tcsrcc):
tcsr_mutex: hwlock@1f40000 {
	compatible = "qcom,tcsr-mutex";
	reg = <0x0 0x01f40000 0x0 0x20000>;
	#hwlock-cells = <1>;
};

tcsr_dload: syscon@1fc0000 {
	compatible = "qcom,tcsr-kaanapali", "syscon";
	reg = <0x0 0x1fc0000 0x0 0x30000>;
};

tcsrcc: clock-controller@1fd5044 {
	compatible = "qcom,kaanapali-tcsr", "syscon";
	reg = <0x0 0x01fd5044 0x0 0x1c>;
...
};

What about option 2 (tcsr whole block + tcsr_mutex  + tcsrcc):

tcsr: syscon@1f40000 {
	compatible = "qcom,tcsr-kaanapali", "syscon";
	reg = <0x0 0x1f40000 0x0 0xC0000>; //align with the whole hardware
block design.
};

tcsr_mutex: hwlock@1f40000 {
	compatible = "qcom,tcsr-mutex";
	reg = <0x0 0x01f40000 0x0 0x20000>;
	#hwlock-cells = <1>;
};

tcsrcc: clock-controller@1fd5044 {
	compatible = "qcom,kaanapali-tcsr", "syscon";
	reg = <0x0 0x01fd5044 0x0 0x1c>;
...
};

> 
> Regards,
> Bjorn
> 
>> Thanks,
>> Jingyi
>>
>>>>>            - qcom,tcsr-mdm9615
>>>>>            - qcom,tcsr-msm8226
>>>>>            - qcom,tcsr-msm8660
>>>>>
>>>>> ---
>>>>> base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
>>>>> change-id: 20250917-knp-mfd-4dd3c81e6b9b
>>>>>
>>>>> Best regards,
>>>>
>>>>
>>>> -- 
>>>> Thx and BRs,
>>>> Aiqun(Maria) Yu
>>
-- 
Thx and BRs,
Aiqun(Maria) Yu

