Return-Path: <devicetree+bounces-273375-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLALIAfjr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273375-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:23:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F30672484A4
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:23:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5770232437FC
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:08:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E83A643CED2;
	Tue, 10 Mar 2026 09:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdCO3C2a"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55F043CEC7;
	Tue, 10 Mar 2026 09:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773133629; cv=none; b=XV9MSjwZtw6k005WDHY15Sx0fl1xNpvj+r6pmanjmSS9Womqen5upK1MkU9LbbV2iHLR3Xwq1gImXCvvOhBZ1QBCN3j9Nj2UBfK5mpkKf+QpUgppR7xWfBPtowyCJ2tY4SHP9gPK8YlYpuTKjiOSe8HSpWZBAFNZAGgHBlDgTPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773133629; c=relaxed/simple;
	bh=6eF/vyj+PRCxc6lfmhanPayw01TYRPT0Stz46J6EG6M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D0Rn/IJq2Odv+0pVrFinETxbNpUYH+uTzXtpsBZyrd0n8qDMwnluFY/g111wKCCk5D3Pb1n9Qckt8eeLF6vZ+reNrMMv/e+EAZwvl5QUBlr7cG5oTdkxOqvJH6KmpcPiIqWfxABV9znS4gDa8iigTT+T3UcgPnWEtRdPwLcFJKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdCO3C2a; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C442EC19423;
	Tue, 10 Mar 2026 09:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773133629;
	bh=6eF/vyj+PRCxc6lfmhanPayw01TYRPT0Stz46J6EG6M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MdCO3C2aGVqEDav5yVjYdfmoITBDdAeWmj9PVxtFy5j1sFDcc6DkwNis+TiXWv8bd
	 JjfS4ZWlOIHOSkDdxd53ggvX51kUImU0xxl3NBSSbUm17k1/5/F1xlIeNjiWKPDrNz
	 FV4oyqOrGsrRn159Xldu2OrbZKaLyz3LIflPumuTjTKWhslTrl/lLZq1oG5jhcC3yE
	 XxD+thqzN7nxEiuJQ1DwcIv+W6Vr8ctH+Lx75E3YZx7XmQIAzzKSAEwOcOEqXawVC5
	 vtrag/R7Gh5izBd8Fikd4To3aZmkFsA95DrLW3HzGVOtB0/j5gfhmLqlN1UtoeAffu
	 Nymv4olm6y9Cg==
Date: Tue, 10 Mar 2026 09:07:03 +0000
From: Lee Jones <lee@kernel.org>
To: Lakshay Piplani <lakshay.piplani@nxp.com>
Cc: linux-kernel@vger.kernel.org, linux-i3c@lists.infradead.org,
	alexandre.belloni@bootlin.com, krzk+dt@kernel.org, robh@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org, broonie@kernel.org,
	Frank.Li@nxp.com, lgirdwood@gmail.com, vikash.bansal@nxp.com,
	priyanka.jain@nxp.com, aman.kumarpandey@nxp.com
Subject: Re: [PATCH v6 7/7] i3c: hub: p3h2x4x: Add support for NXP P3H2x4x
 I3C hub functionality
Message-ID: <20260310090703.GB183676@google.com>
References: <20260310065727.3759342-1-lakshay.piplani@nxp.com>
 <20260310065727.3759342-7-lakshay.piplani@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260310065727.3759342-7-lakshay.piplani@nxp.com>
X-Rspamd-Queue-Id: F30672484A4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273375-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,bootlin.com,kernel.org,nxp.com,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Tue, 10 Mar 2026, Lakshay Piplani wrote:

> From: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
> 
> Add I3C hub functionality for the NXP P3H2x4x family of multiport hubs.
> These devices support downstream target ports that can be configured
> as I3C, I2C, or SMBus.
> 
> This driver enables:
> - I3C/I2C communication between host and hub
> - Transparent communication with downstream devices
> - Target port configuration (I3C/I2C/SMBus)
> - MCTP device support
> - In-band interrupt handling
> 
> P3H2440/P3H2441 support 4 target ports.
> P3H2840/P3H2841 support 8 target ports.
> 
> Signed-off-by: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
> Signed-off-by: Vikash Bansal <vikash.bansal@nxp.com>
> Signed-off-by: Lakshay Piplani <lakshay.piplani@nxp.com>

Where is your cover letter?

Why did I have to scour 7 patches just to find out that there is nothing
for me to do and that I shouldn't have been sent the set in the first
place?

Please provide cover letters for large sets like this.

-- 
Lee Jones [李琼斯]

