Return-Path: <devicetree+bounces-317458-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jrFqLEV0Q2rHYgoAu9opvQ
	(envelope-from <devicetree+bounces-317458-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:46:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5826E1561
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:46:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=E0XbB2vM;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317458-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317458-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CF0CE30072B6
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 07:46:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B461F3546D3;
	Tue, 30 Jun 2026 07:46:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A19173655D6;
	Tue, 30 Jun 2026 07:46:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782805568; cv=none; b=Y2YEJVVnuNnGKz2xSjuwl/gYlqqiEJc3zMwBX7R5fhW0VMHROsptj0hPc5bxnFU0XULGLyxwKdVVmYATVYTawwaHhvJt4iFLrKTstmpmgKrX8+SdL9TdGIqR/BRf5FBGxV/5gP3zqW8EQkAYDhXjW5bCByZIMhaEJJ8QBWq9nMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782805568; c=relaxed/simple;
	bh=KJHB83GnWnnrWwuXXVXSExmjDf9VQIe0JXA+Do8zQRM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E3vXugzBJn9A3FZ5pJrgHBY55f9DhEIkE60LKuu4QtfC2xqLJbfdAlahzzDSdNZ1MGJIpOs1nelYoN2OhCk2eiL5yG7j/jF7B8n4RkgPGN6RYtIefIEMBxAgGx0bMQ+sBUMlND+MU1OzkcZUhkmjYAh5xtVXoRc+Egb+V92QwQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0XbB2vM; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87A841F000E9;
	Tue, 30 Jun 2026 07:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782805567;
	bh=BneXgfQjYcjalGELmnWGSOHtMIAn4pI8vNVZoFuYMac=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=E0XbB2vMT67FaNuvfrF3TI6s7eh4nu9otGcu80RlRxMIj5hmqAPn/pjHud7sbH3Rd
	 woiN624m2UrpjkfctseTbXMjQR9uBtTTWEkp+sHi8A26UusHtrGHXc00GyUbXPgCSo
	 Y+DKIgD+pTHwSXXpDZUSyDZciteQhMmu+l3xmTYqJNHMVNJfWO56O+8GWgbMkXcBwZ
	 x+GeDtGdM0yCWx3gqGnTOQMyJ/Xsyl7yS1ltMuvO0A+OYkNciRkfGboGq0Rg0+L8CV
	 J/N1YOozIJeRTpYvsVYzlhwLIeBFWwdfc1lRVVo5c9kDQW0RRJIl+SRykGX5b18OgH
	 CbDk3RNeRLjBQ==
Date: Tue, 30 Jun 2026 09:46:03 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: Add Novatek NT36536
Message-ID: <20260630-tanuki-of-extreme-grandeur-ef1cb4@quoll>
References: <20260630023439.248861-1-mitltlatltl@gmail.com>
 <20260630023439.248861-2-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260630023439.248861-2-mitltlatltl@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mitltlatltl@gmail.com,m:neil.armstrong@linaro.org,m:jesszhan0024@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-317458-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,quoll:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AA5826E1561

On Tue, Jun 30, 2026 at 10:34:38AM +0800, Pengyu Luo wrote:
> NT36536 is a driver IC used to drive MIPI-DSI panels. It is found in
> LENOVO Legion Y700 Gen4 with a 10-bit CSOT panel.
> 
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---
>  .../display/panel/novatek,nt36536.yaml        | 90 +++++++++++++++++++
>  1 file changed, 90 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/novatek,nt36536.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt36536.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt36536.yaml
> new file mode 100644
> index 000000000000..f854fc99ba81
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/novatek,nt36536.yaml
> @@ -0,0 +1,90 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/novatek,nt36536.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Novatek NT36536 based DSI display Panels
> +
> +maintainers:
> +  - Pengyu Luo <mitltlatltl@gmail.com>
> +
> +description:
> +  The Novatek NT36536 is a generic DSI Panel IC used to drive dsi
> +  panels. Support video mode panels from China Star Optoelectronics
> +  Technology (CSOT).
> +
> +allOf:
> +  - $ref: panel-common-dual.yaml#

Nothing in commit msg or description explains why is this a dual-link?

Judging by example this was intentional, so it should be mentioned
somewhere.

With this improved:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


