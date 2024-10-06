Return-Path: <devicetree+bounces-108245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC159921B4
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 23:33:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 905F21C20B5B
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 21:33:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D84DB18BC14;
	Sun,  6 Oct 2024 21:32:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=waldekranz-com.20230601.gappssmtp.com header.i=@waldekranz-com.20230601.gappssmtp.com header.b="jqTI9jRf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D18D818BC04
	for <devicetree@vger.kernel.org>; Sun,  6 Oct 2024 21:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728250376; cv=none; b=njQRFw7CoG8Il37/jN0GkrKtJHR9zBCWZKu8R/hV85y2G0gdx/RNDKgnIt91lXy6oWOOLx95vVMJweD/vd76u0ju85WX5uIGHzn8NfTz9Hr7d3FdfdgQmEBt7dYyjhWnkcY6huTeXtDgAOP1bk9UiQAs9ZE1QlTjEla9oFSIFhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728250376; c=relaxed/simple;
	bh=luOO4B0bYOTigENjJzfC4PznksUS6mugUiVnsxpCqRI=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Z+DOZ5PkebqfHc9+wwS06pQ1umNNzwXYFRg8tWReyueFmFhwr8uvVgqokOlNxuP4TGlsul9dHNT/tz7FVlcTk+nxqz5/uM3A9Fx8MfBdc2/aG/IKgh7Ul2+NV9s0rI0Em5IxPt8O1x1MzK+6KwK0WcVvEy5/ajIZVei1djLEo8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=waldekranz.com; spf=pass smtp.mailfrom=waldekranz.com; dkim=pass (2048-bit key) header.d=waldekranz-com.20230601.gappssmtp.com header.i=@waldekranz-com.20230601.gappssmtp.com header.b=jqTI9jRf; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=waldekranz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=waldekranz.com
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2fac3f1287bso39651041fa.1
        for <devicetree@vger.kernel.org>; Sun, 06 Oct 2024 14:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1728250372; x=1728855172; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=luOO4B0bYOTigENjJzfC4PznksUS6mugUiVnsxpCqRI=;
        b=jqTI9jRf3j4/VECCjvHUs50dTrULR0t4Dx89wvRcBfaTxfNzkAAlGzID9/71EkOZAl
         BPCLgEr9cOPD27agLAiLVdyykRVB9VRvrxMo24WiF5JwAsxr5zIvHChpB4+swJF8zKwe
         KbfYVWuJl7dWyyXO6ES4SDT4irJ2DS/bX60bq6YDoNn1+g6/NXlCfgKBzHFLFjFEPyBQ
         7JxgTRC78f077QR9pPoDAY826xx4zM8eM3jY6wZXtDWMsdLEjmmO1AmVadUr8C9aT11q
         frl0cg9cu/+n/8d+2Rw8E8s1E5mzcNSEUmCArh8KdMwG2z+ldrywlWnY1NEplUnaIyTm
         DvOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728250372; x=1728855172;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=luOO4B0bYOTigENjJzfC4PznksUS6mugUiVnsxpCqRI=;
        b=fMvSXjhJfyLDMZ0GCdb6WfFMQcih8NmKSLIETbrW7yWvw+dwq98OyFy5KzxBJZUw7P
         4XsSBGngeMvpUxz6EJwUEU8qZ8U/L2yi7rokMKn2OdpG5Zm0E2RZ33c7c1w3EzERG8WU
         xV++KYNpf90EJywyhdqZB5MKghe1ry9DvCj/iyyQv3RAhLgdJef3zmUi0Di2JsiFEkpE
         soGZoE5j30HvHi76oDwvg9tchbWI5l07OVmG0Ov3VefhU51mg1eVOTue69CRageTV4xv
         7pISob+JSb1pnRsJsXFyNrGfd4Bjma7WmFYkS2l2VTewrH+xR+0HaWUd6X3DMguuXBtV
         HDXw==
X-Forwarded-Encrypted: i=1; AJvYcCX+Vj9ezRYAusc1zUlxPm09y212BxLc10nFjmFbpNot9lDy7Qlm6Tp7aTE7Eb697WnKFwlaT8l74L00@vger.kernel.org
X-Gm-Message-State: AOJu0YyRnALU+68EzAIGEwTlOfMtGpZC+jS7F42iC/23eof+Ie9LqTRZ
	4Fr7I+ct5fB3WmVc+Ec35GUB2hvS+RbtlFa1iV6/DFbIbvxJeHKSYte8tsT7GKfeRmSPNyMovHI
	B4Tw=
X-Google-Smtp-Source: AGHT+IFSWgZWNIUZ85ksYtTbByMHbYO20e2Hs53gTpsB1P3m/uc0wNUUwCBABudBwxmxqNb4dK0gXQ==
X-Received: by 2002:a05:6512:2349:b0:536:a52d:f94b with SMTP id 2adb3069b0e04-539ab85b54fmr4295714e87.8.1728250371661;
        Sun, 06 Oct 2024 14:32:51 -0700 (PDT)
