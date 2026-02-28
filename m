Return-Path: <devicetree+bounces-269531-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GIGZCUPNomkj5gQAu9opvQ
	(envelope-from <devicetree+bounces-269531-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 12:10:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D4E1C27F8
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 12:10:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C5776300C6ED
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 11:10:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF43D421F06;
	Sat, 28 Feb 2026 11:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3ERNk22"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CBA23ED133
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 11:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772277052; cv=none; b=aIOQ5CfxHxLcGCxhyyIqWF6lirC3qH6Wv4V9mmmR5jGFyE9/H4yqepNo9A0kMAymdLyWEJjd2JkvTQ5ic8yfJSQIXhdVfV39J4+SKtwc4GchIKtglgDwq8JeV1E8CDILIkRv1pTF93O3WaWWHX18j3RTdxJXf1vwUqXXJE0yOY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772277052; c=relaxed/simple;
	bh=SixLanAX28L3eVA65Z7AUlIyc6aPTHICfbbVTUGJoM0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NlxEWThM1rFnmM146i7+wRwUC/vMjO82DkFr8qbezeT8HI4TGX6yp30ukhxG+X82uwm/LXBRCTsLPuSo2hPoItdBuB+re0NA51h13t2NTxXKAlNNiy7ivK5nBPeDSJzpIGStEjz1niRo5wr4NESaILFiv52F1cCh/vxlbrvlQQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3ERNk22; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A03EEC116D0;
	Sat, 28 Feb 2026 11:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772277052;
	bh=SixLanAX28L3eVA65Z7AUlIyc6aPTHICfbbVTUGJoM0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b3ERNk22ZMaqsJjHlNTD9KmPTKx1jZGzp0/shHe0iURZGbFnck5YLGpnrFIPn3KTw
	 Zzm8rs3rHkG0t9HHaaZN4dFpWvtKf77zjlEcGGsxaVB4q10+8nZNdJXSekrgt1MpO3
	 IYxKodWXE0IjKWdFVgFG6LFD6Wen84WYhhYaFpOrSxtn4pHEY9QLjc/FjCrlaxTTu9
	 jB6XdqCGo4dqmkDZDEVgI8QmHEpgyRyrJi4X2MTE0rO2CyPLWqmHCNB8F8KVpn/Y/L
	 FxoprP83lQf77ioqSiDCKN3/CsZ7IXCVjPxwt2pGP/yJzPTolvmSqr2rynADqkOkJ+
	 Cmgxc+b8NNAbA==
Date: Sat, 28 Feb 2026 12:10:49 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Linus Walleij <linusw@kernel.org>
Cc: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 5/8] dt-bindings: arm: Add two missing Gemini devices
Message-ID: <20260228-dangerous-victorious-pheasant-88995c@quoll>
References: <20260228-gemini-dts-fixes-v1-0-0c6f6d0fb4bd@kernel.org>
 <20260228-gemini-dts-fixes-v1-5-0c6f6d0fb4bd@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260228-gemini-dts-fixes-v1-5-0c6f6d0fb4bd@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269531-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[googlemail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 43D4E1C27F8
X-Rspamd-Action: no action

On Sat, Feb 28, 2026 at 01:05:45AM +0100, Linus Walleij wrote:
> This adds the Raidsonic IB-4210-B and the Verbatim
> S08V1901-D1 that were missing from the bindings.
> 
> Signed-off-by: Linus Walleij <linusw@kernel.org>
> ---
>  Documentation/devicetree/bindings/arm/gemini.yaml | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/gemini.yaml b/Documentation/devicetree/bindings/arm/gemini.yaml
> index fc092962ab56..dfb11244b57e 100644
> --- a/Documentation/devicetree/bindings/arm/gemini.yaml
> +++ b/Documentation/devicetree/bindings/arm/gemini.yaml
> @@ -55,6 +55,11 @@ properties:
>            - const: itian,sq201
>            - const: cortina,gemini
>  
> +      - description: Raidsonic NAS IB-4210-B
> +        items:
> +          - const: raidsonic,ib-4210-b

git grep for this and other gives me 0, so how could they miss from the
bindings?

Best regards,
Krzysztof


