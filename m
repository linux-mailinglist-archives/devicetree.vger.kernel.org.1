Return-Path: <devicetree+bounces-280810-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 9Xl7MWZ0xGmMzQQAu9opvQ
	(envelope-from <devicetree+bounces-280810-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 00:48:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFD332D759
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 00:48:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CFD8D302F397
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 23:48:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 965D133C536;
	Wed, 25 Mar 2026 23:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOFlObcf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71D952E541E;
	Wed, 25 Mar 2026 23:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774482518; cv=none; b=oAqGIGyLKZND65mzXU4FINBglKJOKyJ42IG/iYsndEfCki5Pq7lBiOJ9fLAvr+abmECuCPlCuB2fjQLqomMParfh39TCivkLQbgH3b54OH58R2z/ZwCY1PEC8V14di90w5nQR61yIrqTK5g3ETK4I0bwA7Ol3BKhAFevE6VEv84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774482518; c=relaxed/simple;
	bh=nvy92Lzp/GDB7hdawZwNUt/EDzG9tQBtTUqoo+26wnw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SNW/4uiiYxyzDyNS9Kdz+KWgJpKyMkuBSsdOTuDz6I/VUmcNuLaFfKuzqSEl2zjgteDo4aXnPHhHbtocuFqIIrfkgtGXIwkL9tMgmE3R+w2WL5bWKHto1/zUQvqObnyZ7U38UfkDbnVKS5nkeHKfAKywXsk/rOLmYyfk5sRKwxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OOFlObcf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 856FCC4CEF7;
	Wed, 25 Mar 2026 23:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774482518;
	bh=nvy92Lzp/GDB7hdawZwNUt/EDzG9tQBtTUqoo+26wnw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OOFlObcflnSRjDlEvvzhmiprS9LEnc6Xq1FuQezugr9nHOp+UEduDF3FQd+jBa/97
	 AtrCujsUfIgrrxIdJE3/BWHqIU5P0ESqn7L/fdLNL++qibpAUYNB2dJu8/1xvT+Q67
	 QavC+g98T6qq/9Hja6mG95636vJ2bkfCiZoVwesItqxknxEdlwhl0+W4JLOd7fCVrw
	 EvGFkiUekNaPA5sS5IgtKB1dXUioHjJNIkWH+bTTOK1Glp0pnwbG7nVKNL2TmpswLl
	 NjhRhqfnTB/45ZtArs8w0xdaL5c1FRkG/91vGRoER1eB1YBKcYss5tVLP6qzRfsgCS
	 +qF/TWaUeB91g==
Date: Thu, 26 Mar 2026 07:48:35 +0800
From: Yixun Lan <dlan@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dts: riscv: spacemit: k3: add P1 PMIC regulator tree
Message-ID: <20260325234835-GKA777612@kernel.org>
References: <20260325-02-k3-i2c-v1-1-a793776b88bc@kernel.org>
 <6530526f-59ca-4753-a068-46c62a1a1fed@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6530526f-59ca-4753-a068-46c62a1a1fed@kernel.org>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-280810-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	DBL_PROHIBIT(0.00)[5.245.225.0:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1EFD332D759
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Krzysztof, 

On 14:54 Wed 25 Mar     , Krzysztof Kozlowski wrote:
> On 25/03/2026 10:56, Yixun Lan wrote:
> > Add the P1 PMIC's regulator topology tree for pico-itx board.
> > 
> > Signed-off-by: Yixun Lan <dlan@kernel.org>
> > ---
> > This series try to add a regulator power tree from P1 PMIC,
> > the PMIC is controlled via an I2C interface.
> > 
> > To test this patch, it will need the I2C patch series [1]
> > 
> > Link: https://lore.kernel.org/all/20260325-02-k3-i2c-v1-0-78f29c83d9ac@kernel.org [1]
> > ---
> >  arch/riscv/boot/dts/spacemit/k3-pico-itx.dts | 185 +++++++++++++++++++++++++++
> >  arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi |  11 ++
> >  2 files changed, 196 insertions(+)
> > 
> > diff --git a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
> > index b098dbd0e7a1..5b59c569dbde 100644
> > --- a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
> > +++ b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
> > @@ -23,6 +23,191 @@ memory@100000000 {
> >  		device_type = "memory";
> >  		reg = <0x1 0x00000000 0x4 0x00000000>;
> >  	};
> > +
> > +	reg_dc_in: regulator-dc-in-12v {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "dc_in_12v";
> > +		regulator-min-microvolt = <12000000>;
> > +		regulator-max-microvolt = <12000000>;
> > +		regulator-boot-on;
> > +		regulator-always-on;
> > +	};
> 
> This is a pointless supply. It's non-controllable and serves no devices,
Yes.. I thought to describe a more complete regulator tree, it just
shows more information - e.g. from $debugfs/regulator_summary

> so it only bloats the DTB and slows down boot process without any benefits.
Ok, I will drop it then
> 
> 
> 
> > +
> > +	reg_aux_vcc3v3: regulator-aux-vcc3v3 {
> 
> This is even more pointless because there is no user. Dead code.
> 
reg_aux_vcc3v3 is used by various devices, but I can drop it too,
leaves till there is device really needed..

> > +		compatible = "regulator-fixed";
> > +		regulator-name = "AUX_VCC3V3";
> > +		regulator-min-microvolt = <3300000>;
> > +		regulator-max-microvolt = <3300000>;
> > +		regulator-always-on;
> > +		vin-supply = <&reg_dc_in>;
> > +	};
> > 
> 
> 
> Best regards,
> Krzysztof

-- 
Yixun Lan (dlan)

