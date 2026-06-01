Return-Path: <devicetree+bounces-305140-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kEt7CI91HWqebAkAu9opvQ
	(envelope-from <devicetree+bounces-305140-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 14:05:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8873F61ED21
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 14:05:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AD7A2302FA15
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 12:03:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0D1B374735;
	Mon,  1 Jun 2026 12:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="IhXnaEfM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38780375F67
	for <devicetree@vger.kernel.org>; Mon,  1 Jun 2026 12:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780315385; cv=none; b=jK64w5pHaEbFYCiSIEEYSAj77ofoOv41SefWa/V6Xb40ciSUi0lipNLO8DPgL6cEf6aD8XizB/vmweP102CSBuQfzK4ECGhmXx15XwUuHTb9OAnLPdeBIVcHqUPOvj0+V8PE0SjdvlA1+5DQEHapc5SmTq0/hyTr6cBluajEJH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780315385; c=relaxed/simple;
	bh=uWZK7z2P5SqHQterG9O6RCjs2Xr6uPCHYM9aiGRmqRk=;
	h=MIME-Version:Content-Type:Subject:From:To:Cc:In-Reply-To:
	 References:Date:Message-Id; b=RmKutemADn+Hn8SEZoQlrJo48KBoenMCnVgR49Xs5dKh8KOZBPnlyVBePY8UCqjAV1ZriwCQplhFCvG5XTTs2NLT9Hp/yduNYURJ8hh6eT7ftEk5rM4mcqzGXqWkcOYeFwi6Usc6L1kn6HSpbUl2rlrCpI+/LmDgEMzgLtYyKAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=IhXnaEfM; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 78F9AC62209;
	Mon,  1 Jun 2026 12:03:03 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 6053B602AB;
	Mon,  1 Jun 2026 12:03:01 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id CF7D41088822D;
	Mon,  1 Jun 2026 14:02:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1780315379; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=uWZK7z2P5SqHQterG9O6RCjs2Xr6uPCHYM9aiGRmqRk=;
	b=IhXnaEfMcTcaubGypKAmMZxJPKJQkO/bSKPx689Og3rTQZf9qEx6GbJsfUH43upSAJmX9F
	UnpZzkzOmrrJB3iexvqrr4PNzwcIBs/eUdrMd+8dgR9pjbXjGwDEEGaNfztGp3Wj7TnqSc
	KbfCNeys6R2LkwzoRkX1LwsiEmStUDJ6cpbyUHxItvk9ufNMOmFLMXvNU+rRO/b7yHr+og
	3XCSi1tU5Hlnmv++bF/nWIPzudrq/Z9ZT8gWkMEVL8ys2USKiODFUJ6M6ycgknCfqGQ+J0
	wmNmXairRRUv9jARUHNFgyzA7TTuoLxDLoDpvpnjCmhrF0s0eoK7jo4eZ8Kcyw==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v4 2/3] drm/bridge: analogix_dp: Add validation for
 samsung,lane-count property
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>, hjc@rock-chips.com, 
 heiko@sntech.de, andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com, 
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, 
 jernej.skrabec@gmail.com, nicolas.frattaroli@collabora.com, 
 cristian.ciocaltea@collabora.com, sebastian.reichel@collabora.com, 
 dmitry.baryshkov@oss.qualcomm.com, dianders@chromium.org, 
 m.szyprowski@samsung.com, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <17160115-6c30-434b-9dab-b768110cd8d6@rock-chips.com>
References: <20260529040530.741336-1-damon.ding@rock-chips.com>
 <20260529040530.741336-3-damon.ding@rock-chips.com>
 <178014803941.21632.16225608049285101452.b4-review@b4>
 <DIW1WGLL0GW5.1BGU194UXN0HO@bootlin.com>
 <17160115-6c30-434b-9dab-b768110cd8d6@rock-chips.com>
Date: Mon, 01 Jun 2026 14:02:48 +0200
Message-Id: <178031536852.7135.7751258958371598959.b4-reply@b4>
X-Mailer: b4 0.15.2
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305140-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[bootlin.com,rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org,ideasonboard.com,kwiboo.se,collabora.com,oss.qualcomm.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,bootlin.com:dkim]
X-Rspamd-Queue-Id: 8873F61ED21
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Damon,

On 2026-06-01 10:59:27+08:00, Damon Ding wrote:
> Hi Luca,
>
> On 5/30/2026 9:38 PM, Luca Ceresoli wrote:
>
> > On Sat May 30, 2026 at 3:33 PM CEST, Luca Ceresoli wrote:
> >
> > Meh, messed up with 'b4 review' :-/ Apologies
> >
> > "This sashiko report" [0] was about an enum being signed, so '== 0' could miss
> > negative numbers coming from bogus DT values higher than 1^31.
>
> Ah, I agree. It would be better to add a new inline function to validate
> that the lane count passed from DT is exactly 1, 2, or 4, just as
> Sashiko suggested.
>
> >>
> >
> > And this was about "Additionally, does this check inadvertently allow 3,
> > which is an invalid DisplayPort lane count?"
>
> Yes, the DisplayPort specification only allows lane counts of 1, 2, or
> 4. I did miss the check for the invalid value 3 in the current code.
>
> (BTW: I did not find a common helper function in drm_dp_helper.h to
> validate valid DP lane counts (1, 2, 4). I'm not sure if it would be
> better to add a generic lane count validation function to the DP helper
> library instead, to avoid duplicating the same functionality across
> individual DP drivers. Perhaps other DP experts could provide some
> advice on this.)

A bool function in common code, to be reused by all DP drivers, would be
good.


