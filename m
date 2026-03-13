Return-Path: <devicetree+bounces-275233-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JyXErwOtGlvfwAAu9opvQ
	(envelope-from <devicetree+bounces-275233-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:18:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA402839A8
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:18:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 07C2032240D8
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:18:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E4153176EE;
	Fri, 13 Mar 2026 13:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pq2UX4Pd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B99630E831;
	Fri, 13 Mar 2026 13:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773407890; cv=none; b=Ud/+qkVlYngbwLpH5wN3lPD6N3x0OH6YMZhoO+1w4Mp0/5if9JddFeIhQshdKQOjoRpWyE9VwXDnZ1jVqKLIoYnE8mddDZpFWGc98lPYgs3MM3Zmr47wrWez8tH+QrNWba3NmKfqS3m51N0VdvORq+E4bJEeQ9LRvokbYiKNcXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773407890; c=relaxed/simple;
	bh=uJvERdL4GYTSwBUxDMpbh2DSbv6DUKGZudboXFZXoYo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YTKKZ+9Ae/JJ8NKQ4+NYyRslY/M4jxMrYY5Phc8I40OGz3Vc46BQRAG8JhAjbFAwhdqnxVozY9NZ9/2WeXJDYLEJismUtuPMjY08dIGJDTjolJNJ653GV0P6M5LxgP+g1+2lbpt+p0Q3RnfCRoCTfq7vcA/t3SmHV2BDSa3If/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pq2UX4Pd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8533AC19421;
	Fri, 13 Mar 2026 13:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773407890;
	bh=uJvERdL4GYTSwBUxDMpbh2DSbv6DUKGZudboXFZXoYo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pq2UX4PdVQO/3pCtRiAhsnO7AuuZf2wBVmbZWlvbFgi4vwB4APUMuloxI0qSa2qj9
	 DseaHC6HlYEEWVhO5cWjnRFrAHEgjMh2dJRzfJCTeR2z6P4R1xj4cGRcboTw9//EsN
	 ERZlVhYuiUieungdF10MTqKEKVlCH7JNDmJzTl6mLydNLqPv96eHgHTej8HK05HNVH
	 ixzudl8jw/DqqC+W9AijQW5hUXYGPpxJxeZrEkt+Datxr1RWjP4v1BW1XUkDxcWJDC
	 zVPCtlgKGbwnSDup+pQaDQuyLxCKFsLZB0TnujttEXwng8iQy8fYeGqWBNKKf8Fpq4
	 cPrGdAyfZQDsg==
Date: Fri, 13 Mar 2026 14:18:07 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, 
	Huacai Chen <chenhuacai@loongson.cn>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-sound@vger.kernel.org
Subject: Re: [PATCH 5/6] ASoC: dt-bindings: loongson,ls2k1000-i2s: Document
 Loongson-2K0300 compatible
Message-ID: <20260313-glorious-nostalgic-gopher-df38b1@quoll>
References: <cover.1773107475.git.zhoubinbin@loongson.cn>
 <600bfea91c1f14f089b2f7677578cd8690412fac.1773107475.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <600bfea91c1f14f089b2f7677578cd8690412fac.1773107475.git.zhoubinbin@loongson.cn>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275233-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,loongson.cn,kernel.org,perex.cz,suse.com,xen0n.name,lists.linux.dev,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,loongson.cn:email]
X-Rspamd-Queue-Id: 9AA402839A8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 02:37:47PM +0800, Binbin Zhou wrote:
> Add "loongson,ls2k0300-i2s" dedicated compatible to represent the I2S
> interface of the Loongson-2K0300 chip.
> 
> The hardware integration of the Loongson-2K0300 I2S interface differs
> significantly from that of the Loongson-2K1000. Specifically, while both
> utilize external DMA controllers, the Loongson-2K0300 configures DMA
> channel routing via the `dmas` property, whereas the Loongson-2K1000
> requires additional register.
> 
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  .../bindings/sound/loongson,ls2k1000-i2s.yaml | 22 ++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


