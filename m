Return-Path: <devicetree+bounces-276210-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEtCFD0RuGmIYgEAu9opvQ
	(envelope-from <devicetree+bounces-276210-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:18:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C97A329B322
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:18:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 87C47300D947
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:13:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D4E939B976;
	Mon, 16 Mar 2026 14:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZcZ5bHUF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f52.google.com (mail-dl1-f52.google.com [74.125.82.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7162394498
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 14:13:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773670410; cv=none; b=VJuwRYcoEx+QM9xigv7yTWKRTP9Tc5NyZKnNXTqEW2HwIje46rD+clhwdCmz69/IYq8S6ymHiPCX5Kmua5+F51Ej3XzEy+7AByxyv8tGaWSwENXHHF7JQ9LtgfH13OD2m6aHlDrBf36Sx/Ok8yySX8MrOtT+Lb9IFLUY/XWYeYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773670410; c=relaxed/simple;
	bh=TwxPg4RSXx5BNsPRkWf834jmL3m9mgr7v/t/XtQuIzw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I+O7kZfNEM9andZIwSoH91KV3q5l0zmrQ6Hz6k6UcOvCsHCGeGeVmHiu/y3+hGMbBteba+isSYMbMCY/m3p3PaBMG/Yni48sjjrN4cbl4jvGYRxvuKYI4nPc0KuTCRGcAmQ4F9jgcgHTlwWlXzT5Kjs9XneFSgUVcGkwrB+7JGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZcZ5bHUF; arc=none smtp.client-ip=74.125.82.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f52.google.com with SMTP id a92af1059eb24-1273349c56bso6681773c88.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 07:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773670408; x=1774275208; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=LQ0mg0iTQfY7doxy4pSiWFN/FrO9Rma90YeZ4+gFic8=;
        b=ZcZ5bHUFKKHPzZBk3GhA0lzuW5+HY8ORf2CGDuROjEVYlu93kvawldu1QFcHjFNDTp
         TFyL23iLbY6DlUz3BfwbUO4Q+owuTYqPGbCECSMNcNmnZujB6rm3VA4k+V6yPLBLqGnh
         Mm2L169N7BfwQYvyFaJjhj6vllA6bpLI9Nm8Rkp5fb/axV9V2Hz0cVwkiRa5umawFkWs
         EG1AMRySi8ocP76kHaGQwV8kFc0q4JgEhoBr2Hhnm886XriipO5v4h/qGMyiGB47je3b
         cr5IGpq82sKhkwXU+Iw+C01jINppIoo/njKsRQ+1aOT2RZDlbz/YE4twKVxnJYxxgaWw
         OCDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773670408; x=1774275208;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LQ0mg0iTQfY7doxy4pSiWFN/FrO9Rma90YeZ4+gFic8=;
        b=rTt+meu92DWvsjkmUp+fhNaJwQoAIFyhHhwxuPtd3SncZtxQoYmmj5CUTIY8xHSTFp
         RBsvQTbxKkz2sghBFksLixeZMqZEXNBNb3xDqZ7/VzORYEhcmdxekQLo/LkPpFQT6USk
         NHQr0+2OKyBqhvMbR08D6DQTKmy3QSULHAYnEAZbOjpywip0W4Zt9xth3bDByBFr+awL
         hiwhn/mmRmGF8iwdVbuhnzOuiFA/ihy+JZmvF+lvVxurzJPnfbwy/BxsxJpKuE967idI
         HlnffDD/+snuVZcZArNO6jKoEvAA3LOHl1JeXikA292+rd5eLqBxlfGqfDgm3uOI3bqY
         m6Qg==
X-Forwarded-Encrypted: i=1; AJvYcCWpik64Zmx6QyBbQ+rOhBbrgzgKWBtyAHmFuCljiWwGGahve00X3D/cg2uSw5VwHQpwjHBR0jobOsmz@vger.kernel.org
X-Gm-Message-State: AOJu0Yx21GBBzSZIZgmxu1GPmpvF81rBO436TdviBYdEMFAclbcITo+5
	BDUbAWIgoIpOfIRqCT/JQx01vWU+EpRzrn+7cJh5khzDosi/8kdxiEqG
X-Gm-Gg: ATEYQzyZPPzTGtqZjqV8XcYSmVi7t3wFHZWBnZ/4Cec8fyEwdrECXRz/+685zN2StqT
	5M3yyN49yudH3g9hiLDeTCM+zOJrSBl5U1JdQO5+QFmok0Hu9Cy2xvwOzZMz1NGnq73XGBo4bJl
	5CVykA5eKWG4rnZEIuITHz0OpRSCxh8A9RWbAKLq/OA/A5iRElDHqP15QoWaSOfDWcHFmxGW6QV
	SOfs6KOPCx6ubmSUUOCBqaDyq/E+DMRoJhqn4EoEL1uASQeEO1VjL7RZqUgV28MZGXzPr6wxirE
	yj8nDM7kEURV4OphfzC/eucHYVAqC4eJ5axjXtLeYNIyonussmfCngDwThcFT9CRiX7nIHJUswU
	05XJ09+HbMo4SRX8eUN/hMR//GVcTYId81YPgRJ4ftMVBZCtMlELlSoNeas5X+BooWA2jXVFEmk
	9191o8hHInS/gHx/cXnfctdRj7lQqmZslHzA5sluRUeJ8yyRu+0nwhrjrlW8T/V4sRuGVKndv0
X-Received: by 2002:a05:7022:458c:b0:11b:9386:8265 with SMTP id a92af1059eb24-128f3e1d951mr6117870c88.42.1773670407752;
        Mon, 16 Mar 2026 07:13:27 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-128f62991c7sm12119295c88.5.2026.03.16.07.13.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 07:13:26 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <d8c3d6be-1c4a-449e-bf38-69e71f544513@roeck-us.net>
Date: Mon, 16 Mar 2026 07:13:24 -0700
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
 <20260315-cogwheel-dislodge-a3efe31728d1@spud> <abbTwrAALGy3QbxN@gen8>
 <20260316-handshake-subdivide-9de6c4410927@spud>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <20260316-handshake-subdivide-9de6c4410927@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-276210-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[iscas.ac.cn,kernel.org,redhat.com,maxlinear.com,vger.kernel.org,lists.infradead.org,icenowy.me,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,roeck-us.net:mid,iscas.ac.cn:email]
X-Rspamd-Queue-Id: C97A329B322
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/16/26 04:09, Conor Dooley wrote:
> On Sun, Mar 15, 2026 at 08:44:02AM -0700, Drew Fustini wrote:
>> On Sun, Mar 15, 2026 at 12:12:13PM +0000, Conor Dooley wrote:
>>> On Sat, Mar 14, 2026 at 09:56:27AM -0700, Drew Fustini wrote:
>>>> On Tue, Mar 10, 2026 at 12:24:56AM +0800, Icenowy Zheng wrote:
>>>>> The G and J coefficients provided by T-Head TH1520 manual (which calls
>>>>> them A and C coefficients and calls H coefficient in the binding as B)
>>>>> have 1/100 degree Celsius precision (the values are 42.74 and -0.16
>>>>> respectively), however the binding currently only allows coefficients as
>>>>> precise as 100 milli-Celsius (1/10 degree Celsius).
>>>>>
>>>>> Change the multipleOf value of these two coefficients to 10 (in the unit
>>>>> of milli-Celsius) to satisfy the need of TH1520.
>>>>>
>>>>> Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
>>>>> Reviewed-by: Drew Fustini <fustini@kernel.org>
>>>>> ---
>>>>> Changes in v3:
>>>>> - Added Drew's R-b.
>>>>> - Fixed some typos in the commit message and slightly reworded the
>>>>>    precision sentence.
>>>>>
>>>>>   Documentation/devicetree/bindings/hwmon/moortec,mr75203.yaml | 4 ++--
>>>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/hwmon/moortec,mr75203.yaml b/Documentation/devicetree/bindings/hwmon/moortec,mr75203.yaml
>>>>> index 56db2292f062d..7d57c2934a8a1 100644
>>>>> --- a/Documentation/devicetree/bindings/hwmon/moortec,mr75203.yaml
>>>>> +++ b/Documentation/devicetree/bindings/hwmon/moortec,mr75203.yaml
>>>>> @@ -105,7 +105,7 @@ properties:
>>>>>         G coefficient for temperature equation.
>>>>>         Default for series 5 = 60000
>>>>>         Default for series 6 = 57400
>>>>> -    multipleOf: 100
>>>>> +    multipleOf: 10
>>>>>       minimum: 1000
>>>>>       $ref: /schemas/types.yaml#/definitions/uint32
>>>>>   
>>>>> @@ -131,7 +131,7 @@ properties:
>>>>>         J coefficient for temperature equation.
>>>>>         Default for series 5 = -100
>>>>>         Default for series 6 = 0
>>>>> -    multipleOf: 100
>>>>> +    multipleOf: 10
>>>>>       maximum: 0
>>>>>       $ref: /schemas/types.yaml#/definitions/int32
>>>>>   
>>>>> -- 
>>>>> 2.52.0
>>>>>
>>>>
>>>> I have applied this to thead-dt-for-next.
>>>
>>> That's odd, why is a hwmon binding in your branch?
>>>
>>>> https://git.kernel.org/pub/scm/linux/kernel/git/fustini/linux.git/commit/?h=thead-dt-for-next&id=eb4fd43ff6793681f0a0a8e8ac861142caba2b19
>>>
>>> I don't see an ack on it from the relevant maintainer either?
>>
>> Sorry, my mistake, I should not have applied the binding. And you are
>> right to point out that there was no ack from Guenter or Rahul Tanwar.
> 
> It was Guenter I was thinking of, but there's not one from myself, Rob
> or Krzysztof either.
> 

... which is why I didn't apply it yet.

Guenter

>> I will drop both patches from thead-dt-for-next and wait for agreement
>> on the binding.
>>
>> Thanks,
>> Drew
> 
> 


