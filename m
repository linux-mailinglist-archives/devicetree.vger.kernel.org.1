Return-Path: <devicetree+bounces-269140-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AP3SET9foWmksQQAu9opvQ
	(envelope-from <devicetree+bounces-269140-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 10:09:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8A31B4EFC
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 10:09:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4BBF13080103
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 09:07:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48E3A3ACA4A;
	Fri, 27 Feb 2026 09:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6XZEm5L"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2590E361DCB
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 09:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772183237; cv=none; b=NG661gwGSca1kU9eEzOLoG76MuR37/X4M20uYc1af3BwMNy1Ufeio5p78rtCY9GA1i0lpY2TWzC0lioiiGk6Qeyts+9hmGrdDOvTaiC1ubuudOx+vZkihiypEuTN9PSxLZajhHVKiXQF2Fnd58AzfQiI+EV8mkzxRNEDx9MkbDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772183237; c=relaxed/simple;
	bh=iJlIp2Jd8MRpaEmt3ERKwjfAuXpf+arP7sigceDz708=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XnycsBU2IRyAqnoCcEZk3azoNsNQDjY1dI2Z4mp7Belv+ErYfKfAsBTEeSgVUgeTGDEQ25aPjaVkseRFnMZhowEGX9grBpXXTZrp1nudLFiH7nPMnJ1qdrgjxtZLxtbNs3zuNbbomSxk2FamJelqCgJgbiQGu2tBurkWBRYJq/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6XZEm5L; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4D63C116C6
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 09:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772183236;
	bh=iJlIp2Jd8MRpaEmt3ERKwjfAuXpf+arP7sigceDz708=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=B6XZEm5Loj7nbC7IPRaIIZ98noBpTcUwaljgWR76ZI4Lp195f71wBP8ha8VgoHuLT
	 HAwpahZ7hAH8qRCnN1l19bo9DLSgOp4Z+tUuU+7dtE2AoMu5vYXOtFvb1wj8hmrgBr
	 CvaN83gJx4+E3f2TVF1LNN04SE760xottyjb2+vqXJXRZ1J69xQKCOAhRrpXM2x+pt
	 4L6Cmixs6LeEEDOKHMdQM+1qYsUEHqhDp2Qgkdveq5/aQShsgeumo13LZBw0e0z1va
	 PopjfFmxYAJawsZgyjD9mNw2o51sN8iAE/PRYXpDIAzLP3uVag5JMbY7NQIv5/BqjD
	 Z+n/fiiWBIgVA==
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-79800183233so25258037b3.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 01:07:16 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUk/G+NhlDk/7MkHlbgcpO5AKaXBjJ/+XFxmWHXC88Wdulp/weqIt5QlvQHBhw2UouTeTQ/HkRr2gdd@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5njyjn6Dno7HLvs0iuvMWEtJrnjXG/cSFtwpebmPDAJCxQX+T
	Ysge40vQyYNFqnx7PqhWuQOOaDsS2ovKLSlrTzhg4VIILw6hYCe/DFhRTMAvtwx+K63/0+2yeBS
	ajRo7uMGJMsECsPZ7TN21Zy0AAorjoG8=
X-Received: by 2002:a05:690c:c4f1:b0:796:3a4f:68fc with SMTP id
 00721157ae682-7988599b8ddmr16545447b3.8.1772183236207; Fri, 27 Feb 2026
 01:07:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260225-pinctrl-mux-v2-0-1436a25fa454@nxp.com> <20260225-pinctrl-mux-v2-3-1436a25fa454@nxp.com>
In-Reply-To: <20260225-pinctrl-mux-v2-3-1436a25fa454@nxp.com>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 27 Feb 2026 10:07:05 +0100
X-Gmail-Original-Message-ID: <CAD++jLkhH566rqkkQfWnOiAokxB8mLXw=eqrVN_pgs+dd8TkxQ@mail.gmail.com>
X-Gm-Features: AaiRm53Lbwco9BrUIdxm4d59KoLZW9tFK5jbswawEBmolXkm0y6cwkUJ5XgitnE
Message-ID: <CAD++jLkhH566rqkkQfWnOiAokxB8mLXw=eqrVN_pgs+dd8TkxQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] pinctrl: add optional .release_mux() callback
To: Frank Li <Frank.Li@nxp.com>
Cc: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, Haibo Chen <haibo.chen@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269140-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[axentia.se,kernel.org,milecki.pl,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,nxp.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,nxp.com:email]
X-Rspamd-Queue-Id: 9B8A31B4EFC
X-Rspamd-Action: no action

On Thu, Feb 26, 2026 at 12:55=E2=80=AFAM Frank Li <Frank.Li@nxp.com> wrote:

> Add an optional .release_mux() callback to the pinmux_ops.
>
> Some devices require releasing resources that were previously acquired in
> .set_mux(). Providing a dedicated .release_mux() callback allows drivers =
to
> properly clean up hardware state or associated resources when a mux
> function is no longer active.
>
> The callback is optional and does not affect existing drivers.
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Can you explain why you need this custom code for this?

Nominally pin control defines and puts the hardware into a
number of states such as:
"default"
"idle"
"sleep"
"init"

Usually (at least for silicon) what .release_mux() would to
is semantically equivalent to a transition into the "init" or
"sleep" state. And if these are not descriptive enough you can
even define a "released" state.

Is it not possible to reach the set-up of the hardware that you
are desiring by just defining such a relaxed state?

Yours,
Linus Walleij

