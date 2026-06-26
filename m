Return-Path: <devicetree+bounces-316000-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RBf0C9s6PmpfBwkAu9opvQ
	(envelope-from <devicetree+bounces-316000-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 10:39:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5FA6CB6DF
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 10:39:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=FKPcXxJm;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316000-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-316000-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 481AF3008890
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 08:39:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6B313E3C4C;
	Fri, 26 Jun 2026 08:39:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E09F8314A8E;
	Fri, 26 Jun 2026 08:39:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782463181; cv=none; b=sXERozvGf3LIO/0c6pkMxRmk3lZS/ekHdWpFLYjuY23CkeRhoGh3xG5o4zhGi/Jn08l+BJTXMLotHHXsJHXKmoUHi5ZXgZ5QjG2CksWLCcoIJMlzJkPxCDzn1N23Lz4ZwH5tqJL4SLiaP2hg2REDZ7FoAQ8fqiS/Z5Iy/YAgNY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782463181; c=relaxed/simple;
	bh=tbBQ5ptCm4gH95Hh4mvB9SgM97xSJbTfflHwb3puDBc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U4wp5/9/ibZuC+uVsGYSDoQKeU+g5YBEIt4geWeceIvWhN/8uKdtTdYjjiux1oNB32UJJ5J2dKQgpDHT42k93sHC0Xz98p88YPPk9gpILrD0y9+IBzCN5BnCHuc0IqCMidtd3Ij2EwkwdzwjiXvnxJlpQ0/TI/p6EQ+UR7p3vIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FKPcXxJm; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79F8A1F000E9;
	Fri, 26 Jun 2026 08:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782463180;
	bh=bVCCvdzUHBT0cmeA/8V8C8wlkIPEMkra9Xn6Q3kjkPg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=FKPcXxJmtiJpxTsMZhv6t7P3D3G644HGMWcJ2ocBXKvJ1vYwSJA6MoYx14/QQiZZq
	 Iez8ZUwmIp8i+BRCHbYA5l/ccCJar8rkSDFDgYhB0E9LSCWku8kzI2553/09mqeel0
	 51y3jTm5lq4HqNAQ96+DZYW8UGoe4GQ3iVTOcVTIjTu8h7eB9/8qlV23qJWhMR+p7s
	 EmjBZNbiItOVhwCq1mshjI35h2sHeeLW77iCsjkGXgd05moYmd1uMV13DE6CAagKq1
	 4y04QGRAWYvr4M4SjLR/2nLKtaUVF9BLcj6A+UUZpPH3GMOQW8Z5RQgzLw1FDl5WyH
	 5NnUVudYhUbtw==
Date: Fri, 26 Jun 2026 10:39:36 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, 
	Huacai Chen <chenhuacai@loongson.cn>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Keguang Zhang <keguang.zhang@gmail.com>, Huacai Chen <chenhuacai@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-sound@vger.kernel.org
Subject: Re: [PATCH v3 5/9] ASoC: dt-bindings: loongson,ls-audio-card: Add
 ctcisz forever pi compatible
Message-ID: <20260626-sympathetic-strategic-limpet-8daa16@quoll>
References: <cover.1782439646.git.zhoubinbin@loongson.cn>
 <183d809cd51874bcb78743273e4b7617f120fedb.1782439646.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <183d809cd51874bcb78743273e4b7617f120fedb.1782439646.git.zhoubinbin@loongson.cn>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:zhoubinbin@loongson.cn,m:zhoubb.aaron@gmail.com,m:chenhuacai@loongson.cn,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:perex@perex.cz,m:tiwai@suse.com,m:keguang.zhang@gmail.com,m:chenhuacai@kernel.org,m:kernel@xen0n.name,m:loongarch@lists.linux.dev,m:devicetree@vger.kernel.org,m:linux-sound@vger.kernel.org,m:zhoubbaaron@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:keguangzhang@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316000-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,loongson.cn,kernel.org,perex.cz,suse.com,xen0n.name,lists.linux.dev,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:email,vger.kernel.org:from_smtp,quoll:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8B5FA6CB6DF

On Fri, Jun 26, 2026 at 10:27:26AM +0800, Binbin Zhou wrote:
> Add a new compatible string `loongson,ls2k0300-forever-pi-audio-card`
> for the audio card on Loongson-2K0300 ctcisz forever pi SoC. It uses a
> different DAI format compared to existing Loongson platforms.
> 
> The existing "loongson,ls-audio-card" remains valid for LS7A,
> Loongson-2K1000 and Loongson-2K2000.
> 
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  .../devicetree/bindings/sound/loongson,ls-audio-card.yaml     | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


