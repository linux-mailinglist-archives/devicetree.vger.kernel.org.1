Return-Path: <devicetree+bounces-308094-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GGbDMWZ9JmpfXQIAu9opvQ
	(envelope-from <devicetree+bounces-308094-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 10:29:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FBD6540C7
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 10:29:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=a5we14pj;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308094-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308094-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2B23D30214C9
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 08:13:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB8A739AD34;
	Mon,  8 Jun 2026 08:13:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C48B3399890;
	Mon,  8 Jun 2026 08:13:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780906387; cv=none; b=QPkiOmqARVOxQ+up/YZP+ND5Yft2278/33/+zbZ7Nxo29Yg4UApq/uVT9uaZahrRi1f3BzWzyxnUu8nDbDpr7wxa9+TgTMIu13Xp5atAahNYQfxrh6yo4X4WAI0Dr59jFTWRHUp1hNXELsYg79b4AjWMiynbfYE/z2zugUCSCug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780906387; c=relaxed/simple;
	bh=EpqygyKwWPRfEZl4jN+KZ+X0dTSOfzX66E6C7Tflutw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KoTLOPlSGjsMNS+DA5BTd94bEN5k2u7l/42Jilsmz9X4Rf+EwsXCFNkglXsye1oAZ5TAEG6AV2oaoRc053aiIrcVAlaFjI64DXy7Esb3NWle2Hptu0xLtThWTSzuuYTTJXn48HMLBy3RrHJeOuWdFDgR0sHv84ZKEDwEUhURt5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5we14pj; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26BC81F00893;
	Mon,  8 Jun 2026 08:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780906386;
	bh=lBiSpDFzyBw8SygSkG6XdPiQe6O+eZO6fnGKehZ4MpI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=a5we14pjqyeMk8wsOAC7I12XYcSFzztcu6yOz3xlrTZMXwJIN4Gz7qfh3kP0ADJiN
	 i1b/c1F8C4QQ6HyFgXXHZ35qDxIiSZJG/1/SAOTOOxtaoyFMBxez64AWh1n67VHsur
	 +fG8UGHMpvTck0nAgtidlt9T8S60bB9lIYOukoCGciH6g+6phyLsv0TkqmwANK9EZI
	 /usyfU1sLRcYpNJc7Zs9bG1xK+28i+m4cB1LPTpWbahRUtSzo1Icc0+lSC98gjdil/
	 wzUnFLh/c/XkjfZ2wxz1BhR/JrK/UmWQPlibPp7Y6o0mNOQGuvKfwvnW8fiG2PsV6K
	 sjsRU38QPQWng==
Date: Mon, 8 Jun 2026 10:13:02 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Herman van Hazendonk <github.com@herrie.org>
Cc: linux-iio@vger.kernel.org, jic23@kernel.org, dlechner@baylibre.com, 
	nuno.sa@analog.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] iio: light: isl29018: support cover-glass gain
 compensation via DT
Message-ID: <20260608-speedy-gaur-of-joviality-180ffc@quoll>
References: <20260604054723.2983181-1-github.com@herrie.org>
 <20260604064925.3097108-1-github.com@herrie.org>
 <20260604064925.3097108-3-github.com@herrie.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260604064925.3097108-3-github.com@herrie.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308094-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:github.com@herrie.org,m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 13FBD6540C7

On Thu, Jun 04, 2026 at 08:49:25AM +0200, Herman van Hazendonk wrote:
> Boards that mount the sensor under a tinted or coated cover glass need
> to compensate for the optical loss before downstream consumers can map
> the reading onto a useful lux range. The driver already exposes a
> runtime knob through in_illuminance0_calibscale, but every user has to
> re-apply it after every reboot (or rely on a board-specific udev rule),
> and a power-of-two cover gain like 100x is a hardware constant of the
> board rather than a policy choice that belongs in userspace.
> 
> Add an "isil,cover-comp-gain" device-tree property that seeds calibscale
> at probe, mirroring the pattern tsl2563.c already uses for the same
> class of problem (amstaos,cover-comp-gain). The default stays 1 so
> existing systems are unaffected, and userspace can still re-tune via
> the sysfs attribute afterwards.
> 
> Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
> ---
>  .../devicetree/bindings/iio/light/isl29018.yaml     | 13 +++++++++++++
>  drivers/iio/light/isl29018.c                        |  9 +++++++++
>  2 files changed, 22 insertions(+)

Do not attach (thread) your patchsets to some other threads (unrelated
or older versions). This buries them deep in the mailbox and might
interfere with applying entire sets. See also:
https://elixir.bootlin.com/linux/v6.16-rc2/source/Documentation/process/submitting-patches.rst#L830

Please run scripts/checkpatch.pl on the patches and fix reported
warnings. After that, run also 'scripts/checkpatch.pl --strict' on the
patches and (probably) fix more warnings. Some warnings can be ignored,
especially from --strict run, but the code here looks like it needs a
fix. Feel free to get in touch if the warning is not clear.

Best regards,
Krzysztof


