Return-Path: <devicetree+bounces-271898-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6J5ICCaTqml0TQEAu9opvQ
	(envelope-from <devicetree+bounces-271898-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:41:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE8021D35C
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:41:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 285DF3019187
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 08:41:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99D073793A9;
	Fri,  6 Mar 2026 08:41:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJ5e010Y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73B2C318BA6;
	Fri,  6 Mar 2026 08:41:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772786466; cv=none; b=YFPi4zPjm/J0LHx52MwK6+AOh71JJkJdt19VzbsXe7f4kONH9ue5Yj4ChDNqpxM8nDqPLNiVReZQqTIu9MCjbAUuLYfusufDNzRmilJc6MmO4oFdhoIUPrLP8Qk+9coLgVmRLpbJJzfEtSDGaCXvjIiS6wybL5oxCiWBQfldbwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772786466; c=relaxed/simple;
	bh=j/AAC+/G7iFDybe4b1BJg3KemjHoaKjMY6v7YfzaANE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lGhN3i7eakXyL2hISlPm0FyNOc0O3CSgnTS8EwxJNF9v3FEM8KKSBHEmgfT9pYHZKOf2dAJ7KvfsIcrfud+9yOeIGyPr3C4YtPCWtI6R1QpMaFFNKdF0wnLaJQAiGjN0MKZ28cXMTkWMMEb1ZrHkTADoTitdflIAdQc4g1Pe7dI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJ5e010Y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C09BFC4CEF7;
	Fri,  6 Mar 2026 08:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772786466;
	bh=j/AAC+/G7iFDybe4b1BJg3KemjHoaKjMY6v7YfzaANE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bJ5e010Y3U0wBDmIdaqJO0tkBECkdYO1pyyEUPfBlZk5vAjPa8tXp3VMdh3Uu4b7K
	 3ku9tBo85IAYvrBsOy817jTxgLBa5yfxWiO9TzFXgA6fzH6GnQXP+9JvT052dEpFPh
	 +F95jPEsCcM9N36cu5k8CWLJzxQU55WhL6hKr4jlUr7g79CEC8nL2W0+4vYUx4Z5LD
	 +fQ6fruNWyp6ibU5hFfgcoyzcvY9dF/HsMG4RnmcIB+ieZsbCUHMqyFSSYHr17RYlr
	 IWNn9I//lnmfoDrSXWgvoKVLZAuCyCbCT5K32x8bGddh63w9kIGzlX1MKKZBytxN6o
	 sw45EEuAPXZzw==
Date: Fri, 6 Mar 2026 09:41:03 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Yedaya Katsman <yedaya.ka@gmail.com>, 
	Joel Selvaraj <foss@joelselvaraj.com>, Jens Reidel <adrian@mainlining.org>, 
	"open list:INPUT (KEYBOARD, MOUSE, JOYSTICK, TOUCHSCREEN)..." <linux-input@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH 1/1] dt-bindings: input: touchscreen: edt-ft5x06: add
 edt,edt-ft5x06 for legacy platforms
Message-ID: <20260306-wolf-of-striking-fragrance-0dee0e@quoll>
References: <20260305223731.4088953-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260305223731.4088953-1-Frank.Li@nxp.com>
X-Rspamd-Queue-Id: 6AE8021D35C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271898-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,joelselvaraj.com,mainlining.org,vger.kernel.org,lists.linux.dev];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,nxp.com:email,0.0.0.38:email,0.32.11.32:email]
X-Rspamd-Action: no action

On Thu, Mar 05, 2026 at 05:37:29PM -0500, Frank Li wrote:
> The compatible string "edt,edt-ft5x06" has been used for more than a decade
> on older platforms such as i.MX6 and OMAP. However, it is currently missing
> from the binding documentation.
> 
> Add it to the binding to document existing usage and fix the following
> CHECK_DTBS warnings.
>   arch/arm/boot/dts/nxp/imx/imx6dl-nit6xlite.dtb: /soc/bus@2100000/i2c@21a8000/touchscreen@38: failed to match any schema with compatible: ['edt,edt-ft5x06'
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  .../devicetree/bindings/input/touchscreen/edt-ft5x06.yaml        | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml b/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml
> index 6f90522de8c0a..213451f823369 100644
> --- a/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml
> +++ b/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml
> @@ -38,6 +38,7 @@ properties:
>        - edt,edt-ft5306
>        - edt,edt-ft5406
>        - edt,edt-ft5506
> +      - edt,edt-ft5x06 # Deprecated, not use for new platform.

Then document it as deprecated one.

OTOH, this above is clearly not correct because we also have
"edt,edt-ft5506", "edt,edt-ft5x06". Just use git grep.

I don't understand, though, what is the point of documenting it if there
is no ABI implemented (nothing in the driver) and it cannot work.

Best regards,
Krzysztof


