Return-Path: <devicetree+bounces-277352-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6AiWFLvdumk3cwIAu9opvQ
	(envelope-from <devicetree+bounces-277352-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 18:15:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C5A2C007C
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 18:15:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 810BD34459F3
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:30:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3040B3A256A;
	Wed, 18 Mar 2026 16:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NrvFKfJy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8923F20EA
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 16:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773849804; cv=pass; b=PzGPDiWzJGc9YhrMfIM3c5LhH22+sg2gplPBpbyik0xL6rHXJ0pBtGnKbiLf3stQc6OhOjzQPivTa74SVaQhowsp8BPW7gUKxYrvWjYAmgJXk21U3iwp4Ctxd61iXN0y1lA83t6tXH4/b9EoPRLNZEoO4/Ce53YDTh4T0uAQSco=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773849804; c=relaxed/simple;
	bh=whUst5kD5E4ZE3YDOSV+OSVwVL0wed8ch5z/VyWCXig=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=a4ICWbyxdvaX+bVOFlaHFDX5sk83QoFHMKlSrphHNqpTp59w7/GC9ID/sz9vxknMVKjMDwjWyPvSq4ZShvQ40nJHrTRBoiP2vJ6miCxVuGZHwS7CqxKH/R9KMfMuClFIh2kWns1fje2itePAlL8awHUE8IKn/lUClcDuFTcZKiI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NrvFKfJy; arc=pass smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-664f8bef4e7so74952a12.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:03:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773849796; cv=none;
        d=google.com; s=arc-20240605;
        b=TkMbiURWcwlnoW1eG9a6saw7SeHM8bBhvSWnV++kpFYJn7Mo/1Lqnwj3sF6LtBgZqb
         i9/L7TUdZpn1NNI8H0lGTSGZo4ygcS/l+4OchxYTeRFLIj6DJEiCtjN2ZUmqbaXZjB+d
         07aO30cC+BNwS6hvTGknCxkhG9hg6eaTHByNF8T6qwuLZRr/OEW4eoKSHFk0S6dNHKkL
         WptFqxsWdCTgckwVlrU2m5Vw6+A3PlH4rY8GDoyKnTe0Ika1YzsiiFcgJXIzmovkNJus
         JQPllDSiZel0VE5Wy1ySTjnrgrrmChYGkydjProzfdgJOt+E7wcV+ciiz60X+EXc/UbT
         EeaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Swz0XhdroxzWkDHIYYyMmBF0VrlYEkeUluciyU8bDwM=;
        fh=jCCSrDNzPpdRA4PX+r7Ptf+whM3hQc6I3P3lhJBQoDU=;
        b=briU36PpqSbpcaWje4INkajOeKZLs3e4EJyq+C4FBa7IDHyksfcwiIQJZY0E2mvZ2B
         juo7TW20gGyOHMLGthsLk3NLDQGWCecOchjFmnLhx04YjD7jVzKWE0cqIRjKELrvkF7Q
         2+T40K0x4Zs0IhNHjdZgtx6oACVbo9dhwoI9qqkpvy5OKtKkG2aw0XUs2LuRB+FA0N8/
         x3Gn8wz463cG353GcMUIdWrsKgIt9evwda2RvGJq2icW/j1S4MJNxATlp5k/VuAj40re
         g9zJ63IAP58xBiM7FKuQ18q6FINQ2IEQrmk3ZIXnWZ/AC5DByZ3m0EcKOUw0amBnjsJL
         baMA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773849796; x=1774454596; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Swz0XhdroxzWkDHIYYyMmBF0VrlYEkeUluciyU8bDwM=;
        b=NrvFKfJy8CtNVdNccGFS39F+Doot4zdly3PsBWy04M7efbIcf6JilwzgwZ5tKcxYvE
         CRsztuu8mCaeVzWm8JS8NQJo8NiV+qUdakCj+PcJCY5f9k47Y9Bzl/s2JryZnZYbIQJ4
         Us/Q6uozSXjJ2OHxxlKdUPPtzhCLXNQV88EcL9igVFlszfsI1/PHUPIpZQ42UUpMqSQM
         Qb1vV55lgYIoRD0ARNuuIEsSzK7rgFpdNAbbklTL6awoS2ak9qKkt/HctA0Lqi+BKIO9
         yW/TET3gQkdUt+yvJpODff1zYn7V7WIgZZMyyEUk4J6HO/ZMfVW4Fn4uELApzY2iMTeA
         IOIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773849796; x=1774454596;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Swz0XhdroxzWkDHIYYyMmBF0VrlYEkeUluciyU8bDwM=;
        b=YO0rApk0qn40fbSbqw2oHZrfcFcL4tEbJN8q8L+gN1B/LJa/QqiaGkjuEXp1cpxdcX
         CGIvpJYcJmItuzzg3lYCCspNIZdObYr2XA4TU4JW92/iscxTEdXfA4+HJJ0bn8e/9izl
         1qPjsT7WI5h996fRe9TISexV3AjmzKcXJdZZ+Bb0s4/Bv2RuHy/dl6c51xaRvzU8Qgel
         ShgiOR7n3gfXV12TpQoC2o+a9nnUp3B+CSI/fFopAZCvTBmaeP3BXxs4cnAo8qXP9bNA
         sht1KseFaDcFrjHG/0RPTvj2+5H5X5CbmRfLvERzcYt/U1mQIoRuT/keYmDTH3GAhOUI
         EITA==
X-Forwarded-Encrypted: i=1; AJvYcCXMC8IIWLpJRTdBkRiCBYFRaUnXcxSgB8gKz5MnZMrxZ02kvOV1yYvJU+OkfxxpQKnDjAu7UPnkjR8y@vger.kernel.org
X-Gm-Message-State: AOJu0Yx73S/ChKr6E7c4gQ6PMhWzsbjk4xSI8ozPLgtCiUKPYK7ywLT8
	SBybDuVYa+snlpbOV1nZZVLNmlvvdwMmY2yamAXmYL3wKPi1Mvm/Ymyb9WmZ6kfcfS4ZV3rUrBR
	GY6QD8QQl4CR9zmytVnTLbUKaqKroHJUxmc5/bBHezQ==
X-Gm-Gg: ATEYQzxECpv5rocXeg8lvWjo27PRl19QASc0Adyey6N5b0PS08OrQtz4dMC+2Dqtk0m
	BMGzZDU4e7yWhIy4n8Kc6dF0YIk6AsCYTvZmFFSnUmpdIvYjYpIJ2lZ1R0wlshUSeGrF4f9lk/P
	Ihb/+1xrTxg4ltneF1zIJd1kAWOBdBdCjE84qldnNPlJYFPoYTwCgbbbi9xQxaSbk7SVIOr85pu
	Uie62xchtk7jxruHMH3wLesP6evFRgPa0HwAIvW17RTEpDwzAXgPVoLk8OKtkmUBxzPdQVgqB7a
	65AzT14K14OspPm1jzCL9pReJQk+3s7HY4szOuF8
X-Received: by 2002:a17:907:9811:b0:b94:24:44bb with SMTP id
 a640c23a62f3a-b97f49bd1dfmr258135566b.42.1773849796081; Wed, 18 Mar 2026
 09:03:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260313195801.2043306-1-shenwei.wang@nxp.com>
 <20260313195801.2043306-4-shenwei.wang@nxp.com> <2aa1d063-181f-4145-9f1f-7e3012c4d0af@foss.st.com>
 <104e9861-bfd4-4e0f-8967-a849edf7e6fb@lunn.ch>
In-Reply-To: <104e9861-bfd4-4e0f-8967-a849edf7e6fb@lunn.ch>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 18 Mar 2026 10:03:03 -0600
X-Gm-Features: AaiRm50ET16GLgpYC6lwF0jbLmfq5CygllZIeseBjuujZbOA5MhL0hZ6kP_Zg-Y
Message-ID: <CANLsYkx6KhspTjzpk51ywfgWcf-FR7-3XrH=MmBi_W6yZmMukA@mail.gmail.com>
Subject: Re: [PATCH v12 3/5] gpio: rpmsg: add generic rpmsg GPIO driver
To: Andrew Lunn <andrew@lunn.ch>
Cc: Arnaud POULIQUEN <arnaud.pouliquen@foss.st.com>, Shenwei Wang <shenwei.wang@nxp.com>, 
	Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Shuah Khan <skhan@linuxfoundation.org>, 
	linux-gpio@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>, devicetree@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com, 
	Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277352-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	FREEMAIL_CC(0.00)[foss.st.com,nxp.com,kernel.org,lwn.net,pengutronix.de,linuxfoundation.org,vger.kernel.org,gmail.com,lists.linux.dev,lists.infradead.org,bgdev.pl];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mathieu.poirier@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-0.931];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lwn.net:url,lunn.ch:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: C6C5A2C007C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 17 Mar 2026 at 08:11, Andrew Lunn <andrew@lunn.ch> wrote:
