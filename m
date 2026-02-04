Return-Path: <devicetree+bounces-262575-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iC7HJ6oTg2nBhQMAu9opvQ
	(envelope-from <devicetree+bounces-262575-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 10:38:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0206DE3F10
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 10:38:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 66AF9309C2A2
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 09:34:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA4AA3ACEF7;
	Wed,  4 Feb 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Bi+xMFWO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EkzRBQOS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B629313526
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770197693; cv=none; b=RJF18mtWSL5sEPa7veyPlFJmJfqOkAQc3wFmt9aN29eM1rZFIc3HsaUr1jETrmpunBAfw32s0Gxsq2NpDjdO1TRwnOV37VxOaGmxRJyFL/s1BNgXEgvTWzlo2yAh9bRaTjPluVf2uzFZqr9f4CDwLoUeuCaEie3cuyp7u69N5Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770197693; c=relaxed/simple;
	bh=9fUmKoyVmDAMQph6jcUepjwsq8REkLEYNejvFvpLbK8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TegWhKS1FLePfn/IZE9BbDIZLduOchHrXzQr1w1bg7O+wbIzwxjc2gvSLlbnf/WazlF7Tb5HxRoSoYauR3ysWwhRCQcHd0C2l5CKB1enw7YKwvM9njvvLe5BRrmc919CPDq4OIiU3SodkbbfIEknj6rMp4Cw/OWd7fwd+/3X7rA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Bi+xMFWO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EkzRBQOS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6147EbN21219812
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 09:34:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+rlk3fmZ9eeDGpAb/lfQXH+DV/R5FeXMjsNnIPMkcyk=; b=Bi+xMFWORXecBt6o
	Tbedlp+vfMe2fAyNvhh851Yi4eu9+kVxXP8/qYerfkilz40COHLl07hviiJKQwHc
	HJIQs7Q49r7wCSqT2L0wIiGAIdSxIKXPvPI9mRcdYnI3073WGDkrFza642mz9wqK
	vmvvFU657mxrOrMgHRpDgsBGgsN9rZoSAaELdSVNlWGQOCGiYZSUhvbD4O/GLH/b
	DPSKXMAZ9LweWJNxOGytyYpM5vboTeZEvGNNFnoMGXDeUM7eVG26tBWu416xreiZ
	Lc7BySG7ELNEKfKk/vJehOGlPljC3ts/HtB1/JC+e1v1mkdmONkapcR3i/+GC/I1
	CRTPNQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3g33kx6b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 09:34:52 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8ca3952cbb9so8570985a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 01:34:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770197691; x=1770802491; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+rlk3fmZ9eeDGpAb/lfQXH+DV/R5FeXMjsNnIPMkcyk=;
        b=EkzRBQOSU1srGKwpy8G2x30ASzHEZr753KY2trMYj5WAjH/9d7tm024EjZEWjpNwYd
         4RDA2loNYkNFMqvtgWM1QpMC1IKrYlNqacIJ2r8S1kCfOnYzamJdDDKk4xj93bQoK76E
         xjmJ4icRFXsTdAPJaSvn5+OMjbYSPr8ZsBN/184H+wPydUm1lBcIdVjzZOLchBd7Jy+Y
         LYxrFWpQ/Bx5eUl+EWBNmtS+d0RAeZDqOSqoMryBqOfRscKrz74XpXftvh3AaCwvgeOf
         z6x98Al8Pmm+HGJazjfgSXNqaAlLyjkJwVI1GHoAVf/P5SERAhyEqrCo/mOr6Wp5SABR
         vVeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770197691; x=1770802491;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+rlk3fmZ9eeDGpAb/lfQXH+DV/R5FeXMjsNnIPMkcyk=;
        b=avFsCzyO2vAzsTOyhe/phMBe49nUAO8WPzcDMG6BXnA1c9wB1B0xbKNk6K76N9dZNr
         c+gTVAAH7CMKXLzoBYrTTfTF4o5e8/6Mv9wszof0qRX6U48PRNtwwhsRZWM9Q04IMCTv
         p7QuXzEUcI93TwNeLhCyLJ95RSFqrcSOxda+g41K19TMbCslzV+4A36nHJi59yZEQhPd
         ZAYRHiQEksxMsyyGNfcNA+oEhWDSIsQzck6qln3LlgiN42MoDHnryzmvZLFYcflFIghC
         tEqsjBkXXLdkrrXmZyxODLSze8BkKt9VJL6Xj5vgr4UZ6wzxnvUYpD3BSiUATisfEEYo
         W7Lw==
X-Forwarded-Encrypted: i=1; AJvYcCXFr28B8HHSB5hmc43ORRtL0bqHBpoJlLZUO7WfvCU6l3PlP+MqYqItiZ1i29x2zi67uK4U4k5qv5zP@vger.kernel.org
X-Gm-Message-State: AOJu0YzcmrrBS/YPw4En+rKUlEkcoSSFqHmPSL1N791Kj8lzxSOF4F/r
	h/IV/BE1k0/oK43CeGmorlmF0qIY6A4Rge2Jv/lxISuw+adSH12TKtcRT0fCKvIGVOCxuBCOwx6
	v+WE6GWMGmYpwPzfDNJ3haMJYDM7jXZtIgJvUJhF+N8jBuuX/Q7sEwrvwELJqr5eJ
X-Gm-Gg: AZuq6aLTFYpxuwDTVCuoLnyDWhONOCzXsKQAwP9Ho77TDowCFvywWiNYGbE7jiq2+I6
	VRTH+zucSMPgZ+RP2FarlwPm+kTi11sDy5uXBqcQt/2BgmAendsPIrqjqaiYdCnMG+4C/Lnw06i
	ie0iUvMUlnf6KZUCMvJEN/0uuxG7Kt2TDGMEdzwvMvTtdLFQLnDOPxAmqfPtYpy+4MKECzMKdzI
	kjgHeEtGxS0kFfxm2xQOdpBIFei7pYN49Lx2f0G2YAXpSTxPbKq9qR2UWDVW8L5A7QqPYUU4SKr
	Au/r7ZJ0+94O6Px4dvZRUlmczb+BkcXwc/DDAcPFVINmLS1+E0c1Y3dU63U0PN47MCQeIxRFghu
	W4y9KOt/hcAbFzq6XUWFcUVUD/4cuAGEEt2plH0xBWybESFJy2Lyez/Z6NM6g0mXko5U=
X-Received: by 2002:a05:620a:372a:b0:8c5:3699:97d9 with SMTP id af79cd13be357-8ca2f9b3eedmr216145185a.7.1770197691391;
        Wed, 04 Feb 2026 01:34:51 -0800 (PST)
X-Received: by 2002:a05:620a:372a:b0:8c5:3699:97d9 with SMTP id af79cd13be357-8ca2f9b3eedmr216141885a.7.1770197690846;
        Wed, 04 Feb 2026 01:34:50 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8e9fd4a85asm106973766b.31.2026.02.04.01.34.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 01:34:50 -0800 (PST)
Message-ID: <421a0916-ae2b-44a2-a3bd-ceca0737f334@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 10:34:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: lemans-evk: Enable secondary USB
 controller in host mode
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Stephen Boyd
 <swboyd@chromium.org>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        =?UTF-8?Q?J=2E_Neusch=C3=A4fer?=
 <j.ne@posteo.net>,
        Pin-yen Lin <treapking@chromium.org>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20260122092852.887624-1-swati.agarwal@oss.qualcomm.com>
 <20260122092852.887624-5-swati.agarwal@oss.qualcomm.com>
 <63fjxtcmpbpna4cuuis332y3p52b6pvh43gyg6m7u5kiwkb2pb@znwfyet4xlpc>
 <CAHz4bYuR_LZXh=tS2FJ4VE9tVB6vN10pd-9i=uOL35sSx_BRzg@mail.gmail.com>
 <fycr33dqcosay7ake3nbbeaclhqvynwzixas4u3ocaerpqbu5e@shoibdd663vm>
 <6a982b56-2f4c-441f-acf7-a8e77ea55600@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <6a982b56-2f4c-441f-acf7-a8e77ea55600@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=afVsXBot c=1 sm=1 tr=0 ts=698312bc cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=-lrS0Y929nenYHza6m8A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: zMOSuIlZJ6AOroHsXyT4HDTRw3GpcyDE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDA3MSBTYWx0ZWRfX9tc76g39Nt2K
 ID7Rjzr3yLB0VZ9ui4/0B3qO6Zo3Gj9BK66ySDQ7GW38zjqxv3ePu4PHBXxiDi/Tch3luy5B2iv
 brzoWUE5iOAlhomMmDDusc0sLOSmp76NPOYoXfApYr+W0xYvgqG66hV91V07L89EyddgCf7hey/
 jd0LHY1b9EH0TqD3pelExrRrKBzBPmTB8cP9XxrqVJNk48zPkKK6B4Oy4C9FAxIOqyzdJPnJN6G
 QSXhnR6zFE5gnAKM0bc6I55vFc6pKaJ5d6psS8tQOhDzWvQPyH4khuGZS1JOSG3AKDjxoYT148f
 +lcmauJbnEs9OFWKeP3QiLQbEwNH08RhkxwDjWRktwKFBHx1NfU/wfqS0NfAb4wW2Av9Mm+fCEP
 FjC8iEZm2jTruodTkiEBqtELHZjPL9EJxDah3k0z34/XbTAQJo1dnkjYMdUGN643n3ztUp0rxOW
 yZSAxck73ramdAiio9w==
X-Proofpoint-GUID: zMOSuIlZJ6AOroHsXyT4HDTRw3GpcyDE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-04_01,2026-02-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040071
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262575-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.2:email,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.0.1:email,0.0.0.47:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0206DE3F10
X-Rspamd-Action: no action

On 2/4/26 6:56 AM, Krishna Kurapati wrote:
> 
> 
> On 2/4/2026 7:03 AM, Dmitry Baryshkov wrote:
>> On Tue, Jan 27, 2026 at 10:53:46AM +0530, Swati Agarwal wrote:
>>> On Thu, Jan 22, 2026 at 4:02 PM Dmitry Baryshkov
>>> <dmitry.baryshkov@oss.qualcomm.com> wrote:
>>>>
>>>> On Thu, Jan 22, 2026 at 02:58:52PM +0530, Swati Agarwal wrote:
>>>>> Enable secondary USB controller in host mode on lemans EVK Platform.
>>>>>
>>>>> Secondary USB controller is connected to a Genesys Logic USB HUB GL3590
>>>>> having 4 ports. The ports of hub that are present on lemans EVK standalone
>>>>> board are used as follows:-
>>>>> 1) port-1 is connected to HD3SS3220 Type-C port controller.
>>>>> 2) port-4 is used for the M.2 E key on corekit. Standard core kit uses UART
>>>>> for Bluetooth. This port is to be used only if user optionally replaces the
>>>>> WiFi card with the NFA765 chip which uses USB for Bluetooth.
>>>>>
>>>>> Remaining 2 ports will become functional when the interface plus mezzanine
>>>>> board is stacked on top of corekit:
>>>>>
>>>>> 3) port-2 is connected to another hub which is present on the mezz through
>>>>> which 4 type-A ports are connected.
>>>>> 4) port-3 is used for the M.2 B key for a 5G card when the mezz is
>>>>> connected.
>>>>>
>>>>> Mark the second USB controller as host only capable and add the HD3SS3220
>>>>> Type-C port controller along with Type-c connector for controlling vbus
>>>>> supply.
>>>>>
>>>>> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
>>>>> ---
>>>>>   arch/arm64/boot/dts/qcom/lemans-evk.dts | 208 ++++++++++++++++++++++++
>>>>>   1 file changed, 208 insertions(+)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
>>>>> index 074a1edd0334..a549f7fe53a1 100644
>>>>> --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
>>>>> +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
>>>>> @@ -68,6 +68,45 @@ usb0_con_ss_ep: endpoint {
>>>>>                };
>>>>>        };
>>>>>
>>>>> +     connector-1 {
>>>>> +             compatible = "usb-c-connector";
>>>>> +             label = "USB1-Type-C";
>>>>> +             data-role = "host";
>>>>> +             power-role = "source";
>>>>> +
>>>>> +             vbus-supply = <&vbus_supply_regulator_1>;
>>>>> +
>>>>> +             ports {
>>>>> +                     #address-cells = <1>;
>>>>> +                     #size-cells = <0>;
>>>>> +
>>>>> +                     port@0 {
>>>>> +                             reg = <0>;
>>>>> +
>>>>> +                             usb1_con_ss_ep: endpoint {
>>>>
>>>> This contradicts USB-C connector bindings. Why?
>>>>
>>>>> +                                     remote-endpoint = <&hd3ss3220_1_in_ep>;
>>>>> +                             };
>>>>> +                     };
>>>>> +
>>>>> +                     port@1 {
>>>>> +                             reg = <1>;
>>>>> +
>>>>> +                             usb1_hs_in: endpoint {
>>>>> +                                     remote-endpoint = <&usb_hub_2_1>;
>>>>> +                             };
>>>>> +
>>>>> +                     };
>>>>> +
>>>>> +                     port@2 {
>>>>> +                             reg = <2>;
>>>>> +
>>>>> +                             usb1_ss_in: endpoint {
>>>>
>>>> port@2 is for the SBU signals. It can't be connected to the hub.
>>>>
>>>>> +                                     remote-endpoint = <&usb_hub_3_1>;
>>>>> +                             };
>>>>> +                     };
>>>>> +             };
>>>>> +     };
>>>>> +
>>>>>        edp0-connector {
>>>>>                compatible = "dp-connector";
>>>>>                label = "EDP0";
>>>>> @@ -141,6 +180,16 @@ vbus_supply_regulator_0: regulator-vbus-supply-0 {
>>>>>                enable-active-high;
>>>>>        };
>>>>>
>>>>> +     vbus_supply_regulator_1: regulator-vbus-supply-1 {
>>>>> +             compatible = "regulator-fixed";
>>>>> +             regulator-name = "vbus_supply_1";
>>>>> +             gpio = <&expander1 3 GPIO_ACTIVE_HIGH>;
>>>>> +             regulator-min-microvolt = <5000000>;
>>>>> +             regulator-max-microvolt = <5000000>;
>>>>> +             regulator-boot-on;
>>>>> +             enable-active-high;
>>>>> +     };
>>>>> +
>>>>>        vmmc_sdc: regulator-vmmc-sdc {
>>>>>                compatible = "regulator-fixed";
>>>>>
>>>>> @@ -536,6 +585,39 @@ hd3ss3220_0_out_ep: endpoint {
>>>>>                        };
>>>>>                };
>>>>>        };
>>>>> +
>>>>> +     usb-typec@47 {
>>>>> +             compatible = "ti,hd3ss3220";
>>>>> +             reg = <0x47>;
>>>>> +
>>>>> +             interrupts-extended = <&pmm8654au_2_gpios 6 IRQ_TYPE_EDGE_FALLING>;
>>>>> +
>>>>> +             id-gpios = <&tlmm 51 GPIO_ACTIVE_HIGH>;
>>>>> +
>>>>> +             pinctrl-0 = <&usb1_id>, <&usb1_intr>;
>>>>> +             pinctrl-names = "default";
>>>>> +
>>>>> +             ports {
>>>>> +                     #address-cells = <1>;
>>>>> +                     #size-cells = <0>;
>>>>> +
>>>>> +                     port@0 {
>>>>> +                             reg = <0>;
>>>>> +
>>>>> +                             hd3ss3220_1_in_ep: endpoint {
>>>>> +                                     remote-endpoint = <&usb1_con_ss_ep>;
>>>>> +                             };
>>>>> +                     };
>>>>> +
>>>>> +                     port@1 {
>>>>> +                             reg = <1>;
>>>>> +
>>>>> +                             hd3ss3220_1_out_ep: endpoint {
>>>>> +                             };
>>>>
>>>> Why is this port disconnected? It it really N/C?
>>>
>>> Hi Dmitry,
>>>
>>> Sorry for the confusion, Can we do it as follows:
>>>
>>> hub:                    Hd3ss3220   typec-connector
>>>
>>> usb_hub_2_1 <-> port@1       port@1 <-> empty
>>> usb_hub_3_1 <-> port@2       port@2 <-> <empty>
>>>                               port@0 <-> port@0
>>>
>>
>> You still missed the _why_. Why port@1 of HD3SS3220 is not connected?
>>
> 
> There are no remote endpoints added in dwc3 node. Since we are making dr_mode host. Hence keeping this remore endpoint empty.

So can you like.. add the endpoints under that node and problem
solved?

Konrad

