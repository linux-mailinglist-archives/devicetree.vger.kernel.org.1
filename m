Return-Path: <devicetree+bounces-263287-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCIhAiu8hWmOFgQAu9opvQ
	(envelope-from <devicetree+bounces-263287-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 11:02:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B638FC618
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 11:02:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4503630074A4
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 10:02:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7046361DB3;
	Fri,  6 Feb 2026 10:02:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="azAZqXR9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aGjGzg+z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A3D035D604
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 10:02:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770372135; cv=none; b=nvdiuWav0s71qb1Bo/K2OzFUfJYGIsYESayUfKpcG1ztsODKORyABAi7599Brss1yq/PdKBZ2eHALoroD1Qr/KQ3/C+1p1NxBTmVnwA16xKQOqonXQjdetCThCM7exOuh16GEriZ1ANHFRY6H2TSufvbUdTKww2EmrtJFnXtl0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770372135; c=relaxed/simple;
	bh=i1sNXNPVMosYuGD8AAGDq7TJNCYr0jvjHq4JfafYQ20=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ax1/CAoaCi2sLxRj0oj1pn3pM0DZbdLWdAqshutgOO4pRs4urkRmx4hrswgijW37ClEcieG1Pzt6yqCxyC5adBhmJmK8ARE4om8O08JlA4rzkXWhjkSkbFh5rtBWSNnkxw0I0LKarO0i9vGQKPY7RrX0zzAGH8sR+6KmOGVtQbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=azAZqXR9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aGjGzg+z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6167bqwg4042340
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 10:02:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aDHuUROVLA849sayomHF4y/80YyzohWdoaGg7+6EwmQ=; b=azAZqXR98t0B5LMK
	aRJ21DVvBj6Vy8Jl0LFCV076NSyEdVASRIYW2r3qxgABmho7yI3Mk/VS7CG2BrSj
	NFgNw4aHfvJQtcmWg/ATAHHV6FNWq/fX1q9FobH+IgZ5w95ZGqXXCNO2efKTVEH9
	2gAT/+5VwGEXmVA3QmdfhIJq/VYaKeu71/9uvkG0LQPEEH2bSiaGBjSOzSGo1SgQ
	s9/3v+1qayoQAk3ctnLAofgl9ywSIQ1irgNNO0GWKINApJqCZpRealrQCb0uznui
	UiJZYEUTMJba4BBv/il58K/OSxiNjpJSSMLTYHDfxWq25zMycaoOb4xKTfm3fWO9
	qGo4uA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5c2w0gdm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 10:02:14 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c71655aa11so670657785a.3
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 02:02:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770372134; x=1770976934; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aDHuUROVLA849sayomHF4y/80YyzohWdoaGg7+6EwmQ=;
        b=aGjGzg+zFFzko6BFVFtiwnvcDxHydfElLAJh/+8Ig3H4MN56l2yTy6hunCa4KvLna2
         U5AaKTVZshrjf3nVdkwaXWVyXz9d2AJqKFaWTpr0CkKrvu+CHGj0JGwAFKqUneasBvMg
         giJ/2jx/7ro2JPZtU/7wntLBLsUiZS9cbgRQwxZjCKA2ecmNWYP5XKhtdFgDse2vcPrJ
         0/E/uQyisghfk6A31bqjZUSKqgKKOwybiDc4eZ8vTauEYKBq4ENsbUojzw1uPhP4zmAu
         7BMQM6Gwa0OHk1Akef2wkuqrbwlNhcKtuBgniJTjjz8DteunYNRmM5sJdMJ7AHzS2bMK
         wWNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770372134; x=1770976934;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aDHuUROVLA849sayomHF4y/80YyzohWdoaGg7+6EwmQ=;
        b=ECSe7kukfvSE7hJQAuMmwkVW6tOjLQHvrv69TaJ+yMzSrzXomt8YtUhO+otUj8aEtT
         BlLNI0HMtlZCnIURZLlejtQ7UvrptjsP1kzkdKh5Q6m/0lxUU8wzKqlOeC0IDLmB2aXq
         Nys7nmGfHb0ep133u5gdXV0nsgbB7QPOapAjbTcdlHO+ohSNYSPoYA6YWlCYieFj4YxC
         AGKuKABjzU36O3Sw5FFuUfxDPS7ynUjqFfok8sebEVVoLzL0ICkFVB/qyhH6ukzdZqru
         ZHd2v9V+jwLoN+TwoM3sotGxzaz75EKF51sXTFqFByCDo08891iU4BlmzNMG0k4vTcih
         xy0w==
X-Forwarded-Encrypted: i=1; AJvYcCVpShlW8So4yFQw+wEhm7padJvJdOdWOKLHI3D+m3unPd1ZhUZayByM2UkCSaKabCVhUbSCRE2YgQmb@vger.kernel.org
X-Gm-Message-State: AOJu0YyyfjrZwZyWLGCLFNavhIz1fSJ9/k9gU/6EzZ7wdbXyZ84POiZg
	QRN9oBa0WKIXRNGP4oOejKZtFCnrsLyJD8ZY7zac9tuSsoY3v8gVx4jXPV7FYO5haCZmao6FsOp
	tddyEsCBldlf8ohJKjWwOM2EEQcW9cOB+Qw0KDAUKvjq0Wsk0AlnhQ7Xu0k7Zv/cF
X-Gm-Gg: AZuq6aLj7Oh2MrbPW8jmug674/dR8cVRf1GetlBIrZyXh4Aa9cWkjo6BjizfbiFvZff
	xDOgtgA06Z3vgtWjqTGKEM7zxG5ir+xnmVKyH2wZRm2syEaBq/NM5gSmUZVZq6gt/wgE5N0FgDX
	UE3jQ8JONqFb++lSRemELHinob7POdvJQNwloj3HKJQ9wDA9lg5fYOp1WFVsQZ+YZB/ft3/vJtS
	eS9bU/pk38Egyw6y9wv8gW3CfhCojm91R15g3Xvpw4EWGBFh9WSiyZr3MQ73KpFWX2RldV+NtIX
	aJvi2+Gdb+PV4BKnzcIfeBt7w+4ZjLCUIiQRWzPIwWWjTzWA3wsasDsrzRZhaJqvf9c1ocim2nT
	NScNwdV1fDbxTCtemv8IRzx7WkO7OBY4swerCp9H+F2vraRCG
X-Received: by 2002:a05:620a:190e:b0:8c6:abc5:f169 with SMTP id af79cd13be357-8caf17e48b3mr240223185a.73.1770372133647;
        Fri, 06 Feb 2026 02:02:13 -0800 (PST)
X-Received: by 2002:a05:620a:190e:b0:8c6:abc5:f169 with SMTP id af79cd13be357-8caf17e48b3mr240220285a.73.1770372133249;
        Fri, 06 Feb 2026 02:02:13 -0800 (PST)
Received: from [192.168.68.118] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-483206b8ebbsm62560865e9.1.2026.02.06.02.02.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 02:02:12 -0800 (PST)
Message-ID: <8f61563d-8875-4aaa-b94f-1866454367aa@oss.qualcomm.com>
Date: Fri, 6 Feb 2026 05:02:11 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/10] ASoC: qcom: q6dsp: add support for LPASS LPI MI2S
 dais
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: broonie@kernel.org, lgirdwood@gmail.com, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, srini@kernel.org,
        perex@perex.cz, tiwai@suse.com, alexey.klimov@linaro.org,
        mohammad.rafi.shaik@oss.qualcomm.com, quic_wcheng@quicinc.com,
        johan@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260205171411.34908-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260205171411.34908-6-srinivas.kandagatla@oss.qualcomm.com>
 <20260206-petite-tireless-iguana-addf9e@quoll>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <20260206-petite-tireless-iguana-addf9e@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDA2NyBTYWx0ZWRfX9Xa+K8nIC1FW
 jgQihC/zHwzqV5Mh/ev1hHMETkg21ZVUwewJGLpFuiTXioGHgoAc82IxlxWQVRbotgtpIWL+qCo
 2WhgmoM/PgpZ9p3MfoIBLI/Hnhs5Zcmr3DmAqBVpW9km6OnvkhpLB87xvr+bk/9+jVzlQIt53Cb
 b7t33fOTPduD4TihzBSgBOrfV1SMTYJj/w2QVHts2QYxeiodEgAXS6XmMe6WtKYg+ZqFW0tOYqM
 pc49cX14kpaWcSOEu7jqsvunqSJaClX2yQfmL+81E0sMXx9AktWA4RGqRa7+z70So9PLb/pybVO
 8ywqz4QJHUhvyKSIkaAP56qDsDcm9ghNKLQzDMoavRf8+MAzKQ+mGXG7ZN6YKT9DTuw4X/UheyP
 XJQZtRivG3ItQvpAETF4jQWwYwyI2FXVIQWnblWMufz3NGvhyVqKuA9bHUd+/xX4denmNMgN5Lw
 F16Aham/rOfxTMW4K0A==
