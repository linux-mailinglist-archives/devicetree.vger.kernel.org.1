Return-Path: <devicetree+bounces-315124-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LAUvD/KiO2qvaggAu9opvQ
	(envelope-from <devicetree+bounces-315124-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 11:27:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 46ED66BCEDE
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 11:27:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=dolcini.it header.s=default header.b=zJqFV6vL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315124-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315124-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=dolcini.it;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3ACD8301349C
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 09:24:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02A943AC0FB;
	Wed, 24 Jun 2026 09:24:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DD73A7F55;
	Wed, 24 Jun 2026 09:24:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782293081; cv=none; b=OWbV9j+baA6OL2x7EpxD83eAdo+YVsqtDxT0GcQ5HrlV0avIUaemkxk8LREPB1vsCboEnEb91qDsEgXdUIw7oBXRA4kSFKML8SGKXNPxxiYbg0kH69wDcBmDcEutpvDNgq+Dy9Qi6X4z/DFj6yolJMRpeRnT+a+xiCXYAP7WbiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782293081; c=relaxed/simple;
	bh=MFjA3WhzCrsuNv2nkLYU79xT7ULqQWyScaQQ04uE/IA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pn0ypKl+beJUPOqSiGCiyO5lMFSDE20rPgjjX7GCqWFRRDGRQgUsE2ymBIaysrhXuUxHBBpanj/rhqkwWd9yksO+CIeA93Ik8Kb3kLQ7IXAy5CVWc0aUe936uOHoJaUZ8DMxwzDk0hHkRF7KL0XE6HUGrNji91Zz4ptAQSYg9JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=zJqFV6vL; arc=none smtp.client-ip=217.194.8.81
Received: from francesco-nb (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id ABE3220078;
	Wed, 24 Jun 2026 11:24:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1782293066;
	bh=pmBkesNmuLNvUJn5rrwSRud7R4UXCLNjjmtNsb00ATk=; h=From:To:Subject;
	b=zJqFV6vLGI/4MsUw1JuuF4VfY0/aHTgm4za771PD3OyLAKzSgRzGvVU2RNdTj8sP+
	 8uaVnVdzFPvCezbAT5qoztkC+sL0fFwOtiAcNUgr52XroELvyObJd8dAIHpUVbRJVE
	 kowxnSJ2rZ3lawvQdt44T2ggJsI65W6QSSf92GTji6GK9bdLtnt9aYwzebIVu3XmZc
	 l0r9YpmxixJw38js4ET5+rRA4EvvonMPnlwBTdMXmf4L3JOkVDc+jFjukeV9PBQsHj
	 w+QevUTrn7Avtb5kV8OCem2WNOVbdGitwRlQYgKpaxTeRv8bqMB7No018XI3K+O0Pp
	 D1kV7z4BCdebg==
Date: Wed, 24 Jun 2026 11:24:20 +0200
From: Francesco Dolcini <francesco@dolcini.it>
To: Leonardo Costa <leoreis.costa@gmail.com>
Cc: laurent.pinchart@ideasonboard.com, neil.armstrong@linaro.org,
	jesszhan0024@gmail.com, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
	simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, nm@ti.com, vigneshr@ti.com, kristo@kernel.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com, thierry.reding@gmail.com,
	sam@ravnborg.org, leonardo.costa@toradex.com,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/5] arm64: dts: ti: k3-am62-verdin: Add Toradex
 Capacitive Touch Display 10.1" LVDS
Message-ID: <20260624092420.GA10665@francesco-nb>
References: <20260623195741.495734-1-leoreis.costa@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260623195741.495734-1-leoreis.costa@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[dolcini.it,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[dolcini.it:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:leoreis.costa@gmail.com,m:laurent.pinchart@ideasonboard.com,m:neil.armstrong@linaro.org,m:jesszhan0024@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nm@ti.com,m:vigneshr@ti.com,m:kristo@kernel.org,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:thierry.reding@gmail.com,m:sam@ravnborg.org,m:leonardo.costa@toradex.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:leoreiscosta@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:thierryreding@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	TAGGED_FROM(0.00)[bounces-315124-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[dolcini.it:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[ideasonboard.com,linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,ti.com,bp.renesas.com,ravnborg.org,toradex.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[francesco-nb:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,toradex.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 46ED66BCEDE

On Tue, Jun 23, 2026 at 04:57:36PM -0300, Leonardo Costa wrote:
> From: Leonardo Costa <leonardo.costa@toradex.com>
> 
> This series adds device tree overlays for Toradex Capacitive 
> Touch Display 10.1" LVDS V2 on Verdin AM62.
> 
> The display addition covers two interface types:
> 
> - Native OLDI (LVDS)
> - DSI-to-LVDS adapter based on the SN65DSI84
> 
> The Opto Logic vendor prefix and panel binding for the SCX1001511GGC49 is
> also added.

Reviewed-by: Francesco Dolcini <francesco.dolcini@toradex.com>


