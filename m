Return-Path: <devicetree+bounces-320104-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XXTpB2OoR2pVdAAAu9opvQ
	(envelope-from <devicetree+bounces-320104-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 14:17:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FEC702482
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 14:17:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chromium.org header.s=google header.b=La4rLw5G;
	dmarc=pass (policy=none) header.from=chromium.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320104-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-320104-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 319AB301AA95
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 12:17:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BBA43D1A98;
	Fri,  3 Jul 2026 12:17:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f43.google.com (mail-yx1-f43.google.com [74.125.224.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDFE63CC33D
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 12:17:31 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783081053; cv=pass; b=jn1vlrP0ENAUix0w6brLKpjhNxswOoMI0LOTf2prA6r5RTh4J4ssU+y5lD33JIv0mBicECoY8GsMz6etsaVoJmOv6JWciXGdoJOduOgz3AgeCzSdNERLr1wf62KhZmonyZE4MlOETo07xBcTxw+3chhOJsKg9tp89BSIq2aMdQA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783081053; c=relaxed/simple;
	bh=wKIP/2g7MTxmMgVnWjjRdFjs9hik6bQNvbKXHobNWdc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CfYz5ajsFrmvU3GJo4VoABHj5z7eSiUk6zSy8ZFhirCPK7/V01DTTTpQAvJVMf9weBFQ3JinWTPEeJ/rft3ZFTg+9mFbHsWGIGTtDFb7AL1wzmHYx0FGtRLaFIFS3WCpa17f7hGcXC6nBQXVcQYr+YBj4TjLablGQc3wqv/WLk4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=La4rLw5G; arc=pass smtp.client-ip=74.125.224.43
Received: by mail-yx1-f43.google.com with SMTP id 956f58d0204a3-664d35b4777so573782d50.3
        for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 05:17:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783081051; cv=none;
        d=google.com; s=arc-20260327;
        b=YQNpIwpmmjBJg5RSwlHi2FvSyn1erOzjVPzlAc4/buH0fMsYAb2QPRPKTo8bfqHbPu
         aM2o0vIyunKWFeQtQA/38RwHQFk6pJApzQ0bfG4NOk8Xz3pR3pZlstIkgSNWJ7hePSxp
         /KIlNjcztp6pNPFqrab5K5QKXxc8qt/3mhXU8nC+m8nae5+HqBuUVTefH8Gpa5eLWYlQ
         HfL4SJzQGWXw/ZTBx1phu5KIBUIDgXIdCm05mN/8QZJmEu0wqoNCknQ8B26G1VekyloG
         Tb1cCjJgmlkncpdUJKuLXRizh3q5LmDI42p3G84ln0cIShcwySIL/QQGhwL4/DWFF6Tv
         k4OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=wKIP/2g7MTxmMgVnWjjRdFjs9hik6bQNvbKXHobNWdc=;
        fh=/kuGQRHrqG4qXA604g3OZhBlCoy0MCL4a89bcIci198=;
        b=BtINlCO2RF0/aZS6FLChWwesEDOh1e9Fw0BU0r5pLFdQN9nId8YUx0YQZ6b3PQ0doQ
         ruTom2vTWeC7VmY0EkFqvi1ImMOorxGDRAgaqyngjsDqEKfxSSaWIxxmzz/VzlbZJ5vb
         i8LPdDEXZhII1xB1LPf+b/Mi7eVb9VEsjYlcMbIslB2zNubfuDerKE+9YF/V2H+kyyFI
         yNSj3npEc/jwUXA9o2mTGk4bH41Q1g2rnwyyB8FkGq/+F4s+ZUAKcRmpVLmBeNQC4l7t
         T92D+nSizwHev6RTa5qmnXrZPPkB0DDku7QFT8Hxhx2bzNxpo1JIFhyRUzIqxcJRR5K7
         ezTQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1783081051; x=1783685851; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wKIP/2g7MTxmMgVnWjjRdFjs9hik6bQNvbKXHobNWdc=;
        b=La4rLw5Gf5gqClv10KJUzRgbRZWpkKExtGoirU0CX9a9jrQYpre1JYB5m/lZqJPlf0
         3cYEc+cCqrXzelFvrandfTJ1HTW1qcjS4V28uWSp/W6eKpaaI5WeEngCHPnPmiZ1hWWd
         iGuEVo1TxLdpP8k9+6p9LSymgO+vPjFK4hGRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783081051; x=1783685851;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wKIP/2g7MTxmMgVnWjjRdFjs9hik6bQNvbKXHobNWdc=;
        b=jlr/HQtSE3oBWwCCzVorCRs5RjqkeuL8l44XgLUtKzu4E2eYLz0KLdZeSkDcv05AZe
         LTLZEwUj3a50OI1KtGJVpJyN/Ux79QeIm2LLdGyiKxj7OKtI5gHzuH3kRHSxhZvBZoSW
         p4eeQNJ5QOFyuMHAVwJE2nHDyTzKN0JCxfXM0tP5o9QY4eR9njHhDQUfPO7h2eEyzcji
         krMtTODCCOobEOx/bGxuRbnKOMUwov2M845kOMwn7LZH7kya/VaZL6vFosZJeAyuC5i1
         3Q2dOHenSm04Jpd83+w+mE4iU820AmXDXIk5xLC8Fb4q8A+E8HqYDu0L9R5QvYEPLe2L
         F+0w==
X-Forwarded-Encrypted: i=1; AHgh+RqmtJCsW51NxisE/5cmoUwGw+R3Z52Vnsmuez0CvYF/mwNxl0oUk3iGF5dCCPYit++1Ewf7w3hvc4OP@vger.kernel.org
X-Gm-Message-State: AOJu0YxT7G24rwmFleF04maYCmTcmuid4DKIsSRatf6HROeRyY+LccA1
	oY/4gsObRKrHEz56Ilskm5N+9/dsfxvxSQl8DYK1Kzb8yt7tQNu7u4K7EiPnHSR1mMNviWeVvsB
	SLs0IIBw1FJpcxuhs+DSG21YZZGWWAfm0xQjTJjpw
X-Gm-Gg: AfdE7cnVFrkrNSOARj62JE4W99+MER5005Y5VgSEDZtPp02msFTQn+CaB20TnxTfguj
	i9g966UtXqVZpM1wRcfBHzDmTQP1WkIHEQtwIMjJyZad/nZyDIacyxfFgTGU4F8+JcTCIG96yC3
	Pj9x5Kzs++t6Idwix4+bdjqykgnoCAyX8eNT1a+LfXOo3kSeA6IItbv2sKhal5iA25SY/7VVXC+
	rqXAq1G3zHEzsIbBZJlprCHKQmzkkc0MGXs3f6et75VhK3sP8fqcd/x8BbNDgLm5gFM2sMgxveL
	1cWsANQttvmzkMgHLJ8UtdL3B9I=
X-Received: by 2002:a05:690e:bcd:b0:664:ae03:524e with SMTP id
 956f58d0204a3-6652195244emr9486423d50.6.1783081050982; Fri, 03 Jul 2026
 05:17:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260703110317.1283411-1-wenst@chromium.org> <20260703110317.1283411-4-wenst@chromium.org>
 <CAMRc=MfPC=Jm6RFkCYG6vsYQiWHxBeNq0L59rwahF_6Fu2Ledw@mail.gmail.com>
In-Reply-To: <CAMRc=MfPC=Jm6RFkCYG6vsYQiWHxBeNq0L59rwahF_6Fu2Ledw@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 3 Jul 2026 20:17:19 +0800
X-Gm-Features: AVVi8CdRG77FVnl6YqrCOnoh5pU554e35My8Xh7iayyOJ32J-OMwjYcWxPxxPu4
Message-ID: <CAGXv+5HMVaERvte8YJDJ0fq0zoMvO7-7caAGQhsAB-9sUHoGtQ@mail.gmail.com>
Subject: Re: [PATCH v3 03/13] power: sequencing: Add pwrseq_power_is_on()
To: Bartosz Golaszewski <brgl@kernel.org>
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
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:brgl@kernel.org,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:stern@rowland.harvard.edu,m:gregkh@linuxfoundation.org,m:andriy.shevchenko@linux.intel.com,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-320104-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,kernel.org,rowland.harvard.edu,linuxfoundation.org,linux.intel.com,gmail.com,collabora.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,chromium.org:from_mime,chromium.org:email,chromium.org:dkim,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 89FEC702482

On Fri, Jul 3, 2026 at 8:07=E2=80=AFPM Bartosz Golaszewski <brgl@kernel.org=
> wrote:
>
> On Fri, 3 Jul 2026 13:03:04 +0200, Chen-Yu Tsai <wenst@chromium.org> said=
:
> > The power sequencing consumer API already does power on state tracking
> > internally. Expose the state to consumers through pwrseq_power_is_on()
> > so that they don't have to reimplement it locally.
> >
>
> They wouldn't be able to do it as the field is private to pwrseq core any=
way.

Which is why a helper is added? Note this is returning the requested state
on the consumer side, not the actual state.

> In what situation would consumers need this? Typically you know what stat=
e the
> handle is in if you control it.

Mostly just to avoid extra tracking in the USB port device. For the hub's
port power feature flag, the hub driver actually queries the hub for the
current state; no in-kernel tracking is involved, i.e. the consumer doesn't
actually know what state it is currently in.


ChenYu

