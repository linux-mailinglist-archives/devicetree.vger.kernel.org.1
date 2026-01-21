Return-Path: <devicetree+bounces-258028-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMaBJfIDcWmgbAAAu9opvQ
	(envelope-from <devicetree+bounces-258028-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 17:50:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 234165A246
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 17:50:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 87DEC7A9EAC
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 15:38:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D30CA3F23A0;
	Wed, 21 Jan 2026 15:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHDrl9Yv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADA552F28EF
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 15:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769009006; cv=none; b=Azwwk10U2J2SFvBqcVY8FkGDdx1Ej/JC9fe/1GslTm1bqLyrBy+Uc7LBdbATlQa287AfLWMEKDBtZIDq+Tv/cyAldE8O5MryREoUhlcMvw4HHQWEG/8Aa0qCb6E6QObvEx6kVcYc4rpI/XckuYWAULRs+EXhPW7PENXeKh5mdWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769009006; c=relaxed/simple;
	bh=iFZDwVA7Uf5gTTRjwXE5KL6hD6mjuWvyyFd50SkCOww=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iILhQVnKZ3M6mfgeFmS39iuWHZuoxp3zYiyqAa3CUYmmCTsnkBY6OqCPBQccu2C5b9sDkjPTxIJgjsB1JKBn4GDQ8cSU2smrD5DqkLLm6CEvw2ZuaX4dR3N3jtp7hJaU5dlw9jevSJBXAlolE5iiNl+d+93ItmcG+LU5Bgr5Bso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHDrl9Yv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50437C2BCB2
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 15:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769009006;
	bh=iFZDwVA7Uf5gTTRjwXE5KL6hD6mjuWvyyFd50SkCOww=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=BHDrl9YvUw1kUmyeB5MKtI+9Si9Ol+wXHBplkBKPYd0u6pOod8g+vZMCRzh3eakKZ
	 hxZjqAfUj/a/W3kjBtsXY32Xbx9a3K6gkviSTuquB8U2InBWDrtWxASH6XhKl3Xkum
	 v3rjLqGs7uW2h5QpPZRfiNem8VLwG+aFK7BUg8+mH5s5pfsHJiJyE2PeZQ5+QE+a5L
	 2wzpfED5ThqUGvwIEi8bBzAwhSmusA92wsvS3RVP4UI/H4CspPPYiIi5KHhHPV4kry
	 vpy0Rk8i4nnLzrQOpQlngrMwDebpVBqS3BGVC7aiNetk+R2Cuqh4KGCHLT8SQ0+9fB
	 f8AeZgJbgoYVg==
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-6580dbdb41eso2553532a12.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 07:23:26 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV6wcm3jQzr7Y8c4B8IpQ2LqC+C7YY/LBwVW6c0Xm0C+tc6nW5JZo2HfoEdq7468oSjF+3iTPBV59MV@vger.kernel.org
X-Gm-Message-State: AOJu0YzqOBwPug0KOs11MAyTBB7W6AHd5zypmNBa3RvIV203SAIMMWMv
	lNDIvwgRVhwiCK1hGEzA/X1wMTJKAcqeWVV6xfg7tFQoLBcZcVrP1m6vAwVTjtUS0ZGhPJ00AIp
	l0HOS31CSbImcl3AiTLyZCNHidkHotw==
X-Received: by 2002:a17:907:3e8c:b0:b87:2579:b6cf with SMTP id
 a640c23a62f3a-b8800348798mr476675266b.41.1769009004718; Wed, 21 Jan 2026
 07:23:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260115-v6-18-topic-imx93-parallel-display-v9-0-2c5051e4b144@pengutronix.de>
 <20260115-v6-18-topic-imx93-parallel-display-v9-1-2c5051e4b144@pengutronix.de>
In-Reply-To: <20260115-v6-18-topic-imx93-parallel-display-v9-1-2c5051e4b144@pengutronix.de>
From: Rob Herring <robh@kernel.org>
Date: Wed, 21 Jan 2026 09:23:12 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLLZXwvht0KbPfoMVRhp0doNh971rKKv3FoCOTDjoDWKA@mail.gmail.com>
X-Gm-Features: AZwV_Qgxsl8jhK-Kzr0JzdnglYTDbfqkbMibvySBi5iB5cvgn_7BXkMMMsPSmxU
Message-ID: <CAL_JsqLLZXwvht0KbPfoMVRhp0doNh971rKKv3FoCOTDjoDWKA@mail.gmail.com>
Subject: Re: [PATCH v9 1/3] dt-bindings: soc: imx93-media-blk-ctrl: Add PDFC
 subnode to schema and example
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>, 
	Liu Ying <victor.liu@nxp.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	luca.ceresoli@bootlin.com, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,nxp.com,intel.com,linaro.org,ideasonboard.com,kwiboo.se,linux.intel.com,suse.de,ffwll.ch,bootlin.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-258028-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,mail.gmail.com:mid,nxp.com:email,pengutronix.de:email]
X-Rspamd-Queue-Id: 234165A246
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Jan 15, 2026 at 9:25=E2=80=AFAM Marco Felsch <m.felsch@pengutronix.=
de> wrote:
>
> From: Liu Ying <victor.liu@nxp.com>
>
> i.MX93 SoC mediamix blk-ctrl contains one DISPLAY_MUX register which
> configures parallel display format by using the "PARALLEL_DISP_FORMAT"
> field. Document the Parallel Display Format Configuration(PDFC) subnode
> and add the subnode to example.
>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> [m.felsch@pengutronix.de: port to v6.18-rc1]
> [m.felsch@pengutronix.de: add bus-width]
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  .../bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml | 78 ++++++++++++++++=
++++++
>  1 file changed, 78 insertions(+)

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

