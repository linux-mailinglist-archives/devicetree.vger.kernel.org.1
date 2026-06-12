Return-Path: <devicetree+bounces-311032-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pk7wG7EsLGpnMwQAu9opvQ
	(envelope-from <devicetree+bounces-311032-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 17:58:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B64CC67AA7A
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 17:58:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=oEjXRRG4;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311032-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311032-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8ED64308B23F
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 15:58:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F26493839AC;
	Fri, 12 Jun 2026 15:58:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30C71DF26E;
	Fri, 12 Jun 2026 15:58:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781279917; cv=none; b=NNZd0vL1n7FIrwZ0CFXA5FXCU3cmOVsZngtGBVYOkBrQoDZeF+gBrPyoMFwGzJGT+tCiVghSgPYIfc7FZX5O4nMtLu7l3ZL/ISy9h5eip95holBbx2xDwWoeuRrTmyXvRXGvZELBNhQh2WsikDuxBm8+GdGYJVS8p+kFPTjPCWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781279917; c=relaxed/simple;
	bh=7+X3SjJVPaTPnOi9bicKMfVUryy++bS3E4LZ0Ltw1mU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=citiFVmQjVY9yzTAKX0VqcyDc5/JDW68wZwMFgjkc6N9xonMGj9D0ts20AbDxkX8rj1ZbdfDlFA8UEMPkU7LCkjlPF3YtHoCoIVi4mUT7Xfa+Hzj5EIoNiEJoW1x3Qu3IAIZk5b26CxUYHZd/9A/B/GQpzcKBwM1lJ5BUj/rpLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEjXRRG4; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63AC71F000E9;
	Fri, 12 Jun 2026 15:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781279916;
	bh=+a5jpUAwh8fsVU0v6dEuxINafF/FO5hpGm8pw8mFSZc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=oEjXRRG4FcmjRa+T6eHXO00vZx2h7/wXzLXSm3Ey8XPBsSMbST/O9FZ2a68sXSiG3
	 S7ly83bVesEe/SSO0L8b0wNYgRX1L2w7/e+syrkNXSF9uzhtNBHfgPV2+Frzd9KjLi
	 mdshLHlw6b2S1aCi08bXKCtMiXqP7y3pmHUuzZPDKDzoiSJ8MyB306gYpXsttv5kEg
	 Tb4kOefphM1y6ZGlmUHU11OBAn1gL96ZMjoFWtjhvilMZWCYmOq+CkURPAIpJhtzmZ
	 JlXGvIQ0Dznd4dHiSkM3p707YMsQsHtCJIeuQEkZQaxcHa1Ec1+3IXDlCyKSXKD8LG
	 4Sjh2XOas3dUw==
Date: Fri, 12 Jun 2026 10:58:35 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Liam Girdwood <lgirdwood@gmail.com>, linux-sound@vger.kernel.org,
	Huacai Chen <chenhuacai@kernel.org>, Takashi Iwai <tiwai@suse.com>,
	Huacai Chen <chenhuacai@loongson.cn>, devicetree@vger.kernel.org,
	Binbin Zhou <zhoubb.aaron@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
	loongarch@lists.linux.dev, Conor Dooley <conor+dt@kernel.org>,
	Xuerui Wang <kernel@xen0n.name>
Subject: Re: [PATCH v2 3/7] ASoC: dt-bindings: loongson,ls-audio-card: Use
 common sound card
Message-ID: <178127991507.1115108.662303762612860150.robh@kernel.org>
References: <cover.1780538113.git.zhoubinbin@loongson.cn>
 <bbbcfd66b3b98713315f1af374c8da1065c8db68.1780538113.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bbbcfd66b3b98713315f1af374c8da1065c8db68.1780538113.git.zhoubinbin@loongson.cn>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311032-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:zhoubinbin@loongson.cn,m:lgirdwood@gmail.com,m:linux-sound@vger.kernel.org,m:chenhuacai@kernel.org,m:tiwai@suse.com,m:chenhuacai@loongson.cn,m:devicetree@vger.kernel.org,m:zhoubb.aaron@gmail.com,m:krzk+dt@kernel.org,m:broonie@kernel.org,m:perex@perex.cz,m:loongarch@lists.linux.dev,m:conor+dt@kernel.org,m:kernel@xen0n.name,m:zhoubbaaron@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org,suse.com,loongson.cn,perex.cz,lists.linux.dev,xen0n.name];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B64CC67AA7A


On Thu, 04 Jun 2026 10:11:23 +0800, Binbin Zhou wrote:
> Reference the common sound card properties. This allows removing the
> `model` property and directly using the common `audio-routing` property
> later on.
> 
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  .../bindings/sound/loongson,ls-audio-card.yaml        | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


