Return-Path: <devicetree+bounces-274991-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uHexHgLJs2kqawAAu9opvQ
	(envelope-from <devicetree+bounces-274991-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:21:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3360627F830
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:21:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 37A073107637
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:16:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7A50274B42;
	Fri, 13 Mar 2026 08:16:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T1HtgXV+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SwlFpMnb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CED12367D3
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:16:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773389767; cv=none; b=l/cvMEpCGshjsUbFUsHQYWvvrFVp7F2tW4ptZImcUBlp8lxSIHfLj5l/9xZ3ee8p8nNY/wXPa6HJQAHT/X0J94buJHpN1COItDL5cQsF59Trr01830TrVhh6LP9DueTB+9mOPmAuCybCj8cXXwDtxhFF15W+4K4CvMhbIECKUZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773389767; c=relaxed/simple;
	bh=cfa+DP6pi+i+Uv86d5Eraf455IdfyKUAuKmRc8fTDLY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QpMfRaqcBtT4hIpyseh9LLcvr4vAvG4YrIFC92X4G7ppQlXyao4Bla3j52GLy9MfJcyhAIjgRh64R8EuFG07wTjdwjsydwrW3FEd/AaZuNtaahDvNZ+ec7wjk+yU6Sr9+SGW+5qXBcQyg3xAiF7uCzxkG5YyhmKQhRZLBcTURV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T1HtgXV+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SwlFpMnb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D5tbhs070446
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:16:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	E6XQvfblihOcc1wQzj+YqUTaImL2h2nzL92tytTnM/0=; b=T1HtgXV+q8QS/Q42
	t+N2lGQhJN73Y7VPlTxLj/DDPYsS1i7Pr4dbIzePY3dKdYIuiS1EzpEC237sh9H4
	SCmTSCsaCk+7I9Je0wy8eFoX0J7IOia6llGr2fc68kqoWXxg6c/OSdF1a4IWwXDy
	B7wbbizjQp9VjDjXjb3o+OmyLfkoV4vyckdBJnEaqhfWPCYPlI8xlLtjyD80p9GO
	kHPebfwU7aA0+yZLyfcHSFDCCRCym0XFFGziZ2XwikDok6onuYv7H4DdUKcbOrG+
	o3I99uLjyGS6WWAND1tZVqZZV+Y0IF8Xu3ZPY2vZeigd/fnpfLDtsEKH8IWQmC9r
	aL1sqg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4yn6vq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:16:05 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-899bef1ea49so55525696d6.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773389765; x=1773994565; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=E6XQvfblihOcc1wQzj+YqUTaImL2h2nzL92tytTnM/0=;
        b=SwlFpMnbIiVdnojVKYmj0NYWyl0734ZVPZcjU3PUtNEHIm6lZ8A+Tty1GA+8uwsUj/
         srM0IFoD0mXPpnhPCeF/pzc9Ns4NV8E7RTzTjN1QAofckFZBVhGg9e4jMN/fUI1w1qYm
         4FQZnI5yepzYNm0ddV2ykagFrc+/znJdZ/wxogieYheEIi2CNVwqDd66uXI+nSP3TSD/
         PJ1/j3vdq+19DJ5opfpShRuYxjsUQwFaZclEOBmAP8Z/rmo2rMqyazMFts5WxsV+dovR
         r2VwrlqOGi2H3QE1gVXAGNAVq6+1GxrlEKiAZk7OpflSRHVaPl6oTzDUnGWtp5wZ8dVA
         +2iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773389765; x=1773994565;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E6XQvfblihOcc1wQzj+YqUTaImL2h2nzL92tytTnM/0=;
        b=Xs0BHhhiM2KAaJhx4zJ44rYUDqi99b+4BhzbonjgQyerAWSqd/ekJUEXev/u1M73by
         Do60d0cluFWdY43yWNwDmnV1th2gHEOs35iXdDp/7u1RYnBU/NoEYup2pBWVNnvZqZsR
         s6SQm2Y60lYQerC3qO6XmoYyg+poV0oRL36kTuF9a/x4KIxQ6DQpzTXJ8xplqDHRG7Nl
         u2Bi7lfHQvnlQW0Jt8Vhf/crsxVqOaz1NwJ2cqGZmyptuojIxuqF+ejxrmcuAhz55+0x
         bsXtjjN0nKmpNnwzR2NESCGZeIe5zVrFpYQNdSZmQihyqbVTYeKpxMQVLA3uZ6+3ZLIS
         G/lg==
X-Forwarded-Encrypted: i=1; AJvYcCXKTsceStd921tLBRBz56fffbn36v+l2q/IzWhNtS/plNZZqK9fDZLZ1dQflU2B9ImQj1n+OkCFciZr@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1H0fLSpUFQTEFpve1ocGxefLQxEipXfqGPtvuGgkXKmMD1VGD
	3Huj9eZJBHK73QsWzlT7bvNl2xfTCAIQYparzZfog6xCdYzmekSHZMCYQeR3M+wWZDVY11Fd+k+
	OH6f+N7rd+s4IF+KEqNrpQ4tYbQ8cnFe8oP2Zo1o6ou9NPx6Jz11hoHir75ZKfB5U
X-Gm-Gg: ATEYQzxHPT378fxNf+1OZI8UuZvqOhzQQMAQ3c1uA+ffpLTwwz13SJxUdOlg2DjofRh
	mWpRdEPF+ga45iOsD8VCiC+RIGW8/vXUGZ8u4Q6/l/77D5arKTSQCzDe41kwNbMlfs1TQLXP2KU
	Y18SUmWoCfh92Mwnfvelm5sY55MKqpaB4If+1hDBZlRE9lDa+duF+vuQF68VJVf/qAVKwCAsr69
	PQzN8aeAKIs+BHtuJ0xp+ScRfBTSY/jhAvX4Ax61JP29X6O+6KyYpZ5dGctOnyhyAWvlS6QeTBL
	SN2qCvYFaWMRdPjGnjq+p8p3aVROT0QDRPQIphDdY2Q5nGFG17tzxifRUSRNEAXGgkPdDxT97Od
	306m4rJ2gCBPBvcILRpLaYy2XBFhKV9aAv/9SiWnLzB4x0tqj
X-Received: by 2002:a05:620a:2b95:b0:8cd:b78a:9ef9 with SMTP id af79cd13be357-8cdb78aa58dmr220129885a.82.1773389764964;
        Fri, 13 Mar 2026 01:16:04 -0700 (PDT)
X-Received: by 2002:a05:620a:2b95:b0:8cd:b78a:9ef9 with SMTP id af79cd13be357-8cdb78aa58dmr220127785a.82.1773389764549;
        Fri, 13 Mar 2026 01:16:04 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe20c0b4sm17171372f8f.25.2026.03.13.01.16.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 01:16:03 -0700 (PDT)
Message-ID: <dd927887-bb19-442d-9ce4-d80f91d88fb4@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 09:16:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] dt-bindings: display: panel: Few cleanups and fixes
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Artur Weber <aweber.kernel@gmail.com>,
        Jessica Zhang
 <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dzmitry Sankouski
 <dsankouski@gmail.com>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <20260306-dt-bindings-display-panel-clean-v1-0-3086eda1efaf@oss.qualcomm.com>
 <177314934075.2052605.970030122356003827.b4-ty@linaro.org>
 <95ac5123-32d7-4e87-825d-5ebb424e2641@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <95ac5123-32d7-4e87-825d-5ebb424e2641@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA2MyBTYWx0ZWRfX6yQCQmT7Ixq+
 Sz4s8bAWzy1PEuGT+Qmj4jNwPmFy7lDDk68/QO+gjEGRL/lt7kG6vqVxjivOm+G0EQI3oBr33d9
 v1ryMjHjZvYuT6IXQzguWek2gTGu41KXQeEQU8wTLgvDY987MB9e75YfyimKVwQBXtXeaEPw8na
 tlHcpLgs19etEP6aswQnW1Fpl1jiQnKUh9LdSomCZUTAUl3MC1s74MFdy2kq+Yqaq2Mg3EgxZOw
 R3I+R0CmKumc6X/bDqDg9BtGc1TQUTA37dqScNxKE0YZqN0Tn/gs7aQr5MuO6ZXH6Y0rxWzF8PP
 ewI+V9yyJJc48IT5L3DwduKcslzjLMRFOTv8AE6q83zHCoGNjhL7srhIUbKiyOKw2W6Ht5YSveG
 F5B3FjHMuJDLyJlUgkOFUa6u7xZd8ReG7rBdN1FK7AgyzddGBH/7zx0vXd5DdyOck8ZatsTn50K
 xZcSnxlyN2j6Ukpz0zg==
