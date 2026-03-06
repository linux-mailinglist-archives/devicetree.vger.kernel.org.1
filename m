Return-Path: <devicetree+bounces-271894-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHX7B8mRqml9TwEAu9opvQ
	(envelope-from <devicetree+bounces-271894-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:35:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 781B621D2AD
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:35:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A1DA3301AA49
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 08:34:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 994B537754C;
	Fri,  6 Mar 2026 08:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmo5QHLM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 747F3318BA6;
	Fri,  6 Mar 2026 08:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772786094; cv=none; b=UNjvXoeR0u3BSkSPnLyrKBWACwvMe8ucq+tAWvUIxY4e+4/DsEcUgdh9w0EJXjJKUliWSlbgr1S6etRW5I4RvNzTBjJ/sp7+3M7sBrTs5/hxvpy2As+PvcjeTsBO+gF4CNBWbEE0xCyIKeaYswaN2rfInv8Is2d7hLnrcETjVf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772786094; c=relaxed/simple;
	bh=ShhR40azrzG1K39i6kIdPJfgutLuB6UYY1fZN29Hjnw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rjpM1V2/K2N+S/ikytUQjNMDc5gunsbuT5MFhmfnibntlLBCULB9rn5IZpj3D4Kaj+/PFVTdAFBJEMFSU0tuRUh/Vf98164Qog4MHa7LhSiP8Pf3zZITTUcmawaodsxctKko0AvVWWtr7uz4ACINj1fIbuuBJxuotO0yqnjDQK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmo5QHLM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FF65C4CEF7;
	Fri,  6 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772786094;
	bh=ShhR40azrzG1K39i6kIdPJfgutLuB6UYY1fZN29Hjnw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cmo5QHLMaxe1SIPDVj9K17oXLMgbk/ISTQLuioDSNXGpfDCZbQcIFBEeqzJIk5DK/
	 wYNbcylw54GxEIjimAd2F6KW9Gnyc9VoEw9hKQZuQnBq8+HsCt6aVYev8ewu3NbqkZ
	 L1hd6O7Z/be4uSwM3muzuHgiqUR1kQt78NNyR0EQbo3yEr2qjseVOt92GT9nm1ZtVt
	 AWJkR5ZAJjhmkdocuA5FcTqqMAt5tB3kLzrY/jg918U8NxN5ScrQ95rrbYXbwPgchr
	 +Ro0fqA65s+9faz+yLmyjXXn8Jm5jRPB1PRCE6ixLPgZZGDpR7X/XT/xh9I2IlSw9b
	 xa6ilRGUyPR6w==
Date: Fri, 6 Mar 2026 09:34:51 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Cc: dri-devel@lists.freedesktop.org, Jagan Teki <jagan@edgeble.ai>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: display: panel: Document the rotation
 property
Message-ID: <20260306-splendid-ruby-dragon-2dfcfe@quoll>
References: <20260305192405.111152-1-l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260305192405.111152-1-l.scorcia@gmail.com>
X-Rspamd-Queue-Id: 781B621D2AD
X-Rspamd-Server: lfdr
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
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271894-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,edgeble.ai,linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Thu, Mar 05, 2026 at 07:24:04PM +0000, Luca Leonardo Scorcia wrote:
> The Jadard jd9365da-h3 driver reads and reports to DRM the orientation
> property from panel-common. Document it.

You should explain here hardware as well. Does hardware report it? What
if driver fakes value?

> 
> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
> ---
>  .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml   | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
> index b8783eba3ddc..179401ce3aeb 100644
> --- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
> @@ -36,6 +36,8 @@ properties:
>  
>    backlight: true
>  
> +  rotation: true
> +

Drop blank lines between all ":true" cases.

>    port: true
>  
>  required:
> -- 
> 2.43.0
> 

