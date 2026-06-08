Return-Path: <devicetree+bounces-308559-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9CAhD5RMJ2o5ugIAu9opvQ
	(envelope-from <devicetree+bounces-308559-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 01:13:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EF165B230
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 01:13:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=m9BA+WSj;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308559-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308559-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 26BE9301457D
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 23:13:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACCF23A4F26;
	Mon,  8 Jun 2026 23:13:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC94F37267A
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 23:13:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780960399; cv=none; b=TkFSeb5jgEimUShYAxOCf4x1eQFBUCPJMGeKa9UCBKliYVE0CMLx/TLHXi+aULs8p1TaC31iywZBpviRtonrg3E024/mJRjZGshyP6Mkpo/TiI9jfv8yYLiisLJAD96EIWC2svh2O4irm4rIo9ZQWzmhD+f7fRcr409pIhHtc3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780960399; c=relaxed/simple;
	bh=TBoN2UJwU0BX4/ums+wfEePcn2SshmSjcitmDBT3oX4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HInwKpeymL+ciTrxEUIviOVMW7RZFbp3pxv7IDmMDfG08ufmwiQWClzR5hnnEz9Xsx8QBG5ZU77wEowi8jaopPfeiRT+vK1zoeDal8aIVt9n+QI+4+2X6T44I5QOh/uaV+2qjPlASh+fwAc8CfY/vQE8UqkJbAH/d+6/l1mTVVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9BA+WSj; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68ABC1F00898
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 23:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780960398;
	bh=TBoN2UJwU0BX4/ums+wfEePcn2SshmSjcitmDBT3oX4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=m9BA+WSjPvw67wqWiL9vbtrN+kDt58rcPs0luMTEZk5IzOs59MguNCBWUY8ej6lHP
	 vpyTbozR8Bu/kn6L8xlEEJh69g9aCfCu5etsKW47akTMAcyFvp03j3cJqvK9y82G2K
	 4UZY2GAeh7wb7GiHfg0rdJpF4Hx839em5k0xnGwWF07ox5QZib2jb1jQXk7Dy/y0Wu
	 LMP+ilhsH/BtxI9Xvs2rh4tmqcYEfpE8k6Evvdu1shQi7hOz4WwXWmj7afwFTD9XK2
	 oCVfJM2XZBFNOtrqg2B0XUoOc0ya4AnM6MufnzZCdCEy6FnP0l5x46n8acidSht1tE
	 FBNGgIs9D+grQ==
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5aa88b4f792so3870329e87.1
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 16:13:18 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/WegRipEbI4GuRsSXBAak69ebudmeiad1+CY0Qjp2ONtFwxsv5LhfUHsBPeoj7AMNLMpY1XefImH7F@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7PlJAvnCRHubZ9Ic2pXk8pK/q6W+FcMfy3QK5mQa5XiGQVH2T
	1+YZkVSt0WRYPYZBDdxHR9WaRsSQMcZup/SCFabTMkRdbzOzb9qs8FpIsW0SLzVcddr3KntIDnS
	eImEmcC14cPaz1ExWhLfejPnEZjEN4ww=
X-Received: by 2002:a05:6512:6093:b0:5aa:7005:125c with SMTP id
 2adb3069b0e04-5aa8866c7c5mr4118153e87.8.1780960397216; Mon, 08 Jun 2026
 16:13:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260608-ks8995-to-ksz8-v6-3-d91eb43edcc5@kernel.org> <20260608224213.C6C221F00893@smtp.kernel.org>
In-Reply-To: <20260608224213.C6C221F00893@smtp.kernel.org>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 9 Jun 2026 01:13:05 +0200
X-Gmail-Original-Message-ID: <CAD++jLkWZ5o7-P6Ju7WsFpc==JsyG67bX3MFACw+MdPD73U5bw@mail.gmail.com>
X-Gm-Features: AVVi8CfncQFjJPKP7-0RhQ36yDJsgC7yxNCRxag8FPChj9f2T-6Pk3ldIhzUrZo
Message-ID: <CAD++jLkWZ5o7-P6Ju7WsFpc==JsyG67bX3MFACw+MdPD73U5bw@mail.gmail.com>
Subject: Re: [PATCH net-next v6 3/5] net: dsa: tag_ks8995: Add the KS8995 tag handling
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308559-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 78EF165B230

On Tue, Jun 9, 2026 at 12:42=E2=80=AFAM <sashiko-bot@kernel.org> wrote:

> Thank you for your contribution! Sashiko AI review found 2 potential issu=
e(s) to consider:
> - [Critical] Double free of the socket buffer on the error path in `ks899=
5_rcv()` when `skb_vlan_untag()` fails.
> - [High] Unhandled hardware-accelerated VLAN tags bypass clearing and bre=
ak the required DSA tagging order on transmission.

No.

This is how other taggers do it.

If something is wrong it points to a bigger problem.

Yours,
Linus Walleij

