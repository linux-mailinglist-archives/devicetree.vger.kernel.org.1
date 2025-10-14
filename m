Return-Path: <devicetree+bounces-226586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 646AFBD9FAF
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 16:25:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 180343AE59A
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 14:25:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C637271A71;
	Tue, 14 Oct 2025 14:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="TARM8+FS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201E7239E91
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760451896; cv=none; b=jQ2eNlP9fXOaBVhFVmDEX2fOweEaFFhr2aKtXH332Mmiaz8gtkmtJIo9v2u7VLRiNvDWS1Wg8M0i/Ou3edttaocgHXMKUmZsAhMeVOAHHJl4nkutv0np4LAymX3pomGR69yrmHCeaNOnd7y9Y872yF6v3k51BW0aqqdiUHykEdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760451896; c=relaxed/simple;
	bh=mX6ocojKXt6ehtJGjNL7V6ucGxGK5Tvv9eLa1cPVJiA=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SGdi72mOeSAx1P8LpN7BWaSzS2mML1vvYiuBEwYuNcdrhoY33KpRUvAgRfwZwcqm6usPLay5Fs19efi4EJjR24aQKBfEoCXRJITKhl+fxuMxp4TIiSDjcry9gtKABLkv4CUyKPMTcjzeXgZ7pQTJeDthf5J7pgcYD/mi8VpH6Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=TARM8+FS; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b3d80891c6cso976576866b.1
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 07:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1760451892; x=1761056692; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nEZVOL6PUeLQw/6+lgeE1UW9zKD7SdPjyHDjC9BEhTw=;
        b=TARM8+FSNyRfxEiod96sOiiVTnvj5T3pYvYrsNeMVYZabHlIGR2q7nMyjJYsr01qh3
         3MZdG4BPpZ1TuIUaMmlqNWysNMt+j8+mdunnOKqRw4WchOViqID9eCf4AYa1YZp2sgPb
         mom5VC7p6lUrHPSlNdy5eSfEVf3UdyWNQYjB3/H8Lp3r68I+AUbAvSBsLwP1HYFejLxb
         bqF3zWZ6fZPeW1e9MMmlPacpvXlXtRLmR/iYMUp6i3JfU5XszouIVaEV3pnpI6qDPPQz
         FItdofZJV41HTgDdghMxMpVWb8xeUjchw9zpn7uZWLkm0bQFjnEWU6zBjDTMJ5Pyzm88
         jEgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760451892; x=1761056692;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nEZVOL6PUeLQw/6+lgeE1UW9zKD7SdPjyHDjC9BEhTw=;
        b=pmmmQzptwEixw3w7dfeIihsa7d1b8MLnoTHWBjnOH57H7F72cKVpjMKx6YGHBaKK05
         NCk8vAcTEkIajTcPNUS0/J+UoQzbyQKSEMqCUPfelpfeBMf7qnoy5MgOveO2slNdjfG6
         FSX1Dc4Yw6pvVUdsCyj33NpzYlOS1csrhiJYSkoQln5dfQR++ZmvfLsPPXf7VATFEDHs
         wv18UdpYUyxuLKWCLqUH0HP6Whkzzy3FmN6xqWC2XK8u/UbKQmN3AwP0OlGeWMYyef05
         jMaFA13aV56UbAiJt6fFHcAiOhyi5sU2g1xGeWZVxDzMTUaGOAUhuIXy7JNTnFTv1vhM
         H3CQ==
X-Forwarded-Encrypted: i=1; AJvYcCUk+iwStYWtbmDmmtcICJpL93J7irCQwHKTWkL3GrWpzpldK5pRYX5nw3QYoQx5nMm2oMShE31Gev13@vger.kernel.org
X-Gm-Message-State: AOJu0YyzPf7J2xBUSpMhns7KXVwjSKu1QWM4mRQVZ9IiFpZ2CNw5cEyP
	Yo6JFJW5VGl4d6l3+VTLkUTgDo32oLp76ujNuWF6aXdPXJL/LfDpZ1LnLk4+nWQAOz4=
X-Gm-Gg: ASbGncsS8iOmiokM0dvNSwaqIMOkHV9Ht1Gl65HVMKkX45piPYUg9n17VI+YBDyTBtC
	H/a/iv99xMk1HXTFvguTr5n4q/D4nQ0Niv6+9l1/UL2nwlCWJyMYf8qGA6H+8TjlCmOq2E8yM0c
	qLWoSgWF/NQFi7YIPAc3zDBYrOeMPttTSRRPGADwijMx34GugKILjYNPj5CDecrQch2jpCtSGSw
	SElsBfj0/kKIJ5px7GmYjjMYANYUaViMKMrdikcH/cd5TVi9DKzK+lrf+akUdXmAtLkgh0t1JXG
	6nnPDLbg9Jk3FELjyxIjfpU4biGKVfB5h1OSs5H/1nJRH5IxJKjSkNxI0MUXylgDg5yHYag/fT5
	E4EWTbS+yxrbWSDq5QWGT2pcn2S+tYz96Py4LEWAwS6RPV9oPZTl9sLkz0N4KIt/DQUZ6c/kg5v
	EZ38s/820Lv8E=
