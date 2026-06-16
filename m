Return-Path: <devicetree+bounces-312450-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KfpvKQIjMWp4cQUAu9opvQ
	(envelope-from <devicetree+bounces-312450-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 12:18:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6328068E217
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 12:18:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YoMUWR8l;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312450-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-312450-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DA8B5301BEDF
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 10:18:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3B6A3B83F8;
	Tue, 16 Jun 2026 10:18:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9344B3B6C15;
	Tue, 16 Jun 2026 10:18:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781605118; cv=none; b=EQvE6X4uLtJU2lSIXXyhc7uyZmliDEiHnd7B7X/UMVaCWCvI9ncp1lC168O2/ILMxuZux6N9R+ijoaVh49++zVuO9hdrnfS74suHIO1Bh9nVlybftFLU/2BdXVZivO6HC1EZD2xbOCh7c5ufPwU8rK7qgFtoTaKa3XP/rb5QV5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781605118; c=relaxed/simple;
	bh=EvqhXb5ZtKQ8x2jVua++swOMh2ks/O7DgQKl97pFV3c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=aKMlExYJat/TWJKpkMaAQJZ8xoGA5EF4cRw/ehBWOD1rFJmW/73t6z+NcWtKGiAG01Rc0r41UM4iV1oShr5QSfOCERuFxSXG9TBx3JbX23+KRgVRYXBxSZ97XJXeY+/vCeMPNHTRyuVzsq12lHiGsafq5gzeYYIuRbvjZlchG78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YoMUWR8l; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D027B1F000E9;
	Tue, 16 Jun 2026 10:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781605117;
	bh=aszBkk4m1aU9hy/ludtjWxZlJ1n041DGRt7Lx5WET7U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YoMUWR8l6wmlD70X0OU+op99mUPZnfz9Wa/RIQ12XxiFNxYsDi9k60GDsnEZguwTN
	 FF7bsrSajlEqcihvUydUpO7XEqoreNcUwmYz5Acp+rfyzXDyNh6F16tpKrT0UyI7r+
	 euX9FcQ/vJfKm92eOLgJ6N/VABCZtoSJjcZSruxzwCyPFkEDZHZb8+t/rv4L63V34Z
	 Ao41RcFdA/85MikumVNF+vd3wCD5OskYQqPA7fdrZEEAa71xY8oFktiLfro2DYsdPi
	 nUfUh2VKwYgmrRaIEvw+eIvNBPn9GdzGW3GgwAixiwjEolCDShjcF5aC90Rp3rc6GA
	 IyzN3Yz4wXOdg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: input: Add binding for Qualcomm SPMI
 PMIC haptics
Reply-To: sashiko-reviews@lists.linux.dev
To: "Fenglin Wu" <fenglin.wu@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, dmitry.torokhov@gmail.com, linux-input@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260616-qcom-spmi-haptics-v1-1-d24e422de6b4@oss.qualcomm.com>
References: <20260616-qcom-spmi-haptics-v1-1-d24e422de6b4@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jun 2026 10:18:36 +0000
Message-Id: <20260616101836.D027B1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-312450-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,qualcomm.com:email];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:fenglin.wu@oss.qualcomm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:dmitry.torokhov@gmail.com,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6328068E217

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] The device tree binding description contains Linux-specific driver =
implementation details, violating the OS-agnostic principle.
- [Low] Stale reference to an undefined property 'qcom,wf-play-rate' in the=
 binding description.
--

commit 24bf9f2257f4052d27a53163621c8f5173fe1da8
Author: Fenglin Wu <fenglin.wu@oss.qualcomm.com>

dt-bindings: input: Add binding for Qualcomm SPMI PMIC haptics

Add binding document for the haptics module inside Qualcomm PMIH010X.

> diff --git a/Documentation/devicetree/bindings/input/qcom,spmi-haptics.ya=
ml b/Documentation/devicetree/bindings/input/qcom,spmi-haptics.yaml
> new file mode 100644
> index 0000000000000..0e26d68563dcd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/input/qcom,spmi-haptics.yaml

[ ... ]

> +      In FIFO streaming mode, hardware-based LRA auto-resonance tracking=
 is
> +      disabled by default.  Because this mode is intended to drive arbit=
rary
> +      waveforms that may not follow the resonant frequency, autonomous h=
ardware
> +      resonance correction would interfere with the intended output.
> +
> +      In the driver, FIFO streaming is implemented using an FF_PERIODIC =
effect
> +      with an FF_CUSTOM waveform.  The expected custom data layout is:

[Severity: Low]
Are these Linux-specific driver implementation details, such as FF_PERIODIC
and FF_CUSTOM, appropriate for this binding document?

Device tree bindings are typically expected to be strictly OS-agnostic
hardware descriptions. Should the documentation for the driver's ioctl payl=
oad
and custom_data memory layout be moved to the Linux driver documentation
instead?

> +        custom_data[0]   =3D play rate code (see qcom,wf-play-rate value=
s below)

[Severity: Low]
Is there a missing property definition for qcom,wf-play-rate?

This line references qcom,wf-play-rate values, but the property doesn't app=
ear
to be defined anywhere in the schema's properties section. Does this need to
be added, or is this a stale reference that should be removed?

> +        custom_data[1]   =3D vmax in mV; 0 =3D use device default (qcom,=
vmax-mv)
> +        custom_data[2..] =3D signed 8-bit PCM samples (at least one requ=
ired)
> +
> +properties:

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260616-qcom-spmi-=
haptics-v1-0-d24e422de6b4@oss.qualcomm.com?part=3D1

