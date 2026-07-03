Return-Path: <devicetree+bounces-320099-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6SwzEkyoR2pRdAAAu9opvQ
	(envelope-from <devicetree+bounces-320099-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 14:17:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BC3702475
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 14:17:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="R5EQi/XU";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320099-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320099-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6921F3045ED1
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 12:10:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA07A3CF210;
	Fri,  3 Jul 2026 12:10:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B7773CF201
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 12:10:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783080605; cv=none; b=IjXPSt2ZmZFdN2WK6IquiKcdrC4RxYzaGWf3fjcpTu3793kACmdIgZHzBArf5HqskgizCbq5EHPDnstiDrFXhXzeJVhslDFaMhTrSQEPYL+myR5TQddur+9LtOjTkIByBtlGSlIwtqenn9SHbBzNYUsgy5yjBAIBxoW0cB6jFB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783080605; c=relaxed/simple;
	bh=FRnTE+sfqNi4P4NSTy/kqSXlrErtvnHm1QlBxXoiDG4=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YqyR8xpVerFIxK4Gw6cY16qwHbXqYjHk0WExGXkKgUrf6gCD6YtUhNc/kFiz9L98ChB21rVnWWYOj1xVbR2OJz0+aJUYYf+tEdy/ILV3Q+N6YHaCnVHuzVZDmwEDXKsGMhLKGf9nAldxCqdcjUzGUDzFJj2MqBscmaj+VCilouw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5EQi/XU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AD0F1F01561
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 12:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783080604;
	bh=FRnTE+sfqNi4P4NSTy/kqSXlrErtvnHm1QlBxXoiDG4=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=R5EQi/XUeS15y7qKoAb3iyfRNON/HfPCXUy4TXekpkz50HKLNuxkqfKMtIacIPCj2
	 excH/UeAK7lKnCYiE7kk/ZGc1Jfdv4I7p7pz/KRc++S0aaGZcMMiQLjOLAiJOjGnft
	 WMtcYRr9SpfVqjeoJajNQ/rtXF8WYtixMqYLReWDkKRvSDsn0G4NEMqd2rcm7GxCeW
	 4I4Nd6FfGuJ0Rx/EhdyECwnNkB7IuIcqDASN9jsbcVfNYBfIt1QxTQKalBynI+NzXm
	 +gC1za7Gwuqlvy4P/sjLjFDhyho2uKcKCsSlqjXvXaKuMVevHXQehOOSdPTahIYEnd
	 giIul7JI8B9WQ==
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-39b38d3c929so4471881fa.3
        for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 05:10:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Rp7AB2J9Et0L68nNl4yUfWTbRgTU7oKKUCB8INVBDQgydhUSrWSrIW1QspWE7YUj86xP1qtfDXwyYx+@vger.kernel.org
X-Gm-Message-State: AOJu0YxEfAEDNYwNYGpxyghn1zG1UVYtMSiDPKGd2La1m04IjdDkwTMR
	s5duR4ziJ0Mtx4gZnLHbiyr3TF+idjN1ixTScXH9/w2cHoJ05f1e1B/oYDckRyinBUQbuW9l+d5
	h0iE3aElWJq/hh2H8wOyVXWwwloqLMvRZs8/fanGyfg==
X-Received: by 2002:a2e:b538:0:b0:39b:2b9c:5447 with SMTP id
 38308e7fff4ca-39b33f83e54mr14578471fa.5.1783080603058; Fri, 03 Jul 2026
 05:10:03 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 3 Jul 2026 07:09:59 -0500
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 3 Jul 2026 07:09:59 -0500
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260703110317.1283411-6-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260703110317.1283411-1-wenst@chromium.org> <20260703110317.1283411-6-wenst@chromium.org>
Date: Fri, 3 Jul 2026 07:09:59 -0500
X-Gmail-Original-Message-ID: <CAMRc=MddJrLT1f62-MCoKQ3ZzchHRypXF0njO0K1Fgxmpv4BGQ@mail.gmail.com>
X-Gm-Features: AVVi8CcIrznNQZqmZR1andR36KwnRtt161WRtINBstw2LlkWAj-ZsW0prqZIcwI
Message-ID: <CAMRc=MddJrLT1f62-MCoKQ3ZzchHRypXF0njO0K1Fgxmpv4BGQ@mail.gmail.com>
Subject: Re: [PATCH v3 05/13] usb: hub: Associate port@ fwnode with USB port device
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: linux-acpi@vger.kernel.org, driver-core@lists.linux.dev, 
	linux-pm@vger.kernel.org, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Manivannan Sadhasivam <mani@kernel.org>, Alan Stern <stern@rowland.harvard.edu>, 
	Bartosz Golaszewski <brgl@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320099-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:stern@rowland.harvard.edu,m:brgl@kernel.org,m:gregkh@linuxfoundation.org,m:andriy.shevchenko@linux.intel.com,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,kernel.org,rowland.harvard.edu,linuxfoundation.org,linux.intel.com,gmail.com,collabora.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:email,qualcomm.com:email,vger.kernel.org:from_smtp,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 93BC3702475

On Fri, 3 Jul 2026 13:03:06 +0200, Chen-Yu Tsai <wenst@chromium.org> said:
> When a USB hub port is connected to a connector in a firmware node
> graph, the port itself has a node in the graph.
>
> Associate the port's firmware node with the USB port's device,
> usb_port::dev. This is used in later changes for the M.2 slot power
> sequencing provider to match against the requesting port.
>
> To avoid potential conflicts with ACPI firmware nodes and then causing
> power management issues, only assign the firmware node if the hub's
> firmware node is not an ACPI firmware node.
>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

