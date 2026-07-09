Return-Path: <devicetree+bounces-323396-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id elAxN4FST2rMeQIAu9opvQ
	(envelope-from <devicetree+bounces-323396-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 09:49:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4E472DF0A
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 09:49:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZJH31OmY;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323396-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323396-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 19AE83000E1B
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 07:48:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C8B83C76A2;
	Thu,  9 Jul 2026 07:48:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381E5285CAD;
	Thu,  9 Jul 2026 07:48:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783583293; cv=none; b=BrQyCo2C8H5uWdOWzih1YrbLqm9Hd1sNN/qsi17p7wY4LrwMz7pjsXICzjMJI37cAfa/M40iczCAwdKnUx12FDmr0Y92645GP5cl2uBhnysKiWYYySjGIrnVZGZviQxdJSR+3061lfQAjQ6Fw6xyEqlfIrMcdnZBI7OAsk1JXaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783583293; c=relaxed/simple;
	bh=4E2vZPlsb54o9U2CHRxIeYOMNh/VtlYJ2M8MhFtbTeE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=YPgoBDBMko/Ba3pGnOtasfDLQs0BNYaH71BTAVXjcbNrJGoBLsvFjj+NuXFAEwa4dLBX4F8Kssr1i3301Soq3CaQhByA+mhAPt8kXsFgFrI8EIt6IpI7TiSS0g8emrm8vwTrpHJRy2dD0k7KjuY/SsSrHOnhsGoPuT1IIbKNkdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJH31OmY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8273E1F000E9;
	Thu,  9 Jul 2026 07:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783583291;
	bh=3O0a7udsjYZ6WWbRNIHV3MFl7vF3eePsGu+G9FZ4i+4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZJH31OmYgVdpw3s7934HGDXZent6sF877aQcZDYjQKtDQ1c35CuDuTTh0KWYhrDKG
	 B8Chg6S5Gcz2WXAhcC3bk0JgdPi6arcSgk41jg+kUlWe9kBr1HHwaKQQe42PfKXhDI
	 epsK+YlVWFgkiN4wM0bUHLkn5d/iI+MPCjyNgQiWtIP9BYCwM0iWDx/C5OEeP4l/08
	 6mFsVyckxBhJylkEYffcoWLbpHMDvtWTeROAEUVA/Zq9c8be/59vxO+kqdVBU2KyuQ
	 PRoOuNJnnZbJwl9c3N1GMhtxG5HvWpZj92s4SJcg7oqzUC4+Mg4fHEV/BtKWNnpFSg
	 65oCXicrWiejA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 09/11] dt-bindings: pwm: apple,s5l-fpwm: Add t6030 and
 t6031 compatibles
Reply-To: sashiko-reviews@lists.linux.dev
To: "Janne Grunau" <j@jannau.net>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, linux-watchdog@vger.kernel.org
In-Reply-To: <20260709-apple-t603x-initial-devices-v1-9-55b305833123@jannau.net>
References: <20260709-apple-t603x-initial-devices-v1-0-55b305833123@jannau.net>
 <20260709-apple-t603x-initial-devices-v1-9-55b305833123@jannau.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 07:48:11 +0000
Message-Id: <20260709074811.8273E1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323396-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,jannau.net:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:j@jannau.net,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:linux-watchdog@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8F4E472DF0A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Mismatch between commit message body and patch contents. The com=
mit message states it adds 'apple,t6030-pinctrl' and 'apple,t6031-pinctrl',=
 but the patch actually adds 'apple,t6030-fpwm' and 'apple,t6031-fpwm'.
--

--- Patch [9]: [PATCH 09/11] dt-bindings: pwm: apple,s5l-fpwm: Add t6030 an=
d t6031 compatibles ---
commit 311071f5987c86b8cc9cbb237a0d70bae746172d
Author: Janne Grunau <j@jannau.net>

dt-bindings: pwm: apple,s5l-fpwm: Add t6030 and t6031 compatibles

This commit adds new per-SoC compatible strings for the PWM controllers
on Apple silicon M3 Pro, Max, and Ultra SoCs.

> The PWM controller on Apple silicon M3 Pro, Max and Ultra SoCs is
> compatible with the t8103 (M1) one. Add "apple,t6030-pinctrl" for M3 Pro
> and "apple,t6031-pinctrl" for M3 Max and Ultra as per-SoC compatibles.

[Severity: Medium]
Is there a typo in the commit message description? The text mentions adding
"-pinctrl" compatibles ("apple,t6030-pinctrl" and "apple,t6031-pinctrl"),
but the patch itself actually adds "-fpwm" compatibles, which seems to be
the intended change for this file.

> diff --git a/Documentation/devicetree/bindings/pwm/apple,s5l-fpwm.yaml b/=
Documentation/devicetree/bindings/pwm/apple,s5l-fpwm.yaml
> index 25ef04b60ca17..dd95037ea5eef 100644
> --- a/Documentation/devicetree/bindings/pwm/apple,s5l-fpwm.yaml
> +++ b/Documentation/devicetree/bindings/pwm/apple,s5l-fpwm.yaml
> @@ -21,6 +21,8 @@ properties:
>            - apple,t8122-fpwm
>            - apple,t6000-fpwm
>            - apple,t6020-fpwm
> +          - apple,t6030-fpwm
> +          - apple,t6031-fpwm
>        - const: apple,s5l-fpwm

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-apple-t603=
x-initial-devices-v1-0-55b305833123@jannau.net?part=3D9

