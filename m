Return-Path: <devicetree+bounces-273619-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MJL+AsRBsGlLhgIAu9opvQ
	(envelope-from <devicetree+bounces-273619-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:07:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 818632544B3
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:07:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 19AF73197323
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:03:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60B2E3BED31;
	Tue, 10 Mar 2026 16:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XZavYA5X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA4E63BED22
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 16:03:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.177
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773158611; cv=pass; b=W+0MNyMu71N77sbAGB20m4Cgj+1wl/NQz5LM7Pp7Biq69bS+7xoMCGiiiP6oJmWgh5rl0wbdyxKzChdb/Mn4hIcD7Ad20m8/dHkbbeOIAaSy95rg3hncjANdERchxKSpHblfXbOZ74+oGrasX1FILlRHy+yJJBC1rZi1cG0DDqs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773158611; c=relaxed/simple;
	bh=K58+q75J3LD3mDRig06x+UazutdjEE7vGtq+vglIB7g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rQsTT079U5IZw3c0o1h5Xo7uY2ZlcQZ0ypZ1emfISEL4RU5K4Z+HEmbAsb+s+jKnpS8gK5gIaQmMOuneoTidS1T9dXD6f/tJj/gnqj8VZw08rPYhJu+PqXVSJyZz8aktIBPZMk9AYzxL8lomEapKfbIL3TL1ZsGF4dCxG1RF1bg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XZavYA5X; arc=pass smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-38a3225d59fso50937281fa.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:03:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773158608; cv=none;
        d=google.com; s=arc-20240605;
        b=BJupSCerssVtpCZOTqNvzcJ1WOmxXZIAqOpsWn71p40S2XWRnM7lOWeFjORBwABGeO
         54YE/JCMj+E7JRjnw6VBhx4UQHm//7m2W13flzISPZ+68SNqHceD7+/aPzLCJ6wsmnkf
         yJWGg1bN45I0k+J8hLyO0mpJJlhy9PSRjqPygGh0It82aFhZK/IxVzdRci9oDpLs+Bgg
         EEwlvVzBfkift07F5EFST7JLcCYeZ8eBCXXu0TrX5SB5cRxtmziKQk6g8UhtwWcm6dQO
         AbbOn/XWIgoZRXzDFyMyBTqB16SZgdDfu7gy09CctaB7BhAJt8h7GfDE269KJFoXMKgH
         GPLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=K58+q75J3LD3mDRig06x+UazutdjEE7vGtq+vglIB7g=;
        fh=ttxrj/d9j3S4oX0UTX+xrMM7J+zt13RPSRULcqJXdO8=;
        b=Q/n5YoFm62lYdDsndM+Ub+LQlo5pngC9xt6ObbT9SorRnz1sxCSqZU5HDKMFyoPFgL
         3QuRPgjCXJ3TEYMtZQotinltaoDTE0oFASP9x5ziNKCfXHN+5fpixbXapVQSLWCg2wZJ
         jqBZOJDSFg8T26odBqimyseXOI3AFZlJGEcfTZ+s7yKIUh6ONbcsTxarxqeF9aqXQl6E
         U5IQKyblYwcHZtXrYNa0h31sXIbPQ44sP6bsm9PDxhorj1+vaBh65FiXCIwsNHMQ20lQ
         MJWK3ZMo2M2mF3vtYlmL8Lvh+CEY21/38hqCWCDGtWYFAvjNu2E5lHs2i4SYN/HVqpw1
         xpUQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773158608; x=1773763408; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K58+q75J3LD3mDRig06x+UazutdjEE7vGtq+vglIB7g=;
        b=XZavYA5XEiKSzMEZNL8R17MjqIlBKwX5YIA0o7NonD0mVd1156bDPPcnvb7DkEmyiI
         vf4/KWzOyxpg64QQUwFTsbolhUiwau/a5FgoJpwkU49nJzbvLa7A2TPK9ThmAUEWGZQ3
         rcauIoDgbcVLqlwMfCBIyoFiS7LEGYQH7f3mKk6TDLq3r7qJPZDzgiH8sQD3zGUp9awA
         R8A7m48XtJBvv96eAP7LG4jl5+nDsUU5tSq6uftpyaldhAMSP32fQF31iYDK6d0kzVur
         VMQPnXasZ4xCA7rJKCCUUSpJDzILmBE2loXLZiItL4G4Vp2Fk2L9EA9qvm0ws2prFcL7
         d3Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773158608; x=1773763408;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=K58+q75J3LD3mDRig06x+UazutdjEE7vGtq+vglIB7g=;
        b=WOuUwgYme9gK2U8E2GhZPVADdW0gk4/1P4uZuqKGBBBWHC0t9bLhTu364FhK861Q0D
         E0rZgjezv2c/p+NKO8GMsjKJR2FMHoK5uh6sMFpAShNTHN1Ira+BaquW01oNcaKOihX2
         Xly2JpPtc8d8iNGMMLs1s9XSx3oBd8qu9cDvqMkKlsaqVJlhhDxzYWEO9qSUZq5svj5O
         BjnpMi5KelrHpO+fOvwIrqiUEAb1HcWsCWTNPafwS7Eplwg5eB2ek20nC4BpaoliN5aL
         AspeWXJHFRM3yHzNnPDfDi2WJ6JYtt5HesnYn4Gnvj8HxFlvngPe2+nvY3kTxcchVnyp
         ogkA==
X-Forwarded-Encrypted: i=1; AJvYcCUqgE23lBUxZDimIe1m6oB0/mkkkWTzuVVDOWP9z409DPnbYOG56UWqDldvBQts+4s/APJ5J1zQfLAl@vger.kernel.org
X-Gm-Message-State: AOJu0YxWsroScdwDpzLIGCCSRHiziRgcFwiJCKr3OFK+NRae0vbuSuO9
	/7O2RYF4nBruIADM6dIB/oq+wMPet0BPiligrrTFbUnRtmupr6hkhPudsx9+jpWwddHJu4JVH6m
	G0n+5g+JR1kGo9Qugg47usmYoUBj3oC4=
X-Gm-Gg: ATEYQzzUn6oK7wZ/gg7hZQINFj3DdMB6GH/reu85I/kVU4pe/h6yVUGmnXyQBqx1LoG
	5VLh7f7uVW1NfBlnxq02TXjMiyTtfW95agl/byWdr/xvPU9/GCWrRJzUhIO+zoiS7MaOEwm6plc
	1rNf3gNQKsksQs6EfvJieHZbhlk61U50qm4stR/uRoqgIqg32jramyfvkAUJgQiQzJq01doIIbC
	04XPXhmN3ls/NklM2WSexx4QGVixo7MVTlRxlgBtDTnBkCkh6D2msRP6CvA+pmmnSMl0Wubb1+b
	2EuT0ytlOyc25B71p63aE4ewUl1lWMXkl3RLApzMvoKYPsXQEzz8WzoDSL6cgm8G4Tcvb2g=
X-Received: by 2002:ac2:4e99:0:b0:5a1:2f5a:cb61 with SMTP id
 2adb3069b0e04-5a13caaeba8mr3635889e87.2.1773158607681; Tue, 10 Mar 2026
 09:03:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260310124950.1345117-1-andrei.botila@oss.nxp.com>
 <CAOMZO5BVtRHW1+qtMEH9akO7ULS3LppzGXMB2_M-JJVwjbv1oQ@mail.gmail.com>
 <67e082c5-2b34-4960-8fd1-6cd007e0584c@oss.nxp.com> <CAOMZO5CHGssc3Tuf6fJg2_P=bp7=itfDVRANqQOiK2b-2ooeFA@mail.gmail.com>
 <d5bb01c1-17c9-4d76-8a49-00ffd85c7580@oss.nxp.com>
In-Reply-To: <d5bb01c1-17c9-4d76-8a49-00ffd85c7580@oss.nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 10 Mar 2026 13:03:16 -0300
X-Gm-Features: AaiRm50hQtki5ODEQm6WBm-CMqmZXFNtS_jtFUq9YGrHeYsH6rVUj6xnzW50JoM
Message-ID: <CAOMZO5A2qG8_d=5S9xdackhUt+DS-YtrvRvNeqA40X4TiVcyaA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: s32g: force S32G RTC as rtc0
To: Andrei Botila <andrei.botila@oss.nxp.com>
Cc: Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>, 
	NXP S32 Linux Team <s32@nxp.com>, Chester Lin <chester62515@gmail.com>, 
	Matthias Brugger <mbrugger@suse.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 818632544B3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273619-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[nxp.com,pengutronix.de,kernel.org,oss.nxp.com,gmail.com,suse.com,lists.infradead.org,lists.linux.dev,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid,nxp.com:email]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 12:21=E2=80=AFPM Andrei Botila
<andrei.botila@oss.nxp.com> wrote:

> rtcwake -s 10 -m mem
>
> rtcwake: cannot open /sys/class/rtc/rtc0/device/power/wakeup: No such fil=
e or directory
> rtcwake: /dev/rtc0 not enabled for wakeup events

You're missing the 'wakeup-source' property for the I2C RTC.

> > date -s "2026-03-10 11:00:00"
> > hwclock -w
> >
> > Power-cycle the board. Does the "date" command retain the correct time?
>
> date -> Tue Mar 10 11:12:43 UTC 2026
>
> date -s "2026-03-10 11:00:00" -> Tue Mar 10 11:00:00 UTC 2026
>
> hwclock -w
>
> date -> Tue Mar 10 11:00:06 UTC 2026
>
> <Power cycle>
>
> hwclock -r -> 2026-03-10 11:00:31.104653+00:00
>
> So looks like it does retain the date between power cycles.

Yes, the I2C RTC is working as expected and is battery-backed.

You should use it as rtc0. Instead of relying on random probe order,
it is OK to pass an aliases inthe board devicetree to force the I2C
RTC to be rtc0.

If you use the SoC RTC as rtc0, the time will not be retained.

