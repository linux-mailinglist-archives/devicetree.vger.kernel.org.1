Return-Path: <devicetree+bounces-276209-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cPvSKqQPuGmIYgEAu9opvQ
	(envelope-from <devicetree+bounces-276209-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:11:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF5B29B1AC
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:11:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EEFD33002D6A
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:11:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20F8D39B4A2;
	Mon, 16 Mar 2026 14:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q85g/Kf3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f42.google.com (mail-dl1-f42.google.com [74.125.82.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B45CD280A5B
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 14:11:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773670305; cv=none; b=Vo4D/vLFur2YqOengKMz/yMg02AwD4ZKxuVh4/UTPcWpoBjiAqCwIooplq6Kafq3j6L5ZaTSDeeTJILMqcwPSplfdwK+RY8jrEdLoJNnbBFNHtudRuPHxvSiufsWr1DcX1lfMG8h6u6SAUrhoUZB1z15RDJwvJ5MLk31YdcHgiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773670305; c=relaxed/simple;
	bh=htLGnvtizetVXxTUy6snLHUbevhddIJzI+a5EvNU898=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bjecENXz+/eAvVQ6ohBv4qNqq9wVDpL8qYEU/SeeS+6d9lEoxEuFkGilbW0+Yf/JLeZxxHxhYuN5Q38SFt5Y5pKxkWlj+Db0jdO2Ay0rxxlh+DcEKjtwIJwhKh9MCP0ZphCJQkjxR0vLdGDvbfMBGqm5fV3aWM+wtIeq/CRvXQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q85g/Kf3; arc=none smtp.client-ip=74.125.82.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f42.google.com with SMTP id a92af1059eb24-1279eced0b9so5948099c88.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 07:11:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773670302; x=1774275102; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=qTyet+vUs4i5zO6iAQ/90TtCdIDVFVxtPrkgLSGy3qg=;
        b=Q85g/Kf3o26F6A7qpv1xZ/e0ql/2889cl/oeTt4uOlNJJDM+HWUzsir+Ve5j3IfPGx
         M2oRPiEDCN/6Br87YxdOAP/wCVdgGf6z9v99D0oud0o/GaHtR/+FSNABauV7MAzxysz1
         T+PlsRifIkr8ElCvdQiDJiUIOuBnG8DhPsEZFs9YDzssXcY7DXgFG6G9ubthX+/VwtGd
         W4Ql0SGcOBneDmnq1r2yRCLrcleSCx9zV5BW8Bl3J31Sth8Jm3t5L4O7CCWpWz1cWAnJ
         ggYP2FyWhNjhRjXPgvoBYuSiTmhI9uuVb2JGgCYPb67mf+xwVrYd/oAcfDKKtKIEpnkS
         Co6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773670302; x=1774275102;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qTyet+vUs4i5zO6iAQ/90TtCdIDVFVxtPrkgLSGy3qg=;
        b=LucY7RSuor35VIHKV45Onr8tmt/vTAWPWimaJtGM3RiXHa+ugICGAmMAcPKp+Ji54j
         jo6gE0Gnonon6D9BRrmvkxa1JIBNfsLS3VpGdNFhvS3NHxrufFCKGMYdQD7vmRIXaZ9i
         SBSqZIRWvPkXd6yAFpMEE3M88ban+mFRsH+pmtiSUWd84XmiayQGW+ysWzGo6nUE0bkv
         2/uQVxt5dm8bNk8VAxIDLuU2OqEmMiG4JYqucVH5DI4CEI/NzKFVqd8yysiv+MgbhqyB
         z2GNS+tmYKr9cBVoZf5VU4Aol5JE5TtcTDvGeCmKzR2CddtK5KpCmIQWHmN8uNf40ejf
         I8qw==
X-Forwarded-Encrypted: i=1; AJvYcCWJKamMcXWQ5bW7uHjB869DR+iSMqzZ2iuiBYacRpK/0v6XsA/50QZViHAYxW70LQW9r87ZnCJAgLZ8@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2vNk2U87SnWMYFJBn46XQklYoRoB76GlnOEQMBj/zuDGcN6ZW
	F+uZjcWeuQ/iHo55h8DQWwn7g4RBI0qgY0ln84rkljysRrvSbfoBw0f1
X-Gm-Gg: ATEYQzxoTT8aeVrpq3bhke0Xy7FRgO6WWrCxwCpHbDPfSZ4d7nRe8bCmanHrQpY5vzI
	Up+BxExOy/Z3fv+7d4phTs2m6Y8n9Um2Vd/2jULJqNEqrly3dQtD8Hv5WCToGE8m9JlFkFuUzNx
	bT6SRr6sl+hg2acGXHX9tVQVKQH1pWMxDSqPwxJk0hmL1amVZ+TWjZKalv49CnVpMGsrp77XNoc
	bp4Bk2SAMpcraITZxo9Qb9hJltRQUEMi4Y6ruX3yJ03cknwFl3y35aM4xtjZMCbEuX0Tgt6RtXu
	IZ7jE0U4yTttxEyyodwldpWuyRUIevBRK3UY3LUx4pzvRU6XQcFVl5Rhctd0MwtIxaqAHaLeljC
	HYGgLNHwBnpIBfQed3lnGeDhDiWf2WFh+MOQpiZFvgWL4hR+Pt5dcL/mDVbRZUMFrLMWGrXSuMW
	UwRaXiC92+XttyeHdOALiwaP83AbTvZG9otNzhKyIpZ4JADLMNfjMv2ezxnGoRAVRHXvlYQfU+
X-Received: by 2002:a05:7022:b9c:b0:128:cc63:82f0 with SMTP id a92af1059eb24-128f3e2aa9emr5757183c88.25.1773670301528;
        Mon, 16 Mar 2026 07:11:41 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-128f6283845sm12630518c88.2.2026.03.16.07.11.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 07:11:40 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <0f88a17c-7c21-4ae5-b418-dfb4b4ac5d6a@roeck-us.net>
Date: Mon, 16 Mar 2026 07:11:37 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: hwmon: moortec,mr75203: adapt
 multipleOf for T-Head TH1520
To: Conor Dooley <conor@kernel.org>, Drew Fustini <fustini@kernel.org>
Cc: Icenowy Zheng <zhengxingda@iscas.ac.cn>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei
 <wefu@redhat.com>, Rahul Tanwar <rtanwar@maxlinear.com>,
 linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 Icenowy Zheng <uwu@icenowy.me>, Han Gao <rabenda.cn@gmail.com>
References: <20260309162457.4128205-1-zhengxingda@iscas.ac.cn>
 <20260309162457.4128205-2-zhengxingda@iscas.ac.cn> <abWTO7QBFIcjxKn6@x1>
 <20260315-cogwheel-dislodge-a3efe31728d1@spud>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <20260315-cogwheel-dislodge-a3efe31728d1@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-276209-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[iscas.ac.cn,kernel.org,redhat.com,maxlinear.com,vger.kernel.org,lists.infradead.org,icenowy.me,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,iscas.ac.cn:email]
X-Rspamd-Queue-Id: 0BF5B29B1AC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/15/26 05:12, Conor Dooley wrote:
> On Sat, Mar 14, 2026 at 09:56:27AM -0700, Drew Fustini wrote:
>> On Tue, Mar 10, 2026 at 12:24:56AM +0800, Icenowy Zheng wrote:
>>> The G and J coefficients provided by T-Head TH1520 manual (which calls
>>> them A and C coefficients and calls H coefficient in the binding as B)
>>> have 1/100 degree Celsius precision (the values are 42.74 and -0.16
>>> respectively), however the binding currently only allows coefficients as
>>> precise as 100 milli-Celsius (1/10 degree Celsius).
>>>
>>> Change the multipleOf value of these two coefficients to 10 (in the unit
>>> of milli-Celsius) to satisfy the need of TH1520.
>>>
>>> Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
>>> Reviewed-by: Drew Fustini <fustini@kernel.org>
>>> ---
>>> Changes in v3:
>>> - Added Drew's R-b.
>>> - Fixed some typos in the commit message and slightly reworded the
>>>    precision sentence.
>>>
>>>   Documentation/devicetree/bindings/hwmon/moortec,mr75203.yaml | 4 ++--
>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/hwmon/moortec,mr75203.yaml b/Documentation/devicetree/bindings/hwmon/moortec,mr75203.yaml
>>> index 56db2292f062d..7d57c2934a8a1 100644
>>> --- a/Documentation/devicetree/bindings/hwmon/moortec,mr75203.yaml
>>> +++ b/Documentation/devicetree/bindings/hwmon/moortec,mr75203.yaml
>>> @@ -105,7 +105,7 @@ properties:
>>>         G coefficient for temperature equation.
>>>         Default for series 5 = 60000
>>>         Default for series 6 = 57400
>>> -    multipleOf: 100
>>> +    multipleOf: 10
>>>       minimum: 1000
>>>       $ref: /schemas/types.yaml#/definitions/uint32
>>>   
>>> @@ -131,7 +131,7 @@ properties:
>>>         J coefficient for temperature equation.
>>>         Default for series 5 = -100
>>>         Default for series 6 = 0
>>> -    multipleOf: 100
>>> +    multipleOf: 10
>>>       maximum: 0
>>>       $ref: /schemas/types.yaml#/definitions/int32
>>>   
>>> -- 
>>> 2.52.0
>>>
>>
>> I have applied this to thead-dt-for-next.
> 
> That's odd, why is a hwmon binding in your branch?
> 
>> https://git.kernel.org/pub/scm/linux/kernel/git/fustini/linux.git/commit/?h=thead-dt-for-next&id=eb4fd43ff6793681f0a0a8e8ac861142caba2b19
> 
> I don't see an ack on it from the relevant maintainer either?

I don't get it either. Normally I am the one to apply hwmon bindings
through the hwmon branch.

Guenter


