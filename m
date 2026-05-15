Return-Path: <devicetree+bounces-298198-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBMILboDB2okqwIAu9opvQ
	(envelope-from <devicetree+bounces-298198-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 13:30:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFF554E78E
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 13:30:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 96B0030E5CF6
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 11:05:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66D8B47279E;
	Fri, 15 May 2026 11:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzJv5HPJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4345C3CF680
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 11:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778843130; cv=none; b=U4qZe3ZyCDGkELZNqZIM1w0+VZmmFzrf0uhy04ZptkUh/jb0UrBbz+u6RzcM8Iw1lpM0p9DKI4PasIlE0bcZSWwn02qXVo6s8b3DjaTAwM+TsC84VJrOtL4rl5E2Y8fz/iT0WWnar2xa7tQEVwHWcrX9p+loojPHrlEy2DMEuLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778843130; c=relaxed/simple;
	bh=0Z2S9Yh255mGoI9YQ0/9zeg6La56MQDU9nNU2Nyd/jA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mANetcm+EBuaXlLWBPuKLbh20TNfTXsbEX/za2bPvwhD2hIocP+R9U0UWCArGI9P8MpPli6ugonYzkkYtdDBKF5FU1VmMVAOCzR5dnexbDZdw+SOCNVUJMI9sJA0Hv90NnXUQ7Ixy0voYa1kb9T433YC9wkFUM8iDVpgxsBrUyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzJv5HPJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A81C3C2BCB0;
	Fri, 15 May 2026 11:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778843129;
	bh=0Z2S9Yh255mGoI9YQ0/9zeg6La56MQDU9nNU2Nyd/jA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=TzJv5HPJQQ4AcayIHFdHm2r9Sd4eVVYuhdng/7d1kfYOkUqDYRopMWIAZb/vRiWl3
	 ZxPXwiMf9wbR7Sil9tXLituKgZ/1BSHsTbKzFYUuz6j9Xl6PU/gyJK8NMkWIIwE1fM
	 ahU4LZbaXDrCfId8XkGugm+IUCS1hTrypnJixIQFfp46jT6XXPmecfIzVfLE8GNcwJ
	 6/dfP3ZBjMvk0ZL37UcqHqQahRfnkcfHZ9UYcLDkpdvpOKaLsE46MqOY0wMHVeWh7d
	 eHpx1spb8/0NhHt0Bt0bF7kayx896Kc0XWHMzTmb6Pfa2wLoKtKffZZguTP2Ys4tew
	 EX3KKTgFRk4fA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 02/11] dt-bindings: extcon: document Samsung S2M
 series PMIC extcon device
Reply-To: sashiko-reviews@lists.linux.dev
To: "Kaustabh Chakraborty" <kauschluss@disroot.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260515-s2mu005-pmic-v6-2-1979106992d4@disroot.org>
References: <20260515-s2mu005-pmic-v6-2-1979106992d4@disroot.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 11:05:29 +0000
Message-Id: <20260515110529.A81C3C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 4EFF554E78E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298198-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,disroot.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The device tree binding schema is missing the mandatory `examples` =
block.
--

commit aa3352c5e99da615ea9bbf089b70984f0d7cf61f
Author: Kaustabh Chakraborty <kauschluss@disroot.org>

dt-bindings: extcon: document Samsung S2M series PMIC extcon device

This commit documents the devicetree schema for the MUIC device found in
Samsung S2M series PMICs. It acts as a USB port accessory detector that
reports cable states by measuring ID-GND resistance.

> diff --git a/Documentation/devicetree/bindings/extcon/samsung,s2mu005-mui=
c.yaml b/Documentation/devicetree/bindings/extcon/samsung,s2mu005-muic.yaml
> new file mode 100644
> index 0000000000000..0a320d5e2a352
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/extcon/samsung,s2mu005-muic.yaml
[ ... ]
> +required:
> +  - compatible
> +  - connector
> +  - port
> +
> +additionalProperties: false

Is this schema missing the examples block?

Although an example demonstrating this node is provided in the parent PMIC
schema later in the patch series, standard dt-schema requires all schema fi=
les
defining a compatible string to include their own example.

This ensures dt_binding_check can independently validate the constraints.

Could an examples section be added here so the node can be properly validat=
ed?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515-s2mu005-pm=
ic-v6-0-1979106992d4@disroot.org?part=3D2

