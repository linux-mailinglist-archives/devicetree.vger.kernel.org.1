Return-Path: <devicetree+bounces-293110-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YBxvD732+WlYFgMAu9opvQ
	(envelope-from <devicetree+bounces-293110-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 15:55:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9261A4CEEAF
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 15:55:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B4A3E3024174
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 13:52:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B75A847ECEB;
	Tue,  5 May 2026 13:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzd+lenk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91D9947DFAE
	for <devicetree@vger.kernel.org>; Tue,  5 May 2026 13:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777989172; cv=none; b=bCIdZmxFOQ6UfaE6eQYH1t1lcukg2RWnCdC9OK2fDtKcnDQ9y4y3VHAhomcJdWhAuNO6INw9SGq74NpViirY37bPPjqzOs4wE/El/p3z1DpyqM7vxjDkVUcs2R97ZiBhh23ywv2FgYcDFu8YKqs5FZ5o/bXQZ6HLVQjj1FS/3OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777989172; c=relaxed/simple;
	bh=16crbpE+fo9e6NqCvKQRKG+iiqH3XIXLq7L/8lqbgiU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=s/DQLgKbSSwvnoMBnD/AwytobWJJiii2GsuzP7fb9a0eYBL1f+owjoPvyNLbnj1ZXYOl5pNsVS454oUJtCVscExzyV9UApVLEfY2zBrrEQ7tF9yDGxk52hnLPGEkmiOh1kmX1bLwTQ13XPdGfMPDBIeC3n39DTgZQ/o6r1Nqliw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzd+lenk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57068C2BCFC
	for <devicetree@vger.kernel.org>; Tue,  5 May 2026 13:52:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777989172;
	bh=16crbpE+fo9e6NqCvKQRKG+iiqH3XIXLq7L/8lqbgiU=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=hzd+lenkIMEVcvFwN6XXY/tuY5oA+9X322v8bFhDINbThAWerGAdEQW+ldLKDn3FP
	 D1e7cP/NwtJw+pjK3hpjKGo96j3HK4eOJTZ9GFbgfsgjXhjkuLQ10PRq4cxnBuxSR8
	 rEfBJT4nidKWMISjVu875veccvSMvxbXz2inBZCc0TnqQFYmAV88ahSLMhrO/kX/am
	 FSTXsArL6p58mCna/BtGv3YDGYOrDHUeUoVWx37rIfvxAS6KGyXdTk+psiPRzqZQ+u
	 pbU9o38l/axINVOX8TOA13UDEgYIqJjGsEVJw8L+TAVtJS2p9sYA6ANaavdlzA+lYF
	 F5spwNTB2ADjA==
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-3870778358aso37073411fa.1
        for <devicetree@vger.kernel.org>; Tue, 05 May 2026 06:52:52 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+N+qN2SFhQxxUndlxMzuB7aB7LrxkriTkLcp1kRUtFozOOTkXwHrhnSzEMuS7MYCp42y8kp2mRPlOm@vger.kernel.org
X-Gm-Message-State: AOJu0YzvMQxBJzZ7WLEHf3VXOwaG7NWWmBmfYNj+9fELlq1IVZOmGQHw
	AanJeYuEIAg6Zz2nYUtITtrQsS78edUMcK2yHib/pUfvTGJRx106YBbNqUK3ETIoeVxXJSoUpO9
	bz9j172UuD6Z37qTXXza4rpjcxROj6LI=
X-Received: by 2002:a2e:b0f9:0:b0:393:975b:5634 with SMTP id
 38308e7fff4ca-393975b5741mr29824471fa.11.1777989170742; Tue, 05 May 2026
 06:52:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260504050245.646078-1-iuncuim@gmail.com> <20260504050245.646078-3-iuncuim@gmail.com>
In-Reply-To: <20260504050245.646078-3-iuncuim@gmail.com>
Reply-To: wens@kernel.org
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 5 May 2026 21:52:38 +0800
X-Gmail-Original-Message-ID: <CAGb2v675Pw3a=8VkNc_ztYtQcCdezG9PrntXLHO8YgGx5bJjxQ@mail.gmail.com>
X-Gm-Features: AVHnY4KSBoJLk7nvV-NLPC9NRZBgg446WsQhRQL5baEYgZM1ln_FGyUdU8wzQSg
Message-ID: <CAGb2v675Pw3a=8VkNc_ztYtQcCdezG9PrntXLHO8YgGx5bJjxQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/5] thermal/drivers/sun8i: replace devm_reset_control_get
 to devm_reset_control_get_shared_deasserted
To: Mikhail Kalashnikov <iuncuim@gmail.com>
Cc: Vasily Khoruzhick <anarsoul@gmail.com>, Yangtao Li <tiny.windzz@gmail.com>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 9261A4CEEAF
X-Rspamd-Action: no action
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-293110-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,intel.com,arm.com,sholland.org,pengutronix.de,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[wens@kernel.org];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,csie.org:email]

On Mon, May 4, 2026 at 1:03=E2=80=AFPM Mikhail Kalashnikov <iuncuim@gmail.c=
om> wrote:
>
> The A523 processor has two temperature controllers, but they share a
> common reset line. Make it shared with the shared variant of
> devm_reset_control_get(), and also simplify the driver by switching to
> devm_reset_control_get_shared_deasserted().
>
> Signed-off-by: Mikhail Kalashnikov <iuncuim@gmail.com>

> Reviewed-by: Chen-Yu Tsai <wens@csie.org>

Update to:

Reviewed-by: Chen-Yu Tsai <wens@kernel.org>

