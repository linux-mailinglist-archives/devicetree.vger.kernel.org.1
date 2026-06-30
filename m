Return-Path: <devicetree+bounces-317430-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id e3UsMvJnQ2oHYAoAu9opvQ
	(envelope-from <devicetree+bounces-317430-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 08:53:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7216E0E72
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 08:53:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Jyr53ROO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317430-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-317430-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 80AD53016260
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 06:53:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BBC528DB46;
	Tue, 30 Jun 2026 06:53:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 841BD2222AA;
	Tue, 30 Jun 2026 06:53:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782802414; cv=none; b=T0MNkdKlKT3cjZh6hv0bT0I0DBbvqWq1GCUTY6wPEKZLp8FRZHbnQtF+0f20u7QFbVl4Vq7tBYmAr+5pFampbkJV4tMem6xtVL26Ch5taRa69dbuMmSgAHOhmWDTcTnkK3DzV3951qNU589yzF8GWZX7VYOLxggyWCSt7RGaX5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782802414; c=relaxed/simple;
	bh=h8AZTGmFkGe9mknFt2AIZ5O4sheSouSxYSDIbiMF688=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l1iwGR5lbRpPJX/NB0dKi9clk83rBFRn/dKIlQVayd2ozEf/jkEmeas7f5WhrjS/CembDM6ZGRCBIJnHdehQGNbZ9NxKdaCwZAqfW7j643lK5fzNfuUOhcVm/TFC0Venen5MNuY0Q6u815QSFuptexrPiedC5Z+5e95pS+dRJf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jyr53ROO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00EB51F000E9;
	Tue, 30 Jun 2026 06:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782802413;
	bh=KSW3TZ+a/iFMqvksZvw3CMsuDYeufXrfGjXn6AhTWSg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Jyr53ROOs14lBM7XZSmU/cLTiiGPQ+nmRi9/IufUHJ329okFj1WEG5o6HIvsjzjWt
	 fokMqpL9uJVHsA6zKt4UDa0d1xIOLYv/OMFiZGE7gGGAxBuQ3mdQHntLhKqJtNx2YK
	 WQLNmJT8YEv5794IwNroBgqa70OR2OuaroRZZYXH3AJTbyrhMuxl7Q8wPD66E2dx4f
	 G9EgUSX5MNyaUf5++uqYsDaZ4sceZXPWhxTy2M4lydEkD/Zu8IYVHtMX1VJNtU+fgD
	 4S4gS0QbcWIP057gcShYU+dd26gE17T0c9mFnyPcX3JVeGvXg9Dlo38vdlsRVUh88m
	 81Mvy/Q8SBozQ==
Date: Tue, 30 Jun 2026 08:53:29 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ben Levinsky <ben.levinsky@amd.com>
Cc: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-remoteproc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, tanmay.shah@amd.com, 
	michal.simek@amd.com
Subject: Re: [PATCH v4 1/2] dt-bindings: remoteproc: document AMD BRAM-based
 rproc
Message-ID: <20260630-porcelain-skunk-of-modernism-2bf87a@quoll>
References: <20260629164003.3940208-1-ben.levinsky@amd.com>
 <20260629164003.3940208-2-ben.levinsky@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260629164003.3940208-2-ben.levinsky@amd.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ben.levinsky@amd.com,m:andersson@kernel.org,m:mathieu.poirier@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-remoteproc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:tanmay.shah@amd.com,m:michal.simek@amd.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-317430-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,quoll:mid,amd.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7A7216E0E72

On Mon, Jun 29, 2026 at 09:40:02AM -0700, Ben Levinsky wrote:
> Describe an AMD BRAM-based remote processor controlled through the
> remoteproc framework.
> 
> The binding models a soft-core processor subsystem instantiated in AMD
> programmable logic and using dual-port BRAM for firmware storage and
> execution. The remoteproc device is represented as a child node whose
> reg property describes the firmware memory window in the processor-local
> address space. The parent bus node provides standard devicetree address
> translation through ranges so Linux can access the same BRAM through the
> system physical address space.
> 
> A clock input feeds the soft-core processor subsystem, and an active-low
> reset GPIO holds the processor in reset until firmware loading
> completes. The firmware-name property is optional.
> 
> Signed-off-by: Ben Levinsky <ben.levinsky@amd.com>

So you are going to ignore my emails? You know, it can work both ways.

I drop this from Patchwork.

Best regards,
Krzysztof


