Return-Path: <devicetree+bounces-242417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 05221C8A179
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 14:49:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3B4214E7B4E
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 13:48:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CBF4329C5E;
	Wed, 26 Nov 2025 13:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="Saq7E4Vg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA0203271FC
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 13:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764164929; cv=none; b=DdtiZ2AO3B49UYH86FUThmwhZQIUSm/UuTmhW73C201EzGDTiawpU3TztfJD6tvBF3nafn7UlpuUfNij3w+gcvDWv0mEAh0Q4z+GvD9xzPmX7armol4mfkxAXw+ZlVsToH2KZqvJv06IacjJn0nG0FmZx0CNh/sjP8M/ev+VQ3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764164929; c=relaxed/simple;
	bh=lRLhyrQFH9bc4z94dRD6z6H9XvXyJHy7FYhIojIZb70=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ct8kNbglzOHU2DUsCx/GODh7mF8FAjc2tSnuGVcxRjE+skUj87I5YFYXwgOuMEUgSkkEieCl0ohenXqA0QiaBlJFwIgW6mvnVinsQ7o3luQSPb5enxom3wajF9XsRK6jLAV8qP0rQT0+cJsm5QC4O65eLYY3s5sSVBmskJN7rKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=Saq7E4Vg; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 6E2EC40F24
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 13:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1764164922;
	bh=8tSDiXim3QR/kaoDLnnxSME/024paOOB5M+joUFPjK8=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=Saq7E4VgUer0t9aMrbpOVi7VSGBY6wdgxoggFw0WV9jUq5/fr8MPwIhv+elCqI9U3
	 FvY0EMEejXEHCD+v4N+jKNCyxA1kg75g490fffiMgk3+M5iRCqzhZ/b6cyEaQZe0o8
	 nE6z45HS/hh4ADKDya69k8JGuRM9+412+3h7IxJkWqZe8INZhiLa3Gddy0x+l9pE1K
	 NlbBpWajBjoIWdWyolYHqnxqhppN4BLv9xBq2dzMpHuIMI82tuqPAsOzbHwg6PoNZz
	 +SxOuqUhdB+tdDPYYOwMR7ojtZ7OCRj9LqTQfuFc7m6kmzba5Iswk9AoQmjKNGQ2W6
	 NcYT1ogYQPZqKQXAxBKFuq/4btB6TsoO3lHI81oMBXcWaeFAjVl1Cwz0OUivdss9mH
	 gFr8X/g2HPzlgSbycx9yvL1dvd6mzd9w8NgBh0ZC8skoOYcvvF6NwjD86scEBwbORR
	 W5nezQALdjDO7kkWYIer9W5UYKRLpXuYD118Y/rKxJODBgM2M2X3v93konZKFnZ3kj
	 8lb4QF7mBsyXVEA2FZMt5IxL0qd45ojlqzKZxLqzxgdoo1oYRsWe2PUEb7viBBQ/R4
	 H5uDvpn1LslFFuqH1orSwKk6aD/oI8gz7rV/Gisc7Lw5XgI7mBUMVjWXSM6FZ6lqSJ
	 g403eTacO4lp+ipP3/6pHRr8=
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-b7387d9bbb2so489534266b.0
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 05:48:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764164920; x=1764769720;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8tSDiXim3QR/kaoDLnnxSME/024paOOB5M+joUFPjK8=;
        b=oZK4GvAYmremwwyc04iRdruZ7PZDmmUb9lHz5WfoMFlPPhWQmNkS6GTUjFqnWTDOCd
         Cv+PE+wVjVW4Va+KjRCybdF5ZAcSy6XjdN6tJPExE+DSH4SyW8WdjV0CD3udvl+JvZvQ
         /3rAOo9Smabl62aWRZavt+qSnv/S+2SVB3H4jma++dV8+76tQew6E3HNJwroGz58PD1Y
         TCNRQQhVfATLZHtLChASYlW3hV3edhsqU0vx7LLCfTYok4rtQIJlgueihWg/3LBbpHgD
         UB6PEVfKK4D9S8NgjEtIOItpQ0KoPwLLsu9IPSdj+t8wR/pAMLGHN1izbXAjOiRB3FKw
         tAfw==
