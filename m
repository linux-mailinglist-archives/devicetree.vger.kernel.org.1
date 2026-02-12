Return-Path: <devicetree+bounces-265041-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KIyXGLS6jWl96AAAu9opvQ
	(envelope-from <devicetree+bounces-265041-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:34:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B394A12D097
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:34:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C8587303A8E1
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:34:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E7552E543B;
	Thu, 12 Feb 2026 11:34:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkUhZ/ph"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487631A58D;
	Thu, 12 Feb 2026 11:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770896047; cv=none; b=GtZF/1/zyDvygHm9EgJbZ6Q+AZpkdQYtn34RzV9irPeuDCmccCelshldsz/IapFOr6fdpH06GC0Ao8GpQPcWnkHBodvNhtcwvjIUyB1SAigKmkbLRPFTP+IRYCl6wPyllcVhmm1zZECAmw3zYRwOS3pxeAeIKTBBo10iduIKD3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770896047; c=relaxed/simple;
	bh=jateon4Aiqe0KKjigwVbefTRycI6oGqG8zKuLU/8HSY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fQDZi++tsEudPXeaS4NUcemioWZwaKu2O4/kaTfPNg2J0uB0VXDniT66q/qndiajpQYlR3HtxpdQOwDqvlxHA8wOFGu4OnoS+a5p3kINOUTeZozO04SBwvWsCwjmp4awzksTvtJOVBpisdZbuejnkx9jAHea8SnORNyOdMbl/co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkUhZ/ph; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35DD3C16AAE;
	Thu, 12 Feb 2026 11:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770896046;
	bh=jateon4Aiqe0KKjigwVbefTRycI6oGqG8zKuLU/8HSY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mkUhZ/phkSFLWbwvlQh+Erq2H7VuaxJhJvoHaDGC7Nc/ks55jZzA57kk5Ak/O9gZ9
	 yyU5o1xK40koNXCPf5etJRCzXLm+2Ut8V6zrDkSIwqs3ND46ywMwfYIFLCSt3sJM79
	 Vft5jupK9CCCNfcztRsVRnvJaRwV7bv1oVlPoho59qJ026c0vaywLpd73qIZv+mn22
	 ucuLt8YsSPkFcKu6HurPeCHPV/iIXkWLo+o0ec+SuFGbCHH08W1H11x9yyDI/GFwNI
	 P1GlvWaacLp/z7QXmiEfpK1GRnnuRddjxl6OpfZvDcWjFoXlJTeeC/I72v5dph6ykA
	 hk/CSpMwHurMw==
Date: Thu, 12 Feb 2026 12:34:04 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Weidong Wang <wangweidong.a@awinic.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexandre Ferrieux <alexandre.ferrieux@orange.com>, Bhushan Shah <bhushan.shah@machinesoul.in>, 
	Bharadwaj Raju <bharadwaj.raju@machinesoul.in>, ~postmarketos/upstreaming@lists.sr.ht, 
	phone-devel@vger.kernel.org, linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3] ASoC: dt-bindings: awinic,aw88395: Document
 firmware-name property
Message-ID: <20260212-passionate-wallaby-of-psychology-b7fa43@quoll>
References: <20260211-aw88261-fwname-v1-0-e24e833a019d@fairphone.com>
 <20260211-aw88261-fwname-v1-2-e24e833a019d@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260211-aw88261-fwname-v1-2-e24e833a019d@fairphone.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265041-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,perex.cz,suse.com,awinic.com,orange.com,machinesoul.in,lists.sr.ht,vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,fairphone.com:email]
X-Rspamd-Queue-Id: B394A12D097
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 11:27:33AM +0100, Luca Weiss wrote:
> Since the aw88261_acf.bin file appears to be device-specific, add a
> firmware-name property so that devicetree users can point to a
> device-specific path to not conflict with other devices that might also
> ship a aw88261_acf.bin.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  Documentation/devicetree/bindings/sound/awinic,aw88395.yaml | 4 ++++
>  1 file changed, 4 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


