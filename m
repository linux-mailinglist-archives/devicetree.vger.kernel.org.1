Return-Path: <devicetree+bounces-271241-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +KzFIcWMqGmLvgAAu9opvQ
	(envelope-from <devicetree+bounces-271241-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:49:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 833272072C6
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:49:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DA6A23030763
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 19:49:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F08113A4503;
	Wed,  4 Mar 2026 19:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="AW9t9KFc"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C81388E62;
	Wed,  4 Mar 2026 19:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772653748; cv=none; b=r5TLClcVDiK0n8vFEPJ70OSXVVxWoKGlCoFQyQJxyEol31qtczDZ3bmWPbMXX+kgAk43Djk/EuGoWZ3wu+mX8AFf2xYbgGH0GbVWfH2FKz8nCB80fd+KhQEIs5vVIRXxCJUTqn/WuYqns8T4AbRsLpQjojESE09e1Ay+KBOQCR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772653748; c=relaxed/simple;
	bh=LDxaONTi76Gw3jpLF/eH77u4mSBVc/R2k68MHKk43p8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SsXZtIaOHRVrzX1DfL9y1/l8gpH3RpIgYbPVXFxOmU+p551HCkQNJ5MYVy16TLCUhsL4G+iH8XuOYuNRyiNc/yMUCXB6mKGFpvyLQebpTP+Nx5WZbCTrWvsGbrz3kZtDSGHE3Ux4rt0stt7dfPL3d049EBaVIR95VPrSx7KZ/pI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=AW9t9KFc; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=lO/knfXLU58cqQbFLyikJauWIRCu+bpWpmfL7N87xUg=; b=AW9t9KFci9gSdrFAV5W6jtjGiZ
	JRt5C6fcGfNY9FuA4VRF05gn2vztRet5pA2TP+D1U61BG4wBE4flqORzUJFcKgXlw3CpHR4xxw6vs
	BME7ZBjXIyMu2pOb1NZZbBY0Y1d/e/AQSF8U0zlbd/JM13YYTa7uVT5poYROy1CSoAqM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vxsDI-00AAWR-Go; Wed, 04 Mar 2026 20:48:56 +0100
Date: Wed, 4 Mar 2026 20:48:56 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Gabor Juhos <j4g8y7@gmail.com>
Cc: Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: marvell: armada-37xx: drop
 'marvell,usb-misc-reg' properties
Message-ID: <db997887-2431-4baa-8e96-04f53ea59060@lunn.ch>
References: <20260304-armada-37xx-drop-usb-misc-reg-v1-1-800c1b746b7a@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260304-armada-37xx-drop-usb-misc-reg-v1-1-800c1b746b7a@gmail.com>
X-Rspamd-Queue-Id: 833272072C6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[lunn.ch,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271241-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[bootlin.com,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[lunn.ch:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,bootlin.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,5e000:email,0.0.226.144:email]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 08:12:43PM +0100, Gabor Juhos wrote:
> The 'marvell,usb-misc-reg' property is present both in the EHCI and
> in the XHCI USB host device nodes, however it is not documented. Thus
> 'make dtbs_check' produces warnings like these:
> 
>   /arch/arm64/boot/dts/marvell/armada-3720-db.dtb: usb@58000 (marvell,armada3700-xhci): Unevaluated properties are not allowed ('marvell,usb-misc-reg' was unexpected)
>           from schema $id: http://devicetree.org/schemas/usb/generic-xhci.yaml
>   /arch/arm64/boot/dts/marvell/armada-3720-db.dtb: usb@5e000 (marvell,armada-3700-ehci): Unevaluated properties are not allowed ('marvell,usb-misc-reg' was unexpected)
>           from schema $id: http://devicetree.org/schemas/usb/generic-ehci.yaml
> 
> Apart from the fact that the properties are not documented, those are
> not even used by any USB host drivers. At least 'git grep' says this:
> 
>   $ git grep -n 'marvell.usb-misc-reg' v7.0-rc2
>   v7.0-rc2:Documentation/devicetree/bindings/phy/marvell,armada-3700-utmi-phy.yaml:30:  marvell,usb-misc-reg:
>   v7.0-rc2:Documentation/devicetree/bindings/phy/marvell,armada-3700-utmi-phy.yaml:41:  - marvell,usb-misc-reg
>   v7.0-rc2:Documentation/devicetree/bindings/phy/marvell,armada-3700-utmi-phy.yaml:50:      marvell,usb-misc-reg = <&usb2_syscon>;
>   v7.0-rc2:arch/arm64/boot/dts/marvell/armada-37xx.dtsi:372:                              marvell,usb-misc-reg = <&usb32_syscon>;
>   v7.0-rc2:arch/arm64/boot/dts/marvell/armada-37xx.dtsi:383:                              marvell,usb-misc-reg = <&usb32_syscon>;
>   v7.0-rc2:arch/arm64/boot/dts/marvell/armada-37xx.dtsi:396:                              marvell,usb-misc-reg = <&usb2_syscon>;
>   v7.0-rc2:arch/arm64/boot/dts/marvell/armada-37xx.dtsi:406:                              marvell,usb-misc-reg = <&usb2_syscon>;
>   v7.0-rc2:drivers/phy/marvell/phy-mvebu-a3700-utmi.c:231:                                                         "marvell,usb-misc-reg");

The phy-mvebu-a3700-utmi.c does use it, and does document it:

  marvell,usb-misc-reg:
    description:
      Phandle on the "USB miscellaneous registers" shared region
      covering registers related to both the host controller and
      the PHY.
    $ref: /schemas/types.yaml#/definitions/phandle

And the patch which added the property to the USB nodes also added the
PHY nodes.

commit 05d168a56fae8ff50432d5dfe6e7423b989455a8
Author: Miquel Raynal <miquel.raynal@bootlin.com>
Date:   Tue Jan 29 10:36:34 2019 +0100

    arm64: dts: marvell: armada-37xx: declare USB2 UTMI PHYs

So this change does look correct.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

