Return-Path: <devicetree+bounces-320582-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ASvgHCwnSmpV+wAAu9opvQ
	(envelope-from <devicetree+bounces-320582-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 11:43:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C40F87099F0
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 11:43:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=mUQtXevh;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320582-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320582-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9217A30137A8
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 09:43:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D05033876B5;
	Sun,  5 Jul 2026 09:43:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1B491E98E3;
	Sun,  5 Jul 2026 09:43:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783244585; cv=none; b=e2UqFpvBFI2gbf9dbeErSCQjk3WFQF3Mxnh80Ejc7iIXj53/NiSUMcgPXTJ71ZnBKunQPfWwOMJyabb+veu59Kuezj0F3tVXdgTsGOKMhgsxTvPavy7nAyuwAdyuDgTH7KQDGop9niIat3b0oR2WTGx39BXYOsRhgsa5tTT6LkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783244585; c=relaxed/simple;
	bh=2t/AyoMpmP6sqJg77ZdBErJTPgeXsgk2qepa+x8qLiw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O4l2AcnBzQgYMlvi34d+c/4zeZIDix1a5BmU5Kv5A8XBkRNO5PkyAm9g6ddfERhoit9j1rzt4EZS8c9z0mlsqhGGNR0Y4DlGSdFnr9N3Mx3YkyhHq/ViTymiok5hhJ9HRNEaX+LD/axfGhnBTa34ks7Isatp9gq8EIreVY3c4Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUQtXevh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D1EB1F000E9;
	Sun,  5 Jul 2026 09:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783244584;
	bh=dsyrHL7oxH+rFy0BGzwR2ub9eQ0OD8OJoWa48oeALqQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mUQtXevhy8s3LQcF3BAkcUi3LxRGrAs0KPtq3+NhdepMB7mtyV3kfZN0aQL/IjLxJ
	 6RAull5oOdcedpdnZwMkRQYjevKR2aeJy7/Zg55AVqPEOrTabTunzMyAtkLhZFO+AJ
	 yAu+/RK0xRvDqOCzwCk5Hnb+jeKqmRs+jgS05j2UcHKdef38WaZO7ZRC/jU3yU4DNe
	 BjY3zKFrXn1sM+TYsIjBxdL4lSM8y7Cw9W0Xk4PJmvoO09invbXzxmBPxwKYTBHMW7
	 PhP0Sp0+k7xr1CWLtGPf4KrXcUasfXYcWeavofl1W6LAghuh6g/w/QrnJNsaQpvOAv
	 YAX5CnGGpf2OA==
Date: Sun, 5 Jul 2026 11:43:00 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Bartosz Golaszewski <brgl@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Daniel Scally <djrscally@gmail.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-acpi@vger.kernel.org, driver-core@lists.linux.dev, 
	linux-pm@vger.kernel.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>, 
	Alan Stern <stern@rowland.harvard.edu>
Subject: Re: [PATCH v3 09/13] dt-bindings: usb: mediatek,mtk-xhci: Switch to
 ports for USB connections
Message-ID: <20260705-miraculous-mini-gibbon-d6cb6a@quoll>
References: <20260703110317.1283411-1-wenst@chromium.org>
 <20260703110317.1283411-10-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260703110317.1283411-10-wenst@chromium.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:brgl@kernel.org,m:gregkh@linuxfoundation.org,m:andriy.shevchenko@linux.intel.com,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:stern@rowland.harvard.edu,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320582-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,linuxfoundation.org,linux.intel.com,gmail.com,collabora.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,rowland.harvard.edu];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,quoll:mid,vger.kernel.org:from_smtp,collabora.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C40F87099F0

On Fri, Jul 03, 2026 at 07:03:10PM +0800, Chen-Yu Tsai wrote:
> This reverts commit 454a1e3cd36c113341d7b71e8e691c6e47ab4a8a.
> 
> MediaTek's XHCI implementation supports both USB 2.0 High Speed (HS)
> and USB 3.x Super Speed (SS). The block can also be synthesized with
> either HS-only capability or HS+SS capability. The SSUSB controller
> handles the device or gadget mode. Saying that SSUSB handles the HS
> portion is wrong.
> 
> For example, on the MT8195, the first two instances support both HS and
> SS, while the latter two instances support only HS.
> 
> Switch to a "ports" sub-node for describing USB connections. Port 1 is
> Super Speed if the controller is SS-capable, otherwise it is High Speed.
> Port 2 is High Speed if SS-capable. This port mapping scheme directly
> matches what the hardware returns in its capability registers.
> 
> Fixes: 454a1e3cd36c ("dt-bindings: usb: mediatek,mtk-xhci: Add port for SuperSpeed EP")
> Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
> Changes since v1:
> - Squashed DT binding revert and addition together
> - Dropped reviewed-by from Bartosz
> ---
>  .../bindings/usb/mediatek,mtk-xhci.yaml         | 17 +++++++++++++----
>  1 file changed, 13 insertions(+), 4 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


