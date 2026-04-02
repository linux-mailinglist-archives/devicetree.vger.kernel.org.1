Return-Path: <devicetree+bounces-283802-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0F59CEcezml7lAYAu9opvQ
	(envelope-from <devicetree+bounces-283802-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 09:44:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C8F3855A3
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 09:44:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A992A300FECA
	for <lists+devicetree@lfdr.de>; Thu,  2 Apr 2026 07:38:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12CBB3845AC;
	Thu,  2 Apr 2026 07:38:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mpAylRjG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1A3D332604;
	Thu,  2 Apr 2026 07:38:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775115492; cv=none; b=WEnz86n09ItJL9md26htr9kPAL5rzu0T8B9xf1HkrSLAAsAndYzz4+ijvyfawnnHf9UN2b7d43KIPI1ZZ01emUsYATiCsfnE9X2cuU8HkSRoAcqThzUX3T/lehb2Qu8h+tZ3LnnzwXeE+rtqWt36x1lqeyuK0mgDw4a00TlveOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775115492; c=relaxed/simple;
	bh=uKKd7Tn3w7MO8cLMPB4qGLU0BxW/RZiH7cLoCD3vNZM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NbZNLUWk1s4KztHvdWJMC+MCT/BT8ZMz7Dl5JZzuIB5QXajARbR/9voNiTk1bqAsW+P61dSqMI+X1wMS6FT/9M6rxd+d2JATI3czj2NF7ZlvikNq4meu4K6N1UHBoTDbKJL3BuIqOVcpkXIGEZ/PYa44OFe2gHsA7mTlNGi8Wto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mpAylRjG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D24DC19423;
	Thu,  2 Apr 2026 07:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775115491;
	bh=uKKd7Tn3w7MO8cLMPB4qGLU0BxW/RZiH7cLoCD3vNZM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mpAylRjG7/MzBYWzdQUfj7URSgKLY5MtDD3+p2wh6Iu0WpfYMtR6AKB54O4Xlp8g7
	 ofRTdq/5DdjuzvmSgJy46yWbvAceSdqyKhuPiP7AvLruTXt9Z7NiE+kRUMVU1qKZYD
	 RlmaAHxf9EpFAcGKCxfki7ORQzw2EfZXPyu569XbYcLGS0XAyQjXoUhBxihvpOsXAf
	 vt7KDQPAzEYWPi2E0n/GmPob4ge2qRX2jmqfurMYEG9qbDSB47zPAur4OJberaWUPr
	 Fpdfuscv4olzqSzze+6tMVhA2HT7kY/Oa1r9aoCtpeKohxtacwROMO+NZYhS4KvjZA
	 xzQDHuPYKSEkg==
Date: Thu, 2 Apr 2026 09:38:09 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Guangliu Ding <guangliu.ding@nxp.com>
Cc: Daniel Almeida <daniel.almeida@collabora.com>, 
	Alice Ryhl <aliceryhl@google.com>, Boris Brezillon <boris.brezillon@collabora.com>, 
	Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: gpu: mali-valhall-csf: Document
 i.MX952 support
Message-ID: <20260402-axiomatic-ludicrous-panther-7a96d2@quoll>
References: <20260401-master-v2-0-20d3fbcd19d6@nxp.com>
 <20260401-master-v2-1-20d3fbcd19d6@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260401-master-v2-1-20d3fbcd19d6@nxp.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-283802-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[collabora.com,google.com,arm.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,nxp.com,pengutronix.de,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 73C8F3855A3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 01, 2026 at 06:19:12PM +0800, Guangliu Ding wrote:
> The GPU instance used on NXP i.MX952 is the Mali=E2=80=91G310,
> document support for this variant.
>=20
> A hardware GPU auto clock=E2=80=91gating mechanism has been introduced,
> enabling GPUMIX to automatically manage the GPU clock. This improves
> overall response time.
>=20
> Signed-off-by: Guangliu Ding <guangliu.ding@nxp.com>
> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml | 1 +
>  1 file changed, 1 insertion(+)

Why are you sending next version when the discussion is happening?

Best regards,
Krzysztof


