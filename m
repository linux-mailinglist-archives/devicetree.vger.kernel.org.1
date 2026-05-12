Return-Path: <devicetree+bounces-295902-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEWqCv57AmpktgEAu9opvQ
	(envelope-from <devicetree+bounces-295902-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 03:01:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B7D518055
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 03:01:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8E6EA30219BE
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 01:01:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EED7818FDBE;
	Tue, 12 May 2026 01:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+XrbRdU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC0BF249EB
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 01:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778547707; cv=none; b=KDjIOcZSsijdD2i2KnDNx4cqFNNOuMm/wZNjYDnTYbRpbxomwmLYqBFIzcy0uRDTy602QAuSN98WLCajDpk4jpBrKhAmcgnvy4QYH6ecR7dQ8+NQxKd8W+4YrGGIWsJasi1gx9OABXZJCm515/UdiJLKrovxCR9/EcykxMCEWns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778547707; c=relaxed/simple;
	bh=ZIRiAU70JB32C+/ATezcfVcoDyHQi4En2IMRySdmCfw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hhThtOTEEgdXt7QTJS8CaoNUu0olD0t+qkQEyt/9mJP34DXbvnipPbSlfX70Ht1sua0kJU12U5+ma9l1NOtiEwg8jpmwGX9fVO9Dfsy/QGNjuOW/jmDkrx2Eu9aF3VN0K3sfpbce2Ywj7g4u7/M26x5BgGR5leOh6s/5XfVXiDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+XrbRdU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AFD3C2BCB0;
	Tue, 12 May 2026 01:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778547707;
	bh=ZIRiAU70JB32C+/ATezcfVcoDyHQi4En2IMRySdmCfw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=R+XrbRdUR1lnOj6C7fTzLnl/Hl5HIizAUC7WyESVFqntx568P1BX/yqfING0p4K9v
	 PTp01DZ0240HebHLcVdXjXnTdM2qCHkmiux2o/eYMzn984tIJLGcWb7wGDoATqzPrx
	 N6EoiJTed2EMAipcWz0K4Oyaw2tCrVRJqf4weQclD+WVRHzKRxnsQ9t2jS+KODLjzn
	 oq22oEVo9ZwF5tqRDWLkGIqvUWjQJO6lpv0oc6WLoow0CkJGs269ALsOr6on9t2Ofe
	 w98fIQS4Rv0Jva/nHJM3ZnUEyHq+kBnElMuayJUbbwL4Inz63iTMIPtzYhBciVdCr3
	 gUyy1/FpBEzDg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 1/8] dt-bindings: mmc: spacemit,sdhci: add pinctrl
 support for voltage switching
Reply-To: sashiko@lists.linux.dev
To: "Iker Pedrosa" <ikerpedrosam@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260511-orangepi-sd-card-uhs-v9-1-ae48c0b2b2cf@gmail.com>
References: <20260511-orangepi-sd-card-uhs-v9-1-ae48c0b2b2cf@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 May 2026 01:01:46 +0000
Message-Id: <20260512010147.3AFD3C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 91B7D518055
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295902-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.987];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The commit message documents the UHS pinctrl state as `state_uhs=
`, but the YAML schema defines and enforces `uhs`.
--

commit 9737b985fb2ae6422b14964720c1ea756e86a00f
Author: Iker Pedrosa <ikerpedrosam@gmail.com>

dt-bindings: mmc: spacemit,sdhci: add pinctrl support for voltage switching

This commit documents pinctrl properties to support voltage-dependent pin
configuration switching for UHS-I SD card modes.

>     Add optional pinctrl-names property with two states:
>     - "default": For 3.3V operation with standard drive strength
>     - "state_uhs": For 1.8V operation with optimized drive strength

Is state_uhs the intended name for this pinctrl state? The YAML schema
introduced in this patch restricts the second item in pinctrl-names to uhs,
and uses uhs in both the examples and property descriptions.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511-orangepi-s=
d-card-uhs-v9-0-ae48c0b2b2cf@gmail.com?part=3D1

