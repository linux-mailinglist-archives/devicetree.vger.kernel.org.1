Return-Path: <devicetree+bounces-307833-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id W9/iD46CJWplIwIAu9opvQ
	(envelope-from <devicetree+bounces-307833-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 16:39:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADF0650C44
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 16:39:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kemnade.info header.s=20220719 header.b="cvxsLRg/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307833-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307833-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=kemnade.info;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1776230028E1
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2026 14:39:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33E893AA510;
	Sun,  7 Jun 2026 14:39:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C62CB2773D8;
	Sun,  7 Jun 2026 14:39:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780843144; cv=none; b=c6HqqKC/+SKUR2/eZM215F3WF/RokPKAytcWIU+oucrZGdDAOLKutvoEFAERgtzjb14i50Sn0bXTOciYszh/c8FHtJStrZQLUcOiyg3BhWzQUNrPPGTrLKrKBs0+grGfywrav1X2Gx9ASkQecD+ozvAtQhUiRkJj+ADhRpo3QxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780843144; c=relaxed/simple;
	bh=AOxSbMUCKlmVj0R0feu1nQMLHjLgW6UaI9Z9s5pxtA0=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WMP6GoXZrvNvojBNvwQ2H8kqfsYMqu5EdGjsXQTLY2vWN/tmoEko2DcTBsJt2zsp5tu4ay4FYxTkWTdq3QVrJllevK9GcFN1uOrsjrQPT0K+Ejk5rtB/F8KD68Qu6MrB/e9gExJSeOonBhnl7MA+gJKxoQpY1pTOGFGG5QyEmss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=cvxsLRg/; arc=none smtp.client-ip=178.238.236.174
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=References:In-Reply-To:Cc:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=a3NJdCV90LMtPNvVuKHagxW6LrXuiStVGAHImHGD6+A=; b=cvxsLRg/39ya/8izifwzOr3YjE
	BywWF6BFQfh1B82RpHb2s3asmSWX/qMMihQiP0adaOIU0PICb5N0mch5OLvSMDdspL9zWTFazOaf2
	x7UIagl5b/GSJFiIM1TO9He0U+YClzUHajffayanEFtWa8JSMA5/G5/tJ/Wvk0MJaKs2BLjG3OP7C
	LMVsIF3Koz/EcMbBPyyr1VBR/qG3XwOliVjqRyiN/UqA6bMqe5xA3nJu8kFpXEcWgZf+Z3LsirKFB
	8vn+fu0TS5di2AvKAJM6GJjC5Xgvl/abRCp1HGPfF+Dlt7Oy1x8SYpO82HXIylrp6eWEUV45MuiLO
	JJ3FoHPg==;
Date: Sun, 7 Jun 2026 16:38:45 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Sen Wang <sen@ti.com>
Cc: Mark Brown <broonie@kernel.org>, Kuninori Morimoto
 <kuninori.morimoto.gx@renesas.com>, Liam Girdwood <lgirdwood@gmail.com>,
 "Rob Herring" <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, <linux-sound@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 0/2] ASoC: simple-card-utils: support system-clock-id
 DT property
Message-ID: <20260607163845.652bcc73@kemnade.info>
In-Reply-To: <20260515161358.1462453-1-sen@ti.com>
References: <20260515161358.1462453-1-sen@ti.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kemnade.info,none];
	R_DKIM_ALLOW(-0.20)[kemnade.info:s=20220719];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-307833-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sen@ti.com,m:broonie@kernel.org,m:kuninori.morimoto.gx@renesas.com,m:lgirdwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:perex@perex.cz,m:tiwai@suse.com,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andreas@kemnade.info,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kemnade.info:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andreas@kemnade.info,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,renesas.com,gmail.com,perex.cz,suse.com,vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,kemnade.info:mid,kemnade.info:from_mime,kemnade.info:dkim,ti.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2ADF0650C44

Hi,

On Fri, 15 May 2026 11:13:56 -0500
Sen Wang <sen@ti.com> wrote:

> Adding an optional, u32 system-clock-id DT property into the generic machine
> driver so clocking topology info can be exposed in DT.
> 
while having this binding would solve some of my problem. I am wondering
whether is the right approach. What about modelling the clocks involved
using the clk framework, so let some more codecs/dais be clock provider.
So things can be configured that way.
E.g. tlv320aic32x4-clk.c

Same for set_div() which is also unavailable in these generic cards.

Regards,
Andreas

> Sen Wang (2):
>   dt-bindings: sound: simple-card: add system-clock-id property
>   ASoC: simple-card-utils: support system-clock-id DT property
> 
>  Documentation/devicetree/bindings/sound/audio-graph-port.yaml |  2 +
>  Documentation/devicetree/bindings/sound/simple-card.yaml      | 10 +++++++
>  include/sound/simple_card_utils.h                              |  1 +
>  sound/soc/generic/simple-card-utils.c                         | 13 +++++----
>  4 files changed, 21 insertions(+), 5 deletions(-)
> 
> ---
> base-commit: f5ffe03e0678 (linux-next)


