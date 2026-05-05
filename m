Return-Path: <devicetree+bounces-293282-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IN9nEZZH+mmOLwMAu9opvQ
	(envelope-from <devicetree+bounces-293282-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 21:40:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8484D32EF
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 21:40:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 853B130238DE
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 19:39:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1936548C8D3;
	Tue,  5 May 2026 19:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="chGnl/Qy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA28F3C8729;
	Tue,  5 May 2026 19:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778009996; cv=none; b=RVNSRMMfs5tUw6el3ravGCs9i/EXxp9uh1SEMTjfhCcRHGdJf5rd6soDHwZHTVnrHNGPVDv7zD1CChDgVcOiv/rQpXC5D682xWEWL1zZF4oWhbsgGHc5eXaSUYIp32qC9/k4/8zPbxWG5+MC0QrLBVZUxac8XstDAKk+AP73agE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778009996; c=relaxed/simple;
	bh=VSiMCNBuHpiPp86N99Xj+iuf6kVZawCPJiGuH+dp5rU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Gs2YG1wGy3MzzIUI9/gzXUKhH9//gWXk0RgHnzlsDp2nQVT6+NrQCAYkuedPakIHD5bq9Nqf3TckWiDXshE98F0zo3VNCCF8He4BCGlrJXFLm74qHYqGhmKlO7T5MUI57bJwRlQFa4Li1Rm5ut6XL53bOsDpYCXQMnJyCuN1Vws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=chGnl/Qy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C7E7C2BCB4;
	Tue,  5 May 2026 19:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778009995;
	bh=VSiMCNBuHpiPp86N99Xj+iuf6kVZawCPJiGuH+dp5rU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=chGnl/QyLautU03Pg06PeXJGCSGlDl5BsiBytVAZoYxJ2Fs24UAxPXeSNIyE6fVXB
	 Pc+l1U2c8fzNtuYqUYfNlkYC8SpeeHx3RbwvXk3Q2f3rQ1ZQbee+TxwEJUlH6pKMKQ
	 KMydki/1DnhKzMBmM8NKuj2jvA2W/pGt0+v+aMzjzzvQiuqpypluqO7iXmFcEchtnc
	 c6d6RzlRFmvnf8tvnP0XJxXIUt5JaRVzdPtmAvhOANShu8LhOJomeGtK9IYjry7sXv
	 HA7l2u05Z1u1pZ6S6Yy1SKzzkgD4HFAubbzYG2TVwnCKdiI3LNOhZGT2S2Eplfr+Wz
	 PrivbX3OufqPw==
Date: Tue, 5 May 2026 14:39:52 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: Aradhya Bhatia <aradhya.bhatia@linux.dev>,
	Devarsh Thakkar <devarsht@ti.com>, dri-devel@lists.freedesktop.org,
	Simona Vetter <simona@ffwll.ch>, Conor Dooley <conor+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org,
	Maxime Ripard <mripard@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	David Airlie <airlied@gmail.com>, Lee Jones <lee@kernel.org>,
	Nishanth Menon <nm@ti.com>,
	Louis Chauvet <louis.chauvet@bootlin.com>,
	devicetree@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
	linux-arm-kernel@lists.infradead.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Swamil Jain <s-jain1@ti.com>
Subject: Re: [PATCH 05/15] dt-bindings: display: ti,am65x-dss: Add AM62P DSS
Message-ID: <177800999241.3798284.2696880196834050021.robh@kernel.org>
References: <20260420-beagley-ai-display-v1-0-f628543dfd14@ideasonboard.com>
 <20260420-beagley-ai-display-v1-5-f628543dfd14@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260420-beagley-ai-display-v1-5-f628543dfd14@ideasonboard.com>
X-Rspamd-Queue-Id: 9C8484D32EF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-293282-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linux.dev,ti.com,lists.freedesktop.org,ffwll.ch,kernel.org,vger.kernel.org,gmail.com,bootlin.com,suse.de,lists.infradead.org,linux.intel.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ideasonboard.com:email]


On Mon, 20 Apr 2026 15:54:12 +0300, Tomi Valkeinen wrote:
> TI's AM62P, J722S and AM67A SoCs contain same implementation of the
> display subsystem (DSS). There are two instances of the DSS (DSS0 and
> DSS1), each with two video ports (VP) and two video planes.
> Additionally the SoCs contain two OLDI TXes (OLDI0 and OLDI1), a MIPI
> DSI TX and a MIPI DPI output path.
> 
> DSS0 supports:
> - VP0: OLDI0 in single-link mode, or OLDI0 and OLDI1 in dual-link or
>   clone mode.
> - VP1: DPI
> 
> DSS1 supports:
> - VP0: OLDI1 in single-link mode, or DPI
> - VP1: DPI or DSI
> 
> The DSI is only connected to VP1 of DSS1, but OLDI and DPI are shared
> between the DSS instances. Thus only a single VP can output to DPI, and
> a single VP can use an OLDI block. Note that in single-link
> configuration OLDI0 can be used by DSS0, and at the same time OLDI1 can
> be used by DSS1.
> 
> The DSS IP itself is compatible with older SoCs. While we could use
> "ti,am625-dss" compatible string, we add a new one "ti,am62p-dss" to be
> on the safe side in case the driver needs to do something special for
> the dual-DSS case in the future.
> 
> Original patch by Swamil Jain <s-jain1@ti.com>
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> ---
>  .../bindings/display/ti/ti,am65x-dss.yaml          | 27 ++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