X-Forwarded-Encrypted: i=1; AJvYcCU+K/yQDr3BQew0ElpiYJdB2wAC6iU7zcNwXST6OJle8sSPaxKobjudb3Ru22FXOICeSjLhsKdJKisD@vger.kernel.org
X-Gm-Message-State: AOJu0YzwaDHSntGcWZ4QHcSXWK4a5SgfSBz+22bKoXRx1BVzMUThPBt1
	rGWPqYl+DtHspyY2IRqzomGSejqpEaA3B8O5sPMjkVMIfTW9dsynT9OEWsNXgRjI1ewePE+sLmO
	x2O+9f21YxfiDoZWmQdCdL1uIhdQurL7uWTvIocPphtsgJqJM/xM7TNfGfLYmTHCVbJfBFwJbR9
	nZ9YQd6kt/6UGsfpKzaNMO+R+IeIaZRQ8/x2kTDiny284UNJDJll4gCg==
X-Gm-Gg: ASbGncv+sq5Y9hKvytPTRSllbeGmOU9J3oY/hZISnOGxw3lIW8mD4jEVvN4YB/Phujb
	cEVsRYsMMNIL1Kdf5sS5+hxEQG5wIDcynl7UlDrMOFVKt6IMVozPyRdruv5jc7Br7x8qgfvBHev
	jEa4i9o3RuM6f9EpM+Bks+NmEgviINiXpU297hT6IDKo4Y960epHpU7D+dANl6wIM0hPjFKXKLb
	KeUJKWGxPHCW864WcvsTdE=
X-Received: by 2002:a17:907:747:b0:b76:4c16:6afe with SMTP id a640c23a62f3a-b76c5515075mr805408266b.28.1764164920234;
        Wed, 26 Nov 2025 05:48:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFLKHFKjeNKFDLBCWuoLI7LoCDiBUNTGNnjw3M0Z7AUZP+8akQ8XWy4+nFsuyFOyeVAq6RuchgQ7gQPdfGCxms=
X-Received: by 2002:a17:907:747:b0:b76:4c16:6afe with SMTP id
 a640c23a62f3a-b76c5515075mr805404666b.28.1764164919793; Wed, 26 Nov 2025
 05:48:39 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 26 Nov 2025 07:48:39 -0600
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 26 Nov 2025 07:48:39 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20251125-maternity-undercook-b63205b44225@spud>
References: <20251123225059.49665-1-e@freeshell.de> <20251125-maternity-undercook-b63205b44225@spud>
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
User-Agent: alot/0.0.0
Date: Wed, 26 Nov 2025 07:48:39 -0600
X-Gm-Features: AWmQ_bkXGhgpYrjkoB-2nJZAemu3rGwCX0x-Yw6XhH7TYjeF556-OBtAsCt56vQ
Message-ID: <CAJM55Z92+ceFXgh-0U2vf-8Rzs003RPD2X=spAMM8dbK=YtxAA@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] riscv: dts: starfive: Add OrangePi RV board
To: Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Conor Dooley <conor@kernel.org>, E Shattow <e@freeshell.de>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <pjw@kernel.org>, linux-riscv@lists.infradead.org
Cc: Conor Dooley <conor.dooley@microchip.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Icenowy Zheng <uwu@icenowy.me>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"

Quoting Conor Dooley (2025-11-25 23:24:37)
> From: Conor Dooley <conor.dooley@microchip.com>
>
> On Sun, 23 Nov 2025 14:50:43 -0800, E Shattow wrote:
> > Icenowy is busy and so with their permission I have applied v2 review
> > feedback. Additionally I revise the commit messages. This should now be in
> > good shape for -next
> >
> > - E
> >
> > Changes since v2:
> > - enable active high mmc1 card detect gpio
> > - drop delete-node from mmc0 reset pins following commit fa939a287224
> >   ("dts: starfive: jh7110-common: split out mmc0 reset pins from common
> >   into boards")
> > - sort phy0 properties rx before tx
> > - revise commit description of SoC peripherals as list
> > - revise commit description of compatible binding
> >
> > [...]
>
> Applied to riscv-dt-for-next, thanks! I know I mentioned waiting for
> Emil, but this stuff is actually fairly simple so I just went ahead
> with grabbing it.

That's fine thanks. I was under the impression that this still needed some work,
but it seems like you've fixed it up when merging.

In case you still want it here is my

Acked-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

