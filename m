Return-Path: <devicetree+bounces-293167-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJhTNaYR+mmfIwMAu9opvQ
	(envelope-from <devicetree+bounces-293167-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 17:49:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C6DAF4D094E
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 17:49:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A85A03059B2E
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 15:42:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 346A248B39D;
	Tue,  5 May 2026 15:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NY6aSg9e"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3E9F48095A;
	Tue,  5 May 2026 15:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777995612; cv=none; b=JnZGd462mkk+pWeftJFlnxyxOsdQH35+l4SJGPpHhDoiKLxl93qVz4Hs0mou1weeIPdrFylAaepjCKas8J1SEuIFbvWQrpP3vZSNZEfB1mOAPq2Ijwdd2IFY0YlxGwHyPiu3kBLzETfarn3DMEl1VnvXlCt3twg4Q7ycDFlBgGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777995612; c=relaxed/simple;
	bh=R/Jj1MGKLOsi4YiefeZMpJJYAkiTt2dPqIT+kEApTfQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ee6jqlUrnFKy28pkyz+y5b+Cy/WJLdAV+m0NulVxfeOq/wm5FamDxLy1SAy1X01nBwky8hQ3FSjEkk9tVC0peqHLs4kLTbx3GA2fQLvVe+1CYR2+Hzj4hScrF0kRq/Y3JoCETmVQbNARWqVsuUzZelf3NIb3x1EJS92imijOTyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NY6aSg9e; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D69CDC4AF0D;
	Tue,  5 May 2026 15:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777995612;
	bh=R/Jj1MGKLOsi4YiefeZMpJJYAkiTt2dPqIT+kEApTfQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NY6aSg9eOACI7ankJJ6pgIgHu8rLwE01PNWcAWRF6A7SfKOIykqXoxooJrOaTsAaP
	 OM9SjgizlQfU/WASj/62IPMd8AV9BXn0BMBlPTIbYE7v24Mef7holzCrKYsGyKcfkR
	 jlMYhac5lfvboKwHs0YX/NhCx+SumsTfhRXxYC/KN0jAK8C/UaEH+Ow50iCt/vipi4
	 s9Kn/F1QiQKVTMgicGtfU3XFbOvzKblpdk9C4lc489yqPYp1ci4uKErc0LoTMrso0o
	 djJWAhbxTrrnxf7GoTzbtWLXMR6Y4G7nFiRJtzRJ73kOrOWS5nYhVZjNuEvTAqIMPe
	 IHwd2GLV7dzSg==
Date: Tue, 5 May 2026 10:40:09 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Conor Dooley <conor.dooley@microchip.com>, devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v2] docs: dt: writing-bindings: Extend compatible
 fallbacks guideline
Message-ID: <177799560843.2973367.1894381541645031550.robh@kernel.org>
References: <20260427160739.175451-2-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260427160739.175451-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Rspamd-Queue-Id: C6DAF4D094E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-293167-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email]


On Mon, 27 Apr 2026 18:07:40 +0200, Krzysztof Kozlowski wrote:
> Extend the guidelines when to use fallback compatibles to cover to
> common review responses.  Devices are most likely compatible and should
> use fallbacks when having:
> 
> 1. Compatible programming interface, meaning one is a subset, and Linux
>    device drivers can use the subset to correctly match/bind and still
>    operate with the subset features.
> 
> 2. Device variant discovery through some means, like registers.
> 
> Devices are incompatible and fallback is not suitable when that
> fallback cannot be used by the drivers to match/bind.  In the same time
> commit message should clearly explain when the code suggests devices
> are compatible, but the binding does not define them as such.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---
> 
> Changes in v2:
> 1. Include Conor's suggestion about commit msg, a bit rephrased.
> 2. Add tag
> 3. Drop double-space, because file does not use that format (old habit).
> ---
>  .../devicetree/bindings/writing-bindings.rst         | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 

Applied, thanks!


