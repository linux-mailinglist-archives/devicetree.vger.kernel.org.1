Return-Path: <devicetree+bounces-315554-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rMDRNBHoPGrduAgAu9opvQ
	(envelope-from <devicetree+bounces-315554-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 10:34:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 65AAC6C3DA1
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 10:34:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=mIpmk87a;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315554-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315554-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D8A61301FF1F
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 08:34:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA60F37B41E;
	Thu, 25 Jun 2026 08:34:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCAF9326927;
	Thu, 25 Jun 2026 08:34:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782376463; cv=none; b=KqSi8Xr9EOZpsY3w02zLyck8Rae1TIVVQFCaswH3sTA3Gi+rwn7GY9GqaANoJNQjUEoLUT+lR6HpT1BiTEflv2xZRd8pRv0bvHrO8uc4ShwbRUU/M0UWTiuxfh4YmyD4FpygDV/Xqg1/ov4+Yj5xX6q0W2SxvI7tDlafwf2171Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782376463; c=relaxed/simple;
	bh=jkHuq+aWcDX/8nA6BwwAfyDf2vD4pL0yEgIxFBKGs4M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BHMpVWxyaZ5GyqCHG0yzeptA1fiVGirMcyzYDV4MAlXpvk+I2U7I+ZHjwvwhcL55ktqEfYiGrFdcXgxOBQFbtpNZu8DWjNR2nHmn9E3CkcjKK8H3jzBEab41910wBNny5Z04shNJU2AwitIkGkl+h3ZHG5gpD4l0Jj4gt3luD/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIpmk87a; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A9D11F000E9;
	Thu, 25 Jun 2026 08:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782376462;
	bh=jkHuq+aWcDX/8nA6BwwAfyDf2vD4pL0yEgIxFBKGs4M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mIpmk87a1O17ZA9QaCQ4gygtPORIjx/LUMWppLF46QEB/E92hIl9n9YoMQAGkiQTO
	 MSIanUm5GcOG6+cjVln91x43uf38AWaelLpXm08dCRypqsY5rMywlzaM0VwL4H78aY
	 rM5KwlB20YNllXLWoipxxXxaQQrDxkMqLxwSV63yDebROFUmPdFcrXvl5dR7p2Vgsn
	 ugmrsEqOhmTBY9C+rrv71jgzJIE5EcOHbYyEGyEntlrVQVlMSDvrZSzODg1nZnggNq
	 V6h9jbfWjIixxbc1103eQtnD1i1LXUjfXh6lfa2j4nVSn9Fg8APyDsPRAiLf1o0a6u
	 d21pPb44bSRoQ==
Date: Thu, 25 Jun 2026 10:34:18 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Mikko Perttunen <mperttunen@nvidia.com>
Cc: Thierry Reding <thierry.reding@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-tegra@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: display: tegra: Make non-vm registers
 optional
Message-ID: <20260625-hospitable-antelope-of-diversity-f3456d@quoll>
References: <20260622-host1x-nohv-v1-0-65bc682a617f@nvidia.com>
 <20260622-host1x-nohv-v1-1-65bc682a617f@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260622-host1x-nohv-v1-1-65bc682a617f@nvidia.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:mperttunen@nvidia.com,m:thierry.reding@kernel.org,m:jonathanh@nvidia.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-tegra@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315554-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,nvidia.com,gmail.com,ffwll.ch,linux.intel.com,suse.de,vger.kernel.org,lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 65AAC6C3DA1

On Mon, Jun 22, 2026 at 05:22:50PM +0900, Mikko Perttunen wrote:
> Host1x can be used without accessing the hypervisor or common
> registers. Adjust the bindings to make them optional.

You still have these registers in the hardware, so it is not optional,
not flexible. IOW, DTS represents the view of real hardware for the
software, and that hardware still has this address space regardless if
OS should use it or not.

Otherwise you need to provide better background here.

Best regards,
Krzysztof


