Return-Path: <devicetree+bounces-266099-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DpDJbRYlGkXDAIAu9opvQ
	(envelope-from <devicetree+bounces-266099-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:01:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3859714BB70
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:01:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 85D54303A5C2
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:01:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C8F4337BBB;
	Tue, 17 Feb 2026 12:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ifSnJ1ej";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JXIUamV0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF7F2DB79B
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771329683; cv=none; b=nz6Giu9ZUwTFBpqRGkHIljH0sEghGudSMCN/MII13uCNfm/eDGeZT20XDtlzX6oP4nSdhLNsnJIlSnSyG4+MsIRc81Ty81RGuTjtzNtu9HuVxDV1hxmrJGbTQClKhnxwDBGGMvf9/AIN1+hTcPLFVhsBnduDSNxpsdIyygcng8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771329683; c=relaxed/simple;
	bh=wyi/2K/PMgiBnA9eO9+b6JgtXV7Y4MAa2MEv05gq3no=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CPWtjW0Jz33M8jIniRTrPvDlj3Jph11bF2MIYX0mejv3WThhyzZNRuXWk3coz/xG+x+YhTtJHg6rrqGgsjopbN9VgtOTlJYjEz9l5ezLUz4S/U+MK/nS+OjjQwHTc+QnbUX+j7IF72DGcn9Hl0/4NTu2SAFuEM0fixYyjxTvP3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ifSnJ1ej; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JXIUamV0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H9MHet985268
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:01:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qcoxJfqP8hTwWTWUoRtoBVPz62wL8BplEKMyIUX4f8A=; b=ifSnJ1ejb87BvdQZ
	byFrF3BA43EMtnd0P5sXvejeW7KYbJOi7PG03N7TUUgxWnILGIl1YjcR5/HZhyNH
	xNf03lcIcEPCAfSiFbXD5TuOs8NGmV6Npy4EaszDCr47/bxxzJvNy6g20FqrBsE5
	rL3IZRuEhCwSSjWVSKA7ECBvROh9ublKLVuRteLDaiUJf3YpexoPEEVdjhHBIr5l
	EVqXI56GASo3je2jY+r4wkHupV3FsN+Re7cWlPL9hhRd4u49WSacJUnbBTsvZHfQ
	qOfUNLzPOH7NCdM7lLFRocBDO7XmZTHRSujNRWycoR4TS1ExrysKbVa01R0a0h4W
	JifaSg==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc7ap244e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:01:20 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5674e5926e0so1142335e0c.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 04:01:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771329679; x=1771934479; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qcoxJfqP8hTwWTWUoRtoBVPz62wL8BplEKMyIUX4f8A=;
        b=JXIUamV0T6ZXQI6n7iHWzUaNCkhUX99S1D56g1lx042UxtUJEp267qrhYl2xcs8CTH
         QxzLqbjQ6xpK45moln9gCjtyy1jVlqMQgqU5GAN8XUKWwIrall+l2Uo4RlD4JDLQrUfc
         PZiqR5SYCQh4MOvPgv92y3FU1wuAw31pijVYKNv/c3bkirknSmOzqbxYR/xa2a7AleNC
         XPpY+o9n6j1nyJJxV4xxxktfdPgil/1JHI6IHhsBAI8XKp8dqYID/aVIWSXzxlViyrx3
         sym9dYYplfxrEu75W1FkCkdo9IgRpSc6QUw2GS+7RqNHOIvqiDTsdlPtLq/I5CJ0NZzu
         1G/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771329679; x=1771934479;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qcoxJfqP8hTwWTWUoRtoBVPz62wL8BplEKMyIUX4f8A=;
        b=lWiQM1d0KYnMornoNiZ6JeIxHP74Z06iQm6KRCOiU3JRUZ54F4G79IB3r1BfK/b8Vk
         GO4R7kkEkZ25CdjbKUbJ9vgn0xZH7g212nv9BIw2blkslVabRIEPD8u12Rz1it4uhYz0
         4x5fym4+t2eIuCgcXkIpiOa/tY0L5NvnBdkeSh7FwMQ6uukerb2xRjzvV0H3uZdVegCG
         goOEv3rgZUvh7LL8hPkZg0GJ6xbQVxxf5qCgx4iiJQpPaPevSmN4Xi2JiNllwV9b519l
         T8LC9NWaGZlZq55IxLDdiH5AyU/5lUq53zQx/7bg0lo1d34NI/0af1CAVTbpbVUVY1uz
         OAmg==
X-Forwarded-Encrypted: i=1; AJvYcCWGgmLFOKkZcHLI3lUanbrVNift7uz/zeaFDbyuFzs32WkNcODSP5LZVRZOsFdzihlYMOk5CkFJ0MPf@vger.kernel.org
X-Gm-Message-State: AOJu0YzbKjLfW2PGPIuo4O3pEqq6cHG/YFzOPTJ/4yuZTHWmD7F4BSSu
	YQ8fhR+14pGosNZ4CRE+UeKL0wTMLS12HV3p9+ml07/1LuR06gewGD/JCyJ30ACFGmQjgCp2tPK
	VvvT1AbSMijp7iDNIK7+28bKl91O3jueN6W9a5PSHoo5uqX+DMdGZxhNKQcKqsyyf
X-Gm-Gg: AZuq6aKihvM4kDli9ZI6hAlBxSJaA/MocoaLepIlOJfQtxZAcTNp2nqCbNbg9hfN11+
	p6BmMYofFWLb/obA9aAv9ta1BLIzK6I53w2L91uNhAs+1tEO+88nMuAEn+2U7TX6bmrDlvg55To
	DJRRw+copfpoTep5B7n8Wc4pixCaWy7sfrYx1yLPF6DRfMUhosNhB5DYp8FWiv4z4unfgrMEoIZ
	LUlocHcPpxVTCot1FdFZvvRSQ+kQeSHrpgzIA64Teai6xQeg+CgfVnhpYzeKdpSmP4nnZohSpl5
	iRBxr25jZUOgnieJXfT5GZfFNhL4WHUrqEPKZhSYcQ+96S9/9bAD6/spvdNMtZ7Z+5l4HMxMXoa
	4dhzBgPOj5Hl+5Dn9JM+MfssELG0/wxRTueFsEDOx0LS6WmrefcCHXK2Z5AbXEFzNEIEmAE1bYb
	ezMtI=
X-Received: by 2002:ac5:c89b:0:b0:559:5ac3:4451 with SMTP id 71dfb90a1353d-5676f436ba6mr1603010e0c.3.1771329679405;
        Tue, 17 Feb 2026 04:01:19 -0800 (PST)
X-Received: by 2002:ac5:c89b:0:b0:559:5ac3:4451 with SMTP id 71dfb90a1353d-5676f436ba6mr1602994e0c.3.1771329678699;
        Tue, 17 Feb 2026 04:01:18 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc735d2dcsm351116166b.12.2026.02.17.04.01.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 04:01:17 -0800 (PST)
Message-ID: <124c661b-db25-466a-a163-99ca336a3e70@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 13:01:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/3] Add CAMSS support for SM6350
To: Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Bryan O'Donoghue <bod@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260213-sm6350-camss-v3-0-30a845b0b7cc@fairphone.com>
 <c83ce76a-1c83-40eb-9c67-d26b7e6f68f3@oss.qualcomm.com>
 <caa870e2-3795-40bc-9f0e-c93e313c8c6e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <caa870e2-3795-40bc-9f0e-c93e313c8c6e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA5OSBTYWx0ZWRfX99FYAeBfNV0N
 1U5sKKz+5GBzYD6ECAwFPGxPW3yS8RUCbFbJRvAU9Ld2lozeYqpNkHHw4luBIbloPhSRC6IbaTI
 4oYowsKigeHgqYumbKWAHdvA7vkAWFB3CEqcWuzLxZ8Im0FcjIbdMsUwp6ECxPidc2TzAeWFG8i
 ksaAsS5jzAcJvBLs5RzqdkJpop5e+QDIhfdZtvEEuNi5caepu+dTLw27SqqumRjFmbkt0yNz7dP
 vbm5YfW1aTaQo7Kb0CIjjAE6N/xGkfKOknOwHKYxFPRlEYo7Q4IMCPCnr2mySLOqRVva6CPs+iT
 WTq/hWv9AIj2QIWEwogsGMZ1A8AmPXNUGFFgXsByHyyF3ClqzmznK42doHT+/V/uOakzvRzx8CQ
 oS4LjehoLKyprimD5l+P9JDvi8WlKdDmsS5RWLdhIlYD6r//jBnJuYVgtX153Oys4HMParikgKo
 9HCBpN9fdHTmzhN8SWw==
