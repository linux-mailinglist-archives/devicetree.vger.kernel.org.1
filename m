Return-Path: <devicetree+bounces-287843-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SJzELva+4GnQlQAAu9opvQ
	(envelope-from <devicetree+bounces-287843-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 12:50:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A4940D0B4
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 12:50:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CFC9030528A7
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 10:48:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9E123A6409;
	Thu, 16 Apr 2026 10:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEr3dNeR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C796D3A5421;
	Thu, 16 Apr 2026 10:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776336538; cv=none; b=R0iCxnBqxtP5nv3sYlaUwj+pztITBVPKCGNCdqaly+7qgmjWFtp5Dqii9or8ffmWKI4/GuRGPdPTL7FFjGpqxF1SMl4p9s42c7LRFT289nNHCGvNLIhCAEJq0MZRgiZ99/PKkX/pcdbraQrg5fmRWqXNFIMifMGZ+xAusSiXv68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776336538; c=relaxed/simple;
	bh=92fmhfVHjzNJ/QGI2MWQ5ZzbOAsgHOSIwzHMN0AaMuE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fDC1OICMwgMrbzTKzCGEqghtXNzKz8xwYE9YxGbEBnt79qWOELAMn+FyKNqxJEfHswmb9H2Yuq+HMqnm50yvNPyy+bZb5YbCz1ZAvh2tvc+frRNcIQ86hxqzJ8jSiqcf0INrhHpLIwxv8zhAM5jdg16eZmGKan1rEeFOjlt6alY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEr3dNeR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7EFBC2BCB3;
	Thu, 16 Apr 2026 10:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776336538;
	bh=92fmhfVHjzNJ/QGI2MWQ5ZzbOAsgHOSIwzHMN0AaMuE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OEr3dNeRhFwjdtXihonB/yS4AwNG9YMIlZbcbGbvNDivZNACXJu6Vs5cZkZRKSbmm
	 JdSIWoLZ2fiYdP0ai3uY1D5YOrea7oHh3lwwHoEK33bsZdS6NLLLe6228IP8BjVS87
	 TQN6UFzWOlx8BFVmMivILfb//eCUjBFO5sON0eTYFPD9FZuWx/VywDzmsMGqoIypo7
	 ADvytWnF+c6KwCj7Rj2O1j4oWYni3IM19havYgh/PZw/VFYvxijBPL11ishrreiSWA
	 ViAtE/Fd55jA/yv9lNAaqBIRGTYOVoIGYNGqbZGD/J/PgpgtiadXLqDiD6JjxWEbX7
	 /mMLY53ifYmlQ==
Date: Thu, 16 Apr 2026 12:48:55 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vishwas Rajashekar <vishwas.dev@vrajashkr.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"H. Nikolaus Schaller" <hns@goldelico.com>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, luca@lucaweiss.eu
Subject: Re: [PATCH] dt-bindings: iio: gyroscope: add mount-matrix for bmg160
Message-ID: <20260416-warping-penguin-of-glory-41d59c@quoll>
References: <20260415-bmg160-mount-matrix-dt-binding-v1-1-0e2c85964ee6@vrajashkr.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260415-bmg160-mount-matrix-dt-binding-v1-1-0e2c85964ee6@vrajashkr.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287843-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 25A4940D0B4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 15, 2026 at 09:13:40PM +0530, Vishwas Rajashekar wrote:
> Adds mount-matrix as an optional property to dt-bindings
> for the bmg160 gyroscope as the driver reads this optional
> property during probe.
> 
> Signed-off-by: Vishwas Rajashekar <vishwas.dev@vrajashkr.com>
> ---
> The bmg160 driver reads an optional mount-matrix using
> "iio_read_mount_matrix" in "bmg160_core_probe" and stores
> this orientation data in "struct bmg160_data". As the "mount-matrix"
> property is used by the driver, this change proposes to add it to
> the corresponding dt-bindings.
> ---
>  Documentation/devicetree/bindings/iio/gyroscope/bosch,bmg160.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/gyroscope/bosch,bmg160.yaml b/Documentation/devicetree/bindings/iio/gyroscope/bosch,bmg160.yaml
> index 3c6fe74af0b8..ea8689660adf 100644
> --- a/Documentation/devicetree/bindings/iio/gyroscope/bosch,bmg160.yaml
> +++ b/Documentation/devicetree/bindings/iio/gyroscope/bosch,bmg160.yaml
> @@ -22,6 +22,9 @@ properties:
>    vdd-supply: true
>    vddio-supply: true
>  
> +  mount-matrix:
> +    description: an optional 3x3 mounting rotation matrix.
> +

Extend also example, please.

Best regards,
Krzysztof


