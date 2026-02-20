Return-Path: <devicetree+bounces-267072-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFEoKFDKmGl7MQMAu9opvQ
	(envelope-from <devicetree+bounces-267072-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 21:55:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CCE16ACFE
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 21:55:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A208630065C0
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 20:55:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B39030BB94;
	Fri, 20 Feb 2026 20:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b="HMdWe2u5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08DA2D7DEF;
	Fri, 20 Feb 2026 20:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.238.236.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771620942; cv=none; b=HY9SLnn9xYRbWAtrYOiwqjgZEkye9GrW5kgNjHXXoN/0ACvc3LCe0LlkAuxtofNS4M/EAWnOqwPEO9V6WvcRqlBvA08ziVbD2+RqfKMpDenxBbKQK/jsLmruvVqFZLAtNGVwJbn3mS9g4xExMinNxXuJa3RhwPSeyME5TYrxbcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771620942; c=relaxed/simple;
	bh=rUju9g9rOqA57K/Fvn2HUkcrXR3jIxCXDnsAM0lx0XQ=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Rtb6PmgyMLVmH7QL1hkI/xZXIGY0OlCvuNKWKL+XTfKkviqHWXze+b99HspvKA1w2aexatc9hfJcZJr+qcea5cD8QAlwZX7e+37P9bvzT5Iwxq9s2C83UKRmDYZRgXh7olIQ8AWnpLQ55Y0DI84eXnWkP92x0OEyrAf+J2UxwWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=HMdWe2u5; arc=none smtp.client-ip=178.238.236.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kemnade.info
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=References:In-Reply-To:Cc:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=9rpUoCqo3mEA9xoFIi0ocMFimUkqOuNPRk/YvetvC/g=; b=HMdWe2u5gGLO79qb2FWIH+mvkk
	p4kWfQS/znZvlXUuXPG9iF/CIRgfk8R4oaOKnBn8GtFS65Kk1sSQvQvVIhuPMutQVb1S+/1vfr+cS
	J1eXKt4k2S/jHBgfYZYkGKsFd57Jqz/OAI+ehm8Th0ESEu072x6sSdYLdgjj6ohC6xHOrNQDuWstr
	8pwEoKnzFUwH4g0cSC0ZQf4ab36A3OyRyw9KhzLdMZittNqmFXKaO0SCzo24nCdchXMJ1Z5XhQUnT
	9oN4o03CsqB9NBWweCS16XmxSYj0nYE1ZItFDuqzvV8XjlHxTP9RoRGBoFgi6Dk4POQCmPYV0VmH+
	mIGZFvhw==;
Date: Fri, 20 Feb 2026 21:55:13 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: Mithil Bavishi <bavishimithil@gmail.com>
Cc: aaro.koskinen@iki.fi, airlied@gmail.com, conor+dt@kernel.org,
 jernej.skrabec@gmail.com, jonas@kwiboo.se, khilman@baylibre.com,
 krzk+dt@kernel.org, laurent.pinchart@ideasonboard.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 neil.armstrong@linaro.org, prabhakar.mahadev-lad.rj@bp.renesas.com,
 jesszhan0024@gmail.com, rfoss@kernel.org, robh@kernel.org,
 rogerq@kernel.org, simona@ffwll.ch, thierry.reding@gmail.com,
 tony@atomide.com, tzimmermann@suse.de, andrzej.hajda@intel.com,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org
Subject: Re: [PATCH v6 5/8] ARM: dts: ti: omap: espresso-common: Add common
 device tree for Samsung Galaxy Tab 2 series
Message-ID: <20260220215513.7b85056f@kemnade.info>
In-Reply-To: <20260219210408.5451-6-bavishimithil@gmail.com>
References: <20260219210408.5451-1-bavishimithil@gmail.com>
	<20260219210408.5451-6-bavishimithil@gmail.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kemnade.info,none];
	R_DKIM_ALLOW(-0.20)[kemnade.info:s=20220719];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267072-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kemnade.info:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andreas@kemnade.info,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[iki.fi,gmail.com,kernel.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com,vger.kernel.org,lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kemnade.info:mid,kemnade.info:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,ti.com:url]
X-Rspamd-Queue-Id: 48CCE16ACFE
X-Rspamd-Action: no action

On Thu, 19 Feb 2026 16:04:04 -0500
Mithil Bavishi <bavishimithil@gmail.com> wrote:

> Create common device tree for Samsung Espresso series devices
> 
> Let's create a common tree for all the variants first, later we can
> device specific trees based on their screen sizes
> 
Imperative mood.

> Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
> ---
[...]

> +&omap4_pmx_wkup {
> +	gpio_keys: gpio-keys-pins {
> +		pinctrl-single,pins = <
> +			OMAP4_IOPAD(0x046, WAKEUP_EN | PIN_INPUT | MUX_MODE3)
> +			/* sim_cd.gpio_wk3 - EXT_WAKEUP */
> +			OMAP4_IOPAD(0x056, WAKEUP_EN | PIN_INPUT | MUX_MODE3)
> +			/* fref_clk3_req.gpio_wk30 - VOL_UP */
> +			OMAP4_IOPAD(0x05C, WAKEUP_EN | PIN_INPUT | MUX_MODE3)
> +			/* fref_clk4_out.gpio_wk8 - VOL_DN */
> +		>;
> +	};
> +
> +	prox_irq: prox-irq-pins {
> +		pinctrl-single,pins = <
> +			OMAP4_IOPAD(0x042, WAKEUP_EN | PIN_INPUT_PULLUP | MUX_MODE3)
> +			/* sim_clk.gpio_wk1 - PS_VOUT */
> +		>;
> +	};

According to 

https://www.ti.com/lit/ug/swpu231ap/swpu231ap.pdf
Table 3-327

the gpio1 cntroller is always active. So here the WAKEUP_EN is not
needed at all (so also no additional irq required).

Regards,
Andreas

