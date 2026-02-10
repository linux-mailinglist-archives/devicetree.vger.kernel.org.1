Return-Path: <devicetree+bounces-264175-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DIJIQCJimmPLgAAu9opvQ
	(envelope-from <devicetree+bounces-264175-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 02:25:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DE583115F8D
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 02:25:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 83409300C027
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 01:25:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 792BD2522A1;
	Tue, 10 Feb 2026 01:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovnT8Ssy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564C7221F15;
	Tue, 10 Feb 2026 01:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770686717; cv=none; b=fv26Y/hFso0qxe+Xea1eNMlH4Ek8B/D9Ml0XkAMZwaK3EcUOrLmkgVjLgBu9VsgLYAM95C4TXz7ZmFYhwVyopA8HvyHnyfhuf0okyI2CAB0WRBdNWUyUFQ3aDDCsoCVb8bmOrCWVbBCbZzLGvrR9RNP1UJ9wohOedlKesgtSp8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770686717; c=relaxed/simple;
	bh=B/9xj49pyIQTxEOvUELh2afe3C9tpol8NILa2gk1YSs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RQFGDOrOQGNwEC1Vns5vnOWaCZeNwXTg05lGMQSheLxlFHDdDowIUUzrpDJnBlP/JJtURWqha0EWAdshHUHjD0sSjroacDYO81T/JLtZ2zNOmSyCs+D7cMqWF3X9OcavqQ5Z+643lCE6P0DqQYM/fcMvLRrl/AyYNOUdjFyN+d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovnT8Ssy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE4D8C116C6;
	Tue, 10 Feb 2026 01:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770686717;
	bh=B/9xj49pyIQTxEOvUELh2afe3C9tpol8NILa2gk1YSs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ovnT8SsyNnQ+DG1eYwtSMgsBCc8JamrCDvC4UtiJsyPB3+6hn4mi7PYlXUol2YCNz
	 pCZ+pG5ce41/fIcphnS/ey4AkA+mfpDVy4ktoRUEUXxJW3O8FGTKc3petsUEwf5tD9
	 H08GpUMaOs1BmuYv2/0d5dBlsJInRV6Dl2vdm02LXWZWD0BQaBYSmv/wn2kRFUbDUh
	 UzrwfYuITxYTJiIPPicuHxTVzJhKJ5KUygCXWT5Q6+TaRkR+ne2m/fq2iJF36Sm/wt
	 +rSbb7oUoqfPNpe2FyNzsywCablgYrVrV0SKCyW/B5CDKLUKiPGYLQQdBbPUwGeKMC
	 t7JIkGst10tNw==
Date: Mon, 9 Feb 2026 19:25:16 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: conor+dt@kernel.org, linux-rockchip@lists.infradead.org,
	kever.yang@rock-chips.com, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, srini@kernel.org,
	linux-kernel@vger.kernel.org, finley.xiao@rock-chips.com,
	krzk+dt@kernel.org, w@1wt.eu, jonas@kwiboo.se
Subject: Re: [PATCH v4 2/6] dt-bindings: nvmem: rockchip,otp: Add compatible
 for RK3528
Message-ID: <177068671576.2272495.16352349612961041838.robh@kernel.org>
References: <20260205211901.490181-1-heiko@sntech.de>
 <20260205211901.490181-3-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260205211901.490181-3-heiko@sntech.de>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-264175-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: DE583115F8D
X-Rspamd-Action: no action


On Thu, 05 Feb 2026 22:18:57 +0100, Heiko Stuebner wrote:
> From: Jonas Karlman <jonas@kwiboo.se>
> 
> Add compatible string for the OTP controller in RK3528. Compared to the
> RK3562 and RK3568 the OTP in RK3528 does not have a phy clock or reset.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../bindings/nvmem/rockchip,otp.yaml          | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


