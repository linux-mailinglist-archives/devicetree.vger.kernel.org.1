Return-Path: <devicetree+bounces-268264-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SD4DNbHPnmnwXQQAu9opvQ
	(envelope-from <devicetree+bounces-268264-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 11:32:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D0F195C99
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 11:32:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7983B3059823
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:29:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A85A392C28;
	Wed, 25 Feb 2026 10:29:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="furmogx/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA5A3392C26;
	Wed, 25 Feb 2026 10:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772015348; cv=none; b=W8xEcBnicPCMgaT44/gtTn5AJLnLJeRIJmAEsDEek2ZPNQiwdaeqp5AI2oBpt0jikZ8GQQiIWP69puyE83MwRCN6C2R57IDPh8pbvY0+qTW6Ksoyitl7CoLDrYG2pgsc1VkT/+R/gqEi6RHoBeQtKa3tcFevs9NZ7TWVt+4UoUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772015348; c=relaxed/simple;
	bh=zP3eqqtqujdWIQF6IceuD3l5Q6WDeaRV9F9LtPq14CM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IZE7bF3x1a+2ifBMBsICWDauBOFWXkO51hsP2xqg1fDNcsgiyrhFqeFMxYOGmcRjDbfwoy7+n1WhNh320Vi5b7/46zbkAwTyWF77prJ621tg7YQihhpVIlSPVfPfseAOK0kpRJP2Qa/091BsjjBTMAwysaKgM/DCXNCNrQuZqsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=furmogx/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C09AC116D0;
	Wed, 25 Feb 2026 10:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772015347;
	bh=zP3eqqtqujdWIQF6IceuD3l5Q6WDeaRV9F9LtPq14CM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=furmogx/wRI0s7EQcUD4uc1groAANoK2PzJT0/vtvFuel6kae92du3xIfWIO8FXGL
	 ty6mbQq9u1R6yhBZU5wPI9itx92J5JdSwUzZtCp71zrhdSS9fXjxl6Damku7AHUUuh
	 Q54OcXKZtTNx1EL4OCUUL8zN9Hb22JJ7angSQ4kiASECY/tsJkqMbLObK68eK4Vo8N
	 ZA1IiKIIwDc/8HqdviAa6exIsA3/Cp2ZdZl9McFC8UxGUl4c6MZxIsqMub3JI9qbPO
	 swjW2E0etPEVILdHRXeb7LFbY7WjBUiO2darVGFdZs+1qf2HPkv+H4nNwbPsxmSygm
	 yaXOdDCxZBJ4Q==
Date: Wed, 25 Feb 2026 11:29:05 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Gary Yang <gary.yang@cixtech.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	p.zabel@pengutronix.de, peter.chen@cixtech.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	cix-kernel-upstream@cixtech.com
Subject: Re: [PATCH v9 1/3] dt-bindings: soc: cix: document the syscon on
 Sky1 SoC
Message-ID: <20260225-subtle-caped-hyrax-dc99c8@quoll>
References: <20260224092111.2198005-1-gary.yang@cixtech.com>
 <20260224092111.2198005-2-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260224092111.2198005-2-gary.yang@cixtech.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268264-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	DBL_PROHIBIT(0.00)[0.244.36.0:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 61D0F195C99
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 05:21:09PM +0800, Gary Yang wrote:
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    syscon@16000000 {
> +      compatible = "cix,sky1-s5-system-control", "syscon";
> +      reg = <0x16000000 0x1000>;
> +      #reset-cells = <1>;
> +    };
> diff --git a/include/dt-bindings/reset/cix,sky1-rst-fch.h b/include/dt-bindings/reset/cix,sky1-rst-fch.h

I am not going to repeat my reviews.

NAK, I mark it as changes requested in Patchwork.

Krzysztof


