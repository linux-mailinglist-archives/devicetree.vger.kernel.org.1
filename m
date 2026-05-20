Return-Path: <devicetree+bounces-300527-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4IbpMeOXDWoMzwUAu9opvQ
	(envelope-from <devicetree+bounces-300527-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 13:15:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E3958C2F4
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 13:15:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DF46F300A629
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 11:11:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58EA03DA7DC;
	Wed, 20 May 2026 11:11:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qmds433q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F7C36E493;
	Wed, 20 May 2026 11:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779275480; cv=none; b=YsXUjNTXAFxDI4MumkXnN+MPMAw1iZcBfAWrBrYHu+ewGm+dr2FnBJzAlYKS9KNznsT0qolXQVBM/Xjtcewx56aZnF8SqitX3rZGlyP7s1wbMqNQOJSuRbj8Db+ATVGXMZfn0woWFJE4B97RZ/wdh2CrPk3v//KBZiDpXkjl2UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779275480; c=relaxed/simple;
	bh=a25PvxRD0u523Q65ziaGi3BCivTs0OPTJ2Kx3Q5Nwk0=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CxHEqcOZvK2V6pz3TfpyR44x+wIjGwKEEpid0aK7DuBAhItM6NEvqJoV0Be2U1a0JJs9FBcHnV80rmJh2wFB8ev5nNKjos8/CbqEBXdBl+BDJhPeGsZVpbfURJ0wi57uuSn+wCbVsQvlCnYUBgattog5Jzhop+6mHfh+Ngo5tOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qmds433q; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A15551F000E9;
	Wed, 20 May 2026 11:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779275478;
	bh=7pfxhOfA5bbrhWHUnRP/xfDrwWx5LVm1ScdG9LVG5qI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=Qmds433qnrPw20o2VbL3p9XC9+pkdwiBc3bxBMYTscox0EZ7X1r3wFzNohXb1zJgy
	 MqT/rOMNctJFBL4sE5og6ewB7CEpRZme8FhCv0KDIi1P5ds2+Ko6618/XaqT3aFCcF
	 FxfWK2xMa7CnGMkDKur1Wd7H1RN8QlnK5XHPBfnfSLHJTAsUiEotgMIt4F34qoqd1M
	 BbQdqddItUMJ5qNHpPQBQDIcFm401CrYw6GnkyD4Bfhd4y9GU6VVu4W/yBDgYghHJ3
	 vk9eJ1kDPyU7RFatIT2dGYvh8yPMkKkfo3VCAYTANw4X0zIYCiXLdnVL/QFFCZ3lLd
	 +HiHE9R6nNdlQ==
Date: Wed, 20 May 2026 12:11:09 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Xingyu Wu <xingyu.wu@starfivetech.com>, David Lechner
 <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy
 Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>
Subject: Re: [PATCH v1 1/2] bindings: iio: adc: Add StarFive JHB100 SARADC
Message-ID: <20260520121109.6b5faac0@jic23-huawei>
In-Reply-To: <20260519-undoing-ambitious-012d608ebd7f@spud>
References: <20260518081852.116909-1-xingyu.wu@starfivetech.com>
	<20260518081852.116909-2-xingyu.wu@starfivetech.com>
	<20260518-elderly-barman-2b1abfc3755c@spud>
	<NTZPR01MB095679F35A873BBBA304655F9F002@NTZPR01MB0956.CHNPR01.prod.partner.outlook.cn>
	<20260519-undoing-ambitious-012d608ebd7f@spud>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-300527-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,devicetree.org:url]
X-Rspamd-Queue-Id: 31E3958C2F4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 19 May 2026 10:59:59 +0100
Conor Dooley <conor@kernel.org> wrote:

> On Tue, May 19, 2026 at 09:26:03AM +0000, Xingyu Wu wrote:
> > On 2026/5/19 00:24, Conor Dooley wrote:  
> > > 
> > > On Mon, May 18, 2026 at 04:18:51PM +0800, Xingyu Wu wrote:  
> > > > Add the new documentation of SAR-ADC for the StarFive JHB100 SoC.
> > > >
> > > > Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>
> > > > ---
> > > >  .../iio/adc/starfive,jhb100-saradc.yaml       | 62 +++++++++++++++++++
> > > >  1 file changed, 62 insertions(+)
> > > >  create mode 100644
> > > > Documentation/devicetree/bindings/iio/adc/starfive,jhb100-saradc.yaml
> > > >
> > > > diff --git
> > > > a/Documentation/devicetree/bindings/iio/adc/starfive,jhb100-saradc.yam
> > > > l
> > > > b/Documentation/devicetree/bindings/iio/adc/starfive,jhb100-saradc.yam
> > > > l
> > > > new file mode 100644
> > > > index 000000000000..ba8e19b72ad7
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/iio/adc/starfive,jhb100-saradc
> > > > +++ .yaml
> > > > @@ -0,0 +1,62 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause) %YAML 1.2
> > > > +---
> > > > +$id:
> > > > +http://devicetree.org/schemas/iio/adc/starfive,jhb100-saradc.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Successive Approximation Register (SAR) A/D converter for the
> > > > +StarFive JHB100 SoC
> > > > +
> > > > +maintainers:
> > > > +  - Xingyu Wu <xingyu.wu@starfivetech.com>
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    const: starfive,jhb100-saradc
> > > > +
> > > > +  reg:
> > > > +    maxItem: 1
> > > > +
> > > > +  interrupts:
> > > > +    maxItems: 1
> > > > +
> > > > +  clocks:
> > > > +    maxItems: 1
> > > > +
> > > > +  resets:
> > > > +    maxItems: 2
> > > > +
> > > > +  "#io-channel-cells":
> > > > +    const: 1
> > > > +
> > > > +  upper-bound-mv:
> > > > +    description: The upper bound voltage value of the monitor.
> > > > +    $ref: /schemas/types.yaml#/definitions/uint16
> > > > +
> > > > +  lower-bound-mv:
> > > > +    description: The lower bound voltage value of the monitor.
> > > > +    $ref: /schemas/types.yaml#/definitions/uint16
> > > > +
> > > > +  scan-freq:
> > > > +    description: Number of the scan cycle interval.
> > > > +    $ref: /schemas/types.yaml#/definitions/uint16  
> > > 
> > > Can you explain why any of these three properties are something that should be in
> > > the devicetree rather than software controlled?  
> > 
> > My intention is to be able to obtain the initial values from the devicetree during probe and preset them.
> > Do I need to drop them and just set them through sysfs?  
> 
> Unless the hardware configuration determines the values (which I can't
> really see being the case for scan-freq at least) then yes, you need to
> drop and set them via sysfs.
> 
> > > How are the bounds calculated?  
> > 
> > The measurement range of this ADC hardware is from 0 to 1800 mV. This set value cannot exceed it. This explanation will be added later.  
> 
> I'm asking how this is calculated so that I can tell if you the property
> is permitted or not. 

Far as I can tell this stuff is boot script / udev rule stuff - doesn't
belong in DT.

Jonathan

> 
> Cheers,
> Conor.


