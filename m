Return-Path: <devicetree+bounces-310230-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IUhiLQBxKmqPpQMAu9opvQ
	(envelope-from <devicetree+bounces-310230-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 10:25:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5776C66FD50
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 10:25:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YYiVVYNS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310230-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-310230-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 55D523021588
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 08:25:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A783379974;
	Thu, 11 Jun 2026 08:25:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D14653783AC
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 08:25:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781166333; cv=none; b=Go38HtdniKdMKxIpY1AC3W5SFW64pQX2Q+GXSzWrf3ORW5cvWDfR+uwsSALaoZvvVNwOyKgAXa9fBia2c0Ql5fEdpLAAczZtWrKTsgooSyQWNoMGYbB+u9bBzIjxERi8IYS40qOE+7dLImJejdurbrZz/8Jq4d4koFYslHjHEY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781166333; c=relaxed/simple;
	bh=8R7ziXk8fydst5X8hpX4mI7JudbMNR4xr32cEWIHJD0=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bVKLovW6yBkNCwBAqWuYVzVV/oorTNZsV1mFqYYW9BfTiUTIdH9POmgtjvA0V/+/Q5qn1JkYtvPYCUdKS0dKtZXObikSHr9aqNAHN53GcJq04Mi1GeJ0vk2tDs22hvJ5vqbOd1GX2JleiETUVBq5+QJIyN2Knsbn/05TDJ3pzCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYiVVYNS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFB7A1F00A03
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 08:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781166332;
	bh=hbzJ74IpdrLVs+Y0O3IYzwuBnLAyvP58FSzsN8By/Cs=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=YYiVVYNSzF+Cf3Yx50hPpm45j5U7xTjL8FgJQmJQi+tPGvF2XaEjiliC1a2K+cSRB
	 RdDpq/wdd1HskPDJzDwvLeoQ+MofyuQbYVNsP6QYqxy4PxopxWAIE5hpuM+hjXW0u2
	 Lao2XOnP6L+oxyCHvc8QnjKvn/MCo6/vnbkIFyWAS6ScPRAoJyfo+TIMH8w17DpQKw
	 +pJ/yvmavKcLpayfSjykTz22wcDF4RnomxL1PViyS2BX8DLE61U9j7YcflzcikejRz
	 /9tbE++2bLJji/fJSgASBT8kQCpxY1ZYzxRpdjdBNSwT/VI+G8YM/ZeQ7kmSoiEuEZ
	 3os4qXlv53Tgw==
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-396775c2720so70419501fa.2
        for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 01:25:32 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/WpDPEZZDzHl2J7u9bPAQWigxiHLixxhYbOgBWp5x4yAFAFtB59Gl0tTD4czwdvCcnmV8o7+J83lUN@vger.kernel.org
X-Gm-Message-State: AOJu0YxUztotWkvGt08cETXvhTP7CX9r7Ambnc3tmfDIjMmZZXI1m7nG
	p9KzHEFwCShEmBlIJfGuYkc1Um75epWqrw8VLYeZH3bk/9JEYEetDXgNbK2PTCJRi9UHm0VhAmr
	mwKJUpEkG/JH2bHdwwOa+8Lx/FlBGsbQAjT1vLScf2w==
X-Received: by 2002:a2e:bc88:0:b0:396:6705:d244 with SMTP id
 38308e7fff4ca-3991a0d60d3mr4699081fa.28.1781166331314; Thu, 11 Jun 2026
 01:25:31 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 11 Jun 2026 03:25:29 -0500
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 11 Jun 2026 03:25:29 -0500
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260610084053.2059858-7-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260610084053.2059858-1-wenst@chromium.org> <20260610084053.2059858-7-wenst@chromium.org>
Date: Thu, 11 Jun 2026 03:25:29 -0500
X-Gmail-Original-Message-ID: <CAMRc=McP9FM9X7TBfGrf+9Ju6=n_g8_H-FWTitCKovjoCvWWrQ@mail.gmail.com>
X-Gm-Features: AVVi8Cei7hYbpuq4j9lODYGpwH8njTDuNJY7X5DUGeetWn08wd_jggR-VxE4bK4
Message-ID: <CAMRc=McP9FM9X7TBfGrf+9Ju6=n_g8_H-FWTitCKovjoCvWWrQ@mail.gmail.com>
Subject: Re: [PATCH v2 06/16] usb: hub: Pass |struct usb_port*| to usb_port_is_power_on()
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Bartosz Golaszewski <brgl@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Alan Stern <stern@rowland.harvard.edu>, linux-acpi@vger.kernel.org, 
	driver-core@lists.linux.dev, linux-pm@vger.kernel.org, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>
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
	TAGGED_FROM(0.00)[bounces-310230-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:brgl@kernel.org,m:gregkh@linuxfoundation.org,m:andriy.shevchenko@linux.intel.com,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:stern@rowland.harvard.edu,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,linuxfoundation.org,linux.intel.com,gmail.com,collabora.com,rowland.harvard.edu,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,qualcomm.com:email,chromium.org:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
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
X-Rspamd-Queue-Id: 5776C66FD50

On Wed, 10 Jun 2026 10:40:40 +0200, Chen-Yu Tsai <wenst@chromium.org> said:
> usb_port_is_power_on() currently takes |struct usb_hub*|, but only needs
> it to tell if the hub/port is SuperSpeed or not.
>
> In a subsequent change, usb_port_is_power_on() needs access to a pwrseq
> state tracking field in |struct usb_port|. Either structure can be used
> to identify whether a port/hub is SuperSpeed or not, as the field in
> |struct usb_port| is inherited from the hub:
>
>     port->is_superspeed = hub_is_superspeed(hub)
>
> Replace usb_port_is_power_on()'s |struct usb_hub*| parameter with
> |struct usb_port*| so a subsequent change can use it.
>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---

Makes sense.

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

