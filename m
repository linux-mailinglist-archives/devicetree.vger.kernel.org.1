Return-Path: <devicetree+bounces-297778-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBDcMgQfBmpDewIAu9opvQ
	(envelope-from <devicetree+bounces-297778-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 21:14:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1B3546345
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 21:14:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8CB963013A93
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 19:14:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8420439DBF0;
	Thu, 14 May 2026 19:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCspF4hx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610E633F5B2
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 19:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778786047; cv=none; b=CXSMZBx1MYsgsQxtq4BZUQMreI5gYLzU7/f9IpuXrzsqgo+kOJr0UyD866XsIXoPI6oNu7wEX8/4NIiybJ2vurQ8DPb66dZyM1Un4zYd5hAdujESSCK+wgl/wK8T5Wl7oy3hd3NjVzgzmKU+9JgUduJqBy1QnnVB77rJsrpK/UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778786047; c=relaxed/simple;
	bh=ouDWU5g4x8ak+iqeGii82TZq4B1Y4VBBfmYAoQNEHxY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=A0FFumMMZ0Yo05nPcVODp/0KzOM4rTaLajU08+bwPYCz9rt1+scBmucE+Meoim88qbFvqN0s4B0jh3TGgz7NCnId/hhxi8pCI6znb2gKlLDuvSnjzGCYPTFoMvve/ZK7swEPYaU8gdSKzLH83q7pMm+K1FQHa25k2Kpynv7S/qU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCspF4hx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18C78C2BCB3;
	Thu, 14 May 2026 19:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778786047;
	bh=ouDWU5g4x8ak+iqeGii82TZq4B1Y4VBBfmYAoQNEHxY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=OCspF4hxN0OZZsa0OXDTJ4GiO6sJz4WswvSU4ne/kLA/o/EqwrX3fwp7xsRaeUhXP
	 28AkACO8IzePiDAYfBWOpas4a6MJux3w1VDjz8FnWbOwS5UM0fX4v6wnlKoIP2Yp5O
	 Vgu1td6GrEThNaT7k+m3GtqLdAZZBK8Y+6BFi3MSnmThJYkzQKpst+WlfLvkIe0i5g
	 qOpJzdtPHyI0C2SSaHGxfLKKR4W6kfRWuhSISyi46zpOAoemHXcDFqQkASuagI0RZC
	 OfuOVJvVYpcNgXSIHG8UFEdVP65YIAhBF2S5vHYYptUEl5KQAmiyJjIp/UMEqN2Vog
	 FDuqIjxrWiakQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 6/6] regulator: mt6359: Add proper ldo_vcn33_[12]
 regulators
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chen-Yu Tsai" <wenst@chromium.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260514091520.2718987-7-wenst@chromium.org>
References: <20260514091520.2718987-7-wenst@chromium.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 19:13:59 +0000
Message-Id: <20260514191400.18C78C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 9E1B3546345
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297778-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The `mt6359_noop_ops` struct is empty, which causes the dummy regu=
lators to be treated as always-on and prevents them from being disabled, pe=
rmanently locking the shared `ldo_vcn33_[12]` supply in the enabled state.
--

commit fb19e47461ecd9ff9e40d149eebb44edec04294e
Author: Chen-Yu Tsai <wenst@chromium.org>

regulator: mt6359: Add proper ldo_vcn33_[12] regulators

This commit replaces the separate WiFi and BT regulators for ldo_vcn33_1 and
ldo_vcn33_2 with single regulators. It retains backward compatibility by
converting the existing regulators to no-op regulators that are fed from th=
eir
respective new parent regulators.

> diff --git a/drivers/regulator/mt6359-regulator.c b/drivers/regulator/mt6=
359-regulator.c
> index 46cafe93b24e4..af0e0339fbdd6 100644
> --- a/drivers/regulator/mt6359-regulator.c
> +++ b/drivers/regulator/mt6359-regulator.c
[ ... ]
> @@ -475,6 +489,9 @@ static const struct regulator_ops mt6359p_vemc_ops =
=3D {
>  	.get_status =3D mt6359_get_status,
>  };
> =20
> +/* Used for backward-compatible placeholder regulators */
> +static const struct regulator_ops mt6359_noop_ops =3D {};

Could this empty structure cause the parent supply to remain enabled
permanently?

Without an .is_enabled callback, _regulator_is_enabled() defaults to
returning 1. During registration, set_supply() checks if the regulator is
enabled. Since it appears to be enabled, it proactively calls
regulator_enable() on the parent supply (ldo_vcn33_1 or ldo_vcn33_2),
incrementing its use_count.

Later, if a consumer calls regulator_disable() on the dummy regulator,
_regulator_do_disable() returns -EINVAL because the .disable callback is
NULL. Due to this error, _regulator_disable() aborts early without
decrementing its own use_count or calling regulator_disable() on the parent
supply.

Would it make sense to add dummy .enable, .disable, and .is_enabled callbac=
ks
that return 0 to mt6359_noop_ops?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260514091520.2718=
987-1-wenst@chromium.org?part=3D6

