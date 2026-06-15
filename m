Return-Path: <devicetree+bounces-312189-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8ponNm9pMGpWSwUAu9opvQ
	(envelope-from <devicetree+bounces-312189-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 23:06:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F01568A1BE
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 23:06:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=f2snKoPo;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312189-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312189-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2CD4B30BC485
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 21:04:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E35A236E46C;
	Mon, 15 Jun 2026 21:04:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9FDA3321A1;
	Mon, 15 Jun 2026 21:04:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781557476; cv=none; b=O+vQaUPO1otljnAM0fZnrAjZ3ipqIP1llj/wUOgfPJBR241oNKfTYSWnpRnNX/HrXBFy/RRVSKu003SktbY4NkyElyWdvmsGmN2+/1OCR0R51y7GLb0JzuNlAcpRj4RPIjZOb5nvLbcA49kZ9UAWBNPiH0+Vdyy9X2wu9mHqNMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781557476; c=relaxed/simple;
	bh=2WymXcmDnbTlWuMxRn4kNi1soTb/3DvX56AzCNTNZjQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Gckuib1xZgrxku6gtQfzPqcQH6Q5HxsMxDe2rQb4jrzAaHZIcLLLDZ6tXbwFmX1BhiwQDMvnC9re0sJr08/nxG9irvVSRwQPiPjG+yN6jdWNgAUsUoNio7Xj5GU6lIdprY+TrWDdGsviAXLd7G5l2awRTiUCvnmZRs8Vy+0fRho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2snKoPo; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 728481F000E9;
	Mon, 15 Jun 2026 21:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781557475;
	bh=4b0Lv74/nBILk2gIMYWUm6i3SoTaSg4GpRxXNoby7dE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=f2snKoPoB7CwlS7KzqRFdoObM/38la6po2Kp5PWfB8qUzXHJ7XEvm+T0D7AOk8ofj
	 zItneTSHyEJIJzLhdCGE9qPCSyykot/o54R3ctVUIme7V9qXDtxjb0XsTBpY/5fnIb
	 9OkOeybaXMpaG+mfcB/ob6KHmJZu9QLZNl0Utc/DALIZZSerMOK85bUpv7VdpklzwF
	 SAaEUCvo0iba0yAhcjRHytmxWNsqFl7o6RV055yko/bwBKbD3w6bmOFXFCIUjiOHhD
	 qZlnmHo1y2SXxmlAl91AoR9BMuwC4ypUNB1kXUoLsxiJ0Qx7F8gpM3bBOrXal05L2J
	 Ow0qzPJQT6s5w==
Date: Mon, 15 Jun 2026 16:04:32 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Simona Vetter <simona@ffwll.ch>,
	Fabio Estevam <festevam@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org, imx@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	devicetree@vger.kernel.org, Frank Li <Frank.Li@nxp.com>,
	Philipp Zabel <p.zabel@pengutronix.de>, linux-clk@vger.kernel.org,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Ying Liu <victor.liu@nxp.com>
Subject: Re: [PATCH v9 4/9] dt-bindings: display: imx: Add i.MX94 DCIF
Message-ID: <178155747196.1679059.5104272619144115714.robh@kernel.org>
References: <20260612-dcif-upstreaming-v9-0-8d0ff89aa3c5@oss.nxp.com>
 <20260612-dcif-upstreaming-v9-4-8d0ff89aa3c5@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260612-dcif-upstreaming-v9-4-8d0ff89aa3c5@oss.nxp.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312189-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:laurentiu.palcu@oss.nxp.com,m:conor+dt@kernel.org,m:simona@ffwll.ch,m:festevam@gmail.com,m:airlied@gmail.com,m:luca.ceresoli@bootlin.com,m:linux-arm-kernel@lists.infradead.org,m:dri-devel@lists.freedesktop.org,m:imx@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:krzk+dt@kernel.org,m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:tzimmermann@suse.de,m:kernel@pengutronix.de,m:devicetree@vger.kernel.org,m:Frank.Li@nxp.com,m:p.zabel@pengutronix.de,m:linux-clk@vger.kernel.org,m:s.hauer@pengutronix.de,m:victor.liu@nxp.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,ffwll.ch,gmail.com,bootlin.com,lists.infradead.org,lists.freedesktop.org,lists.linux.dev,vger.kernel.org,linux.intel.com,suse.de,pengutronix.de,nxp.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,nxp.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2F01568A1BE


On Fri, 12 Jun 2026 14:58:35 +0300, Laurentiu Palcu wrote:
> DCIF is the i.MX94 Display Controller Interface which is used to
> drive a TFT LCD panel or connects to a display interface depending
> on the chip configuration.
> 
> Signed-off-by: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
> ---
>  .../bindings/display/imx/nxp,imx94-dcif.yaml       | 90 ++++++++++++++++++++++
>  1 file changed, 90 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


