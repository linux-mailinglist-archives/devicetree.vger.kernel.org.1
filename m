Return-Path: <devicetree+bounces-320144-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id X7qrI9W4R2qieAAAu9opvQ
	(envelope-from <devicetree+bounces-320144-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:27:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E27E0702DA4
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:27:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=oSjWQJMV;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320144-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320144-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DDF273090BA2
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 13:16:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FF843D566D;
	Fri,  3 Jul 2026 13:16:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34822352C52
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 13:16:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783084603; cv=none; b=V9GTqBRlTIIxo78iIsaIjtwPOGG1L8pXmeU1skRVwI8XD2BMW2HLKlDpHPXoYzBnMU2yvnSAC42St9nAcQU1oZNBwum3ARcwRo2C2B3xMSSE7m4dWnMffe1tYZs4FK6Hs5sijXIQcKTTTk9z3YmWashs7SgJ/JV931HAxuQMYRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783084603; c=relaxed/simple;
	bh=gV0Slrjr8IXK+MlTCt7MN9hZHNcIK5BTbT3wdZMhFWk=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nBv5oAa/jwWwsUL26kyFntEc0CNyz9HVtlCmFMZjalF9l5G4mr76WWkkzsolQKinxmw0WXIgYZcCkrp3LS38xI4uTmABRgvjHhiLzzz3eR7eA+bS4/KL7AxmEqf1jCSZCLEIctHugqBOwJmqcYn1aMHQIs+jAm5/af0DumJOHyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSjWQJMV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1787E1F00ACA
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 13:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783084602;
	bh=gV0Slrjr8IXK+MlTCt7MN9hZHNcIK5BTbT3wdZMhFWk=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=oSjWQJMVtg8g/LXoUb/K2FqnMziWICTYSrswtHn0oREeAe9aGAEYylsP6FTuQE+dn
	 wjGcvMuvcRqlVqoh7z8fwaNzIObZDxlRBmXX30cJheTBHAMRiQRW2RuEZByS4wcOe3
	 jylAsGqYV5LUq0Mtm9kijSAaV4jz7Z1m1+pn3+uswdn7rouFE4CSzcakh1RFvjbTVG
	 TAo/PBKLlq4cY94y8732frnrFqI0G+57B/6Coa9bTvjuMcke80Ok/wRiEhvPcWYLrq
	 QZcgKjIj341ZG9DxLr1WSAQ9oGUWetnM5Ixk3cqNtqKBGe3XjpxSF3vLN/YA0yWB72
	 oPqwysfcEV0eQ==
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-39af6402933so4937201fa.2
        for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 06:16:41 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RoxW/H8e+PjuTCzkrJJjgf6VvJdwSJB1Elu2BzX8AwLo608oXchfBrMxDx9TTEJeCp/VIB0Pu6IHDzM@vger.kernel.org
X-Gm-Message-State: AOJu0YzOJrs0MEsbqryQLtmEvmRn+Ojoal94iZLy20tZdt6kSNvQXzqD
	GBG1kFUvGvSXpWx9u0zBLckGuACL9vRBd4R/Ted6QxcJnNyVM2/KCzipFAjKGf5KLidRhV7+ugj
	3/QeKfcaFyq1/Ow1JTUpMq7P/bj6nJou5rUCvZTPzJQ==
X-Received: by 2002:a05:651c:2554:10b0:39b:90f:b1dc with SMTP id
 38308e7fff4ca-39b36e0af76mr18538581fa.13.1783084600750; Fri, 03 Jul 2026
 06:16:40 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 3 Jul 2026 08:16:39 -0500
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 3 Jul 2026 08:16:39 -0500
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <CAGXv+5GHFnMj3qr5BcpLCQk25rWYOgnMKUX079ScELs4uqEdVg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260703110317.1283411-1-wenst@chromium.org> <20260703110317.1283411-9-wenst@chromium.org>
 <CAMRc=MdMhr6qAnAtUePbuBbsH=3MzRC+BrL5GssbNTwGjp_ayA@mail.gmail.com> <CAGXv+5GHFnMj3qr5BcpLCQk25rWYOgnMKUX079ScELs4uqEdVg@mail.gmail.com>
Date: Fri, 3 Jul 2026 08:16:39 -0500
X-Gmail-Original-Message-ID: <CAMRc=Mdoj204dTwVMeqFwsVt3f4JJUJtk93VL2hDgh7+C60eqw@mail.gmail.com>
X-Gm-Features: AVVi8CfEGr9ongua6ulDVSCJ0raV9SIaG27LcZHKlrYzQjvFFBvVAoVU8_PqL0s
Message-ID: <CAMRc=Mdoj204dTwVMeqFwsVt3f4JJUJtk93VL2hDgh7+C60eqw@mail.gmail.com>
Subject: Re: [PATCH v3 08/13] usb: hub: Power on connected M.2 E-key
 connectors with power sequencing API
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: linux-acpi@vger.kernel.org, driver-core@lists.linux.dev, 
	linux-pm@vger.kernel.org, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Manivannan Sadhasivam <mani@kernel.org>, Alan Stern <stern@rowland.harvard.edu>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Bartosz Golaszewski <brgl@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
	TAGGED_FROM(0.00)[bounces-320144-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:stern@rowland.harvard.edu,m:gregkh@linuxfoundation.org,m:andriy.shevchenko@linux.intel.com,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:brgl@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,kernel.org,rowland.harvard.edu,linuxfoundation.org,linux.intel.com,gmail.com,collabora.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:email,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp];
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
X-Rspamd-Queue-Id: E27E0702DA4

On Fri, 3 Jul 2026 14:58:56 +0200, Chen-Yu Tsai <wenst@chromium.org> said:
> On Fri, Jul 3, 2026 at 8:41=E2=80=AFPM Bartosz Golaszewski <brgl@kernel.o=
rg> wrote:
>>
>> So this is only needed to not have to track the state in a separate fiel=
d?
>
> Correct. Reading the field is not the problem. Updating it is, as the
> fields are packed bitfields, and Sashiko suggested that locking would
> be needed, though it may have been for the peer port, which has since
> been removed.
>

I'm not sure if it is. The user controlls the handle. We could argue, it's =
up
to them to provide synchroniztion. We only assign the target and pwrseq fie=
lds
once in pwrseq_match_device() and only change the powered_on field later wi=
th
pwrseq_power_on/off(). Unless the user does something weird, we should be
alright. Maybe a small note in the kernel doc would be in order.

Thanks,
Bartosz

