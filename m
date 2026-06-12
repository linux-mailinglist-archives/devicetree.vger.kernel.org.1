Return-Path: <devicetree+bounces-311014-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id C9m6Bc8hLGrVLwQAu9opvQ
	(envelope-from <devicetree+bounces-311014-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 17:12:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D03B67A6D4
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 17:12:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=FgnGNNKn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311014-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311014-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 10F3E30117AF
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 15:12:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A29E83655C5;
	Fri, 12 Jun 2026 15:12:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A83CA946A;
	Fri, 12 Jun 2026 15:12:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781277128; cv=none; b=NvjOVhAdkoxRRTqEY5ijQlHVnmNnUO+pDwX9wRxpr6H3I/vJLxFDPA+t5XMJvRWcnZYRvTZ3kOBLVIg2x+zEC/vLCAjBa64ic5+C5wm1VnF3iQPT/4IS21j/QXxrTp4FKbAL+fNSPWcqbbuJctOptgTahJ1V1+hlPLP9IP63CqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781277128; c=relaxed/simple;
	bh=wY3mfMYzOhc0v/yjLUAD4IypuwjUeOJQyyb6OVha6gw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OmLnAbXL4u0aae19HjFH0uZNRvKOBCSsl0hs678spZRh40StnT3nYnvL3afocJnrbtdHqootdB4oUt1t1CJvDD1I5TQd/kp19AJfWPuffBL7Qeh63OKsKhrIAS0/lqOqtrnQrxnPOFkAnPXFJL6WuFceyvVRdxoFmWjlrUr04NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FgnGNNKn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A8721F000E9;
	Fri, 12 Jun 2026 15:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781277127;
	bh=Sl+jzIVY65x8T0Pt2I7VlkDlhCHiRh/X8cMGKKSNoEk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=FgnGNNKn9s23sVBUqi+FNBIVrp421ZfG9YP4QYf0TpFAoU/OlFoN49seTeUlgsjcI
	 MFJaN/+4bQhjtNySxXNi3WBVvylt3D0q7OnDJWP3KG71lBAmNXOih94Q+g+NzkrbJn
	 RpmlRjororN/hCTcX+zubWuXfcLXF4MYFRl+HNNRNaxvDsUuAOIHu3TyhcgVIHegEa
	 QFaNaH8JlRrS5zM5uDrxTzjq93e+8533nyBeeZl9y5h77bFZT/gqn/SShGYfPqjtx5
	 Auvu8CttajYHsdtJV1yO/ZxlEji9coZlFoTgjfKMK02vx3VZpYaZloAHkiE/qVs+N9
	 bj82rZjKoSFRw==
Date: Fri, 12 Jun 2026 10:12:06 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: phucduc.bui@gmail.com
Cc: Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-sound@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, Takashi Iwai <tiwai@suse.com>
Subject: Re: [PATCH v2 1/5] ASoC: dt-bindings: rockchip-spdif: Correct SPDIF
 clock descriptions
Message-ID: <178127712594.1038565.14609439013063781178.robh@kernel.org>
References: <20260602101608.45137-1-phucduc.bui@gmail.com>
 <20260602101608.45137-2-phucduc.bui@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260602101608.45137-2-phucduc.bui@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311014-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:phucduc.bui@gmail.com,m:broonie@kernel.org,m:linux-kernel@vger.kernel.org,m:heiko@sntech.de,m:krzk+dt@kernel.org,m:linux-sound@vger.kernel.org,m:lgirdwood@gmail.com,m:perex@perex.cz,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:tiwai@suse.com,m:phucducbui@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,sntech.de,gmail.com,perex.cz,lists.infradead.org,suse.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0D03B67A6D4


On Tue, 02 Jun 2026 17:16:04 +0700, phucduc.bui@gmail.com wrote:
> From: bui duc phuc <phucduc.bui@gmail.com>
> 
> Update the binding descriptions to match the actual clock usage, where
> 'mclk' is the controller clock and 'hclk' is the bus clock.
> 
> Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
> ---
> 
> Changes in v2:
>   - Update commit message based on Krzysztof's review
> 
>  Documentation/devicetree/bindings/sound/rockchip-spdif.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


