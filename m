Return-Path: <devicetree+bounces-319737-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id R35ZNDErR2qwTwAAu9opvQ
	(envelope-from <devicetree+bounces-319737-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 05:23:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 416E06FE2D6
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 05:23:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=VmK9tduy;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319737-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-319737-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CF5DF305F183
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 03:22:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0570253340;
	Fri,  3 Jul 2026 03:22:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D622F7F0F
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 03:21:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783048921; cv=none; b=LhFKWefDDXWHQM/dz/r6e+YGHcf+K2Cg2Yl37hB3v/DJy2rLxODsYx8bnaNcO3FjizLoB4OmAilHbweQswY4NLZpP0FYRG3GKOq1PmT3WPVSXx8c1ea8ROlVooPumi/LJi20QRVJkA3dSg/I2hdT7QxZD9LrnqOL0eLHBkQrVYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783048921; c=relaxed/simple;
	bh=W1AVsX43qvUOKE59T/ObWlrtbrXrPJZCWiEaPeSDmIE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uvxcT/D6zsgonp5/bODGOflchMilqyFR1xShIAGicFofAvMvu9/KHcMTrMh1mtMAz7v9QKZYaHlNBmvIj3OzpgtZxBQ+2vDynpbWg0sPWdaoNJPGqueEztT6fC/J7ZwxcW6c+LYGVIXBuvDsrMZL1Ba1j6MVaOFaFSosxezFizQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VmK9tduy; arc=none smtp.client-ip=209.85.214.178
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2cad225673bso725975ad.3
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 20:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783048917; x=1783653717; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UQK9xIpBvupQsHfdWBTAzhnaT8sAOZBQ0zZR3EU2+EQ=;
        b=VmK9tduyjQePkiQagrW7e7cUnDhCGAQDCnaS40xXrFnErWISVl/8k0OGdKn/QZUG1y
         IQt6fCnEAfOKaPXvLpLbBrY8Z70d0F0GPpUx5rX9PhnOopL0cB072X0TFGBl+lQjPp9q
         ML8odp4IFOBics1yWzIXhZJBQQeVe7FB9oiMuQ9ZYQHApk3G3hEenYUC7IX9jZGtmM27
         Dd1vfh7dL+i3RKtRgByZOaSRHCDnDqOOJlQGzNY9jOVSC+cPG6bV04yd4wz0jz6f/kn7
         w6/Vf8tuV6Ja/Ib/vwfH49pFcyrc7w4aWN4JMGQbsrtE1Z3eRqKlAM/zgZV6tZbFzWUl
         krqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783048917; x=1783653717;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UQK9xIpBvupQsHfdWBTAzhnaT8sAOZBQ0zZR3EU2+EQ=;
        b=XxP8vTN5okRxzEIJ1G/bo4ZO844Uk0qYi44O/s9CCdC+py/5XbbbjnMBGRR2LpMoUe
         7xv/sRkKmxJy8ZN9mG3v05/aS5HQIECn0M+y8zgojatMcY8AOnIo5VFjEv7FA2qt2k/8
         gdGnndO7KMnLiuzXqwkA7zsrzmSaOpGkdBXmLCS0HPwlAsdg7UtnaMKzYTUAsA5aPLUD
         3GcU435fK23VUhWmvRYXlDA6QhtAsZIToaW3bohkd1IgKbgUpxc6aMt28TAD3gmICYxH
         aqpfd+HptwIOjy3Gg0HM00OnMQVm6tbXc2Ph6CcXIbeUKjGH8kKT0ddHY3M5Bh2pntqQ
         hFZw==
X-Forwarded-Encrypted: i=1; AHgh+RqhTc7rP/TUP03V2lItl7Nlg6VJXha7OoIYBzvQVuaxw5Jc7Kd/mV/otH5S+KBbKQYAqjq2x49vhQPp@vger.kernel.org
X-Gm-Message-State: AOJu0Yzr6qLZuOX8jJ9t95acqQVxq5YL5oCWyMqRVxCutUQ3IygExAzk
	kQMtf+vBPTE5GFK01b6XXYY+V7JrwP1NlMxGFsKpdoEEAKgVp82SBOiv/ZLnJA==
X-Gm-Gg: AfdE7cnzZhI3MB3+aKAyZnf5wvfVvOLLZ9u6mHiKAJ7R3EjLRVY4jUQ0NFQy8VBIoGA
	vBz7jzsg8VhxNXKvFvlIeelZZWV5PjUGCWeasxVYGRDwhhzIsUjE/BG6zefinKSXZm5O43eqHY9
	/0O3YX7+M+XVwlY887/83UyNrkWq+uFdqoNf5jUGA4+OKuky5bnMD95EVlUlkJ4dSZD8NVg5ex1
	0/jPpIr3PtN74GCVWYQdxph0D2rfYc+E1cLeT3r+HOhXBKKxoyu/0yD6IlA9mM2Y7YS1oxyJcaR
	/uG0b8Ys6TXMMIhykV8+TKGDpJPl8UguYHly8xUzjHNJyxFFMLBAVPsmEd/5oRI04r7VWdMcY3m
	4Xchu1n51qmUlwbIvEf7lEE5O0dXeW5g1HPJIf2CgqAdTWKzG6QCTltwCgWcfZsZiZBVDDmjUXO
	KEMt9qkFI+f0T/bqXuj6xtNdzoDtphAFUY0RTpQEkDk7fjYtVD1A==
X-Received: by 2002:a17:903:4587:b0:2ca:d91d:d3a7 with SMTP id d9443c01a7336-2cad91dd58amr5101685ad.10.1783048916866;
        Thu, 02 Jul 2026 20:21:56 -0700 (PDT)
Received: from [172.20.10.3] (114-137-82-69.emome-ip.hinet.net. [114.137.82.69])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2cad7129996sm2255035ad.21.2026.07.02.20.21.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2026 20:21:56 -0700 (PDT)
Message-ID: <36760b24-8620-897b-e52b-5be52aef3fd8@gmail.com>
Date: Fri, 3 Jul 2026 11:19:40 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v5 1/2] ASoC: dt-bindings: nuvoton,nau8360: Add NAU83G60
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>, Neo Chang <YLCHANG2@nuvoton.com>
Cc: broonie@kernel.org, lgirdwood@gmail.com, perex@perex.cz, robh@kernel.org,
 krzk+dt@kernel.org, linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, kchsu0@nuvoton.com, sjlin0@nuvoton.com
