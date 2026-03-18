Return-Path: <devicetree+bounces-277131-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIYlBNODumnrXQIAu9opvQ
	(envelope-from <devicetree+bounces-277131-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:52:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B20362BA3F6
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:52:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0C60B3021403
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 533A93A255D;
	Wed, 18 Mar 2026 10:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="YJgF5KS8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F6A3976AF
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773831099; cv=none; b=H0+IFK2eP4JHKo7NfZxsBIfjo4GzXdB+WOV9jWD2bltnWT9DFX5XNgy9NCDSzaUjNOyTcB55oICYFXxf49TOQpCFtq8bUSDpHXSJ9Md8MNhhaTQxyTAsAI34+j4XRAO9QiUWSdT0l3xLM6kJc2vX0Sj6UoNDJMxFOo7GM/AF87o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773831099; c=relaxed/simple;
	bh=Y1LcCjSTgl7Dl+0GHq7UgL3cvKL9ZQvmeooUVDMIj0w=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=gYxtsHdnweQhc9VXVZQQFlREE3USPqFtRGgmGgbTobuRQrQENccBD5HOK+ksYSKC3ovRekkc4xF2msqHUDfQAVOOOBrg7m5ogyZqBVK/g97IOAPMbq5FN08h4a61PQzuaGZjy3+88XPE25JMYRScEYfNxeqKlmHleS7SvhR5phc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=YJgF5KS8; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id AC7311A2EA2;
	Wed, 18 Mar 2026 10:51:34 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 80A896004F;
	Wed, 18 Mar 2026 10:51:34 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 1A64D10450782;
	Wed, 18 Mar 2026 11:51:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773831093; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=uaQF8Rk+pj0ruLxQsZHfi0rM4RAp8TegoCfMnyVAwdg=;
	b=YJgF5KS8ujsrm5AiN97YgWQpsPd++BRHIKDOVBY1kjPdT05MK1ww23hofLU2szthf4AFAd
	O585qgmOCVLk0cZNcXFvsIVxezE/jYdilRMSPa3/occ2oMa2oAjiaJH+OtvvabHW3SdcuT
	5/3fMGYWGsld1jfLU7lvpdAA6YaGDyioTSNq70j1tnMRWNW2ukpRwKJsZ6ZYquyGOJDdVD
	oqrkStBLh3OHR6DVh2+CuvJljImul3WgVMSPGiGZyc0BCXSPNh+jFGcVQVGWUNcnLx8JJn
	cYFnpm5gf25x0YwUCQFgfHZTQ6Hv0QACSCk681+wJpxa8pgUOUytQ5dhO5/VzQ==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Gabor Juhos <j4g8y7@gmail.com>,  Andrew Lunn <andrew@lunn.ch>,
  Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,  Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor
 Dooley <conor+dt@kernel.org>,  linux-arm-kernel@lists.infradead.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: marvell: armada-37xx: drop
 'marvell,usb-misc-reg' from USB host nodes
In-Reply-To: <875x6t5ska.fsf@BLaptop.bootlin.com> (Gregory CLEMENT's message
	of "Wed, 18 Mar 2026 11:40:37 +0100")
References: <20260317-armada-37xx-drop-usb-misc-reg-v2-1-ddff72114414@gmail.com>
	<875x6t5ska.fsf@BLaptop.bootlin.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Wed, 18 Mar 2026 11:51:31 +0100
Message-ID: <87o6klcswc.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,lunn.ch,kernel.org,lists.infradead.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277131-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[5e000:email,devicetree.org:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:email,bootlin.com:mid,0.0.226.144:email]
X-Rspamd-Queue-Id: B20362BA3F6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 18/03/2026 at 11:40:37 +01, Gregory CLEMENT <gregory.clement@bootlin.com=
> wrote:

> +Miqu=C3=A8l
>
> Hello Gabor,
>
> Thanks it is better,
>
>> The 'marvell,usb-misc-reg' property is present both in the EHCI and
>> in the XHCI USB host device nodes, however it is not documented. Thus
>> 'make dtbs_check' produces warnings like these:
>>
>>   /arch/arm64/boot/dts/marvell/armada-3720-db.dtb: usb@58000 (marvell,ar=
mada3700-xhci): Unevaluated properties are not allowed ('marvell,usb-misc-r=
eg' was unexpected)
>>           from schema $id: http://devicetree.org/schemas/usb/generic-xhc=
i.yaml
>>   /arch/arm64/boot/dts/marvell/armada-3720-db.dtb: usb@5e000 (marvell,ar=
mada-3700-ehci): Unevaluated properties are not allowed ('marvell,usb-misc-=
reg' was unexpected)
>>           from schema $id: http://devicetree.org/schemas/usb/generic-ehc=
i.yaml
>>
>> Apart from the fact that the properties are not documented, those are
>> not even used by any USB host drivers. Due to this, drop the properties
>> in order to get rid of the warnings.
>>
>> Note:
>>
>> With the same name, there is a property used for the Armada 3700 USB
>> UTMI PHYs of which dt-bindings documentation has been added in commit
>> e60958699afa ("dt-bindings: phy: mvebu-utmi: add UTMI PHY bindings").
>>
>> Additionally, the property is handled by the 'phy-mvebu-a3700-utmi'
>> driver since commit cc8b7a0ae866 ("phy: add A3700 UTMI PHY driver").
>>
>> When the nodes of the UTMI PHYs has been added to the SoC dtsi by
>> commit 05d168a56fae ("arm64: dts: marvell: armada-37xx: declare USB2
>> UTMI PHYs"), the properties has been added to the USB host controller
>> nodes also. According to the commit message this was intentional,
>
> Miquel will confirm that, after speaking with him, it appears to be a
> mistake rather than an intentional act.

Indeed, I believe it is a leftover, the property should have been added
only to the PHY nodes, not the host nodes.

The sentence above should be: s/intentional/unintentional/, the commit
messages clearly states that PHY nodes were targeted, not the
host. Plus, a follow-up commit adds the missing phy properties to the
hosts, so clearly reaching this syscon through the host node directly
does not make sense and was not intended.

Once this single word fixed, you can add my

Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

Thanks for the fix!
Miqu=C3=A8l

