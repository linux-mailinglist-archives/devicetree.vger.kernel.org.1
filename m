Return-Path: <devicetree+bounces-296600-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CIYGHUABGoHCAIAu9opvQ
	(envelope-from <devicetree+bounces-296600-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 06:39:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8BA52D312
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 06:39:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C1CDE307F8D8
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 04:39:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E23B3630A4;
	Wed, 13 May 2026 04:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DkQfjH/N"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5CB5CDF1
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 04:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778647154; cv=none; b=Mw9btwScYHjooNrtFCY7N8oKHZGCLnJhvLgNVY4l0hyNREeqR1lfPVIguHrYm6qW5Dp3qICa+OFVP1/MuU77RvE+FXAuB/7GIhxg9KbWz8BOJ1gMeMIL7OLSDNAgLnU6E1V3+D+t8as9O8G4EKbTbsMFpjMkQN6lEXbIVbXmvJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778647154; c=relaxed/simple;
	bh=A2sQPhAkffoWUFBdJ18+kOvSk+13itYj6Ewc88IgLE8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=rf6+0aGhGrAEePdw0lFuHuE3xY0FuyZge8OmLZ/ycsFzRTxeaYPFUNuE12lN43XCoTll/F5jWdephK7lHK2rlcpmIgXUcQMrEgJtYmmGEJLz4tpFZUAbAWGN9n6qTIdXOk4zUEWQcDY5/F2LoDpBwYbVonireIIsIpxeE8T6hrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DkQfjH/N; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF624C2BCB7;
	Wed, 13 May 2026 04:39:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778647153;
	bh=A2sQPhAkffoWUFBdJ18+kOvSk+13itYj6Ewc88IgLE8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=DkQfjH/NAjiWFgZyM8RpamELgupmEQ0dl4wGZr9r0+I++CNLjK/D+YsvjvuLBPTT6
	 JljIF8GI9MRo52urbmDWHa6PPMGUx1N7p9ftKYnNeRokJfyU8NDyMCALcWbDuxOWR6
	 /P5yu1nU+tNO7AnJ31xEwnRDR7az6HaxAwyMc0JYsHne3VtjNGS/QDZwzUSpiU/qt4
	 09cAQXWHJoVOpyLk+LHw9TZMZE+Rw83ZY9PKM2FdhMY/rB+TGwOLlssT8EBOuYHSGC
	 RH3ePctSF7R6jtirjsb/xX/m2bGxXMoaGD9QTxPsWl2JmqlBYTWCppXVsfIUnqlvLx
	 DkAI3wz542vpQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v3 3/6] net: phy: air_phy_lib: Factorize
 BuckPBus register accessors
Reply-To: sashiko-reviews@lists.linux.dev
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260512-add-airoha-an8801-support-v3-3-1edb34e363ae@collabora.com>
References: <20260512-add-airoha-an8801-support-v3-3-1edb34e363ae@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 May 2026 04:39:13 +0000
Message-Id: <20260513043913.AF624C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: DF8BA52D312
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-296600-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing explicit `#include <linux/wordpart.h>` in `drivers/net/phy/=
air_phy_lib.c`.
--

commit a5ca176575453118a1f5a166311004f5cc86600c
Author: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>

net: phy: air_phy_lib: Factorize BuckPBus register accessors

This commit moves the BuckPBus register accessors and definitions from the
air_en8811h driver into the shared air_phy_lib code to allow reuse by the
upcoming Airoha AN8801R PHY driver.

[ ... ]

> diff --git a/drivers/net/phy/air_phy_lib.c b/drivers/net/phy/air_phy_lib.c
> index 8ef5af4becf03..687c59197b163 100644
> --- a/drivers/net/phy/air_phy_lib.c
> +++ b/drivers/net/phy/air_phy_lib.c
> @@ -15,6 +15,186 @@
> =20
>  #define AIR_EXT_PAGE_ACCESS		0x1f
> =20
> +static int __air_buckpbus_reg_read(struct phy_device *phydev,
> +				   u32 pbus_address, u32 *pbus_data)
> +{
> +	int pbus_data_low, pbus_data_high;
> +	int ret;
> +
> +	ret =3D __phy_write(phydev, AIR_BPBUS_MODE, AIR_BPBUS_MODE_ADDR_FIXED);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret =3D __phy_write(phydev, AIR_BPBUS_RD_ADDR_HIGH,
> +			  upper_16_bits(pbus_address));

This isn't a bug, but should linux/wordpart.h be explicitly included in
this file?

These functions rely on upper_16_bits() and lower_16_bits(), which appear
to be pulled in implicitly through other headers.

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260512-add-airoha=
-an8801-support-v3-0-1edb34e363ae@collabora.com?part=3D3

