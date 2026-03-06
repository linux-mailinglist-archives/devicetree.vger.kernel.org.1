Return-Path: <devicetree+bounces-271910-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WGpTK1eUqmkkUAEAu9opvQ
	(envelope-from <devicetree+bounces-271910-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:46:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCDB21D4D9
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:46:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5496A30225BB
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 08:45:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF4DA2D2390;
	Fri,  6 Mar 2026 08:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJdame2/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B657266B72;
	Fri,  6 Mar 2026 08:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772786713; cv=none; b=GbMOVjHD1tcbw/GSa3Ne2fxNYH8jwz060j1d6b5qLFjfTr+F/Manjr/AM98ESXhxGIB7YvBTiBk0ktX+Q1kZ7Aeg+6nSiGY5BVTraPTAkPdf2CBAH8MgNsxKUDqFfiYMVjy2SCuSIACvigNBDIf4CJM7MQbewm5uMpM9ZHeHN6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772786713; c=relaxed/simple;
	bh=xDpS7E9mTWjhtIwUYMgTXCTt+wHEc1BFGf+VVsdD1lU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iLdwdAmHa6TzTWdxAP2ihru6E+CkKeqDPVYhJezk8oAvxM2JV/wuW0b2wDRT0o98g2mv2M7as9L0/d6uRdjitjRPD6DhlSHHIZBtdl39b28AmV2kNoVd1Xu/Nt9lCEnN6arfWMnNpy6tCNr8j/KyWyMxc26KT8vPgOx3YbhN5kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJdame2/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A931C4CEF7;
	Fri,  6 Mar 2026 08:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772786713;
	bh=xDpS7E9mTWjhtIwUYMgTXCTt+wHEc1BFGf+VVsdD1lU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rJdame2/emJrCIivulXkdE3s+/btMsDNwil+GEaLS2cmx+2r7OiBel0Gj90oU5cB+
	 6xDw/2eQLN23jsHPK7fAlz+f0y57K7a/D5jXI/NC7z+T6XXcocILfT1Ts3tBD+ZJko
	 ijowZzmOH0J/KTi0mhp7R0IoYVJuRYKfHYQagnMrtnAmEEDuqlnZLwNjNSzee1+ngo
	 3Fe0V0dBMskdTJH3QrCC7h0u7/410SAfpfGGb8gc05r0NfCEVl6P3zZEUZGCFQ1Knl
	 RsL2PpPGpPUq0obgrUca5a/OiQiYS+E2Erxr0FwJSP/wxAtobVS3KafB+H7IrEKVXr
	 w2woqcojCaFTw==
Date: Fri, 6 Mar 2026 09:45:10 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ray Jui <ray.jui@broadcom.com>
Cc: Lee Yongjun <jun85566@gmail.com>, ulf.hansson@linaro.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, rjui@broadcom.com, 
	sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com, nsaenz@kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mmc: brcm,iproc-sdhci: allow dma-coherent
 property
Message-ID: <20260306-tactful-asparagus-cat-b77853@quoll>
References: <20260305234703.38490-1-jun85566@gmail.com>
 <CAJ8Y1dTJ5yNPP8BN46BfDdLAvuWxW+OrZ+P538Bp9+3_6XankA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAJ8Y1dTJ5yNPP8BN46BfDdLAvuWxW+OrZ+P538Bp9+3_6XankA@mail.gmail.com>
X-Rspamd-Queue-Id: AFCDB21D4D9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271910-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,linaro.org,kernel.org,broadcom.com,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[3.245.164.48:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[3.245.125.32:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Thu, Mar 05, 2026 at 04:03:48PM -0800, Ray Jui wrote:
> On Thu, Mar 5, 2026 at 3:47=E2=80=AFPM Lee Yongjun <jun85566@gmail.com> w=
rote:
>=20
> > The Broadcom iProc SDHCI controller supports DMA, but its binding
> > schema does not allow the 'dma-coherent' property.
> >
> > As a result, dtbs_check reports the following validation errors
> > on the Northstar2 SoC:
> >
> >   mmc@66420000 (brcm,sdhci-iproc-cygnus): Unevaluated properties
> >   are not allowed ('dma-coherent' was unexpected)
> >   mmc@66430000 (brcm,sdhci-iproc-cygnus): Unevaluated properties
> >   are not allowed ('dma-coherent' was unexpected)
> >
> > Allow the 'dma-coherent' property in the schema to fix the validation
> > errors and accurately reflect the hardware capability.
> >
> > Signed-off-by: Lee Yongjun <jun85566@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml
> > b/Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml
> > index 2f63f2cdeb71..579e44843404 100644
> > --- a/Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml
> > +++ b/Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml
> > @@ -38,6 +38,8 @@ properties:
> >      type: boolean
> >      description: Specifies that controller should use auto CMD12
> >
> > +  dma-coherent: true
> > +
> >
>=20
> Yeah for Broadcom iProc SDHCI on ARM64 platforms (including NS2), cache
> coherent DMA is supported (as opposed to other 32-bit based ARM platforms=
).
>=20
> Change looks good to me. Thanks!

Just open the file before giving blanket reviews or how are you exactly
reviewing without knowing what is there? This was already fixed and
this patch is obviously wrong.

Best regards,
Krzysztof


