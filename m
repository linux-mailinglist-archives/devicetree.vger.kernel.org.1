Return-Path: <devicetree+bounces-271711-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sGzeGObeqWm4GgEAu9opvQ
	(envelope-from <devicetree+bounces-271711-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 20:52:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB29217CEA
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 20:52:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3DF54302E0CF
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 19:52:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF0423E717D;
	Thu,  5 Mar 2026 19:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="keT5U2zf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 733D11F4634
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 19:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772740316; cv=none; b=rtPqaKufaefY/gNxRVJS4iaWmVSK7O0XBAKErhQ3J/l+8eShxS/lg5nRvai63dj21qbUnfR95+lfI9MXWepJlpUVJ4b7IwI483DnHdnys2+Wu6yZG2qkHp4Nk06vjf0gpjK/NsZsYNFmF5SwIH7iBkH462HtUCnCKRPJI0gVmQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772740316; c=relaxed/simple;
	bh=O1FCX8ikbkY5p1vOKrMw+Z3szzgLKKnYWpM+ouPW9P8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=refRD568tvpkQ4SFDo7TAaDDITeMoPhfk6th5N+v9ekOj4JlYhd1uxUk/Ed7dc9v9GUlCCPyykd4gQeae8rGBEUFtczbg7WoWt2vaHwn/ubOpZrgs0rjDg3aIHccXS8bAfZiVbrmviyWxb0aULIQqkAiyl+EQpq0erwkaehAKRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=keT5U2zf; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-48373a4bca3so53178855e9.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 11:51:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772740314; x=1773345114; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3ycShkWVfvP9qFPQPEgw7veVNo7m/BtpCOIUn4PJI+A=;
        b=keT5U2zfsAelXL6A3Xr4gy6UhsZLIgvPF697vxA8xfDjsEbC6BG5HQ07LGDoNoIPvN
         Q5+zhmDE4VGQBe3+q58GEh8Mh5WTdd/gbiZyEM+atDP6vP4IWKrtenMaFJdCYH8ombqu
         tWMgSjTgBFBg9O0oOCf4lXQsh48nnzJri1QgUh7m2xDc6TxOM/E2jT+bDYrlTygNefBa
         DPLGztBXCO3ZE8JSZVdxmTqqo8UGFE5k2SBD7b1AN3e2lbZM+bCIIDGi8drTpSuha04E
         HshQGWh/dcFTztMFi4PmUDCNY/UM8ymCzgdvUfc3fEQvp10/o+0XGKnk++xXZ7517fWH
         Fw9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772740314; x=1773345114;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3ycShkWVfvP9qFPQPEgw7veVNo7m/BtpCOIUn4PJI+A=;
        b=kh+dTQuQ8nmThXdX514mc/MHMPe3Q8p4Wpez72MbuvBxnS/Kf0Iqp8rOJcgvZS5DR6
         +xA2GO2lAS9eV3N8kB6+g6S9TMBPkpZupy0oX4w0kF4NXjOpQp3h95XzUjzV2THEt455
         AR+Wns0R2RsCvMFO5W3Tsj5hgafRIr9Iv8Nbo8nGSJr3LM3AcDAw3BRYiyXlWEhYlZuE
         l0FkB1igbStBBD7HEMQp+iMmaEmhq9w12QfXIm7/RuKBVmKyDCxPArWCmRxNNa1HR5oM
         bbmI61mtqVxCh2x2DpqbKpG5+rSFElJPtRGrFnhhN3POw+WzY6R6CnCJpTvaLZ0Ndhs8
         voUw==
X-Forwarded-Encrypted: i=1; AJvYcCUX5kPbJxvT02HSdP/Bvd6EYr5ka75zcJzhNpVFcCPKJReRxfxPp8sf7uqMW0pedzS9LuYo7fAFoYR0@vger.kernel.org
X-Gm-Message-State: AOJu0YySBD1h4IoSb+UBvs4TyNZTtVFxjRnsbP1GSPw/FWUQuD0Oh1lF
	VgzENvtfkUSZIgb0nvDpbkyEXPbRMgkM/0CUPSeBkWuAtn63h9TnN1Dc
X-Gm-Gg: ATEYQzy0MABa4WsjhJiiKeT4LhiEbj2jNRM+hy+fKIKomorQVLQkJ2iAPqSz97o5FLb
	BIz5QVn5FF1bt86gU101uJetZVDfl8bzLaam2rxNxaQSlYCG7E/ezDoI9PpU7QnOonFASwRtmin
	+7o/6NL8B+4PkUZSKKkzfvkmsF35u0vOQ3Y5DFwib+bKV1PPDOT4UUeXJNbQfnSxNRCjtdTe8Ar
	nFYFCfMPilzPr93EcaMcPXFrClLnsNKS9m9geBrATORtrV0oPH2dnD4tsm/NI8E4byXa5oQcxkU
	rWhiC7ZhfFgeMc19HpHrNOjxmtGnRhfFG0lBMOhdq1MencdNKOm3pXm5sU7AQfbAV0V5btdw/P3
	+CbD6L9Fc/sxboeNkkjbVdd1j3+sbQ68MsgLaRRDJ+5hiq5c0spBMWh9afrpwp8uqTBUTMRbYRp
	SbTZjahCQNURbaPg+xGMINbixRmeXvi/S6QeeS5l52duhF8ZmHZK5Eu+jkobCroDk=
X-Received: by 2002:a05:600c:828a:b0:480:1c53:2085 with SMTP id 5b1f17b1804b1-4851986f362mr134157105e9.19.1772740313624;
        Thu, 05 Mar 2026 11:51:53 -0800 (PST)
Received: from [192.168.20.170] (5D59A51C.catv.pool.telekom.hu. [93.89.165.28])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4852378dc51sm9128705e9.1.2026.03.05.11.51.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 11:51:53 -0800 (PST)
Message-ID: <41a42087-dc36-41de-a8f2-0c8b39425ffd@gmail.com>
Date: Thu, 5 Mar 2026 20:51:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: marvell: armada-37xx: drop
 'marvell,usb-misc-reg' properties
Content-Language: hu
To: Andrew Lunn <andrew@lunn.ch>,
 Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260304-armada-37xx-drop-usb-misc-reg-v1-1-800c1b746b7a@gmail.com>
 <db997887-2431-4baa-8e96-04f53ea59060@lunn.ch>
 <874imug18l.fsf@BLaptop.bootlin.com>
 <cacefc69-dba3-4ff6-a039-85fe35a91e0b@lunn.ch>
From: Gabor Juhos <j4g8y7@gmail.com>
In-Reply-To: <cacefc69-dba3-4ff6-a039-85fe35a91e0b@lunn.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: DAB29217CEA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271711-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	DBL_PROHIBIT(0.00)[0.0.226.144:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[j4g8y7@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,bootlin.com:email,5e000:email]
X-Rspamd-Action: no action

Hi Andrew,

2026. 03. 05. 14:28 keltezéssel, Andrew Lunn írta:
> On Thu, Mar 05, 2026 at 08:54:34AM +0100, Gregory CLEMENT wrote:
>> Hello Andrew,
>>
>>> On Wed, Mar 04, 2026 at 08:12:43PM +0100, Gabor Juhos wrote:
>>>> The 'marvell,usb-misc-reg' property is present both in the EHCI and
>>>> in the XHCI USB host device nodes, however it is not documented. Thus
>>>> 'make dtbs_check' produces warnings like these:
>>>>
>>>>   /arch/arm64/boot/dts/marvell/armada-3720-db.dtb: usb@58000 (marvell,armada3700-xhci): Unevaluated properties are not allowed ('marvell,usb-misc-reg' was unexpected)
>>>>           from schema $id: http://devicetree.org/schemas/usb/generic-xhci.yaml
>>>>   /arch/arm64/boot/dts/marvell/armada-3720-db.dtb: usb@5e000 (marvell,armada-3700-ehci): Unevaluated properties are not allowed ('marvell,usb-misc-reg' was unexpected)
>>>>           from schema $id: http://devicetree.org/schemas/usb/generic-ehci.yaml
>>>>
>>>> Apart from the fact that the properties are not documented, those are
>>>> not even used by any USB host drivers. At least 'git grep' says this:
>>>>
>>>>   $ git grep -n 'marvell.usb-misc-reg' v7.0-rc2
>>>>   v7.0-rc2:Documentation/devicetree/bindings/phy/marvell,armada-3700-utmi-phy.yaml:30:  marvell,usb-misc-reg:
>>>>   v7.0-rc2:Documentation/devicetree/bindings/phy/marvell,armada-3700-utmi-phy.yaml:41:  - marvell,usb-misc-reg
>>>>   v7.0-rc2:Documentation/devicetree/bindings/phy/marvell,armada-3700-utmi-phy.yaml:50:      marvell,usb-misc-reg = <&usb2_syscon>;
>>>>   v7.0-rc2:arch/arm64/boot/dts/marvell/armada-37xx.dtsi:372:                              marvell,usb-misc-reg = <&usb32_syscon>;
>>>>   v7.0-rc2:arch/arm64/boot/dts/marvell/armada-37xx.dtsi:383:                              marvell,usb-misc-reg = <&usb32_syscon>;
>>>>   v7.0-rc2:arch/arm64/boot/dts/marvell/armada-37xx.dtsi:396:                              marvell,usb-misc-reg = <&usb2_syscon>;
>>>>   v7.0-rc2:arch/arm64/boot/dts/marvell/armada-37xx.dtsi:406:                              marvell,usb-misc-reg = <&usb2_syscon>;
>>>>   v7.0-rc2:drivers/phy/marvell/phy-mvebu-a3700-utmi.c:231:                                                         "marvell,usb-misc-reg");
>>>
>>
>> I don't follow:
>>
>>> The phy-mvebu-a3700-utmi.c does use it, and does document it:
>>>
>>>   marvell,usb-misc-reg:
>>>     description:
>>>       Phandle on the "USB miscellaneous registers" shared region
>>>       covering registers related to both the host controller and
>>>       the PHY.
>>>     $ref: /schemas/types.yaml#/definitions/phandle
>>>
>>> And the patch which added the property to the USB nodes also added the
>>> PHY nodes.
>>>
>>> commit 05d168a56fae8ff50432d5dfe6e7423b989455a8
>>> Author: Miquel Raynal <miquel.raynal@bootlin.com>
>>> Date:   Tue Jan 29 10:36:34 2019 +0100
>>>
>>>     arm64: dts: marvell: armada-37xx: declare USB2 UTMI PHYs
>>>
>>
>> You stated that the property is used and was properly added.
> 
> I can understand your confusion. The commit message is not great. I
> had to read quite a bit of code to convince myself the change is
> correct.

> The property is used and documented in the Generic PHY driver,
> phy-mvebu-a3700-utmi.c. And the properties being removed are in USB
> nodes. The properties in the PHY node are not removed.
> 
> The properties in the USB node have never been used, as far as i can
> see.

Thank you for the review, and sorry about the confusing commit message. Perhaps
I should have skipped the 'git grep' part.

@Gregory: Shall I send a v2 with a reworded the commit message?

Regards,
Gabor