X-Proofpoint-ORIG-GUID: dZWCKKg7BQyKS9F3vTF31Q0Bwf30cSZ8
X-Authority-Analysis: v=2.4 cv=C+7kCAP+ c=1 sm=1 tr=0 ts=69b3c7c5 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=e5mUnYsNAAAA:8 a=5EsEI0ad1I_aHy4ySaYA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-GUID: dZWCKKg7BQyKS9F3vTF31Q0Bwf30cSZ8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 phishscore=0 adultscore=0 suspectscore=0
 bulkscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130063
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274991-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,gitlab.freedesktop.org:url,qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,ti.com,ideasonboard.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3360627F830
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 10/03/2026 14:32, Neil Armstrong wrote:
> On 3/10/26 14:29, Neil Armstrong wrote:
>> Hi,
>>
>> On Fri, 06 Mar 2026 13:02:53 +0100, Krzysztof Kozlowski wrote:
>>> I would expect this going via display, but that does not happen often,
>>> so Rob's tree?
>>>
>>> BR,
>>> Krzysztof
>>>
>>
>> Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)
>>
>> [1/5] dt-bindings: display: samsung,s6d7aa0: Document port
>>        https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/1f5a1ebddc170197348d203b11a05799966dbef6
>> [2/5] dt-bindings: display: innolux,p097pfg: Document ports
>>        https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/32003681e575a9a02cb6814e99157dfab0b9f70d
>> [3/5] dt-bindings: display: panel: Drop redundant properties
>>        https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/72cfe73347fac6252ab77d8dcd405f0a5b1a5a24
>> [4/5] dt-bindings: display: panel: Align style of additionalProperties
>>        https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/66b0baaabd35d302698d0a2c98671bf4e1b87f92
>> [5/5] dt-bindings: display: panel: Align style of "true" properties
>>        (no commit info)
> 
> Last one did not apply anymore, could you rebase it on drm-misc-next ?

Sure!

Best regards,
Krzysztof

