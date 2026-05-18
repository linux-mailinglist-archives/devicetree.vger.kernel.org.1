Return-Path: <devicetree+bounces-299307-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PSvLK7wCmpv+AQAu9opvQ
	(envelope-from <devicetree+bounces-299307-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 12:57:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F9356B13F
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 12:57:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C0F443001D75
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 10:57:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66A993CF680;
	Mon, 18 May 2026 10:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2ggqCdd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DD363D6674
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 10:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779101867; cv=none; b=auSq3fu7r/h2NWHMg3hQY4ULQ/m/fOcGkBZfX7x4zCKp6Hg6GcRtqF483hXI1pX79TbgZe/3iBo1iFXX7cRmxhpm1GU0HRXnNsmxtMx5+ODQPDSLWnIqzWlo8V8DP9EmjRKkOpR7WNNfBm5WxBBMunQRK/KiFsZgUfylZdYXIzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779101867; c=relaxed/simple;
	bh=JiBPOxZLEDKT5kX2bjKy0xlL68o9NdQVT3OXuYDckuo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WBCOFgxYb3niFKFZ1Pth/RqkR/hNQ2xjpPcH4g0O6jFhodUvNplFb+PPCsGxkX4ufy8q8APBsTwnve7cttUibX+YUCyjFZwXDQcYuB6EK0dzUcZB7p1FcKjdA/SeZA2GNWhVF6nOR2BnwS+OIIhnqcMymcOMXtkBsEXu8RByeJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2ggqCdd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18D93C2BCC6;
	Mon, 18 May 2026 10:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779101866;
	bh=JiBPOxZLEDKT5kX2bjKy0xlL68o9NdQVT3OXuYDckuo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r2ggqCddi0IZTwwgbQR2LuWpErM2pqvyKTv2K3zWQgPatnKIgy8IHSbnBlnx9mu/V
	 o2vgcDL8bbl/sIXUuo5mId3RmllZT0Kn6EImrwcaqXA02sV1VrI4pxBZoKEQpjLPzh
	 yZpcKCugwbwUti2U052+3jtIC9sPNolcz+UJCsS6AywXzyTCjhpBP6eIsrH7oKney5
	 0gKxa2JPSrls3BGFEmxDeckFtkm5oU7DDxyhAP8UNQVG88Z+kagJxgnghvKALPycLT
	 xfWkIZfstLm9cosgPoTTDJKWLE070S2UGCu1i38UjOftmx7znums1RrfueIMi8MlS3
	 5wGtN/SMjJQLQ==
Date: Mon, 18 May 2026 12:57:44 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Prasanth Kumar Padarthi <prasanth.padarthi10@gmail.com>
Cc: joel@jms.id.au, andrew@codeconstruct.com.au, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, andrew+netdev@lunn.ch, 
	devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: aspeed: Add ASRock Rack B650D4U
Message-ID: <20260518-rustling-watchful-viper-b9c4b4@quoll>
References: <20260518033440.17569-1-prasanth.padarthi10@gmail.com>
 <20260518033440.17569-2-prasanth.padarthi10@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260518033440.17569-2-prasanth.padarthi10@gmail.com>
X-Rspamd-Queue-Id: 63F9356B13F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299307-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,netdev];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email]
X-Rspamd-Action: no action

On Mon, May 18, 2026 at 09:04:39AM +0530, Prasanth Kumar Padarthi wrote:
> Add the compatible string for the ASRock Rack B650D4U BMC,
> which is an AST2600-based server motherboard.
> 
> Signed-off-by: Prasanth Kumar Padarthi <prasanth.padarthi10@gmail.com>
> ---

<form letter>
This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions of patchset, under or above your Signed-off-by tag, unless
patch changed significantly (e.g. new properties added to the DT
bindings). Tag is "received", when provided in a message replied to you
on the mailing list. Tools like b4 can help here. However, there's no
need to repost patches *only* to add the tags. The upstream maintainer
will do that for tags received on the version they apply.

Please read:
https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577

If a tag was not added on purpose, please state in the patch changelog
or cover letter why and what changed.
</form letter>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


