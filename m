Return-Path: <devicetree+bounces-315127-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DB52Kp2nO2qGawgAu9opvQ
	(envelope-from <devicetree+bounces-315127-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 11:47:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E96146BD0BA
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 11:47:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=MhAdwshj;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315127-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315127-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A8E67301B702
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 09:42:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B11D3A7D82;
	Wed, 24 Jun 2026 09:42:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ACE43A1A56;
	Wed, 24 Jun 2026 09:42:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782294145; cv=none; b=SV+z1F3Poij1ln4dLSFZi8WwEMmxxmJpvFVdYQKCUNWbqLSEPUvOX/qNMSiJdJ+gZ+Zg7oTLvwn5/OtAkEb4OWP7DXyo1MxlzgqmEa7xzevIO8JUDhH1VnDTIf4iB9xVrUgdy7v1hYxTKtAFlINt0I/3yKvn21hTOSZshW33raE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782294145; c=relaxed/simple;
	bh=DwW0VX4GVqWfFeo8X4S15xeVrgJHGownLQ3IXADaDio=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cZCr5m679vVO2v/vAC4NyG8LhoJFpG9PAbHO4tfElKdzRljBx+Ku2owoUcob45Ff389Ymc7kLZjrYM7gRamGfoyUkma1/GEP0BXFf/gXD9f0rYi6Jv2OCku5hiTXslHPmL7CZkAoliSAj12RO0iRBroKA3ZoFQCHd/jDEo7wrpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhAdwshj; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8D801F000E9;
	Wed, 24 Jun 2026 09:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782294140;
	bh=eIb76RKd8kDbIfaU0zouCWtia/gRhkmDPPIIJTmfYmM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=MhAdwshjP71OUnOWtCjiWxp+k+aBs5HHl/Q7usllXn7Jagb0KTazWILP/XY2chsIL
	 ikVKMWq3z8RCKoeefCekD+hWigt4u8z2xOym4fzPQPDn2ATlzYv7TRlVtU7s6JfZ+Q
	 +qDfYbh7x8cVghySlGCdfqBdo1PrkglNpJW/QGhWOEunjPmY99dSGP+oFzDoYRnXIu
	 6DyVztQLmTt5+N8/I29HzA+7siG6RZTUOJ/6CEASHg1NH9puFzZfj4W2clArt4zVRH
	 GHWF9N5HWXNV+gho2h088RgxD47QSzRx6Imn8vCgOSARXD1rqgHZ4XNkWbgR4xYyOV
	 s8tLy5Rmon1dQ==
Date: Wed, 24 Jun 2026 11:42:17 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Leonardo Costa <leoreis.costa@gmail.com>
Cc: laurent.pinchart@ideasonboard.com, neil.armstrong@linaro.org, 
	jesszhan0024@gmail.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, nm@ti.com, vigneshr@ti.com, 
	kristo@kernel.org, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	thierry.reding@gmail.com, sam@ravnborg.org, leonardo.costa@toradex.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/5] dt-bindings: vendor-prefixes: Add Opto Logic
Message-ID: <20260624-immortal-hippogriff-of-promotion-ea09f4@quoll>
References: <20260623195741.495734-1-leoreis.costa@gmail.com>
 <20260623195741.495734-2-leoreis.costa@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260623195741.495734-2-leoreis.costa@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:leoreis.costa@gmail.com,m:laurent.pinchart@ideasonboard.com,m:neil.armstrong@linaro.org,m:jesszhan0024@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nm@ti.com,m:vigneshr@ti.com,m:kristo@kernel.org,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:thierry.reding@gmail.com,m:sam@ravnborg.org,m:leonardo.costa@toradex.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:leoreiscosta@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:thierryreding@gmail.com,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-315127-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[ideasonboard.com,linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,ti.com,bp.renesas.com,ravnborg.org,toradex.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[quoll:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,optologic.ch:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E96146BD0BA

On Tue, Jun 23, 2026 at 04:57:37PM -0300, Leonardo Costa wrote:
> From: Leonardo Costa <leonardo.costa@toradex.com>
> 
> Add vendor prefix for Opto Logic, a Swiss display solutions provider and
> printing systems manufacturer.
> 
> Link: https://optologic.ch/
> Signed-off-by: Leonardo Costa <leonardo.costa@toradex.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


