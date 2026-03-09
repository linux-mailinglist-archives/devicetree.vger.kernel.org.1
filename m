Return-Path: <devicetree+bounces-272975-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GN1TINndrmm/JQIAu9opvQ
	(envelope-from <devicetree+bounces-272975-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 15:48:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A1323ADA5
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 15:48:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EFF9C309E7C6
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 14:41:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 024FA3D3481;
	Mon,  9 Mar 2026 14:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="H62rarWV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CE1139A7FF
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 14:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773067249; cv=none; b=LM6MkoSoDv2V+TXtIThWz77SR5PVFgduYHjC5EBnh3mZVeNt+6yASuM26aq2e498gAuW/g5EekUP5rDaEsFxWYTnY8squISyyHgVAJwTfgbLVc3VrK6As2a9uy1GvAVPp8T82yjEyzoOtI+YM9TEcbcFxvoypKgkBjPBp5jlTVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773067249; c=relaxed/simple;
	bh=FqR2Vf73E1rrlwJbWu2sN21UEE0uaLooT5FPq/LZAkA=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:To:From:Subject:
	 References:In-Reply-To; b=PaOQA0k4bayLiUB2PFTRCJ/ZUqshKwxlYTDK5ESU3lIk3N1+otzL51GZ0xXGuk/YZ4EdmylwBdNhHXknIFE+waga7ewhOXfYQprb7wo3u9BsS/F+TInR3+VTI5Jp7O19FgSyXXc9Jhb75KscQkjDRcPXSTR/WNFUGIVQBSchWDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=H62rarWV; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 02B224E425DB;
	Mon,  9 Mar 2026 14:40:47 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id B54A35FFB8;
	Mon,  9 Mar 2026 14:40:46 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 94C0E10369A23;
	Mon,  9 Mar 2026 15:40:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773067244; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=FqR2Vf73E1rrlwJbWu2sN21UEE0uaLooT5FPq/LZAkA=;
	b=H62rarWVpi5qkt3UAOU3ilclviHgZF2tV/mlvwf/9+uyesxlKargmR/aGxAF39xDzuAj4H
	jiluDZc5k4ymXKeR0/oH+RZTQ7so+gxEOMhWqCjepbG2VrbCaeFQa5bf2uznCHuNiD+2ri
	jD8UiRSBKNNnHwSBgy22tfUYAmKsR3nxwjle89U/NZvJNwYIGdcVZDYf9aagy+vNDlNRnI
	Xa4a0shtfLRrfr2MIqpFWwcvY75QdJRWHqSTNTavcPrbhbbNsnekFcYIO3AG2qpoU9dzf5
	axTnbnXvlvPHBvb8qtob5jZmwATa/l2xbwvyllRzUnNCu4557vqY0Z44Mxnfqg==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 09 Mar 2026 15:40:31 +0100
Message-Id: <DGYBVL751W64.WJ1HHFYH74M6@bootlin.com>
Cc: "Philipp Zabel" <p.zabel@pengutronix.de>, "Dmitry Baryshkov"
 <lumag@kernel.org>, "Michal Wilczynski" <m.wilczynski@samsung.com>, "Han
 Gao" <gaohan@iscas.ac.cn>, "Yao Zi" <ziyao@disroot.org>,
 <linux-kernel@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
 <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>, "Icenowy
 Zheng" <uwu@icenowy.me>
To: "Icenowy Zheng" <zhengxingda@iscas.ac.cn>, "Andrzej Hajda"
 <andrzej.hajda@intel.com>, "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Robert Foss" <rfoss@kernel.org>, "Laurent Pinchart"
 <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman" <jonas@kwiboo.se>,
 "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Drew Fustini" <fustini@kernel.org>, "Guo
 Ren" <guoren@kernel.org>, "Fu Wei" <wefu@redhat.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v7 6/8] riscv: dts: thead: add DPU and HDMI device tree
 nodes
X-Mailer: aerc 0.20.1
References: <20260129023922.1527729-1-zhengxingda@iscas.ac.cn>
 <20260129023922.1527729-7-zhengxingda@iscas.ac.cn>
In-Reply-To: <20260129023922.1527729-7-zhengxingda@iscas.ac.cn>
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Queue-Id: D5A1323ADA5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272975-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[iscas.ac.cn,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,redhat.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.994];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[icenowy.me:email,iscas.ac.cn:email,bootlin.com:dkim,bootlin.com:email,bootlin.com:url,bootlin.com:mid,samsung.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Thu Jan 29, 2026 at 3:39 AM CET, Icenowy Zheng wrote:
> From: Icenowy Zheng <uwu@icenowy.me>
>
> T-Head TH1520 SoC contains a Verisilicon DC8200 display controller
> (called DPU in manual) and a Synopsys DesignWare HDMI TX controller.
>
> Add device tree nodes to them.
>
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> Tested-by: Han Gao <gaohan@iscas.ac.cn>
> Tested-by: Michal Wilczynski <m.wilczynski@samsung.com>

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

