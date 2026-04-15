Return-Path: <devicetree+bounces-287699-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IARfDioI4GmLbwAAu9opvQ
	(envelope-from <devicetree+bounces-287699-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 23:50:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id F00D54084BA
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 23:50:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1E72230498ED
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 21:50:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7E5E38CFFE;
	Wed, 15 Apr 2026 21:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scRZqE6d"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9512A386C21;
	Wed, 15 Apr 2026 21:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776289825; cv=none; b=VYM4VJunAFo5xVEogZoAbFTqkYj2Ra/YQzKLlaFF2dRt4+nuVpRaiRWnm5IMDN3ztDYrBnNz1GwqzqJKNDapt7/Tg2II/TzP+WbGSkZFpVDg5wBzmIKeTjAI3fqh8ToWtqz+4gvvbMhsaTJXxxwZog3qJESEwdUYQ9FXZEnS++U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776289825; c=relaxed/simple;
	bh=JRxXzR3g5c+cTy2Vb+XX5fGSgff3dULT39nwMELm/1E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZLx4Grnu/JWUxFWWPQ9yp+KBFBFzQQPBkpmXoPPb95TeB/Qrjte09EN9cjkpnUhSVSRPxkT35w2nZF3gpuxr1nC0yLqCoTNj8JZU144VgaBKFxeqiwABoPiBf9jSw/ghciWO2/O0rxKqpWfZZ5K4kcO4f8kua4qdPzdWXMZSgBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scRZqE6d; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56112C19424;
	Wed, 15 Apr 2026 21:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776289825;
	bh=JRxXzR3g5c+cTy2Vb+XX5fGSgff3dULT39nwMELm/1E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=scRZqE6drykXztWxgLVlag+FWAjBkp+hyOpwqD2qp6+lA7Vwlfcd6Vo+W2ApYowkB
	 eir5G3qnfmcwG6mwB53yTHN6iZGPSTTKarnYvTe0ThmXdyH+6Zvxu4n9TIk8OMgQO7
	 tJw4nkS3RNSi8CLWw6Tzbn2UTuFBoGC0KbZmiJp8ZKwNAgwmXB1+xNwGwNgI1Z67u8
	 OmJL1u2WNkVtF4L1lPNwUpVOYk3zowxofzVOPlQ2tWBg500F35rzf/jtKV02k4ycu7
	 3PRNQ2ML2IeGsM149D/FPs9oaP4vXA1HO4kqRrm1eOc0w0NbvtpC6Qy5pbcjEx/VwV
	 OKxCDCfC+rFHw==
Date: Wed, 15 Apr 2026 16:50:23 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Marek Vasut <marex@nabladev.com>
Cc: Simona Vetter <simona@ffwll.ch>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Liu Ying <victor.liu@nxp.com>, Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	David Airlie <airlied@gmail.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	linux-kernel@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: Move AUO 21.5" FHD to
 dual-link
Message-ID: <177628982188.714526.9119915024836476194.robh@kernel.org>
References: <20260404034321.341210-1-marex@nabladev.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260404034321.341210-1-marex@nabladev.com>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[ffwll.ch,kernel.org,vger.kernel.org,linux.intel.com,nxp.com,linaro.org,gmail.com,ravnborg.org,suse.de,lists.freedesktop.org];
	TAGGED_FROM(0.00)[bounces-287699-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,intel.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:email,lists.freedesktop.org:email]
X-Rspamd-Queue-Id: F00D54084BA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Sat, 04 Apr 2026 05:42:49 +0200, Marek Vasut wrote:
> AU Optronics Corporation 21.5" FHD (1920x1080) color TFT LCD panel
> is a dual-link LVDS panel. Move it into the correct schema, which is
> panel-simple-lvds-dual-ports.yaml.
> 
> Signed-off-by: Marek Vasut <marex@nabladev.com>
> ---
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Jessica Zhang <jesszhan0024@gmail.com>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Liu Ying <victor.liu@nxp.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Simona Vetter <simona@ffwll.ch>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  .../bindings/display/panel/panel-simple-lvds-dual-ports.yaml    | 2 ++
>  .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 --
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 

Applied, thanks!


