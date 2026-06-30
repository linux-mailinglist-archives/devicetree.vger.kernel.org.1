Return-Path: <devicetree+bounces-317426-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qlQ2IHJmQ2qYXwoAu9opvQ
	(envelope-from <devicetree+bounces-317426-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 08:47:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BF86E0DDC
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 08:47:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Zo82KfFn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317426-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317426-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AD101309B2E0
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 06:41:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1C93367293;
	Tue, 30 Jun 2026 06:40:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1383291C10;
	Tue, 30 Jun 2026 06:40:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782801616; cv=none; b=q102Y7x/C/NnuPs0IE7+8FXcOMSNhVUEj9THay1ecz8UqTAbTQqvSuaBS+NIyOIbD92V8R+FkcZ2pvUkGLcK//iEul4fbH3LHRabhjBZNUknYWNxGuSx1G1QExX4vTZkmtEfQxobQYgFtt7Ia2RO3hAEScXGs8SCwAwPTRXnhOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782801616; c=relaxed/simple;
	bh=tPzUUgKX5I6bopctVswm3qvHLGFdUqAjogaDEX43PGk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g8aQcy6j4CVyZY4xjmZWl40IOPlPevMo2Ebt/YW6OxqX7b/KN7rfyJHmQv3bujlRSV8gQmGt9rfuIExOE1WLDpqD2ySyMvdHTRG9mT9i7pdsjoWJJOlWcVoFAPRR2x00c6lLDkFn7UTuE3hBcziCGgjKkrDR/w1WlIWrMZL/JQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zo82KfFn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 387281F000E9;
	Tue, 30 Jun 2026 06:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782801612;
	bh=1zK/FCFxCZYzG1d3MdwSXsiqqSvH2UuFILULEPPXJy4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Zo82KfFnm91JHEO9rwac1k3/5D5cvqSQmCvj1Q4EebADzTxSiqpGE5nBAo3o2tFqJ
	 KlsBv8Fk38EmtJilevk3enjxTjq8fc+QIsiYDB7Wq0tFplDDKvyg7mq5CZos4/e/YT
	 +lNp5bEf4lUZGBzcvhb4VgHRhiLqFtLxOM6tvJ2UROdFvUEuRPPtm8puKfOyhv/Woc
	 tuti6clWePWEnPsoB8vJAb3bZjBXJSN0pLsQwPSiV8u+rIm9n3fSjx0rv83YE+MlC9
	 OHR8Rkufpt41k4PsiMXWPkjifxv1npflyHTKy9BGGikfnEv2vLUHU0BV+UqeSBpf/3
	 CtAzTa0sqA9rQ==
Date: Tue, 30 Jun 2026 08:40:08 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Neo Chang <YLCHANG2@nuvoton.com>
Cc: broonie@kernel.org, lgirdwood@gmail.com, perex@perex.cz, 
	robh@kernel.org, krzk+dt@kernel.org, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, alsa-devel@alsa-project.org, neo.chang70@gmail.com, 
	kchsu0@nuvoton.com, sjlin0@nuvoton.com
Subject: Re: [PATCH v5 1/2] ASoC: dt-bindings: nuvoton,nau8360: Add NAU83G60
Message-ID: <20260630-amusing-striped-urchin-d49c93@quoll>
References: <20260630021510.821919-1-YLCHANG2@nuvoton.com>
 <20260630021510.821919-2-YLCHANG2@nuvoton.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260630021510.821919-2-YLCHANG2@nuvoton.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:YLCHANG2@nuvoton.com,m:broonie@kernel.org,m:lgirdwood@gmail.com,m:perex@perex.cz,m:robh@kernel.org,m:krzk+dt@kernel.org,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:alsa-devel@alsa-project.org,m:neo.chang70@gmail.com,m:kchsu0@nuvoton.com,m:sjlin0@nuvoton.com,m:krzk@kernel.org,m:neochang70@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317426-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,perex.cz,vger.kernel.org,alsa-project.org,nuvoton.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,quoll:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C1BF86E0DDC

On Tue, Jun 30, 2026 at 10:15:09AM +0800, Neo Chang wrote:
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: mclk
> +
> +  firmware-name:
> +    items:
> +      - description: |

Drop |

> +          Left DSP core firmware.
> +          In PBTL mode, the Left firmware is ignored and only the Right is applied.
> +      - description: Right DSP core firmware.
> +
> +  nuvoton,pbtl-enable:
> +    type: boolean
> +    description: NAU83G60 supports PBTL mode for mono output.
> +
> +  nuvoton,dac-cur-enable:
> +    type: boolean
> +    description: |

Drop |

There is no formartting to preserve and I did not ask to introduce it
here. I commented in completely different place.

With these two fixed:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


