Return-Path: <devicetree+bounces-273706-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GCyRJZl0sGnJjQIAu9opvQ
	(envelope-from <devicetree+bounces-273706-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 20:44:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F5F2571A4
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 20:44:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 854B1303A243
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 19:44:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 997B8223328;
	Tue, 10 Mar 2026 19:44:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbQ9T1br"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75A8A349B15
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 19:44:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773171855; cv=none; b=SYR7iU03tZG94MmjHTBiCPNfj1PZ9Y+44ktlxTxUMy/Nn14t9hyf+uCdDsZMxoCRa/nnHHIqrmnLljvLfPco/nYppZDiwoZ7TkM613orHjp7A4sSj0eEoKHt6w/cEri5k1doE5fsFzKRJNCWtDIJf/TGYdECO1Mu3SCi/1lCsOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773171855; c=relaxed/simple;
	bh=6gYqmZjlIbK+gPex3tBu/8cgozPF06E1IvkrFktqKlI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PShU+OPb0xg4e4MavxdciWa6yHOz0AFS/BvFVe6G0DJ4QbL+dGzQVJVi9r5pM4ufwdMh9EtOtkMlTkTU7qV9wenYrsHXN2Th7XoDx5PwsIW1BZFjiSGyKhuv1k1HZ2qPGIlGXNVFG+u9vtLblKgUf8aK4MYXjq8rC6zs1U+cP+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbQ9T1br; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AA78C2BCB0
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 19:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773171855;
	bh=6gYqmZjlIbK+gPex3tBu/8cgozPF06E1IvkrFktqKlI=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=nbQ9T1brX9pJKz/vtQvzXAHLIkpTRia1JMbtBRynw8i66J8Dei8l3IqWHz8dSITHw
	 ri0b/ikLIuh6Ob4ShoqE62TspoBVlMbSueThvUXz9fL/PpRxIVDV5Z7p/G8XblbWjI
	 KqjTca6LrNli4ZHBkzQEEUtKetGu/CWsaJy6blSPJPmt8ocI3uK4J/Z8opAlSdo0jp
	 X7BcVfkAhksgUaydIxDCgVYbMBYhU2KhaXT/g+TEpSTqyRRY21T6tc+EaJ80LHs1Mi
	 IPgpNeIT1PVpIt7F5vfvra3yj66lB2P0bIsvZIEaJoG/93rJ5xAZn+7GIs5QoqxTWN
	 ypt5XRGDz6WqA==
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-38a23cf08e0so80319031fa.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 12:44:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVFeOFwsCNDlxZZaQvjINaZRWHaxb9iK/ZC7YwfVqmR99QBOEheq1dhIBhxatjLksLiL3y5Ws3dwqFB@vger.kernel.org
X-Gm-Message-State: AOJu0YxFBUd/fuM/utPb7sUDypVDNnM3U3x38kaH+CJ7qikKZtiAc6pi
	/DpLATn7Rgog+ibDt7+EVUqNE/j8sL9lCZrRfoPYPeu+QUKR1QTi0dfxK0OYVFZA/xEmBUTrIvh
	h7i8V/+yczBeKH+MqRsRgMNEUZlaNUM4=
X-Received: by 2002:a2e:8804:0:b0:38a:29e9:d29f with SMTP id
 38308e7fff4ca-38a40d6c579mr38932071fa.35.1773171853511; Tue, 10 Mar 2026
 12:44:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260302153559.3199783-1-wens@kernel.org> <177317166704.379398.1719490251066452420.b4-ty@kernel.org>
 <f3ed7b81-4e43-4baa-8a56-b18fa7f56436@sirena.org.uk>
In-Reply-To: <f3ed7b81-4e43-4baa-8a56-b18fa7f56436@sirena.org.uk>
Reply-To: wens@kernel.org
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 11 Mar 2026 03:44:01 +0800
X-Gmail-Original-Message-ID: <CAGb2v65TyEkirWpfynKnSCiuOAyTW1FZQyXncnTFEHGGOQr_Fw@mail.gmail.com>
X-Gm-Features: AaiRm51nLv5COwibdiI9vPOV_lAA38Sg7w2SopLeh4Y8wY_dnKu78qEnGgK1HgI
Message-ID: <CAGb2v65TyEkirWpfynKnSCiuOAyTW1FZQyXncnTFEHGGOQr_Fw@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] arm64: allwinner: sun55i-t527: avaota-a1: Add SPI NAND
To: Mark Brown <broonie@kernel.org>
Cc: Jernej Skrabec <jernej@kernel.org>, Samuel Holland <samuel@sholland.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 14F5F2571A4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273706-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[wens@kernel.org];
	RCVD_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Wed, Mar 11, 2026 at 3:42=E2=80=AFAM Mark Brown <broonie@kernel.org> wro=
te:
>
> On Wed, Mar 11, 2026 at 03:41:07AM +0800, Chen-Yu Tsai wrote:
>
> > [1/3] spi: dt-bindings: sun6i: Allow Dual SPI and Quad SPI for newer So=
Cs
> >       commit: e2f93f45d38f7b6dacb44203cfc7bb5d7e287b8e
>
> I'd have expected to take this one?

Normally you merge patches pretty quickly, so I thought maybe you weren't
going to take this one.

I can back it out if you want to take it through the SPI tree.


Thanks
ChenYu

