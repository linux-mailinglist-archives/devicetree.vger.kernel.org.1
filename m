Return-Path: <devicetree+bounces-275028-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGBYOBbRs2lHbQAAu9opvQ
	(envelope-from <devicetree+bounces-275028-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:55:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3915A280071
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:55:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E106E3014656
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:55:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 155033054EB;
	Fri, 13 Mar 2026 08:55:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAVi6WQa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E616C21B191;
	Fri, 13 Mar 2026 08:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773392148; cv=none; b=UDlciS0ztKbAp+CbbUYH7kJfEr3YMesIWdX4Xt8+dbtDFfaBAcByePWSt/ztBobk7crlnLQmxYmj0y49Xl1Fw2yEvoUFUBrkLGHE+uEsvtv0MQmaK6iwiv4p21b+ob8m51z2Yd+AyBUcXRClbm0QZkblCZeIT7XzbYCtU5GYEeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773392148; c=relaxed/simple;
	bh=ucTTcukYbtNVWOhR2wfdso2m++nGKWhQyMqNtiUzjF8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PUpWMD1BkwH/EEF5XTzqTLdARXVfLrPEtccIVZDF2b5qoSPH5GbDJVPNppOR53LvJPQlkvBMkC1SzqzzKrvCLNa+W2wUFHlnPK3KJXKRjzh70/cNkdOszv2JflZqhpm7pzcek1tPweBYfRiSb3LRonM5SNr5MPvCEc+NlkLo7Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAVi6WQa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0491AC19421;
	Fri, 13 Mar 2026 08:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773392147;
	bh=ucTTcukYbtNVWOhR2wfdso2m++nGKWhQyMqNtiUzjF8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lAVi6WQa0IJlX9YxNyPpEorbhpqoVb4iCdGPThgB19JTT1BUQcK9w8nH7yCsJ/W/g
	 oRzTF/V7K2RrFet8826dyQKg1Ev8dwmFMdOCuoRK1Q+pZ38VQG9VdLPjP8/bChAbxG
	 potY4RSegHY53/8g03yWosZAkZSjcnFJxJgeV1K2LHqHGNwIh8MDc8u5tm/ft/qt7f
	 65Z5r8qqUXgTEICmu7Z6/5d3RjwntmwAtXcfJprbMtF0HvtcXMTkExbrE2fnlGrKrM
	 tMeKdUU/GYaAB1pRVJlBlf6ey4+LtJWplCzNGo3eERDJq8yRh3QiAVKoYV64IhbrdR
	 P6l4dJpfGJCDA==
Date: Fri, 13 Mar 2026 09:55:45 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Sudarshan Shetty <tessolveupstream@gmail.com>, andrzej.hajda@intel.com, 
	neil.armstrong@linaro.org, rfoss@kernel.org, Laurent.pinchart@ideasonboard.com, 
	jonas@kwiboo.se, jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, marex@denx.de, 
	valentin@compulab.co.il, philippe.schenker@toradex.com, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	dri-devel <dri-devel-bounces@lists.freedesktop.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: bridge: ti, sn65dsi83: Add
 dual-link video mode property
Message-ID: <20260313-warm-whippet-of-spirit-e7f8f5@quoll>
References: <20260312043743.261475-1-tessolveupstream@gmail.com>
 <20260312043743.261475-2-tessolveupstream@gmail.com>
 <DH0X5VHW15QI.XOHUGC314J1P@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <DH0X5VHW15QI.XOHUGC314J1P@bootlin.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275028-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,linux.intel.com,suse.de,ffwll.ch,denx.de,compulab.co.il,toradex.com,lists.freedesktop.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.2:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.3:email]
X-Rspamd-Queue-Id: 3915A280071
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 04:46:40PM +0100, Luca Ceresoli wrote:
> Hello Sudarshan,
> 
> On Thu Mar 12, 2026 at 5:37 AM CET, Sudarshan Shetty wrote:
> > Add a new optional device tree property `ti,dual-link-video-mode`
> > to indicate that the bridge should configure the device for
> > dual-link LVDS video mode.
> >
> > In dual-link configurations, some panels require the horizontal
> > timing parameters to be adjusted before programming them into
> > the device. In such cases, the horizontal timing values must be
> > divided by two when operating in dual-link mode.
> >
> > Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> 
> This is not needed. Dual link mode is already implied by the presence of
> port@2 and port@3.

Yep!

Thanks for chiming in.

Best regards,
Krzysztof


