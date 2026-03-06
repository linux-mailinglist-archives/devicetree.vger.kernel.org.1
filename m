Return-Path: <devicetree+bounces-271895-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFt0MPuRqml0TQEAu9opvQ
	(envelope-from <devicetree+bounces-271895-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:36:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5430421D2E4
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:36:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DBCEC302F400
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 08:36:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 176B0378D99;
	Fri,  6 Mar 2026 08:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cutZbGR/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E907737754C;
	Fri,  6 Mar 2026 08:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772786165; cv=none; b=nFU0fgyLwZmL7oYrxypLNkR9iqNFE24coC7zDGtb3PKh0czNoUMEmla1KpuEvQ05okjtRBv8E8xpfaeqmvFygLWA0NmD0yRjoeXASQoIM405cwjwoXGD8fTqe8LpvAB8g76/Iz8/CvV1A+FVtTZCdQ541ZFlnxjJbhBgrJvE5v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772786165; c=relaxed/simple;
	bh=K6vWm4Ec3elJaHEqFrSeZKTSxPieMkgFj2xoEzsCz0s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BbrzPeUE9iAETdVFt7HtiQ3LMzmpdUD76Z9zjJte4CD0OhAW2B/7hiE2UBmV7NfzCBUG1FXekjET7ETLcPHJK2TBc7urve2dfuuRpY4ibwtdAV2PTC5GSfAVep6UPrA/Sjk6I7iTpsLMCISWuEjNVpURIE62GnEG26NzGshXb94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cutZbGR/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4B1BC4CEF7;
	Fri,  6 Mar 2026 08:36:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772786164;
	bh=K6vWm4Ec3elJaHEqFrSeZKTSxPieMkgFj2xoEzsCz0s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cutZbGR/ygpZA5ybvB2DGVZDuyw9lv3zZ8r3Y4MLZwO8KmuKWyaVbSBjQAb6Ckc6u
	 VEvBkY82/FmyrMQy3EvS+TBqNzxzPyDskXtwgon5n/r9KKHtJkhS2hU9IyNFDzmEpG
	 NvczH3cw/TvDKXnkC9O7J0wo1cRhSt6VHnMrsxhOQDR3FJ8kA1QzrzZ2Nw4Deuvgs7
	 y433yjWQvPkXOTdBor5y8MPdUnK/k/YBZe17HKf/vPpWxZiQzKrqKAW+6G7khux/1s
	 blDdazOOBy8MwQCgevvUqxcZ1jxRC15iR8XaZP/lwCltyomQZ0k4RRimOrIuJAke6v
	 onLZWnDiBm8vA==
Date: Fri, 6 Mar 2026 09:36:02 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Cc: dri-devel@lists.freedesktop.org, Jagan Teki <jagan@edgeble.ai>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Marek Vasut <marex@nabladev.com>, Kael D'Alcamo <dev@kael-k.io>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: Add compatibles for
 Zhunyi Z40046
Message-ID: <20260306-rugged-coati-of-brotherhood-e2cee2@quoll>
References: <20260305195650.119196-1-l.scorcia@gmail.com>
 <20260305195650.119196-2-l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260305195650.119196-2-l.scorcia@gmail.com>
X-Rspamd-Queue-Id: 5430421D2E4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271895-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,edgeble.ai,linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,sntech.de,nabladev.com,kael-k.io,bp.renesas.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Thu, Mar 05, 2026 at 07:56:30PM +0000, Luca Leonardo Scorcia wrote:
> The Zhunyi Z40046 is a 480x800 24-bit WVGA DSI panel based on the
> Fitipower JD9161Z DSI controller found in the Xiaomi Mi Smart Clock
> x04g, apparently in two different variants.
> 
> The Fitipower JD9161Z LCD driver IC is very similar to the Jadard
> JD9365DA-H3, it just uses a different initialization sequence.
> 
> Since this is the first supported device from this vendor, document its
> name to the vendor-prefixes.yaml file as well.
> 
> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
> ---
>  .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml   | 2 ++
>  Documentation/devicetree/bindings/vendor-prefixes.yaml          | 2 ++
>  2 files changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
> index 5802fb3c9ffe..da17072ffaaa 100644
> --- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
> @@ -23,6 +23,8 @@ properties:
>            - melfas,lmfbx101117480
>            - radxa,display-10hd-ad001
>            - radxa,display-8hd-ad002
> +          - zhunyi,z40046v1
> +          - zhunyi,z40046v2
>        - const: jadard,jd9365da-h3
>  
>    reg:
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index ee7fd3cfe203..18121440dc22 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -1913,6 +1913,8 @@ patternProperties:
>      description: Shenzhen Zkmagic Technology Co., Ltd.
>    "^zte,.*":
>      description: ZTE Corp.
> +  "^zhunyi,.*":

Don't mix up the order.

Domain is zhunyikeji, so should be the prefix.

Best regards,
Krzysztof


