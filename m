Return-Path: <devicetree+bounces-275666-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULxXCpA3tWkXxwAAu9opvQ
	(envelope-from <devicetree+bounces-275666-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 11:25:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BA82528CAE7
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 11:25:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 22236300E58E
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 10:25:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76986352C34;
	Sat, 14 Mar 2026 10:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsjQbv4c"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536F42DE717;
	Sat, 14 Mar 2026 10:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773483915; cv=none; b=pqnjmKl2vhUJRC+17w67ZZamuPWrhCdOj5kN4LbUH2CV7NcNn9IOVYrxrxrjeelitwh8a9iqo7dTTlYt69/7Q3elGDoNp/rJXRQjxX1+2VhCBKxD71AW80zj42N19nywZYm4jiXTmVSd1ZKqVIBpTNnupwb3BdnQGzNGgI4OK+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773483915; c=relaxed/simple;
	bh=xEoA34MGACPszqT64gX/WicktSCq3OAR48eYOy3S1MM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Zm87XnzlE6WVxK0ZKT8wHzXL1LYJBqE7ph7y6XePCInZ0FDGSkB7F3YgidcbESIMDQVtIZYIyM3P/l1J3ql49bMeR+8VWIdCH1FW/TzkhdsdfMFR01J8xWxufYH4EdSS3LYy0/quej64RP0ExfZ0r9RYXLnfRzpHatvOz4cK/Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsjQbv4c; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D254BC116C6;
	Sat, 14 Mar 2026 10:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773483915;
	bh=xEoA34MGACPszqT64gX/WicktSCq3OAR48eYOy3S1MM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jsjQbv4cMrmklNBknq4n7qaX4o7uXTuj8T6DJSMWr0tY/vLVfs2Y/oDLk4B7Sw6yK
	 tAd6w+JiyeRl3494tUELBX+kKnjB9/EVTpUgnI1c6Kjfw4RxYSvLTV5HZIdvwqK7M3
	 IfS2qgMyEX1c7sc+OsHML+GdzGwvy7109YHhH+/1FsV8HphsCfFUbX4+qBNHlUBGur
	 m7TpJJyg1a9iiQNYrDttJV8EitcG0cGDTLu+OsprJz9vFwS91xQ66+4TU4+HX+SuXZ
	 E22eCK6tLAGyi01O9gP5UNNQljB9GaIqwNwKZOR/6OhXO+ETT5ce/zttNNv6Hfbz0p
	 qfMZMryNpPgug==
Date: Sat, 14 Mar 2026 11:25:13 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Bhushan Shah <bhushan.shah@machinesoul.in>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] Input: edt-ft5x06 - add support for FocalTech FT3519
Message-ID: <20260314-successful-nano-hyrax-cc3b21@quoll>
References: <20260313-edt-ft3519-v1-0-fe5ffc632fd2@machinesoul.in>
 <20260313-edt-ft3519-v1-2-fe5ffc632fd2@machinesoul.in>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260313-edt-ft3519-v1-2-fe5ffc632fd2@machinesoul.in>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-275666-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BA82528CAE7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 12:09:51PM +0530, Bhushan Shah wrote:
> This driver is compatible with the FocalTech FT3519 touchscreen, which
> supports up to 10 concurrent touch points. Add a compatible for it.
> 
> Signed-off-by: Bhushan Shah <bhushan.shah@machinesoul.in>
> ---
>  drivers/input/touchscreen/edt-ft5x06.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/input/touchscreen/edt-ft5x06.c b/drivers/input/touchscreen/edt-ft5x06.c
> index d0ab644be006..52188e1aa9bc 100644
> --- a/drivers/input/touchscreen/edt-ft5x06.c
> +++ b/drivers/input/touchscreen/edt-ft5x06.c
> @@ -1479,6 +1479,10 @@ static const struct edt_i2c_chip_data edt_ft3518_data = {
>  	.max_support_points = 10,
>  };
>  
> +static const struct edt_i2c_chip_data edt_ft3519_data = {
> +	.max_support_points = 10,
> +};

So same as edt_ft3518_data? Why are you duplicating it then?

Best regards,
Krzysztof


