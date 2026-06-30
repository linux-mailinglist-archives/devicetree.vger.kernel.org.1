Return-Path: <devicetree+bounces-317922-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +onsERTkQ2p5lAoAu9opvQ
	(envelope-from <devicetree+bounces-317922-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 17:43:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 325A06E60D5
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 17:43:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=UTxcA1I7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317922-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-317922-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D99B93012C49
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:42:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9A7C450903;
	Tue, 30 Jun 2026 15:42:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC6CE368D59;
	Tue, 30 Jun 2026 15:42:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782834164; cv=none; b=i0hR+uaHCLKFXDThzlv62mmOh4wvb8sl59p1tiHrF3E3ope+SLm3o2VVbUco2fbAerQmSaajK8lPi0AcSHGoSIKtsqymYvqZLd7QQTpUv3jzgkJq8+au8LIHoUN9newdc5Di7t8Xsbag1c7yDtscn4PiOmWq9jK6a21MPLrahmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782834164; c=relaxed/simple;
	bh=aG1/3HIetHlFe8/byJ8wEJTkXGyN3Z5AAsWiCtDTky8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Js6xIVBL9Bjk4ExNJ/Uo0hPjdMiflqpRavdtOoKPB/LMxODumVPGsZJrrWALR4zO5yScN6eoFRlr0Dv8aR4z8eyucjSjO6mjVH9PEGIBo2h7waiWGvX78aR5Y9u0QU4gdJDslvT4CU4a0OBaomEMeidbyFVIRRD0/zC068Nf7Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTxcA1I7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 395241F000E9;
	Tue, 30 Jun 2026 15:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782834163;
	bh=MNzdmtI26hhlgis7iHvjkaKObdLefwf2TLs7oUsZvRI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=UTxcA1I7SlQKZVmYpdr00uTW4atY24KujaYv/R9BnjWUPKPHpwU9Ol6Wg0SxITd9r
	 J509agtZkTWZzP5XZD3xrMiEQmNFUo9v1vk/DCwvSPsOhGe5IM/zEXtg1BZ+EDLZZ3
	 EDCjKGltIAsxUgXBma/vlIVm50sfGoG1+7NSG+QXprcTdRCHiXYyoWBYWOWR/J4bK8
	 IZv1o+DJFoaAGXviJvBxDSLQOy8s7PRIGo+PPi1+KD3i4oWJ7gOFHBzGCPtaYh38xq
	 tCfpzSnX3eotaM8T4vhs8vxc+m9gvkZ+2nQ/fUNVY/gGz/tBGmiGEO01+jk6joH67l
	 zKTunZlw9D7Ow==
Date: Tue, 30 Jun 2026 10:42:42 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Mikko Perttunen <mperttunen@nvidia.com>
Cc: linux-tegra@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, David Airlie <airlied@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
	Thierry Reding <thierry.reding@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Jonathan Hunter <jonathanh@nvidia.com>
Subject: Re: [PATCH v2 1/7] dt-bindings: display: tegra: Changes to support
 Tegra264
Message-ID: <178283416214.3689764.9700887048944091225.robh@kernel.org>
References: <20260622-t264-host1x-v2-0-ff7364d9ff7b@nvidia.com>
 <20260622-t264-host1x-v2-1-ff7364d9ff7b@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260622-t264-host1x-v2-1-ff7364d9ff7b@nvidia.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317922-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:mperttunen@nvidia.com,m:linux-tegra@vger.kernel.org,m:krzk+dt@kernel.org,m:mripard@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:airlied@gmail.com,m:tzimmermann@suse.de,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:thierry.reding@kernel.org,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:jonathanh@nvidia.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com,suse.de,lists.freedesktop.org,ffwll.ch,linux.intel.com,nvidia.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 325A06E60D5


On Mon, 22 Jun 2026 15:57:38 +0900, Mikko Perttunen wrote:
> Add nvidia,tegra264-host1x compatible string. The Tegra264 host1x is
> similar to Tegra234, but with a different set of engines and layout.
> 
> The engine register range is no longer continuous, so two range entries
> are also needed.
> 
> Signed-off-by: Mikko Perttunen <mperttunen@nvidia.com>
> ---
>  .../display/tegra/nvidia,tegra20-host1x.yaml         | 20 +++++++++++++++++++-
>  1 file changed, 19 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