X-Proofpoint-ORIG-GUID: 33n2AwrXo_1ywhF27jDOjWFB46Oe4WoU
X-Proofpoint-GUID: 33n2AwrXo_1ywhF27jDOjWFB46Oe4WoU
X-Authority-Analysis: v=2.4 cv=Rfydyltv c=1 sm=1 tr=0 ts=69945890 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=fxqAw4-zz0YW6xlzh2kA:9 a=QEXdDO2ut3YA:10 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 clxscore=1015 phishscore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170099
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266099-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,fairphone.com,kernel.org,gmail.com,linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3859714BB70
X-Rspamd-Action: no action

On 2/17/26 12:56 PM, Imran Shaik wrote:
> 
> 
> On 16-02-2026 04:34 pm, Konrad Dybcio wrote:
>> On 2/13/26 2:15 PM, Luca Weiss wrote:
>>> Add bindings, driver and dts to support the Camera Subsystem on the
>>> SM6350 SoC.
>>>
>>> These patches were tested on a Fairphone 4 smartphone with WIP sensor
>>> drivers (Sony IMX576 and IMX582), the camera pipeline works properly as
>>> far as I can tell.
>>>
>>> Though when stopping the camera stream, the following clock warning
>>> appears in dmesg. But it does not interfere with any functionality,
>>> starting and stopping the stream works and debugcc is showing 426.4 MHz
>>> while the clock is on, and 'off' while it's off.
>>>
>>> Any suggestion how to fix this, is appreciated.
>>>
>>> [ 5738.590980] ------------[ cut here ]------------
>>> [ 5738.591009] gcc_camera_axi_clk status stuck at 'on'
>>
>> FWIW 845 has .halt_check = BRANCH_VOTED here, which translates into
>> 'dont check the state at disable', this one has BRANCH_HALT (i.e. spin
>> and keep checking the hw state)
>>
>> +Taniya would BRANCH_VOTED be fitting for 6350 too? ^
>>
> 
> The parent RCG of this clock is under NoC control, and seems like there is no vote on the NoC while disabling this clock, hence this issue is observed.
> 
> The BRANCH_HALT_VOTED/BRANCH_HALT_SKIP should help, or if the NoC voting is removed after the clock disable then also this issue should be resolved.

This is very useful, thanks for the insight!

Is any of these solutions specifically preferred from your side?

Konrad

