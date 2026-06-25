Return-Path: <devicetree+bounces-315491-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GUdUOPHLPGotsQgAu9opvQ
	(envelope-from <devicetree+bounces-315491-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 08:34:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0976C30F1
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 08:34:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=GSMviPbd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315491-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315491-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 48F3230429A2
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 06:34:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7823E3C13FE;
	Thu, 25 Jun 2026 06:33:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647F93C10BB;
	Thu, 25 Jun 2026 06:33:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782369236; cv=none; b=c6siR+0pUXbiNCUoNfSbI4TaDDmed0eU9wplz1Q9/YEXe/f4os1LZgFma2tzhDxT+ydZCbjqqw3RJBygsMLQxtUnSWM/VwWtG5UBJ0R/cMllkAmH4sD8bomoqTXzdG0RrC5oLuCOP4WazZEPAAJi2Pi6jpa+FgR6I3xEi4gYlnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782369236; c=relaxed/simple;
	bh=WIj0jnP4t+6FztdB9YfyhWFa6nvM1xTMMUkSxYOt3xo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OqrFJP6L9v6vxOJqjsF+uabfIGjSAKSL0FNGuNhAR7JjilYk8RKkXhpr9RG6t5qsqFtbyZOKgNXowXX/M7h8WSdt4dy5LtNzc1/nMHKQeuF75Ng1HO8K1ZK8H8w45VsGv84rJOTHuzfAHW1zSejfKKor1VrohAENAL/tXieUhHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSMviPbd; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AD891F000E9;
	Thu, 25 Jun 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782369235;
	bh=nPqMUP+wsaTqW4b/X6USBNlZ6izRiVRTbY32zUiut5k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=GSMviPbdbPKoO8Qy2uFD52xGip8NsnOMJ2M8lUOCwLOZXxndGKkFQkEwkCpU2XP45
	 E5Kth+1VAppOREJNzvItt8H1qsIEw0DisiG7jTUtyP3U5RTUHVX3/61R+dmxZ74yEk
	 /aeh5YNxk7cfHQ/HTIBp3zNZ6kZd5pjxqFtC9sD0ItbupP/fCOXt+cz3yg4i75rk3w
	 iMOsRXfn8zuytR7HpVE5IuGfvi3fIA2vRjDlYCs1metWgqtq6Feeu5K7Of4tEEFMVO
	 ltL5GSgWXS8rOP3TCx4VHuaxh8UHY7uHgBLIiPq2T/f2vZSTATeiWSdk/cmaz8t9Al
	 Ium7bDHssvvvw==
Date: Thu, 25 Jun 2026 08:33:50 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Md Shofiqul Islam <shofiqtest@gmail.com>
Cc: linux-iio@vger.kernel.org, jic23@kernel.org, lars@metafoo.de, 
	conor@kernel.org, conor+dt@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/3] dt-bindings: iio: health: add adi,max86150
Message-ID: <20260625-flashy-porcelain-ant-f2afc9@quoll>
References: <20260623174600.17100-1-shofiqtest@gmail.com>
 <20260623201124.18271-1-shofiqtest@gmail.com>
 <20260623201124.18271-2-shofiqtest@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260623201124.18271-2-shofiqtest@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315491-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:shofiqtest@gmail.com,m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:lars@metafoo.de,m:conor@kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4A0976C30F1

On Tue, Jun 23, 2026 at 11:11:21PM +0300, Md Shofiqul Islam wrote:

Do not attach (thread) your patchsets to some other threads (unrelated
or older versions). This buries them deep in the mailbox and might
interfere with applying entire sets. See also:
https://elixir.bootlin.com/linux/v6.16-rc2/source/Documentation/process/submitting-patches.rst#L830

> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +    description: |

Do not need '|' unless you need to preserve formatting.

> +      Active-low interrupt line.  Asserted when the FIFO almost-full
> +      threshold is reached or when a new PPG sample is ready.
> +
> +  vdd-supply:

vdddig? Which supply is this?

> +    description: Digital core power supply (1.8 V).
> +
> +  avdd-supply:

I cannot find it in datasheet.

> +    description: Analog core power supply (1.8 V).
> +
> +  vref-supply:
> +    description: ECG reference voltage supply.
> +
> +  leds-supply:

Datasheet calls this VLED. Don't invent names.

Best regards,
Krzysztof


