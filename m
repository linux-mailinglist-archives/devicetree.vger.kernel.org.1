Return-Path: <devicetree+bounces-272455-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sA3mAbc+rGnwngEAu9opvQ
	(envelope-from <devicetree+bounces-272455-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:05:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E0122C4C3
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:05:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 377AD302A2EF
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 15:05:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F001F392C45;
	Sat,  7 Mar 2026 15:05:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+u3PVQk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8AC186E58;
	Sat,  7 Mar 2026 15:05:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772895914; cv=none; b=AQJs0smWyHitZf3Tyjf1asM/pO6IjbfDx5CSKhdHWr2Sod1AFFANqbg3K99RFyCg4VrxYp9oUa9r6z1xhNxzPK7t2/APQPImPriO/VViJDr2py9zB59CATKrwMqWyoxlkNL/MHyV59x7QXvy2IdfbVsGXqEX9aBeR4dQx75pdxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772895914; c=relaxed/simple;
	bh=0hbBsl1lGdmRWPCfaDt1GzEaXdDJHOpPTiYFPKe55qs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZD6JhYI6Z9+/+BgJcwUpI1NxDWqUOHOA0yEbosSOvgo69t19aqvbSkXYr+jlLLSmtHsRHgKuX/0Mm5odycZ65YYwN0xUGgtnSYMogFa4q9IKCAtClN5s8CBnt1RyZU/ihaZw1vWoo574k2M6o9wJ4NJBdviy+rPpIG+dxpzTm3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+u3PVQk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E24F9C19422;
	Sat,  7 Mar 2026 15:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772895914;
	bh=0hbBsl1lGdmRWPCfaDt1GzEaXdDJHOpPTiYFPKe55qs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p+u3PVQkYAROhrqZbLlUrMu9E9QCXmhSlwcpk8J1+R8IoIo7R6fdlG8LulK7OfNy0
	 XyH/m28DuIdXQPiH/VqTqTdSzPIMb+gHu/OaREJLnjRvFyb7ie9cAv2AWoSZWl4UjA
	 fX9LxX0ojxuwyHG5odpeHnLfP6d9vEx/jvntfXVTD+kYjPuPwBAk+bHym4+mUkkYLC
	 LT1SqbglXMD0s3/+NpeAz9K7Gxkz/PAxBWltJCT0cIos2QoiG4VUG3VN8/oNaeoq7j
	 sLoAyU9ZuKarObDFqh1/hdeMxTTeqrZtu0BRmqQ5SiO6SbY5EhSlc0sOCD8MY7KLFS
	 wE5bbz/e6LtoA==
Date: Sat, 7 Mar 2026 16:05:12 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Cc: dri-devel@lists.freedesktop.org, Jagan Teki <jagan@edgeble.ai>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: display: panel: Document the rotation
 property
Message-ID: <20260307-dingo-of-nonconcrete-opportunity-ea70bd@quoll>
References: <20260306124808.166776-1-l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260306124808.166776-1-l.scorcia@gmail.com>
X-Rspamd-Queue-Id: 64E0122C4C3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272455-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.986];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,edgeble.ai,linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,bootlin.com:url]
X-Rspamd-Action: no action

On Fri, Mar 06, 2026 at 12:44:21PM +0000, Luca Leonardo Scorcia wrote:
> The Jadard jd9365da-h3 driver already allows DRM to get the panel orientation

Please wrap commit message according to Linux coding style / submission
process (neither too early nor over the limit):
https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597

Please run scripts/checkpatch.pl on the patches and fix reported
warnings. After that, run also 'scripts/checkpatch.pl --strict' on the
patches and (probably) fix more warnings. Some warnings can be ignored,
especially from --strict run, but the code here looks like it needs a
fix. Feel free to get in touch if the warning is not clear.

> via the device tree rotation property (described in panel-common.yaml),
> but it's currently not documented.
> Describe it in the driver documentation to fix a dtbs_check error in
> Xiaomi Mi Smart Clock x04g, where the panel is landscape-oriented.
> 
> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
> ---
> v2: Review feedback: improved commit message to explain how the rotation
>     property is used by the driver and why it's needed in the driver
>     documentation.
> 
>  .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml  | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

ONLY after these fixed:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


