Return-Path: <devicetree+bounces-322033-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6FCMMDIBTWpttQEAu9opvQ
	(envelope-from <devicetree+bounces-322033-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 15:37:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9A271BFFD
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 15:37:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QPj6KYKz;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322033-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322033-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 479D530566B3
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 13:18:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BC4341B36E;
	Tue,  7 Jul 2026 13:18:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4257441A76C;
	Tue,  7 Jul 2026 13:18:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783430285; cv=none; b=LD0BTLTCtDLt2OdAoRaI3x9xXTxq/ceiYTcFbMmUkuduOTOpcBI4QTGtlLVyJrWOzXh/RLojRVAQDuf1J06mx1tXKHHQUOwTGt3DxURNMM0h7i3hBO/d8aBiZj/XdE4eH65aviPm56wDKBCnvlQpmeGF6d9Jzb6YuL3Ivy8H/LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783430285; c=relaxed/simple;
	bh=TeVrjP8YDYlyuxi5LZA2HIH6I3fMop2PIIr2LZObJHM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ptu90vttFFK/VM5PPrKfvwcDj2jHqTGF/Z4FVwURxilez55Scjes077c6uU6wazDRu+HMJm2fEWTcbsLPyKWLlZ1UxBYOjDhBCQNpxmtgyfXgBGI8KfJHzeR+oXh+B9a7OALBNeRR9iy2NRgWGE26eZ8gJGjGqKHkeTKdCBPv2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QPj6KYKz; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B20A41F000E9;
	Tue,  7 Jul 2026 13:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783430283;
	bh=PWnX9C/SV15upZabbY7EEF56d8byKl3/f6RZuWgCkWg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=QPj6KYKzxvYIrnYl6GebJ7lcp4Lcuorgxq8HdVZV7t1UAaRWk2LANEy2qr/9y2YbX
	 VXQTYDzxNZWXar/uKdqG+VeZ1oTvNT2Kx9A4+89ePmo7YFRrmQJdj9AudKahrrVoiT
	 ca/23xmmJY0K0k5VHDwksOsChMngo4X+91fmgRnmCqr9iChgaPoVrRVL66UL7NjBJn
	 v/FXLfXCY+QmCNZ5HRlLmYGC7NQUgZfaAdZOsffvtYXGRJmFKTDBbW2xHZeJabNz/9
	 zBPesUIyDsGtjy0hCC1YgVdbm7zZTUVe+d2g/C9KyfBrc4K3upAjXOwWP9C8pt3m5k
	 zEMYrb5yBFQ4Q==
Date: Tue, 7 Jul 2026 08:18:03 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Eduard Bostina <egbostina@gmail.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, daniel.baluta@nxp.com,
	m-chawdhry@ti.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Mark Brown <broonie@kernel.org>, goledhruva@gmail.com,
	simona.toaca@nxp.com
Subject: Re: [PATCH] dt-bindings: bus: Convert DA8XX MSTPRI to DT schema
Message-ID: <178343028158.2334410.7512714429208471206.robh@kernel.org>
References: <20260630124631.2991596-1-egbostina@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260630124631.2991596-1-egbostina@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,ti.com,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-322033-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:egbostina@gmail.com,m:krzk+dt@kernel.org,m:daniel.baluta@nxp.com,m:m-chawdhry@ti.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:conor+dt@kernel.org,m:broonie@kernel.org,m:goledhruva@gmail.com,m:simona.toaca@nxp.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,ti.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AE9A271BFFD


On Tue, 30 Jun 2026 12:46:27 +0000, Eduard Bostina wrote:
> Convert the Texas Instruments DA8XX Master Peripheral
> Priority Registers bindings to DT schema.
> 
> Documentation:
> OMAP-L138 (DA850) http://www.ti.com/lit/ug/spruh82c/spruh82c.pdf
> 
> Signed-off-by: Eduard Bostina <egbostina@gmail.com>
> ---
>  .../bindings/bus/ti,da850-mstpri.txt          | 20 ----------
>  .../bindings/bus/ti,da850-mstpri.yaml         | 37 +++++++++++++++++++
>  2 files changed, 37 insertions(+), 20 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/bus/ti,da850-mstpri.txt
>  create mode 100644 Documentation/devicetree/bindings/bus/ti,da850-mstpri.yaml
> 

Applied, thanks!


