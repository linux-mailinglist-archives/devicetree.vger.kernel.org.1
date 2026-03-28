Return-Path: <devicetree+bounces-281965-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kERDFQvdx2lKdwUAu9opvQ
	(envelope-from <devicetree+bounces-281965-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Mar 2026 14:52:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AF134E94F
	for <lists+devicetree@lfdr.de>; Sat, 28 Mar 2026 14:52:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F19E5302FAA7
	for <lists+devicetree@lfdr.de>; Sat, 28 Mar 2026 13:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8299E38838F;
	Sat, 28 Mar 2026 13:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgkE5gI+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EE240DFA3;
	Sat, 28 Mar 2026 13:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774705818; cv=none; b=aA2mmgbmtxReXLIWTo9Qvqx/CwU3JIDFvykmgIF2fpCItnBYHQhhiNMfwD3bTKkMAig0FmLckowLKe8oRf8rr7EASNuvM2cOKZ6V1YCLdHGQhrEDQpo629fqs3M84BiKVYQBTJCJW4GTiwutgO0i8MNrRc2ISZ5Y1Ou20M7BUQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774705818; c=relaxed/simple;
	bh=IQVzVfPrN6Qrqg9YpJwHcasmLCS46AB/n77DnCQ4NGk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QPpifePu32MV9sJhzBWuMkzb4UjXnFbbylYXfpo2g9hsStnnR12A+pnwFIrUnfmooLf0/aY7a++EMtK8w0v/EpNpxEA4WSCT6LEPduJaxPrhfBsNYuBtOvctn3vTzZQ1umqKpI7DzhI5SOGMvvfujMO+iBbIW725GOEVjl2NWzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgkE5gI+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 987EEC4CEF7;
	Sat, 28 Mar 2026 13:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774705818;
	bh=IQVzVfPrN6Qrqg9YpJwHcasmLCS46AB/n77DnCQ4NGk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PgkE5gI+aLLATqkWq2Yml2IsHkxtQyN0M9tEiMlMGXH2IEoma9VmXWMB53mPDBWt2
	 qZTEZHoUVOI3BFxkJl4u97b1NQ7sZzRjqhoLywQJoPMhzT0Xmv/SNZ9fVi1dWIVcqF
	 alJ5thHKfmAgnHNUzb2UDQ6bqgULq8zCNg+FBV1B+xWP+ofwgsPBV7n1UrT7qdR0Sv
	 As2ASelb2cvJltX70UFZjQcPGRD46V4H/83cx6Xg/SzcWR4Enxwes7WY4fbaaVHPRQ
	 1bZn3wi44zrbdkASS8DNsHIJnuSa3QIqHMz6M/yMKDOZG+rW8TgLF8lonUs5cV3EHy
	 6F/Uj8iySrtug==
Date: Sat, 28 Mar 2026 14:50:15 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Padmashree S S <padmashreess2006@gmail.com>
Cc: k.marinushkin@gmail.com, lgirdwood@gmail.com, broonie@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: sound: Convert pcm3060 to DT Schema
Message-ID: <20260328-hidden-secret-oriole-4dddb0@quoll>
References: <20260327121919.603768-1-padmashreess2006@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260327121919.603768-1-padmashreess2006@gmail.com>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-281965-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.46:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A3AF134E94F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 27, 2026 at 05:49:18PM +0530, Padmashree S S wrote:
> Convert pcm3060 to DT Schema
> 
> Signed-off-by: Padmashree S S <padmashreess2006@gmail.com>
> ---
>  .../devicetree/bindings/sound/pcm3060.txt     | 23 ----------
>  .../devicetree/bindings/sound/pcm3060.yaml    | 42 +++++++++++++++++++

You sent it already after I asked you to slow down and implement
previous feedback, so this has the same issues.

Please run scripts/checkpatch.pl on the patches and fix reported
warnings. After that, run also 'scripts/checkpatch.pl --strict' on the
patches and (probably) fix more warnings. Some warnings can be ignored,
especially from --strict run, but the code here looks like it needs a
fix. Feel free to get in touch if the warning is not clear.

Please use subject prefixes matching the subsystem. You can get them for
example with 'git log --oneline -- DIRECTORY_OR_FILE' on the directory
your patch is touching. For bindings, the preferred subjects are
explained here:
https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html#i-for-patch-submitters

>  2 files changed, 42 insertions(+), 23 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/pcm3060.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/pcm3060.yaml

Filename must match compatible.

...

> +
> +  reg:
> +    maxItems: 1
> +
> +  ti,out-single-ended:
> +    type: boolean
> +    description: |

Drop |

> +      If present, the output is single-ended.
> +      If absent, the output is differential.
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      pcm3060: audio-codec@46 {

Drop unused label.

Best regards,
Krzysztof