References: <20260630021510.821919-1-YLCHANG2@nuvoton.com>
 <20260630021510.821919-2-YLCHANG2@nuvoton.com>
 <20260630-amusing-striped-urchin-d49c93@quoll>
From: YLCHANG2 <neo.chang70@gmail.com>
In-Reply-To: <20260630-amusing-striped-urchin-d49c93@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319737-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:YLCHANG2@nuvoton.com,m:broonie@kernel.org,m:lgirdwood@gmail.com,m:perex@perex.cz,m:robh@kernel.org,m:krzk+dt@kernel.org,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:alsa-devel@alsa-project.org,m:kchsu0@nuvoton.com,m:sjlin0@nuvoton.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[neochang70@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,perex.cz,vger.kernel.org,alsa-project.org,nuvoton.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neochang70@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 416E06FE2D6


On 6/30/26 14:40, Krzysztof Kozlowski wrote:
> On Tue, Jun 30, 2026 at 10:15:09AM +0800, Neo Chang wrote:
>> +  clocks:
>> +    maxItems: 1
>> +
>> +  clock-names:
>> +    const: mclk
>> +
>> +  firmware-name:
>> +    items:
>> +      - description: |
> Drop |
Got it. Will fix in v6.
>
>> +          Left DSP core firmware.
>> +          In PBTL mode, the Left firmware is ignored and only the Right is applied.
>> +      - description: Right DSP core firmware.
>> +
>> +  nuvoton,pbtl-enable:
>> +    type: boolean
>> +    description: NAU83G60 supports PBTL mode for mono output.
>> +
>> +  nuvoton,dac-cur-enable:
>> +    type: boolean
>> +    description: |
> Drop |
>
> There is no formartting to preserve and I did not ask to introduce it
> here. I commented in completely different place.
>
> With these two fixed:
Got it. Will fix in v6.
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>
> Best regards,
> Krzysztof
>

