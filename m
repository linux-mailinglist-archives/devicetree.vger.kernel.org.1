Return-Path: <devicetree+bounces-150220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 352A8A4178C
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 09:39:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E6C30188B12F
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 08:38:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1343A18FC9F;
	Mon, 24 Feb 2025 08:38:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D301F5FA
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 08:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740386293; cv=none; b=Rqtt5i+KXpXkoJbRXbjCFW8QAkDVUYYUNjMif9sMoHBrmiEDnxslBI/bqIeoNaafP0cjyeBaeROvtZd+Qimj7R/Ra9sBga7fg4wkNDJxTcrifRuk+EfreYfrFLjuBKwl3Ny6RXi3mFQYocjwMjSSRyMoTZKxPkxeu1tRq3Kdnts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740386293; c=relaxed/simple;
	bh=s3qRADzvs0c2X4J9bkpCMbHVSUb4ovbVntggeBnFAHE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Lk14d94BMIssJLYFHomh3aPWi7EdiO4tCzmWJtue8uGbQ3JIwytdcDwCXVlmRWfqrB1aUSM6ZJO4IGyg3/pMpSa+NxfzxLoWh/UnQG9317FwYgsIxDTUZ70DPbmAvkN60k+q5qc/KSUNhMVqVQSOKj7sR0zWIVbtS0/Bbj09U+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-4bfb4853a5dso1065239137.2
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 00:38:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740386289; x=1740991089;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UJa6lYnA6aSipEoT/ymsT0VYmK3VyJhzGLMqo39otNk=;
        b=P1moDagmMsLPKKFLs3+gMQRL3Q+ySHQ+CxElXFJLlrt4WDVBixw5BgIvPp1FYQ47+G
         Khza+moHkUrSuIkmrJfzQIv6LyMgtqRnpm1rpbiQ7UObA+h9jUaptLUSaqiNwoyab+C/
         wU8FiQgmgz5SzthAPCC3+a3drs62pvcVbh5Oqw7C4M65gsAfeyqQ/gynR8NXepm1y4H+
         L50PUY8RlqQ7Key7Fnj5NlWA2l5Xs32MInkjZfyXgsLyjxk+rdin6zw8A3QPqUvFoG6h
         3decli746qQPFJj+zAcGntmBWHTGPH8lN9xM9F7n8L3QVe/QGBNP5FBemKr4aFwFEvCA
         LIlw==
X-Forwarded-Encrypted: i=1; AJvYcCVRqswpFdx8Bj/wGgpyi9qmeSwPpa05//iJOy/AObhgPsKvN0vuL9H0T8l0pcCvXqrsArHVheYite4X@vger.kernel.org
X-Gm-Message-State: AOJu0YyA3e+kg9hMPYXiRS+uqC27Haz3nUqMX1yGlnW+KdHNYInOAX2U
	osEdXaj4G74r9XQU/WgXVf9iVTLHDY4xMkLu9M3PBv7gQ1MM/FWBZ+y6aA8h
X-Gm-Gg: ASbGncsvK1qkJRuRBaEj12V/h55McA3/+6N0uJS7kkDyfjCRP6I4pWlKhoJZ7iQfKgO
	IAsVeD+yD3O67RO76Uh0umn4FST9Lj60Y5Ytkut4H0f9Gkl76ili/P8mwCArygYArTr1cIVnjl4
	SHHYHhIFkU6ShMqawk4PuTGuqQCLj8gpgIoi1bBgOz/bV6c3oLmvg1z4vIsY77IvOapfZ3M2Fav
	QV2v9hSnNWHoXangTNUbVVGmeRt8U7AvdmmuEDwlEjrrIye6pYmLD0/GgdwvL2fF4J+PTfYMAOZ
	ryQsU30zpLmFcUA1RvynGg9irauyChnHPuHZoulyI/YjXwTa7p7hlPFqCEDqKrra
X-Google-Smtp-Source: AGHT+IFKZxzxXrE9z2U2gsxULdKCaHK5q8wfy/74v02oOwrs4s+1ZltU84vEVg582mNBFv2HLLNwiw==
X-Received: by 2002:a05:6102:2acd:b0:4bb:dc3c:1b42 with SMTP id ada2fe7eead31-4bfc0060483mr6042967137.12.1740386289106;
        Mon, 24 Feb 2025 00:38:09 -0800 (PST)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4bc68dd766bsm4112918137.20.2025.02.24.00.38.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2025 00:38:08 -0800 (PST)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-4bfb4853a5dso1065225137.2
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 00:38:08 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX52ExU1AC6yMsplHWdxKkfc5Zt36uiSegY7ycq7r+VfZ04QRutNbBCWsygs7ie0+fujI74gOoM7vrK@vger.kernel.org
X-Received: by 2002:a05:6102:1626:b0:4bb:e8c5:b164 with SMTP id
 ada2fe7eead31-4bfc001ef24mr5774705137.7.1740386288375; Mon, 24 Feb 2025
 00:38:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <9c326bb7-e09a-4c21-944f-006b3fad1870@beagleboard.org>
In-Reply-To: <9c326bb7-e09a-4c21-944f-006b3fad1870@beagleboard.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 24 Feb 2025 09:37:56 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUhw6q1DAOBJwG5FJUs_QHj3hZMD3damOo2uLZQgS9e7A@mail.gmail.com>
X-Gm-Features: AWEUYZk8XlBkFLeqdreU9-U4BWw6DmcPNCGXGgjAFwX-gPVIUFnWPcfjhGX3GMw
Message-ID: <CAMuHMdUhw6q1DAOBJwG5FJUs_QHj3hZMD3damOo2uLZQgS9e7A@mail.gmail.com>
Subject: Re: [Question] Status of user-space dynamic overlays API
To: Ayush Singh <ayush@beagleboard.org>
Cc: xypron.glpk@gmx.de, Jason Kridner <jkridner@beagleboard.org>, 
	Deepak Khatri <lorforlinux@beagleboard.org>, d-gole@ti.com, 
	Robert Nelson <robertcnelson@beagleboard.org>, Andrew Davis <afd@ti.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, David Gibson <david@gibson.dropbear.id.au>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, Pantelis Antoniou <pantelis.antoniou@gmail.com>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Ayush,

On Sat, 22 Feb 2025 at 21:14, Ayush Singh <ayush@beagleboard.org> wrote:
> # Challenges
>
> ## Security
>
> The concerns regarding security seemed to show up in the other
> proposals. There was a proposal to have a devicetree property to
> allow/deny the application of overlays in some nodes, with default being
> deny. Was it insufficient?

This is the most important issue: using DT overlays, you can change
about anything.  There is no protection yet to limit this to e.g. the
expansion connectors on your board.
This is what the various WIP "connector" abstractions are trying
to solve.

> ## Memory Leaks
>
> Currently, updating/removing properties leaks memory. Was it one of the
> reasons for the rejection of previous proposals?

IMO this is a minor issue. I am sure this can be improved upon.  We just
need some way to keep track of which properties are part of the initial
FDT (and thus can't be freed), and which were allocated dynamically.

> [0]:
> https://lore.kernel.org/all/1417605808-23327-1-git-send-email-pantelis.antoniou@konsulko.com/#t

FTR, I do keep this up to date:
https://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-drivers.git/log/?h=topic/overlays

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

