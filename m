Return-Path: <devicetree+bounces-263653-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMC7KJPgh2maeQQAu9opvQ
	(envelope-from <devicetree+bounces-263653-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 02:02:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0699B1077AD
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 02:02:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C2ABD30138BE
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 01:02:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA7BA18A6DB;
	Sun,  8 Feb 2026 01:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yckrp0mg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5D4C81AA8;
	Sun,  8 Feb 2026 01:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770512526; cv=none; b=UCVx6xzh2nYfW55/uqVI7lIkyzbv2Gsv7I6KqVf9mCxVfrvuR8avMjL6Xjt0VJSWW9bp7pNcAWyJtOjd8m+QeymEjEvYEbZIJNn1AIqwJ9BxtItTVX9FsbFu5zzMgF4JwgJoYsSRDeEK0C6LPQ9Zdu7J1/4QErCqKKxxPESaZ1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770512526; c=relaxed/simple;
	bh=dmAowi9aBngZxm8LYXV0oxX4jZfE0VJFFDxamQqu1fQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i1Wl0kRkgWEC5HhGctyepezi+e9R/JdptviVfDDgl0bjkXSTdNWkitRKNbIeQeJ5LNwZ4OKRxm3r580/PNgofowX/KdbfyUyhwL+rWm2yZYEJyBP/oygT/G4fJ/V7LDIjFsK4Lk5/dm/bRfRrjWJbGcoOqEPdVUC+3GanstAzvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yckrp0mg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAF01C116D0;
	Sun,  8 Feb 2026 01:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770512526;
	bh=dmAowi9aBngZxm8LYXV0oxX4jZfE0VJFFDxamQqu1fQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Yckrp0mgabJYi/PSf5N5Rs/kNDEqlDEugxliHeUMID41bB6sGOI4hi6e95mny7a71
	 8+9NhNZVTMfetn4WDg+pSPCi86Y/ae3R9AdNdaMdcMkL0yZr+CIpZeoTf/4+4YJYmx
	 a6JGSVK7awTFXcZRAgM5YyZfaCnz77eSC0eXMSZFCzfnnzvBF6bN8URrcpRxirvEuf
	 irjkMQfdqtDRBQEoYaeBclNuzEF2Azc8KtdQqcR+4ol0IDq+OoFBgbvMmxntJ/ehu8
	 VVeqOAy5mK88auufJq8oJKaWEqWxoXu7RE3LlMbirrHn6PH7d8OM74/3ujswDYHqG5
	 P3yNuyUVin4/w==
Date: Sat, 7 Feb 2026 17:02:04 -0800
From: Drew Fustini <fustini@kernel.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Icenowy Zheng <zhengxingda@iscas.ac.cn>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Philipp Zabel <p.zabel@pengutronix.de>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Michal Wilczynski <m.wilczynski@samsung.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Han Gao <gaohan@iscas.ac.cn>, Yao Zi <ziyao@disroot.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	Icenowy Zheng <uwu@icenowy.me>
Subject: Re: [PATCH v7 0/8] Verisilicon DC8200 driver (and adaption to TH1520)
Message-ID: <aYfgjMVHXpCAOOj-@gen8>
References: <20260129023922.1527729-1-zhengxingda@iscas.ac.cn>
 <ccb973b8-4b13-4a70-be48-06b2cbe0adf8@suse.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ccb973b8-4b13-4a70-be48-06b2cbe0adf8@suse.de>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263653-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[iscas.ac.cn,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,ffwll.ch,redhat.com,pengutronix.de,samsung.com,bootlin.com,disroot.org,vger.kernel.org,lists.freedesktop.org,lists.infradead.org,icenowy.me];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0699B1077AD
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 10:30:55AM +0100, Thomas Zimmermann wrote:
> Hi,
> 
> patches 1 to 5 have been merged into drm-misc-next. In patch 3, I replaced
> COMPILER_TEST with COMPILE_TEST in the Kconfig file.

Hi, do you think there will be a pull request for the upcoming 6.20/7.0
merge window with these patches?

I'm trying to decide whether or not I need to send in a late
thead-dt-for-next pull request to the soc tree maintainers.

thanks,
drew