>
> > > +struct rpmsg_gpio_info {
> > > +   struct rpmsg_device *rpdev;
> > > +   struct rpmsg_gpio_packet *reply_msg;
> > > +   struct completion cmd_complete;
> > > +   struct mutex lock;
> > > +   void **port_store;
> > > +};
> >
> > Except if I missunderstood Mathieu and Bjorn's request:
> > "reuse all the design-work done in the gpio-virtio"
> > We should find similar structures here to those defined
> > in virtio_gpio.h.
> > struct rpmsg_gpio_config {
> >       __le16 ngpio;
> >       __u8 padding[2];
> >       __le32 gpio_names_size;
> > };
> >
> > /* Virtio GPIO Request / Response */
> > struct virtio_gpio_request {
> >       __le16 type;
> >       __le16 gpio;
> >       __le32 value;
> > };
>
> The core of the issue is that Shenwei is stone walling any change
> which makes it hard to keep the legacy firmware. It is possible to use
> these structures, but it makes the extra code Shenwei needs to
> translate this protocol to the legacy protocol more difficult. It
> might need to keep state, etc.
>

I agree with everything Andrew points out above.

> Two points...
>
> The firmware implements more than GPIO. There is definitely I2C as
> well, the first version of the patch has bits of I2C code. Looking at:
>
> https://lwn.net/ml/all/20250922200413.309707-3-shenwei.wang@nxp.com/
>
> There is also RTC, and a few other things which don't directly map to
> Linux subsystems, but maybe do have Linux drivers?
>
> Give how much pushback there has been on the existing protocol for
> GPIO, it would be wise to assume that I2C, and RTC is going to get the
> same amount of pushback. If any of these three, GPIO, I2C, or RTC
> decide that only a new, clean protocol will be accepted, no legacy
> shims, the firmware has to change, breaking compatibility to legacy
> protocols, and the accepted shims become pointless Maintenance burden.
>

