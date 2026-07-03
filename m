Return-Path: <devicetree+bounces-320145-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TASUJBC5R2q6eAAAu9opvQ
	(envelope-from <devicetree+bounces-320145-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:28:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B03702DD1
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:28:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YRosel6D;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320145-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320145-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DC4033018CCF
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 13:18:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F26DD3D8100;
	Fri,  3 Jul 2026 13:18:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D44093D648C
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 13:18:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783084709; cv=none; b=t5+IQVQ3jJgFkVfwMw86EjWErgr8U3hG1cm0hNzLmx8UU+PnaoM/HLg05DOf4haIzJTv8RX6Z/5EWsWffmRgo9TFFmTCwztfZbIbGkMwiEl6I1hXLoRB5/ZNl8hNQWSQN18KjqX+GGcucXA0R8s3gvuxnWBlCGbRzfFIEIr2Ok8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783084709; c=relaxed/simple;
	bh=9L0/uB6Gsh2WFeSkmmU3h8J0rHkOmOpn4iPX3EYXWqE=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=blVzlfbl9RXcpPmBlO3oc2qZa3zU4hJNGHFMIv6Yi0PX4Aj8/x1f1izydm23MN9dqc/eJ2E6LkfyoHZUfx3mB7szvtWv8lU8X3+GkG2r2HY4y0Vw/0Sm7bAc3tAuupxaDqak5I2wq6bDKRra3a2wOTyF5H/RI6g+yhtUJRl7s/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRosel6D; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60AF31F01561
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 13:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783084707;
	bh=9L0/uB6Gsh2WFeSkmmU3h8J0rHkOmOpn4iPX3EYXWqE=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=YRosel6DL0wuQ3cHV1RuS0LWqVF+wHgTey96RxdDguwdPWjCPEmcEVNg+3lzchLpF
	 zJCz1r0N408OKfSTBpp7ZdSs+pf2uYqFlvo2dUnXNsc0Byhdc5f+aYJfBDo1iNWHFu
	 OulZtD74u1SUNB8QRx6Cnt1C8tT9+cnei7CZCFl4mnrsJfK714jaFqEwg/LVjFvK5G
	 Ntg1aPssH7xYyguGcG04IeAkND81Ssy/v6w5yMIlarZYEDMoyoDy4s6+A7xbpEYTC3
	 FwSD46lNWA/TMorv7nj4uXce+jiAewdndoZqXVCtpZ+SwvgwJOcY0AFbpeRwguulRi
	 C6mUoCr4o8sIg==
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-39b1f588471so5160981fa.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 06:18:27 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RrrngaeCYRIO0hVv7gZ/k+WhndVCFFOKaAbV4fTddkWvXprRhARyJQcnlE19lh+VHekmJUcKSABYRmM@vger.kernel.org
X-Gm-Message-State: AOJu0YyPBwNdgX/m0eWYqBs3X3DTvtaeG/Xz2mCin/GLGxNrsGM55Lv6
	mzVyjFCYBuFqtesj7b97lzjjmOdU6Tj+25r8LB5gEbDQW6tQSiD/EVPR7VJqzDWf67gwwHUlRiO
	Pla/ga+wfBGgBka+5qhXvv7vcvAR5f2iYR08I1zQ74w==
X-Received: by 2002:a2e:a907:0:b0:39b:100e:a582 with SMTP id
 38308e7fff4ca-39b34102a63mr21058111fa.38.1783084706034; Fri, 03 Jul 2026
 06:18:26 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 3 Jul 2026 08:18:25 -0500
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 3 Jul 2026 08:18:24 -0500
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <CAGXv+5HMVaERvte8YJDJ0fq0zoMvO7-7caAGQhsAB-9sUHoGtQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260703110317.1283411-1-wenst@chromium.org> <20260703110317.1283411-4-wenst@chromium.org>
 <CAMRc=MfPC=Jm6RFkCYG6vsYQiWHxBeNq0L59rwahF_6Fu2Ledw@mail.gmail.com> <CAGXv+5HMVaERvte8YJDJ0fq0zoMvO7-7caAGQhsAB-9sUHoGtQ@mail.gmail.com>
Date: Fri, 3 Jul 2026 08:18:24 -0500
X-Gmail-Original-Message-ID: <CAMRc=MdO-9qd2-YqaCusAtYB1qqGezs5vzAdaf+Jrxv+namYng@mail.gmail.com>
X-Gm-Features: AVVi8CdQC2c9zpmPe432u2VDpFaMO7YKToWQLqvYb4D_WqYuh_dkKQK1wPiDll4
Message-ID: <CAMRc=MdO-9qd2-YqaCusAtYB1qqGezs5vzAdaf+Jrxv+namYng@mail.gmail.com>
Subject: Re: [PATCH v3 03/13] power: sequencing: Add pwrseq_power_is_on()
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320145-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:stern@rowland.harvard.edu,m:gregkh@linuxfoundation.org,m:andriy.shevchenko@linux.intel.com,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:brgl@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,kernel.org,rowland.harvard.edu,linuxfoundation.org,linux.intel.com,gmail.com,collabora.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,chromium.org:email,qualcomm.com:email];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 96B03702DD1

On Fri, 3 Jul 2026 14:17:19 +0200, Chen-Yu Tsai <wenst@chromium.org> said:
> On Fri, Jul 3, 2026 at 8:07=E2=80=AFPM Bartosz Golaszewski <brgl@kernel.o=
rg> wrote:
>>
>> On Fri, 3 Jul 2026 13:03:04 +0200, Chen-Yu Tsai <wenst@chromium.org> sai=
d:
>> > The power sequencing consumer API already does power on state tracking
>> > internally. Expose the state to consumers through pwrseq_power_is_on()
>> > so that they don't have to reimplement it locally.
>> >
>>
>> They wouldn't be able to do it as the field is private to pwrseq core an=
yway.
>
> Which is why a helper is added? Note this is returning the requested stat=
e
> on the consumer side, not the actual state.
>
>> In what situation would consumers need this? Typically you know what sta=
te the
>> handle is in if you control it.
>
> Mostly just to avoid extra tracking in the USB port device. For the hub's
> port power feature flag, the hub driver actually queries the hub for the
> current state; no in-kernel tracking is involved, i.e. the consumer doesn=
't
> actually know what state it is currently in.
>

Fair enough, thanks.

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

