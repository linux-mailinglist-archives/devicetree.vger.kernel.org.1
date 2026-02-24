Return-Path: <devicetree+bounces-267895-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CHOeBPafnWlrQwQAu9opvQ
	(envelope-from <devicetree+bounces-267895-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:56:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A4AA4187498
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:56:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 042133009092
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:56:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 311DE39A80E;
	Tue, 24 Feb 2026 12:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="WzME5b7e"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0486137D108;
	Tue, 24 Feb 2026 12:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771937777; cv=none; b=OJisqE4+wU8C5oXtYk9BbI9hdhyoDTilbKWDIy86jxO1nLjplxqYDKMsp974i5mOcoX9vMlWAu+goab+gNZU3i/wltmLASD96LWEQGBIfymJQDeKaxKXSwTkIoNiD7tTG4v97836+KcYyJ2VOcs+QPWf9Txc97TEvqzllhP0nTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771937777; c=relaxed/simple;
	bh=CcRt70biYKkDFipZyfmDV53IZKVaZ20bBmMfd8cGroY=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=jh+g6Uf1zhYt1TnXQ51tsxmDgiYRzD6A88jXMWwUOaMWmRfPx8jHHKrlfFgJCZl9PEcsbExv9emLInWkP/fz4CyEyGaimHp6WibJzDb6+pgoyi/Xv/iltmNhK82Vanm3LVFqQ7XonvJoI4hMy0lVwR2thJjrgMadzOJZWH0l8DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=WzME5b7e; arc=none smtp.client-ip=198.175.65.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771937776; x=1803473776;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=CcRt70biYKkDFipZyfmDV53IZKVaZ20bBmMfd8cGroY=;
  b=WzME5b7eBo0GPk3gXZZt5ToofuuRH3s76D6/F1o6O34ofduX2HyTBirX
   ves6Mv/3P3fVImeiLqpUQifylQEOOO0xVJpJryiqbGKKasTMQl/+Mmb7u
   etzpBip92HiT67+edqYmuk4FlhjX48MfHzqLbL+OHL/gO+F9G1Cmvkf/i
   BfUujOiFcyHDc4Z3U56wDauTbp/w19S9uZf5TiS+wokU/gLXqGPattEr3
   IoElgA7V7zNJY4npacPLzfcR+FifLONA57bBzqIPOTYbIHA7RDC67n3KU
   rFrZTTchGIE7/QzcpTd3hvLLKcIpvu7eRqwTr14ktvvPbtDVKV2OXAuyP
   w==;
X-CSE-ConnectionGUID: SxqKU2DxSZSryHHTJQKxfQ==
X-CSE-MsgGUID: 7kvh+F/PR3+LsO4ZypR64w==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="72653385"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; 
   d="scan'208";a="72653385"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2026 04:56:16 -0800
X-CSE-ConnectionGUID: hoAFSC77RYiRhwwC3QAK+g==
X-CSE-MsgGUID: ONZjiCbyTne3EjtXYkL+7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; 
   d="scan'208";a="220413191"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost) ([10.245.246.20])
  by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2026 04:56:09 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Hermes Wu via B4 Relay <devnull+Hermes.wu.ite.com.tw@kernel.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong
 <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, Laurent
 Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie
 <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: Pet.Weng@ite.com.tw, Kenneth.Hung@ite.com.tw, Hermes Wu
 <Hermes.Wu@ite.com.tw>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Hermes Wu
 <Hermes.wu@ite.com.tw>
Subject: Re: [PATCH 1/3] drm/bridge: Add ITE IT6162 MIPI DSI to HDMI bridge
 driver
In-Reply-To: <20260223-upstream-6162-v1-1-ebcc66ccb1fe@ite.com.tw>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260223-upstream-6162-v1-0-ebcc66ccb1fe@ite.com.tw>
 <20260223-upstream-6162-v1-1-ebcc66ccb1fe@ite.com.tw>
Date: Tue, 24 Feb 2026 14:56:06 +0200
Message-ID: <7b5286af8694712a8a65f6aad5e965418b6b3109@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_TO(0.00)[kernel.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267895-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,Hermes.wu.ite.com.tw,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A4AA4187498
X-Rspamd-Action: no action

On Mon, 23 Feb 2026, Hermes Wu via B4 Relay <devnull+Hermes.wu.ite.com.tw@kernel.org> wrote:
> +static const struct drm_edid
> +		*it6162_bridge_read_edid(struct drm_bridge *bridge,
> +					 struct drm_connector *connector)
> +{
> +	struct it6162 *it6162 = bridge_to_it6162(bridge);
> +	const struct drm_edid *edid;
> +
> +	drm_dbg(it6162->drm, "it6162_bridge_read_edid");
> +	edid = drm_edid_read_custom(connector, it6162_get_edid_block, it6162);
> +	if (!edid) {
> +		drm_err(it6162->drm, "failed to read EDID");
> +		return 0;

Just checking the EDID stuff in passing, and noticed this returns plain
0 for NULL, which is discouraged.

In any case, I'm not sure what the extra error message is worth here
anyway. Your low level it6162_infoblock_request_data() prints errors and
drm_edid_read_custom() prints (some) errors as well. Too many?

BR,
Jani.

> +	}
> +
> +	return edid;
> +}

-- 
Jani Nikula, Intel