X-Authority-Analysis: v=2.4 cv=Wtom8Nfv c=1 sm=1 tr=0 ts=6985bc26 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=M8LtWt04ibze1OfZ8MQA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: Yl5GaTd5MIgUmqW-9sCMeY1cDuZnxxLl
X-Proofpoint-ORIG-GUID: Yl5GaTd5MIgUmqW-9sCMeY1cDuZnxxLl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_03,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 spamscore=0 lowpriorityscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060067
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,perex.cz,suse.com,linaro.org,oss.qualcomm.com,quicinc.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-263287-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8B638FC618
X-Rspamd-Action: no action

On 2/6/26 3:00 AM, Krzysztof Kozlowski wrote:
> On Thu, Feb 05, 2026 at 12:14:06PM -0500, Srinivas Kandagatla wrote:
>> Add new dai ids and dai driver entries ior LPASS LPI MI2S lines
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>> ---
>>  .../sound/qcom,q6dsp-lpass-ports.h            | 12 ++++-
>>  sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c      | 47 +++++++++++++++++++
>>  2 files changed, 58 insertions(+), 1 deletion(-)
>>
> 
> It's impossible to reply via korg - wrong address of Conor...
> 
>> diff --git a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
>> index 609bc278f726..0febc641f351 100644
>> --- a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
>> +++ b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
>> @@ -140,7 +140,17 @@
>>  #define DISPLAY_PORT_RX_6	134
>>  #define DISPLAY_PORT_RX_7	135
>>  #define USB_RX			136
>> -#define LPASS_MAX_PORT		(USB_RX + 1)
>> +#define	LPI_MI2S_RX_0		137
> 
> Odd indentation appeared.
> 

>> +#define	LPI_MI2S_TX_0		138
>> +#define	LPI_MI2S_RX_1		139
>> +#define	LPI_MI2S_TX_1		140
>> +#define	LPI_MI2S_RX_2		141
>> +#define	LPI_MI2S_TX_2		142
>> +#define	LPI_MI2S_RX_3		143
>> +#define	LPI_MI2S_TX_3		144
>> +#define	LPI_MI2S_RX_4		145
>> +#define	LPI_MI2S_TX_4		146
>> +#define	LPASS_MAX_PORT		(LPI_MI2S_TX_4 + 1)
> 
> Confusing change or actual proof that my previous comments for similar
> patch are valid:
> 1. not a binding> or
> 2. you cannot change this, because you break ABI.
> Choose only one from these options.
Is this because the max port keeps changing?, I can try to see how this
can be dealt within the drivers in next version without adding
LPASS_MAX_PORT to bindings.

--srini
> 
> Drop.
> 
> Best regards,
> Krzysztof
> 


