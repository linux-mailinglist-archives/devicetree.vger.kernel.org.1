Return-Path: <devicetree+bounces-310227-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +YuwLFVwKmpspQMAu9opvQ
	(envelope-from <devicetree+bounces-310227-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 10:22:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 25FB766FD0B
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 10:22:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="hV3/Jj2u";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310227-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-310227-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 87D74303EEAC
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 08:21:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB1B33793AC;
	Thu, 11 Jun 2026 08:21:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C54AD377EAC
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 08:21:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781166062; cv=none; b=u96MQHmcwEFFkprLTxFZCKJzZ/LAO0Q8TEhZ8T0mV4E6TyjiwdcIHdl+qdHmyeLXH9P7nzq2lnLjqwQLThaGjF7wo7QJ9o4Ixp3bb6XT+OZJCS6vxz3X4W8HglWjNb5r2E+nasdzfHR4gp1GDX74CLxcjm3eFUFpnOz8cZIW61o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781166062; c=relaxed/simple;
	bh=OdEKgro4DUDPb8Ko08QQEH38Ak6tb9z6xDfigAPw7do=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JFWShYu/aFcFVuYSObLmAOTepaCPzHvOU99y/ulT/LvbZIuna+FIz53qR/eyvDKtzR1bVCslW9e4Sa56ThuyQxepCf7h9KojjxGkRTuv5OhIdZZDL5gsCIJ1oyDgnOjpDzBEqYXzBuUsS+hXSZdIMaBsMcpxJuRRlQHc1KdHEEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hV3/Jj2u; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B8561F0089A
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 08:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781166060;
	bh=OdEKgro4DUDPb8Ko08QQEH38Ak6tb9z6xDfigAPw7do=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=hV3/Jj2u9lM0OmOzmvK5rItANUjOls0tCbllb5f0jpXETjH2ZOOn5R+/iwupRfQhL
	 BgZZMwqGimk7lHFrM5QQmJi1julXAAOYvfYTW9u5IJD89UePVlqDyjP2kk5+BpC4uX
	 ZXNDV4/4g/VT91PdZ/ue+nI0lZvIPF41icwbOupgCcm2YwVB0TioiIs9riuubScW2P
	 PQ1/sqGRsA6lyeMZI8DUFai/SWw8CK6ySNsilqToQZ9sdqxLqPXpigwQsGxs8eHaKU
	 1mdigJ/n2n/KpISns10S3s0Gll66/SrHiIfDGVo1U4yKfMLQmidj5i1yo8W84+MPHd
	 LEd9EQLmgjRoQ==
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-3965eab14cfso58800771fa.0
        for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 01:21:00 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8PqbU9TGu9U1rzmwxjevZpT6Tl0icmdSaFfs/UTLcmnPs8StYTeJRYe1yB3nI5Bn+h+A2mtepS0rlS@vger.kernel.org
X-Gm-Message-State: AOJu0YxCV25y+nE2XvAIbMn52DHuHM1vJLsG/Xe/mz3Zj1klJKkuWlT8
	FISrsMUgQlcooPn9ARNBWUCWChr9hB/ekpHfQBv8WG3kw9Vj53GVVwdQB+OGlGgsGp+lbcEQHGt
	E+jnaq07JyX6SCwkAisiXtGPJpS254NdMeFIrpNwzHg==
X-Received: by 2002:a2e:ad0a:0:b0:396:73ed:695d with SMTP id
 38308e7fff4ca-3991a062724mr4519671fa.11.1781166059198; Thu, 11 Jun 2026
 01:20:59 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 11 Jun 2026 04:20:58 -0400
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 11 Jun 2026 04:20:58 -0400
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <ailxrP-_9_NL8qnN@ashevche-desk.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260610084053.2059858-1-wenst@chromium.org> <20260610084053.2059858-6-wenst@chromium.org>
 <ailxrP-_9_NL8qnN@ashevche-desk.local>
Date: Thu, 11 Jun 2026 04:20:58 -0400
X-Gmail-Original-Message-ID: <CAMRc=MdiwQM6yk8FXcc+RisVP2iqWKWzVsn2-Yy6dyJXt-1X=Q@mail.gmail.com>
X-Gm-Features: AVVi8Cdazg-zIlFzKBbJynoz26wIhVLSYD08zrFVf0wIQqHs_X42tMa6pqa8MG0
Message-ID: <CAMRc=MdiwQM6yk8FXcc+RisVP2iqWKWzVsn2-Yy6dyJXt-1X=Q@mail.gmail.com>
Subject: Re: [PATCH v2 05/16] usb: hub: Associate port@ fwnode with USB port device
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Bartosz Golaszewski <brgl@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Daniel Scally <djrscally@gmail.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Alan Stern <stern@rowland.harvard.edu>, linux-acpi@vger.kernel.org, 
	driver-core@lists.linux.dev, linux-pm@vger.kernel.org, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>, 
	Chen-Yu Tsai <wenst@chromium.org>
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
	TAGGED_FROM(0.00)[bounces-310227-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@linux.intel.com,m:brgl@kernel.org,m:gregkh@linuxfoundation.org,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:stern@rowland.harvard.edu,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:wenst@chromium.org,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,linuxfoundation.org,gmail.com,linux.intel.com,collabora.com,rowland.harvard.edu,vger.kernel.org,lists.linux.dev,lists.infradead.org,chromium.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,intel.com:email];
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
X-Rspamd-Queue-Id: 25FB766FD0B

On Wed, 10 Jun 2026 16:16:12 +0200, Andy Shevchenko
<andriy.shevchenko@linux.intel.com> said:
> On Wed, Jun 10, 2026 at 04:40:39PM +0800, Chen-Yu Tsai wrote:
>> When a USB hub port is connected to a connector in a firmware node
>> graph, the port itself has a node in the graph.
>>
>> Associate the port's firmware node with the USB port's device,
>> usb_port::dev. This is used in later changes for the M.2 slot power
>> sequencing provider to match against the requesting port.
>
> Okay, would this affect ACPI-based systems? if so, how?
> Can you elaborate on that, please?
>

Is it possible that there's an ACPI device node associated with the port like
on some DT systems? I don't think so and there should be no impact IMO but I
also don't know enough about ACPI.

Bart