I have made this point clear before: modeling legacy protocols in
mainline doesn't scale.  Mainline uses a single generic protocol, and
yes, it means breaking legacy protocols.  This is the cost of moving
to a mainline kernel.  If people want to use the legacy firmware, they
must stick with a legacy kernel.

> Point two is that the customers who are pushing for these drivers to
> be added to Mainline probably know that nearly nothing gets into
> Mainline without some changes. There is some short term pain to
> swapping to Mainline because of these changes, in this case, firmware
> upgrades. But in the long run, it is worth the pain to be able to use
> Mainline. And those customers who don't want to upgrade the firmware
> can keep with the out of tree drives.
>
> So, what are our choices?
>
> 1) We accept the code as it is now, with the shim?
>

NAK

> 2) We keep pushing for the virtio protocol, with the shim?
>

NAK

> 3) We keep pushing for the virtio protocol, no shim, firmware changes
>

Nothing will get merged in the RPMSG subsystem that includes support
for the legacy protocol.  Not today, not in a month, not in 5 years.

> 4) We pause GPIO where it is today, and restart all the arguments with
>    the I2C driver. We can come back to the GPIO driver in a few months
>    time once we have a better idea how I2C is going. And maybe we also
>    need to see the watchdog driver, and argue about its protocol.
>
> I also understand ST has a generic I2C driver nearly ready, if that
> gets merged first, that probably kills the NXP I2C protocol, and maybe
> the NXP GPIO and RTC protocols.
>
> My vote is for 3. If not 3, then 4.
>

Strong vote for 3.

>      Andrew
>

