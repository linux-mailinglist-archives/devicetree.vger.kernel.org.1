Return-Path: <devicetree+bounces-253683-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B64BD106B6
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 04:10:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 97389300B015
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 03:10:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 766F8307481;
	Mon, 12 Jan 2026 03:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=thingy.jp header.i=@thingy.jp header.b="hU0EJz9i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D662A306B05
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 03:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768187440; cv=none; b=X3GtFneqGGc8KLmop8oeQ0H7i8ftZU5n3OYjF+hYMYni6Q0Jzt2iZElwibMIh0QWrigQ5aFO83/iXe7miCZocOFEfG35HKWkHWoFo/nLAlJeCsEUWc2w7qdBBxyPFwQRfeZ6mDWrVdh+pMnd8ZJ8ebCsWh2/SfJMd50pdoMogDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768187440; c=relaxed/simple;
	bh=dfI9ylkFMPl8cE/fwdAml7SCk5KxGYc5diFTA1NlHw4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aPhB/JbORmDfUF44jhuUm/PKDLYo+r8xD039yWCs+y2eKwevx9ewk38IJT4Apad2Sit3WDL2GkAnDKKtTTSRgJ7JZzwluVNGqxsDL8hPjQ5Qvreqp1DlqNAqcR9TfgEhE14+t1ALKfgZdRHIDqb2scbPIRIBYkoLUc+9xJOqpV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thingy.jp; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=thingy.jp header.i=@thingy.jp header.b=hU0EJz9i; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thingy.jp
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0x0f.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-34c9edf63a7so4832842a91.1
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 19:10:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thingy.jp; s=google; t=1768187438; x=1768792238; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RTOC9zsEDB0Us382x9drR3PFY1Be1oJFM8E8NeQ56YM=;
        b=hU0EJz9iHfx0ae+gsCdbrQfJmoXmN+Q7znkkXRfGrtJy3DRC60GiDeeLsHCiITNKQt
         cbIK1mj8Vgc11SqGaQ/ScvNCcsacsdvI7UZxd5ay/unGhzYJv+DWKyCnZz8hZbRqJMAn
         oaxEj5QpZTkHk3v3wZTZRF4kVVvud8yBuEdOU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768187438; x=1768792238;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RTOC9zsEDB0Us382x9drR3PFY1Be1oJFM8E8NeQ56YM=;
        b=mDSVyZxjDbK9dFTZZ+HXhISHmds457Ch54mJl2pv/6C3L+L33uyL1+Ha2bFaRqhqdn
         iM6kNrMmaDyoLSlX4DUFv1/5vKy0gRd6iY/PBnWlQ/6InvW83S3DmB432LVSofhGXscf
         s8G9SeYvR+3Y+qGcSNOOH1/HdfOMUSMsQmQzxZTIo2UaeipJPLx8eLSQF7gnFDjsKuvH
         2+pElD8ey+HWfVtwH8s7xfjHddKt/+Qrx2g1OgK4sWzJz55G+kikA5hIhNNwiFkqXSTh
         FIsrURd71Bx9ujYpT8zL5jvdnO5IvbgyKo7AakTZ/Ot0erWGsZ4oWlUvUOPzPkao8g+G
         QnNw==
X-Forwarded-Encrypted: i=1; AJvYcCWjl4asKbSy37+kiLWJqwVPHkidb1Yq74ayc26Ck3CsBQwLDM5jVFpUjxfbwDR1e1aozyCdblfl6so5@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2zOWj0CPADnBWrfX16bHRFdBFNJ7ggl0bxB1U7qtJSbwnQgJA
	rn8Us5U0t8s3LiR6Y0szOVQUFz9LXvTj3/Cb0clROt8XSbCKfwrzegEUCgJ6aFukbl4KMD0klFd
	aA5PxmfByjSbqQOyqcKOr98/UXwOevvuL/bnsMGz2sw==
X-Gm-Gg: AY/fxX7AkLE/cf4stXMmlr5woeKoTyjuz1NPshXyEIvOcB0TOkDiXFIsORKA0IqSS1/
	sXxR+kxWSbigObIelwpP/32r/ltRDeLGVmCILKrMXliy9I+GdRBkNDVOAt0YpoVImYYHc5zzIFu
	fjv3p0py91IAz5JMd1+tHf+PiJzEkEmNoxuAfQJwWIyAL3LwAUzHxSL7f+BLFW1zL/gXq5i1a0Y
	tYUfWOgPQ3DekO0KD0r0ePEtZ/kz2c+KAQg7TkE7S89zNSwm+SVmE5feXfvT72EbcvH+acz883U
	dv7Fg08=