X-Google-Smtp-Source: AGHT+IFmb3dLi2m6fafM59Jf4rMPQrLzjeykemAs0vPzaK/etjpCNmIiLpNGu7LEVUukpAWqf67T9Q==
X-Received: by 2002:a17:907:d7ca:b0:b07:e348:8278 with SMTP id a640c23a62f3a-b4f4310677amr2753275766b.25.1760451892280;
        Tue, 14 Oct 2025 07:24:52 -0700 (PDT)
Received: from localhost (host-95-247-55-253.retail.telecomitalia.it. [95.247.55.253])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63a52b1d644sm11360582a12.17.2025.10.14.07.24.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 07:24:51 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Tue, 14 Oct 2025 16:27:00 +0200
To: Rob Herring <robh@kernel.org>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, iivanov@suse.de, svarbanov@suse.de,
	mbrugger@suse.com, Phil Elwell <phil@raspberrypi.com>
Subject: Re: [PATCH] of: reserved_mem: Add heuristic to validate reserved
 memory regions
Message-ID: <aO5dtNJrF3vduSyJ@apocalypse>
References: <20251014073403.32134-1-andrea.porta@suse.com>
 <CAL_Jsq+CugQrswhOWntK5RiRBSKkWRNUoB0pB8HoKPmym2e65w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_Jsq+CugQrswhOWntK5RiRBSKkWRNUoB0pB8HoKPmym2e65w@mail.gmail.com>

Hi Rob,

On 08:12 Tue 14 Oct     , Rob Herring wrote:
> On Tue, Oct 14, 2025 at 2:32 AM Andrea della Porta
> <andrea.porta@suse.com> wrote:
> >
> > When parsing static reserved-memory DT nodes, any node with a reg property
> > length that is not perfectly conformant is discarded.
> > Specifically, any reg property whose length is not a multiple of the parent's
> > (#address-cells + #size-cells) is dropped.
> >
> > Relax this condition (while still treating perfect multiples as having higher
> > precedence) by allowing regions that are subsets of the parent's addressable
> > space to be considered for inclusion.
> > For example, in the following scenario:
> >
> > / {
> >         #address-cells = <0x02>;
> >         #size-cells = <0x02>;
> >         ...
> >
> >         reserved-memory {
> >                 #address-cells = <0x02>;
> >                 #size-cells = <0x02>;
> >                 ...
> >
> >                 nvram {
> >                         reg = <0x00 0x3fd16d00 0x37>;
> >                         ...
> >                 };
> >         };
> > };
> >
> > Even though the reg property of the nvram node is not well-formed from a DT
> > syntax perspective, it still references a perfectly valid memory region of
> > 0x37 bytes that should be reserved.
> 
> No it isn't. I could just as easily argue that the reserved size
> should be 0x37_00000000 because it's BE data. I have little interest
> in supporting incorrect DTs especially generically where we have no
> clue what platform needs it and whether we still have to carry the
> code. There's enough of that crap with ancient PPC and Sparc systems.

I understand the pain, but IIUC the example you mentioned (0x37 0x00) deals
with an incorrect size value (due to endianness) over a correct size length
(#size-cells = 2), while the case this patch tries to address is the opposite,
i.e. correct size values (corrected by the fw) over an incorrect size length. 
For the former issue, the actual kernel code does not have an answer yet. For
the latter I propose this patch.
The point is that the potential erroneous regions we could introduce with this
patch are just a subset of the regions that can be erroneously introduced in
the actual kernel, so no additional harm could be done.

> 
> Furthermore, this looks like an abuse of /reserved-memory which should
> *only* be holes in what /memory node(s) define. I don't think we
> enforce that and I imagine there is lots of abuse.

AFAIK the only enforcement in the kernel is being an integer multiple of the
root address + size cells. As you already pointed out, this means easy abuse
but this is still a fact with the current kernel, not something that would
be exploitable more easily with this patch.

> 
> > This has at least one real-world equivalent on the Raspberry Pi 5, for example,
> > on which the firmware incorrectly overwrites the nvram node's reg property
> > without taking into account the actual value of the parent's #size-cells.
> 
> If we have to support this broken firmware, the kernel should fixup
> the entry to be correct.

This is what I first thought of, but it has several issues that complicates
its implementation:

- I guess there's no current infrastructure to execute fw specific code in
  the reserved-memory node (something that resembles PCI quirks?)

- Finding out whether a fix is required depends on identifying the fw, which is
  possible only reading its fingerprint through the reserved-memory region
  itself. This is kinda of a recursive problem...

- The reserved memory parsing function is invoked very early in the boot process,
  so we cannot rely on a driver module to amend that

I will try to cook up something on this line, but I guess it will not be easy.

Many thanks,
Andrea

> 
> Rob