Received: from wkz-x13 (h-176-10-147-6.NA.cust.bahnhof.se. [176.10.147.6])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539aff23588sm608610e87.196.2024.10.06.14.32.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 14:32:49 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Daniel Golle <daniel@makrotopia.org>
Cc: "Russell King (Oracle)" <linux@armlinux.org.uk>, Marek =?utf-8?Q?Beh?=
 =?utf-8?Q?=C3=BAn?=
 <kabel@kernel.org>, davem@davemloft.net, kuba@kernel.org, andrew@lunn.ch,
 hkallweit1@gmail.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 netdev@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH net-next 1/4] net: phy: marvell10g: Support firmware
 loading on 88X3310
In-Reply-To: <ZwK3t_uEErLXlaQy@makrotopia.org>
References: <20231214201442.660447-1-tobias@waldekranz.com>
 <20231214201442.660447-2-tobias@waldekranz.com>
 <20231219102200.2d07ff2f@dellmb> <87sf3y7b1u.fsf@waldekranz.com>
 <ZZPhiuyvEepIcbKm@shell.armlinux.org.uk> <87mstn7ugr.fsf@waldekranz.com>
 <ZwK3t_uEErLXlaQy@makrotopia.org>
Date: Sun, 06 Oct 2024 23:32:48 +0200
Message-ID: <87h69oc3y7.fsf@waldekranz.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On s=C3=B6n, okt 06, 2024 at 17:15, Daniel Golle <daniel@makrotopia.org> wr=
ote:
> Hi Tobias,

Hi Daniel,

> On Tue, Jan 02, 2024 at 02:09:24PM +0100, Tobias Waldekranz wrote:
>> On tis, jan 02, 2024 at 10:12, "Russell King (Oracle)" <linux@armlinux.o=
rg.uk> wrote:
>> > On Tue, Dec 19, 2023 at 11:15:41AM +0100, Tobias Waldekranz wrote:
>> >> On tis, dec 19, 2023 at 10:22, Marek Beh=C3=BAn <kabel@kernel.org> wr=
ote:
>> >> > On Thu, 14 Dec 2023 21:14:39 +0100
>> >> > Tobias Waldekranz <tobias@waldekranz.com> wrote:
>> >> >
>> >> >> +MODULE_FIRMWARE("mrvl/x3310fw.hdr");
>> >> >
>> >> > And do you have permission to publish this firmware into linux-firm=
ware?
>> >>=20
>> >> No, I do not.
>> >>=20
>> >> > Because when we tried this with Marvell, their lawyer guy said we c=
an't
>> >> > do that...
>> >>=20
>> >> I don't even have good enough access to ask the question, much less g=
et
>> >> rejected by Marvell :) I just used that path so that it would line up
>> >> with linux-firmware if Marvell was to publish it in the future.
>> >>=20
>> >> Should MODULE_FIRMWARE be avoided for things that are not in
>> >> linux-firmware?
>> >
>> > Without the firmware being published, what use is having this code in
>> > mainline kernels?
>>=20
>> Personally, I primarily want this merged so that future contributions to
>> the driver are easier to develop, since I'll be able test them on top of
>> a clean net-next base.
>
> I've been pointed to your series by Krzysztof Kozlowski who had reviewed
> the DT part of it. Are you still working on that or going to eventually
> re-submit it?

I'm not actively working on it, no, but I still want to get it
merged. I, perhaps wrongly, interpreted Russell's lack of reply to my
motivation for accepting the firmware loading without having the binary
in linux-firmware, as a NAK, and moved on to other things.

> I understand that the suggested LED support pre-dates commit
>
> 7ae215ee7bb8 net: phy: add support for PHY LEDs polarity modes
>
> which would allow using generic properties 'active-low' and
> 'inactive-high-impedance'. I assume that would be applicable to the LED
> patch which was part of this series as well?
>
> In that case, we would no longer need a vendor-specific property for that
> purpose. If the LEDs are active-low by default (or early boot firmware
> setting) and you would need a property for setting them to 'active-high'
> instead, I just suggested that in
>
> https://patchwork.kernel.org/project/netdevbpf/patch/e91ca84ac836fc40c94c=
52733f8fc607bcbed64c.1728145095.git.daniel@makrotopia.org/
>
> which is why I'm now contacting you, as I was a bit confused by Krzysztof=
's
> suggestion to take a look at marvell,marvell10g.yaml which would have been
> introduced by your series.
>
> Imho it would be better to use the (now existing) generic properties than
> resorting to a vendor-specific one.
>
> In every case, if you have a minute to look at commit 7ae215ee7bb8 and let
> us know whether that structure, with or without my suggested addition,
> would be suitable for your case as well, that would be nice.

To me, it seems cleaner to have a single attribute that defines the
behavior you want on the pin (as a string enum). That way you can also
explicitly declare that the kernel shouldn't mess with the settings
(e.g., `polarity =3D "keep";`, like you can do with the initial
brightness).

If you go that way, I would prefer if the "old" attributes where
deprecated and only evaluated in case the new attribute is not
available.

As for how generic it should be: To me it doesn't seem like there's
anything PHY-specific about it. I suppose where it might be confusing
would be when you have a gpio-led, when that is already taken care of at
the GPIO layer.

