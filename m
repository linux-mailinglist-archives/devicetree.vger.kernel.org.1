Return-Path: <devicetree+bounces-310190-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QLVWMzpoKmpxowMAu9opvQ
	(envelope-from <devicetree+bounces-310190-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 09:48:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0856E66F87C
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 09:48:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=XySJbt7a;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=MNTY0l6R;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310190-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310190-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E13E732658B1
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:41:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A0D1367F5E;
	Thu, 11 Jun 2026 07:41:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AEC0367B9A
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 07:41:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781163678; cv=none; b=cOcC610/KVEF5+I0xr4Waq38ufVSYdnNshLfTqPjeje9RingGYk1PlRl8kjy0KqQNyTu1RWxJtwuwOpetQGzBMu5191/CeZge/MKBA5z5rLp+VRDO1W6e/MyVY+FK6rKQtdxlZDmko4Jn7Rb30mP3ZfpMyCcIAbVcijDVWE++G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781163678; c=relaxed/simple;
	bh=fb3vaSyYlvghL/3UJygNmwsMVlIN9h1HkL2FX8hflPI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CbMF/Lt/g/GTMkdFA6TZBlqOFNw2b7/obPbn88ZWgbq73HIHM0ma7wpQ8Ro0/IfUKhQcmMWYKQfxTRKFLJh1iN7u2TRjVopLatZDYjhm5X+7QFdrBtQOqyJpM61+kqk4dRO9aIusY9FOPrD5gTy/F43waZDIZGT4SHHHoHe8ssg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XySJbt7a; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MNTY0l6R; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65B5GSsB3817230
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 07:41:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ROPGOugNo7RgDLWp4ZC73iQpjIRvxF4uexl9Y2/J2kM=; b=XySJbt7aNkqsPmEO
	Wc/XLn9vBt8QYqz7pv4W2fziGXyseUd0gBO0KeWVSS1sjD8apPpUlnpoLy4jDv7y
	bnUqqVowyGuPKXh6DX2+qLqOXHKPXBAIDkv3OBsvz/fTgC0XdOTiOnnPNSHoKMHt
	XUmmsskmSZODT2QEsLGlQB6Q4vmANb5j8SWCUNtwHyhad5MP35EjBQ/Czw/67/yb
	FyRsP5uWpeScFATLgvYO7lKeubLnJvEsGWJ6KQKVklIur9xvwdM5vP6DzwYRSW2t
	CCeAq34YJF/2+9XJPm9ScBdXnYFdSvz4V9J7O8P1h5TWKpYZ6Bo1mzHoiywG2ua4
	amODaw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eqe6ut8m8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 07:41:16 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-915737aaf0bso170184185a.3
        for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 00:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781163675; x=1781768475; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ROPGOugNo7RgDLWp4ZC73iQpjIRvxF4uexl9Y2/J2kM=;
        b=MNTY0l6RIEbs899cWBqdyokq6ChR8vU/bTJxGT0DSqVjSTnRjG7/Mgx/5HvBQ5gxub
         3lamGZn6nRtn/OHJ9aKMttcWRpZ3nijb12Q43NA8kYBfPKi8Vs9lsdQvfzYVxNjW0lGa
         yysV6OWfTHslU0MAM+vIx0gy+13OwuibEffWxHhhirMz/WBvSACnUbc8pm6nru5KQvSq
         /dRho6VRfeGmCWs61ovOHhE4tybVoC2/I4ks9U+6NIitLW9fhDZP5ebFn3jDmZIHcT/8
         b9FBGRkjvfwTI7EvBL4yvPNsbYM9pLe3gHuCGLrJS/4E97yyFd9m1d2DKZLE0wR7Hkne
         /tWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781163675; x=1781768475;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ROPGOugNo7RgDLWp4ZC73iQpjIRvxF4uexl9Y2/J2kM=;
        b=FGjy8qlw6m3/rHRrZkggIY2BxOINhvQ4OS6UJ/gAonlVaH6zbPxH5cwZlbGIkvhi6h
         PC5O7z8B7vut69vfJA020UOPofPWmqfa2LBq+zHWm/+Roa+5JT2MFuUoTbvJ90DoTNxf
         mWG5dZYbyLoQqDdgeu6cwkzLfZB6nf54wV7H+HOkQPtOfAJgAms/WSohrixu5951sIXm
         mm2jm0840hUHVP/ze85i3Pd2y9XJJnD/lPbORisoPgBEYqtaHzmY72wuW7MAXAVniFSz
         1cZOq9fRdSeUPjWaVsUYBWQ0+fa491SX/dTf0hzU7FhaOGMzilaJ85flLPSc7Y578vWi
         BGyQ==
X-Forwarded-Encrypted: i=1; AFNElJ9iKxFgdyaHod7bLmqHEjfEEFzQtiUW5rBpphYVhXdFJcnTWgW/0hVidrj63/vQF08xYQdqDAOIIVtv@vger.kernel.org
X-Gm-Message-State: AOJu0Yww8HS8xvRwOhU0pRuwFbtTZApHl4Omczp4uSaK/9E3hUpE47Od
	40ryblvHeNAY2ABijHE5ri8Mg9PXXEyuAn/tbCKPP5UBZhRRmEpUfekww4m3A2jRDP4y8Aj+MsM
	RVb81Rq0I1LJQxKoe9LC35y7Gv4qbrAw1gU1b0+ABm9zgfGwr/AJFY7Ykgxb+RE/NJ9Ulp5Yn
X-Gm-Gg: Acq92OFMUKzkxt06brqXo3KNLyEiE49Trr5/GozqBx9ADIRgTP7BVgwLNkatZ7EfAxa
	f+DHLxti9kg0T48reFjjBX3iKZOd/gLepQ9Da8P/aHtURuq+axhxu6Ag9qKGh8ISvulIbMh+LfH
	MQFQTlYCj0tJbi3Kr/U/s14dIx5HeFxhMhMM3Psj7fA/JCLaSSZCUlCygUDk68ipJ68+NmtRvjF
	Apkx9ieCBc46YNsggL4RQf48oVBZb+oFWzxIV+TZQDJ4Pvzof73vXhVLCif5KHmT/fAOKp+kOv+
	crgDJA2vTp7TDy2RNgMRQqxVkt6lZPaLVz5lhQ69TNUINwC0YTTCgb/EAzhpc88ejmuYWyScda9
	m6FltQ/S1d7W4msNSREh2Z7PmydLUWbylZ75xpSOWXDVwCU8DdtFVlxzJ
X-Received: by 2002:a05:620a:70f3:b0:916:10f6:765e with SMTP id af79cd13be357-91610f67c8fmr23874485a.6.1781163675330;
        Thu, 11 Jun 2026 00:41:15 -0700 (PDT)
X-Received: by 2002:a05:620a:70f3:b0:916:10f6:765e with SMTP id af79cd13be357-91610f67c8fmr23872885a.6.1781163674901;
        Thu, 11 Jun 2026 00:41:14 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-68e65b58596sm10562147a12.30.2026.06.11.00.41.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2026 00:41:13 -0700 (PDT)
Message-ID: <9c8e4014-c82c-454c-9c1e-d89f6fbdcdb3@oss.qualcomm.com>
Date: Thu, 11 Jun 2026 09:41:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: nvmem: consumer: Make 'nvmem' an array of
 one-item entries
To: "Rob Herring (Arm)" <robh@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srini@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org
References: <20260610-topic-nvmem_schema_warning_fix-v1-1-4029becf13f9@oss.qualcomm.com>
 <178111967044.674793.5974554745587773283.robh@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <178111967044.674793.5974554745587773283.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=FJ8rAeos c=1 sm=1 tr=0 ts=6a2a669c cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=kNeE8hlzrwTnH4gd8OMA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjExMDA3NCBTYWx0ZWRfX77zOyYnjMdHz
 PE4McOnnkBBLpgu1+vakkhbcJHOAGT6xU6bxcLQ2eS6Bvh3szRYDPLpv+xKhQFLjsOMSmuM9rN2
 RctvBDrPsoWLVG+uzAQzao92p17agvU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjExMDA3NCBTYWx0ZWRfX39vw3EHF5v8U
 dnG0CCIed/FNL2D+pAmfQFve2Sm9T7ajoewZffV/hyH+zCGw/20YY+mGj2tbbAoq1GfkBekHpjM
 H7KTUtocFk5mz/GQPnbFTJoKJHSm/NsT/TpmST64LFC+9tThLzzrQzX/ZAtNyRSDlz9+itEXPjB
 EgZa4oErm5esLk2kqL5Bs499G//FXFMBOQqVRt/8/1WaRQgEGsI/bLUaE38Rlflh89OjrSu9H2S
 N+dhIiwysE1NDqQXmBdV8vsiSVy3IZ+x8PitvP27y/fF3oxDJ7uMAJgmXV7RR0Z6Oyxe4TU9132
 bsaX6D35WVvRqDUDEQFvgifYoJoBnlLgsBxRlNXKQETq7rA3z1tGCoWHqFSvUgQpXblhXYrCmbd
 xtsKGTkNHLwf43wseg6ccvhKmAeZ3nYiqgkQ5lWnKyYTitWDZp8oANEofM8qEV4AWBqqOCBinqE
 MSNC8oWTjPCu1KsqwMQ==
X-Proofpoint-GUID: p0qQzcrDk2HakTfXWdQdhueK1z2NUnGp
X-Proofpoint-ORIG-GUID: p0qQzcrDk2HakTfXWdQdhueK1z2NUnGp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-11_01,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 bulkscore=0
 impostorscore=0 priorityscore=1501 spamscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606110074
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310190-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:konradybcio@kernel.org,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:srini@kernel.org,m:krzk+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0856E66F87C

On 6/10/26 9:28 PM, Rob Herring (Arm) wrote:
> 
> On Wed, 10 Jun 2026 14:52:42 +0200, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> 'nvmem' unlike 'nvmem-cells', consumes references to just a single
>> phandle with no arguments (i.e. with 0 cells).
>>
>> Constrain the schema to enforce that, so that the number of such
>> single-item entries can then be regulated by IP block-specific YAMLs.
>>
>> Suggested-by: Rob Herring <robh@kernel.org>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---
>> qcom/qcs6490-rb3gen2.dtb: pmic@2 (qcom,pm8350c): pwm:nvmem: [[397, 398]] is too short
>>         from schema $id: http://devicetree.org/schemas/mfd/qcom,spmi-pmic.yaml
>> qcom/qcs6490-rb3gen2.dtb: pwm (qcom,pm8350c-pwm): nvmem: [[397, 398]] is too short
>>         from schema $id: http://devicetree.org/schemas/leds/leds-qcom-lpg.yaml
>> ---
>>  Documentation/devicetree/bindings/nvmem/nvmem-consumer.yaml | 2 ++
>>  1 file changed, 2 insertions(+)
>>
> 
> Given we're close to the merge window I applied so it goes into 7.2.

Thanks!

Konrad

