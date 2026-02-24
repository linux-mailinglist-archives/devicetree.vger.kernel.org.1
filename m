Return-Path: <devicetree+bounces-267912-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gByCDjmnnWmgQwQAu9opvQ
	(envelope-from <devicetree+bounces-267912-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:27:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6071C187A68
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:27:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 44B423004688
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 220C239E167;
	Tue, 24 Feb 2026 13:26:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BXNME3gS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 026E137AA9E
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 13:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771939619; cv=none; b=CQ02DZ3kyc4L0hbB8xRvnloZrlh8mATDu2TlPpMe/tjeXEJUAZen5O3BA+adCouxZxffMDBM4y5FLJf9Sy68bmqF0musxo0oaL3jYutkOT4NNWBc2WxPOWStHOi/Of0DE8tP3y7YlNY6WacDC9wQPNXKxWk+kRmCCs3TqrvIpm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771939619; c=relaxed/simple;
	bh=1+VktEHjhEzBWZIfIGMMs9nExudiXlrpIxMlNVbsxj8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o1cLWFHydtwpFUT3QSp31CNNQsaGUpl1NBlGJmMb8YjO61bw8X+HNDCbpzFx32sFDQN8e7TkKVtRAWSRsSeErKfK/4tdOU+Rt0DUaKuPopPoKkhKycnpnn3a9vqKC2Wu+vDeAXLDE+cBBm9p0pYHygsnZBgjjv2Uf0EKlOIbNko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BXNME3gS; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2ad9f316d68so3818045ad.2
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 05:26:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771939617; x=1772544417; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xCO3Ogmxq2y04MykS8IhStihhyv5MO+vrYW/wEjEqHQ=;
        b=BXNME3gSZv0RexTvq8ZBxhfsOjab2SBu68deFakRBThmpRe+9zlqMn6UsxC19NtB0p
         QDj+Efj/mGtgfwgfTPTP0YYNXKiq/7Jj7B4ht/vv348SUE/1CeQzxTBgR4PyIBSOtm1m
         QVjoXMf+nGDjdBOysjZTqDUrYanHhOgTFI5fvzaMskiekQXG5GpcEYqJltYPnWavaPQG
         Kh+0Zt/ojSK6jvs3iX6kdbMFhc1zi2FclL+mO/9A+IpOJieo6rcZCXLS3AdbHPBxnqd7
         5F5oUtaPmPddSSlUSoAh8TCcyx9YlFHoF/rLoxMWkwSM1aD6M5merCkMNfFS8whkgfz8
         g4Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771939617; x=1772544417;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xCO3Ogmxq2y04MykS8IhStihhyv5MO+vrYW/wEjEqHQ=;
        b=QV8d505ha4FfX9j9YCwiY0ymW4bHfvKZh1GzI2X92f8nuYCME/AhvIN4YW3Jz9hEy6
         g8s9lr/5yLWYSrOKFf2te7oxBrEJXXrHr9MYSQJqokcKrPeYMb+1v7STBrlx3C5o9Cfz
         jcqbSGpQT1FhA4uLLizHhoelyPOk+cfg+IXT97cAEADB+uFbwazK1Mz0wcX+hXJRjfIL
         Tqom/emU0bovqB1kHj1ng7+SpqJRzCRSXUChQ3+FJQcuC7Bg2rKgjq64Uvvacy78wxMG
         SzVMbwW0ULt6QoE3wfjjZ9acj1FLylxOaGiP5Akb8dGxGcPOS0ceQ6K+EIzCgGOWUBCf
         WV/A==
X-Forwarded-Encrypted: i=1; AJvYcCXhZlkHrbdCNlMs6yHJRUCyID7nG+boySS7q7HZ6OvWtE/X0PJIB/iqcpdgWZpj6PWQDDE14Vm3xeCW@vger.kernel.org
X-Gm-Message-State: AOJu0YwMsg0ZRFCIZk2naZxsRg/Wa5ea14z/8nlE7+IZsXkvBEHYzFjH
	rSp+mR803SUbt4VHjkkE8Agdl9kcugSLYn6qKzgnVHCU6wTO9zkUO64S
X-Gm-Gg: ATEYQzwtZHlZJ94bO1hHN0LkHjaMm8c6Q2ZkRTzvNMaUm4mg4134MAdL+ZS5YtYhwcP
	ST20yO98ZQFOL2B0p97g3fSIsqgWLR7NxmsP/dMD5UQ6K3D99gL9X3FJKlqQLfUkbeCmZIR02jk
	8RE+2dNzgQNSXbOkBEvK2GN2xnHVqKA+pMMkbv30f+fiFz5C97YDGaCOFYOVktLtVonqA1LJ5Fb
	zDIj9Gx8VH7RRMVnFH1PEMl1cv/z1lO0kYruAb9CbooUm4eSqbawGOWOqckxeMC7UTBOrCRc0Ok
	9fTGICFJjyY0h6bqE6BGQAvkPqlgfNiyn6yOQpW4Vgzb1ZHGPolijXJFkWq+4pqH83D6eTSpyVr
	zxZ5l1yyFxaUwlnezqFp0L3TRCQKQUGlJJRX8gVqNV52+kp++OKtauiSDCva7RKVMdlxDBJ2nGd
	S6yPh65qq0VVvn11q5JHbXH5uuZcA7NXyTUNURW0c0rYs=
X-Received: by 2002:a17:902:db02:b0:2a5:8c1c:744f with SMTP id d9443c01a7336-2ad74525046mr127745145ad.40.1771939617251;
        Tue, 24 Feb 2026 05:26:57 -0800 (PST)
Received: from [192.168.1.4] ([27.7.171.51])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7503d406sm103267245ad.75.2026.02.24.05.26.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Feb 2026 05:26:56 -0800 (PST)
Message-ID: <03e6257f-91a0-43e8-8759-47e8c79c3449@gmail.com>
Date: Tue, 24 Feb 2026 18:56:51 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: usb: st,st-ohci-300x: convert to DT schema
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Peter Griffin
 <peter.griffin@linaro.org>, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260217-st-usb-v1-1-ba347f30d0e0@gmail.com>
 <20260218-loose-rose-anteater-01abef@quoll>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <20260218-loose-rose-anteater-01abef@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267912-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6071C187A68
X-Rspamd-Action: no action



On 18-02-2026 13:12, Krzysztof Kozlowski wrote:
> On Tue, Feb 17, 2026 at 02:55:34PM +0000, Charan Pedumuru wrote:
>> +description:
>> +  The STMicroelectronics USB Open Host Controller Interface (OHCI)
>> +  compliant USB host controller found in ST platforms. The controller
>> +  provides full- and low-speed USB host functionality and interfaces
>> +  with an external USB PHY. It requires dedicated clock, reset, and
>> +  interrupt resources for proper operation.
>> +
>> +allOf:
>> +  - $ref: /schemas/usb/usb.yaml#
> 
> You should reference rather usb-hcd.yaml

Sure.

> 
>> +
>> +properties:
>> +  compatible:
>> +    const: st,st-ohci-300x
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    minItems: 2
> 
> Drop

Okay.

> 
>> +    maxItems: 2
>> +
>> +  clock-names:
>> +    items:
>> +      - const: ic
>> +      - const: clk48
>> +
>> +  phys:
>> +    maxItems: 1
>> +
>> +  phy-names:
>> +    items:
>> +      - const: usb
>> +
>> +  resets:
>> +    minItems: 2
> 
> Drop

Okay.

> 
>> +    maxItems: 2
> 
> Best regards,
> Krzysztof
> 

-- 
Best Regards,
Charan.


