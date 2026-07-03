Return-Path: <devicetree+bounces-320101-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7vTBDVunR2oUdAAAu9opvQ
	(envelope-from <devicetree+bounces-320101-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 14:13:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AE77023EE
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 14:13:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=V13+C1TO;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320101-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-320101-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E86043011052
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 12:12:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBF4A3CFF46;
	Fri,  3 Jul 2026 12:12:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678CE3CFF56
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 12:12:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783080776; cv=none; b=AvnMH7WeSsSagLUKFrSM6+ZAfdY3jE4/YfvETLWCZEXYNcZW4i5lGnDCpzQQRhg+WAhg7CS/74/9Qlyh5+SCc7Bb4eEHh/RzyqiQf21fkb9Y3VVJjstzlsPQFRoA+O7/gypXFo7K1pnOZt8l+euyPA6c9418hlpRb7SNBovWjkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783080776; c=relaxed/simple;
	bh=ZW1+Rwj2Zkkg4xFxLw7inao2NDBuiKLZLReMOE1kdHk=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Kzi26kQcqdmOWFdjMFsfZxAe4avta4zZCWWPxTajC0okI8B+aem81Ht4brRREF542c3pUvYmewCma+sXg99cFP7ci34DqFzKjDTH7PXfPfs2tpDywlTtpn85+iZDsJXMoLDT+y97xr7F8YhjXndhz+zLM1IzH4wmjFd03Xddc0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V13+C1TO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D1511F0155B
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 12:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783080775;
	bh=ZW1+Rwj2Zkkg4xFxLw7inao2NDBuiKLZLReMOE1kdHk=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=V13+C1TO7e0BLup6/ZXRFCVqSB8pr91oUvp+sZqGgDu6dy35z5ppYNo0lSuhKJf1f
	 vWZ5VzzvMkh6hoWyk1wdjkd//bAC1zhiP0ugdLwRvhYzJAIbRnGx1D76pMjOdo1k09
	 1ZUqjXfwW0JozzdJ4gTapT02eIULAj+Q0nw4EIDW+B5+ZavUQA7EZwi3FFbE8D5gOz
	 D3D8CInjn2ciHTHbs6DLk5Zl+AWG5YXG4gR3X2WSFDVsNqohzwWXIqSer0SUApbXqU
	 zlj2Ddp1yY39dCBH8RwqN4GhbP9u5/BPm7Xdp6VcIqfcI6DZaRLauZombNCO7ssslT
	 hMOavJL5+escg==
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5aebc8cb5bcso371753e87.2
        for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 05:12:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Ro6/gGBf8QKOWA4saFYVgP2CXdsCy8yG/gfQ2In87C1mt11q0w5rsjJAoNxMSGDNXGdW86GfpRJlUbH@vger.kernel.org
X-Gm-Message-State: AOJu0YxlTNove31T8bdKkZU7LafmSnP/hGAS96zGmXRk5KM+75aXKDMo
	K2ga7NgADZE838+SoagRHYsT/QE02MKE0xpug7TJ5wPCfM+gR7KX/ghBnbMs1HkVMFqudbbFKrS
	b0fEv0h0AW4azOfA/dHsYC+OYcveqvb7hncbuTT3Smw==
X-Received: by 2002:a05:6512:6383:b0:5ae:a702:6528 with SMTP id
 2adb3069b0e04-5aec67ac494mr2230940e87.26.1783080773854; Fri, 03 Jul 2026
 05:12:53 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 3 Jul 2026 07:12:52 -0500
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 3 Jul 2026 07:12:52 -0500
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260703110317.1283411-8-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260703110317.1283411-1-wenst@chromium.org> <20260703110317.1283411-8-wenst@chromium.org>
Date: Fri, 3 Jul 2026 07:12:52 -0500
X-Gmail-Original-Message-ID: <CAMRc=McpxD325uVPO5NNZ=47DQgCBrD+uTOKUzoHTgbkPhqtiA@mail.gmail.com>
X-Gm-Features: AVVi8CftwarX-Z8K0VV5KkzRZ0nUoORfEc2vkRQt3p7UOG6R8Lwo7yu86B3HXFw
Message-ID: <CAMRc=McpxD325uVPO5NNZ=47DQgCBrD+uTOKUzoHTgbkPhqtiA@mail.gmail.com>
Subject: Re: [PATCH v3 07/13] usb: hub: Use usb_hub_set_port_power() to
 control port power everywhere
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Bartosz Golaszewski <brgl@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-acpi@vger.kernel.org, 
	driver-core@lists.linux.dev, linux-pm@vger.kernel.org, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>, 
	Alan Stern <stern@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320101-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:brgl@kernel.org,m:gregkh@linuxfoundation.org,m:andriy.shevchenko@linux.intel.com,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:stern@rowland.harvard.edu,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,linuxfoundation.org,linux.intel.com,gmail.com,collabora.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,rowland.harvard.edu];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:email,qualcomm.com:email,mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 98AE77023EE

On Fri, 3 Jul 2026 13:03:08 +0200, Chen-Yu Tsai <wenst@chromium.org> said:
> There are still some instances in the USB hub driver where port power is
> directly controlled by toggling the USB_PORT_FEAT_POWER feature flag.
>
> Switch these instances over to usb_hub_set_port_power() so that only one
> unified function to do this exists. This makes adding external power
> control with the power sequencing API easier and consistently applied.
>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

