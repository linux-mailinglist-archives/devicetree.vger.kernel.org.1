Return-Path: <devicetree+bounces-263588-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 5EckGOcah2kgTwQAu9opvQ
	(envelope-from <devicetree+bounces-263588-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 11:58:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B9D105AF8
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 11:58:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0B2FB30154AF
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 10:58:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2956633F8BC;
	Sat,  7 Feb 2026 10:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeD80O5K"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05CF73385A5;
	Sat,  7 Feb 2026 10:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770461924; cv=none; b=MdlWyMXqssXv2EXNflYlxEp3ZfD/sklCKXYSyCsoRBFjxKPeOzQ294t+dL8S/06BGFfwjtY9CuKw3Fd3HGTXgKPwXnjBNUo6/2zE0ZDh+knWlVGtEgfxe4pa2cbpzIocd0SlYfY7/tvRfM9e7zLUa/eVWAuNVfsL+S1tBVUDhF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770461924; c=relaxed/simple;
	bh=SPqNGTq+eM7VowdELZ0DgvLNKF3CRsLVro+eJdw581M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g5zr/fHWh2S3BEA0lRB2z4qvOcfE3CA8LUHxPjnSuNyZLKuwxgh8JMkvE+HTCnzlfPIUFkL1k/KYqREGcEIwSn3c+VQ7UHC9KSagqbOCEOZAJLbJHsroPGqTehdAd4LUbVjBSWVUDfb6wWN6426OEnY/wsnE9Nl8MRpPv06gsQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeD80O5K; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B348C116D0;
	Sat,  7 Feb 2026 10:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770461923;
	bh=SPqNGTq+eM7VowdELZ0DgvLNKF3CRsLVro+eJdw581M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aeD80O5KSxe0IVevxzzFnkxOO6F3QwE7HpTcA4kTYlhBhUK8VwnHHbMF2cIrKi14p
	 99TAa+5a9gHnAbImSkF4L2mLwSXdw+Dbjn85lTW+CODUHlqCursAMcy1EeQM8VszSi
	 69Qlu8Pmvb1lel1b81XkQ4eIlhKzEB7e8h4wka+qzhWtDQi5lHzlDJBAPDLEXifvoi
	 urDNqTHH/+v1Dl89kZgFrCzn4T8P/2cD6lyb1TZAPRsG5a9X6Y/EqVBunoj09D5YXI
	 9qJXXLxvnHMCsV3zqzw/Ki66Tu3/XupbcsX1sJ/TYZ23F402YBMZGQM/aj8shjGaEe
	 0M7vNcjv/ASmg==
Date: Sat, 7 Feb 2026 11:58:41 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>, 
	Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc@vger.kernel.org
Subject: Re: [PATCH 06/11] dt-bindings: mmc: rockchip-dw-mshc: Add compatible
 string for R1103B
Message-ID: <20260207-nifty-hawk-of-fascination-acfff5@quoll>
References: <20260206181309.2696095-1-festevam@gmail.com>
 <20260206181309.2696095-7-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260206181309.2696095-7-festevam@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263588-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nabladev.com:email,get_maintainers.pl:url]
X-Rspamd-Queue-Id: C5B9D105AF8
X-Rspamd-Action: no action

On Fri, Feb 06, 2026 at 03:13:04PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> The dw-mshc controller in the RV1103B is compatible to the one first found
> in the RK3288 SoC, so add the RV1103B to the variant list.
> 
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
> Cc: linux-mmc@vger.kernel.org

Please drop the autogenerated scripts/get_maintainer.pl CC-entries from
commit msg. There is no single need to store automated output of
get_maintainers.pl in the git log. It can be easily re-created at any
given time, thus its presence in the git history is redundant and
obfuscates the log.

If you need it for your own patch management purposes, keep it under the
--- separator.

It's confusing way of new soc bringup. Maintainer receives one patch out
of 11 and what has to do with it? Apply? Ack? Where is it explained?

And before you answer that this is supposed to be applied by Rockchip,
then NO, it was explained many times and is documented in bindings for
years that it goes via MMC.

Best regards,
Krzysztof


