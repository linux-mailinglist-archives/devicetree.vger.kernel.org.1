Return-Path: <devicetree+bounces-275505-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ACEfLpFTtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275505-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:12:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1774A2888D0
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:12:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 041E0300B577
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:12:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 439653DC4D6;
	Fri, 13 Mar 2026 18:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UamHE/9Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4642320A14
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 18:12:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773425551; cv=none; b=PoCR0Xsn7oSULYWvR+nXN+to2aOGN9ZayY6WM8wUExVTkiFbQZKjaVDrdRfH7eNiavhJuzTeVqdSRLNNoc/t7WvE6wx0UpLt6BZbKQ28SYD0YSNO49ZSdbz6kYgvW0lFNiWvLQp1/eeYawHz3H7YdpqtFPArJp7DZ7QFPtUnEIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773425551; c=relaxed/simple;
	bh=RmdOmrssaFa2NY+5lSy5ZaT+O8gr+fKg8x7V06Y8by8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lGhMAWxA2HFHNkSENDN/sGGO5PvwoaO9+THYCJgpo1o8KK4CQlJdmFoa6UdDWbjf5IegyYsSG/FI/GJmKnjiF4YOIT06hoKissg6xw1TEaPZ4JFdnLrnmX7IvIaLpLEU7SNcZEISpoDT7qucEcS9eXRLxyx+lgZK+XUtoH+/w2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UamHE/9Y; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-829abaaa92bso1651966b3a.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 11:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773425549; x=1774030349; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=EvpzVosN3fzG6HUFZ5xf0+PeJenGWuukw2/bPevXNSU=;
        b=UamHE/9YroASDPTAE19tXxx63xVdvrxpiuZDC0J5qtXQ9eq/GXOB6HpBv/yRIv0pCB
         dR0ywmN/omK22VQG1eXmGuJNR0Sc5JhD5wkPbg163616hsaxgE767ci8WVCMLYMLO/CG
         hPiMDL7bzk8rrndWbCagqD4JrDWpU2OF7eOk0s9C4gC187dc78Xh+CsLTyEzdLfzYaNC
         QQTxCsM37gcM+7Ym/bKG6ch06xlFdvxjQ7dkSzDNNpa5J1zKO99eZQjFbq/dx+vfWtRD
         1z06+inxkPqDSLbd3UJgesclPFImuGwdDIAqGApV1ZP2wCEN4R2W3aVO1yxxsdk4qHxt
         3e2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773425549; x=1774030349;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EvpzVosN3fzG6HUFZ5xf0+PeJenGWuukw2/bPevXNSU=;
        b=LjGyUssRIPZgIIih5fGpU0KWbu6YK4WQ47n+I1M23afsL/867dDsjGaVcAnLyGWgvs
         x8cPDWff9FOKH8wHWD5O4xSjJRaclAdE4cuwLPxZBx8ljbyfGOrZOohtJN7Dd5c0fbek
         C0aqaow4gGitNQbes3WIuEsN3Lmor0+70LP8mbm39gtIuLhdP/3QqP+SNuog5zyJuRMd
         qlMDU9vTYDphCVcC7Jg5213GuFR/rtbkb9ke5BvwQAVnS5ZoZm9YVpe8Dc7bG/wecrpA
         wg6U0VxpoCVrmNgDDpiDaQ3fJhR10Rh+c/TNWk2tsIXi7/UOVKllt8jikcCu/7Lp/g3e
         u1JA==
X-Forwarded-Encrypted: i=1; AJvYcCU9KB3s0xGmmao6j834ScRxiXXG7vCHJiUKLw7U4IXwoGPDHIj5B0ddZgnpXpLIkvGvvHgLc0HVS6ts@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2GCqv4pnerixX6wISlPRYS7xxjRgepzegzJ/F/6CwuDeXKtvE
	ITHZtU9Nn53MIs1YbD3M/hAoLFMKvg/TxGf5Rvfz6MO9+wuE31v+01Sx
X-Gm-Gg: ATEYQzyO6mYFQ1AVsvK2bPNryPOAC9JXXesEmtvuxvfGcFfdHtTwUQXBml5E9NABG/1
	GAQeav8RElijnUROchiV+kcP268UUYefXyKNVwQqKkgu2szHNpKeVAnwN8AQg+eqn6V+dvgNxab
	Wz38PZcRlNtZkXPzMaBI0XVYtTIoGVaCUq7uiadc2VmYr/tfSx63Ikp6X4/1z+mhKjblL8vEzSz
	wzUBSFyOcCprpyFlK+TBhGuckui9k1nd5kZvBytgFkknJiDYcFOSRHKLjVk4dAHHbqkH4xM64Lx
	q/AtYCwWzSxWgUvP8FpnIgn8s4B81QC9IU/cfD0JlmEYYdot4DRLU/g4iZ7w9fc0OkNRY2IKg84
	dtQSgYQDa7jJZAlAm2NXjcW8TcQ8O/805pSJHVH6uyGS3FDSiB2xRGfseElEk83baVzRAINiU3f
	saLVhtKSzpsDcwZhyVV7JX9Su3DyVIfxlqcDcZwjekpL1QAG3HmuHnAy7Z3IF3ULnFCd92sl8Q
X-Received: by 2002:aa7:88c2:0:b0:81e:c67a:1a79 with SMTP id d2e1a72fcca58-82a198661cemr3988947b3a.25.1773425549120;
        Fri, 13 Mar 2026 11:12:29 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a07240f25sm6667100b3a.5.2026.03.13.11.12.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 11:12:28 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <cbc1d09e-25b1-4b94-a59c-6b5e54af01f9@roeck-us.net>