X-Google-Smtp-Source: AGHT+IECrvpIXQLQSRQgZP+8rCmP4a9RrSADYVRyWie2b6gqKXZpmDQx3XiEezJ210Ml4VyWtCuKdRUH/Teto5nRAgo=
X-Received: by 2002:a17:90b:5628:b0:34a:8c77:d386 with SMTP id
 98e67ed59e1d1-34f68c91bbemr15157828a91.9.1768187437950; Sun, 11 Jan 2026
 19:10:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260107030731.1838823-1-daniel@thingy.jp> <20260107030731.1838823-2-daniel@thingy.jp>
 <20260108233818.GA1466897-robh@kernel.org> <CAFr9PXn2HzkSRnX4X-X1q2U+zLxwSP=TxvRwmA5eYxad7SbLzw@mail.gmail.com>
 <20260109142907.GA3059757-robh@kernel.org> <CACRMN=ecP3aJSEwSWrmBDH+dP0F9kQLAjESBswfDu4HBJh-Jhw@mail.gmail.com>
In-Reply-To: <CACRMN=ecP3aJSEwSWrmBDH+dP0F9kQLAjESBswfDu4HBJh-Jhw@mail.gmail.com>
From: Daniel Palmer <daniel@thingy.jp>
Date: Mon, 12 Jan 2026 12:10:27 +0900
X-Gm-Features: AZwV_Qg6uZNfn4mTHO1zenm2i5b4rtRqtw3WJoLOuyTDIryk3Swdafaj5oVoQcI
Message-ID: <CAFr9PXmEMFC6aVFre6smw0BWF_3XTfC4OG-Gc9zSCo_cobkqjg@mail.gmail.com>
Subject: Re: [RFC PATCH 1/2] of: Add a variant of of_device_is_compatible()
 that can be build time culled
To: Saravana Kannan <saravanak@kernel.org>
Cc: Rob Herring <robh@kernel.org>, linusw@kernel.org, brgl@kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Saravana,

On Mon, 12 Jan 2026 at 11:32, Saravana Kannan <saravanak@kernel.org> wrote:

> For the 10 or so instances in the core, I'm not sure the macro is even
> worth it. It's just hiding the IS_ENABLED() and obscuring the intent
> for not much of a reduction in code size. Not going to Nack it if Rob
> agrees, but I don't see the point of the macro. I see the point behind
> the idea though.

Understood. This is very niche. In my case by doing stuff like this I
could make the kernel small enough for my userland to boot again.
I have no mmu, 8MB of RAM, CPU frequency in the tens of MHz. Not very common.

But I think it'd also be nice if all of the tons of arm64 machines out
there don't check for hacks for stuff that is only in ppc and
therefore can never happen. :)
While looking through the users of of_device_is_compatible() I also
found some, I think, bad patterns that are probably worse than the
unneeded code/data.

For example, in drivers/usb/host/uhci-platform.c we have:

static int uhci_hcd_platform_probe(struct platform_device *pdev)
{
...

if (of_device_is_compatible(np, "aspeed,ast2400-uhci") ||
   of_device_is_compatible(np, "aspeed,ast2500-uhci") ||
   of_device_is_compatible(np, "aspeed,ast2600-uhci")) {
uhci->is_aspeed = 1;
dev_info(&pdev->dev,
"Enabled Aspeed implementation workarounds\n");
}
...

The compiler will always include those calls if this driver is built.
But the is_aspeed flag they are setting is accessed via a macro that
always returns false if the aspeed platform that needs workarounds
isn't enabled to remove the unneeded code.
I don't think this is a bug that can cause problems but this means if
you use a DT with those strings and the kernel doesn't have that
platform enabled (and it somehow boots far enough etc etc) you'd see
this message saying the workarounds are enabled but actually the
compiler removed all of that code and the message is a lie.

I think Rob wrote basically the same thing but it seems like
of_device_is_compatible() in probe functions is just a bad idea and
workaround flags etc should be in the match data not decided at
runtime with of_device_is_compatible().

Cheers,

Daniel

