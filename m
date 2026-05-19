Return-Path: <devicetree+bounces-299987-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CIUFHQw1DGoKaAUAu9opvQ
	(envelope-from <devicetree+bounces-299987-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 12:01:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EED4957BCBA
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 12:01:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4504B301A93E
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 09:59:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9205946AF12;
	Tue, 19 May 2026 09:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uazA7qn3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C9093E1220;
	Tue, 19 May 2026 09:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779184798; cv=none; b=ZALj6aK81MvPZiIoRytKmThET+YHgN/cjmO9KWAU+oXuWFA/WOppyZhq+pmZMRxHXyov05AcO1UbrS7NVnhAiXkKWabNdnoLJkHqSEpr/JsknUmZD7Ny3cgV5XLTFGbok/MY5VNTsUGFxsdtiDIt2bD8jaSqCXx4ZCMwS7gaEe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779184798; c=relaxed/simple;
	bh=Z0vKOc7r2kW2KPOzWgaoABhrSGC1H7vmq3e+2RoG+fU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VhN9anY6StmaRN+fAslsGaTp3PHAv9ORUwd6YI+zEIbt2qPPWg1QYwWcOuFH0XrndP/pueI/z+5uV8Ox81yKF1UayKYfd9za6KjJHQcMHv/p2qMC61CGpyIQqU6J/PvfUvLihFNarSII/p5TlFAs4I5oavG6J++fw8StB/td5/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uazA7qn3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72E2AC2BCC6;
	Tue, 19 May 2026 09:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779184798;
	bh=Z0vKOc7r2kW2KPOzWgaoABhrSGC1H7vmq3e+2RoG+fU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uazA7qn39Omh173quvgScKbx7HCKeRL5BymeukmCnA2ZOHIFCW/MgtzRgHnrHVrbd
	 qfQ5XibtlS9lWsn8JHXxV9Qi0VGwv4ZDTjjJfmmpvqpPeHYCcCyu5atvr/7ZjHTR7+
	 Vql7GU3IIDUO3yVHftc8PmZ5D3Nkiu2cZak8x7rP71GIlwypGcAMfKRmyW4hpzJ4Vp
	 s8WhQEx86QlmYKnW52dSCN1l4aXGhnDJziAmG99IpDBrraDENYAihAtv7UXTE5ipp9
	 ASX5F+OrGZ8e5ytGfKWmvXUjN/6kdJvoCdUMg4qvfD78Fj5+Nx9zROKvAftMrl59U/
	 NtMVqdyPR7SCQ==
Date: Tue, 19 May 2026 11:59:55 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, 
	"open list:DRM DRIVERS FOR FREESCALE IMX 5/6" <dri-devel@lists.freedesktop.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"open list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <imx@lists.linux.dev>, 
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/1] dt-bindings: display: imx: Add television encoder
 (TVE) for imx53
Message-ID: <20260519-azure-mackerel-of-judgment-dcab1b@quoll>
References: <20260512223137.1190096-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260512223137.1190096-1-Frank.Li@nxp.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-299987-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: EED4957BCBA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 12, 2026 at 06:31:35PM -0400, Frank Li wrote:
> +  ddc-i2c-bus:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the I2C bus used for DDC (Display Data Channel) communication
> +      to read EDID information from the connected display.
> +
> +  dac-supply:
> +    description:
> +      Regulator supply for the TVE DAC (Digital-to-Analog Converter).
> +
> +  fsl,tve-mode:

This should be a required property, based on current driver code.

> +    $ref: /schemas/types.yaml#/definitions/string
> +    description:
> +      TVE output mode selection.
> +    enum:
> +      - ntsc
> +      - pal
> +      - vga

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


