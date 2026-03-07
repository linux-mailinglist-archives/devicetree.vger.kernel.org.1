Return-Path: <devicetree+bounces-272398-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAyNL3H+q2mfiwEAu9opvQ
	(envelope-from <devicetree+bounces-272398-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 11:31:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A1D22B106
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 11:31:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 860123012825
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 10:31:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B6473876A4;
	Sat,  7 Mar 2026 10:31:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lI+YeJ9G"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED6771F4634;
	Sat,  7 Mar 2026 10:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772879468; cv=none; b=XCdKceEWHYL0KygkVJLZ47jWbgZ3oTzSB7J7Lo67Ob5xRxb+MK6tsFGzz18GNFcHvzvM6pwjedldbJ7vlbMWiL3kty/2JKGCKgmn18DsTDcKsCYKaYKETsxygC4CvnzHDN85iz5e6dDiItZzZijM439rYLdYXQXxGfVJk1LnKL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772879468; c=relaxed/simple;
	bh=H0bhtWlTe74X5pdg6/C9tE7jpgoOT0G6XZ+1Urq0LdI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IthDlO+P77oWwXbzcxZLwtdwLL91qxZ2n3Qxl8/1cqQCdLOQclx/QQgo66dLO3rnP1uvEA9sGrtND/w9VW9oL1Z7HgbSvtD2RPSOLMNomhc7ILxp1KLV8YmG/ppFJ67xqXtF+9poesxPQuoC+/DF+b3OBbSEgay5Ck7oyHTs3uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lI+YeJ9G; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00AE8C19422;
	Sat,  7 Mar 2026 10:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772879467;
	bh=H0bhtWlTe74X5pdg6/C9tE7jpgoOT0G6XZ+1Urq0LdI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lI+YeJ9GndcmufpeYFz2zlFcI2wvLofYk+q3JuqTNqoTvbVjAalw9iXWOJ6CD1vn6
	 ai8EjwgIQSPj/MTeA64q3cI2jk4l+6N4hOby4exBjvc5z9nOGLWYrlVQ5CrI2fVPCL
	 BCB/KOAVjbo8YN0hiePBi8i19fM202vvxrL2w9WFWH/zYVI40RmH3Wb4KkVs+ofMEk
	 uNJVxdL7MDUeffNAJE4Ml/19tmut4FuIv5fBWftUmILVZWZ9DsgAH+rnz+YYzpIgS0
	 uqaeW9Pxmq8q8KhIAcHie0R48RL49e+STbHc3hRQsMajUueXZFQPAUkAV+9Nip8G17
	 sQmEaaqu3QLHg==
Date: Sat, 7 Mar 2026 11:31:05 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Bianconi <lorenzo@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v6 2/4] dt-bindings: phy: Add documentation for Airoha
 AN7581 USB PHY
Message-ID: <20260307-strange-dinosaur-of-joviality-e6bc72@quoll>
References: <20260306190156.22297-1-ansuelsmth@gmail.com>
 <20260306190156.22297-3-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260306190156.22297-3-ansuelsmth@gmail.com>
X-Rspamd-Queue-Id: C5A1D22B106
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272398-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.969];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,bootlin.com:url,infradead.org:email]
X-Rspamd-Action: no action

On Fri, Mar 06, 2026 at 08:01:51PM +0100, Christian Marangi wrote:
> Add documentation for Airoha AN7581 USB PHY that describe the USB PHY
> for the USB controller.


A nit, subject: drop second/last, redundant "documentation for". The
"dt-bindings" prefix is already stating that these are docs.
See also:
https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetree/bindings/submitting-patches.rst#L18

> 
> Airoha AN7581 SoC support a maximum of 2 USB port. The USB 2.0 mode is
> always supported. The USB 3.0 mode is optional and depends on the Serdes
> mode currently configured on the system for the relevant USB port.
> 
> To correctly calibrate, the USB 2.0 port require correct value in
> "airoha,usb2-monitor-clk-sel" property. Both the 2 USB 2.0 port permit
> selecting one of the 4 monitor clock for calibration (internal clock not
> exposed to the system) but each port have only one of the 4 actually
> connected in HW hence the correct value needs to be specified in DT
> based on board and the physical port. Normally it's monitor clock 1 for
> USB1 and monitor clock 2 for USB2.

...

This must contain the header you are also adding/referencing here.


> diff --git a/MAINTAINERS b/MAINTAINERS
> index 364f0bec8748..d75f59118a9a 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -779,6 +779,12 @@ S:	Maintained
>  F:	Documentation/devicetree/bindings/spi/airoha,en7581-snand.yaml
>  F:	drivers/spi/spi-airoha-snfi.c
>  
> +AIROHA USB PHY DRIVER
> +M:	Christian Marangi <ansuelsmth@gmail.com>
> +L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml

No maintainers for the header?

> +
>  AIRSPY MEDIA DRIVER
>  L:	linux-media@vger.kernel.org
>  S:	Orphan
> -- 
> 2.51.0
> 