Date: Fri, 13 Mar 2026 11:12:26 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v2 1/2] dt-bindings: hwmon: emc2305: Add
 fan-shutdown-percent property
To: Conor Dooley <conor@kernel.org>,
 Florin Leotescu <florin.leotescu@oss.nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Michael Shych <michaelsh@nvidia.com>,
 linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, daniel.baluta@nxp.com, viorel.suman@nxp.com,
 linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
 festevam@gmail.com, Florin Leotescu <florin.leotescu@nxp.com>
References: <20260312122248.1281572-1-florin.leotescu@oss.nxp.com>
 <20260312122248.1281572-2-florin.leotescu@oss.nxp.com>
 <20260312-triage-shallot-1b3d9f07d250@spud>
 <abRF+TPKuXFDJc55@ro-kernel-workstation>
 <20260313-mulberry-glamorous-6afbfc52e42f@spud>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <20260313-mulberry-glamorous-6afbfc52e42f@spud>
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
	TAGGED_FROM(0.00)[bounces-275505-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,nvidia.com,vger.kernel.org,nxp.com,lists.infradead.org,lists.linux.dev,gmail.com];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,nxp.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.1:email]
X-Rspamd-Queue-Id: 1774A2888D0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/13/26 10:38, Conor Dooley wrote:
> On Fri, Mar 13, 2026 at 07:14:33PM +0200, Florin Leotescu wrote:
>> On Thu, Mar 12, 2026 at 05:37:51PM +0000, Conor Dooley wrote:
>>> On Thu, Mar 12, 2026 at 02:22:47PM +0200, florin.leotescu@oss.nxp.com wrote:
>>>> From: Florin Leotescu <florin.leotescu@nxp.com>
>>>>
>>>> The EMC2305 fan controller supports multiple independent PWM fan
>>>> outputs. Some systems require fans to enter a defined safe state
>>>> during system shutdown or reboot handoff, until firmware or the next
>>>> boot stage reconfigures the controller.
>>>>
>>>> Add an optional "fan-shutdown-percent" property to fan child nodes
>>>> allowing the shutdown fan speed to be configured per fan output.
>>>>
>>>> Signed-off-by: Florin Leotescu <florin.leotescu@nxp.com>
>>>> ---
>>>>   .../devicetree/bindings/hwmon/microchip,emc2305.yaml      | 8 ++++++++
>>>>   1 file changed, 8 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/hwmon/microchip,emc2305.yaml b/Documentation/devicetree/bindings/hwmon/microchip,emc2305.yaml
>>>> index d3f06ebc19fa..7bcadfab9fc4 100644
>>>> --- a/Documentation/devicetree/bindings/hwmon/microchip,emc2305.yaml
>>>> +++ b/Documentation/devicetree/bindings/hwmon/microchip,emc2305.yaml
>>>> @@ -54,6 +54,12 @@ patternProperties:
>>>>             The fan number used to determine the associated PWM channel.
>>>>           maxItems: 1
>>>>   
>>>> +      fan-shutdown-percent:
>>>> +        description:
>>>> +          Fan RPM in percent set during shutdown.
>>>
>>> This sounds like something generic, that other devices might need and
>>> should be in fan-common.yaml?
>>>
>> Thanks for the feedback.
>>
>> The property name was reused from pwm-fan.yaml where it already exists
>> with the same meaning. I kept it local to minimize the scope of the change.
>>
>> However, if you prefer it to be modelled as a common property, I can adjust it in the next revision.
> 
> I see. Makes me wonder why half the properties in pwm-fan aren't also in
> fan-common.
> 
> I suppose there's a reason for it, carry on I guess.. Can be lifted if
> there are more users other than you and pwm-fan.
> 
>>>> +        minimum: 0
>>>> +        maximum: 100
>>>> +
>>>>       required:
>>>>         - reg
>>>>   
>>>> @@ -80,12 +86,14 @@ examples:
>>>>               fan@0 {
>>>>                   reg = <0x0>;
>>>>                   pwms = <&fan_controller 26000 PWM_POLARITY_INVERTED 1>;
>>>> +                fan-shutdown-percent = <100>;
> 
> Also leads to the question of why these devices aren't pwm-fans. Too
> late now to change anything, I just wanna understand why.
> 

They are dedicated fan controllers, with an internal tach -> pwm feedback
loop. I don't mind modeling them as pwm controllers if there is a use case
(such as someone using a PWM output to control a LED), but I don't even know
how modeling them as pwm fans using the pwm-fan compatible would even be
possible since that would exclude the tach -> pwm feedback loop.

Also, if that were to be done, we might end up with two hwmon drivers
for one chip: one to report the fan speed, and one to report pwm values.
On top of that, even if it is not currently supported by the driver,
controlling the tach -> pwm feedback loop would become awkward.

Yes, I understand, there is a strong push to model everything with
a pwm output as pwm controller, but si far no one was able to describe
to me how to model a fan controller, and especially its feedback loop,
in such a scenario. That becomes even more complicated if temperatures
are used to control the feedback loop.

Guenter

>>>>                   #cooling-cells = <2>;
>>>>               };
>>>>   
>>>>               fan@1 {
>>>>                   reg = <0x1>;
>>>>                   pwms = <&fan_controller 26000 0 1>;
>>>> +                fan-shutdown-percent = <50>;
>>>>                   #cooling-cells = <2>;
>>>>               };
>>>>   
>>>> -- 
>>>> 2.34.1
>>>>
>>
>>


