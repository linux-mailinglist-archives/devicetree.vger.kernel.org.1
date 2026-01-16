Return-Path: <devicetree+bounces-256280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 22049D388DA
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 22:48:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2E89A3048EF1
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 21:48:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77E6D301004;
	Fri, 16 Jan 2026 21:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="ZRbpPk/E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com [74.125.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFFFB2F5306
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 21:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768600129; cv=none; b=B5l47dOK9Kg+p3ZDwykprvKjT6Q2k/dZj1tkKRAZ3wqqYJ32N44p8oWKcezzNWJ1+TGSXH6VhroikNI3yA9j1jXdpItQzyDMhlyLfSoTDsp726z+9Ck87D23xnl54OOHHtlgub+kue0zaqHN7yiBGshRtsebsU0rf4YCN/dIN8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768600129; c=relaxed/simple;
	bh=YUlJc7Sr3zDM3jr9HxQY7NThbaP+oqVN9MaKS4Seviw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=u9CCkevbW0/BssVG6hOy3YxhOEAK2x0vhm3LW/rdQ3U7zIsSj7b9KKPSl3BBZqDhqjkp9ax4WoR4WtS4Um5oX2l1IQpiF5wS18K0eBWBjBivgZ362bIcFt8jeKHFxMV1GPx6A/qWQxgPeuKejm5k8V1BKiCiB8BA3bfrGGXAXHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=ZRbpPk/E; arc=none smtp.client-ip=74.125.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-64472ea7d18so2091153d50.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:48:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1768600126; x=1769204926; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mY05kIgIMl2dh4w/PgKOxyQ2I8chWiVdB03iWdA4Tog=;
        b=ZRbpPk/E7FRnJ7BMYHtVIliZZqZnvfJtHgkTCmWXbbat7JE2BTe5eKVdYVOyoAAYq1
         VYM1NLpdyxVQKz6jR+d37CWqpSdWuuyAbShxVH+jGA5hEc4S//i1gV0B8DfWAElCHBN5
         /NAFr6oSsfWbZmz8EDiBUHznXH1Eipv2483tDLYtNPoB+mM7I3i/Gs9kJDdbwKDNQsoI
         7hO8QgfKWx6IAJvQSp21coL+RQtofqb8u8gTR5figsZSHhnoR7uNiCnz0Hv+0d0B/mPm
         NiO8sVpcQOoKROgzRw0zal7XV6LnfMFbuYEhCx7GBOSRtYfej38OwlphZftRnAMMfhd4
         Xgsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768600126; x=1769204926;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mY05kIgIMl2dh4w/PgKOxyQ2I8chWiVdB03iWdA4Tog=;
        b=NlJOwSTtoNw679zDBI+Z8Di73kKrOHIQIPKSQvHAJHnzBzKRkcynCEKX9UawaOe/uC
         qW/YPWKZZKFCwJuFg2+x4l53SNgY1el2usUp5aeXxIwHgI9HLQJ2SNvHOfImXoEhjjDM
         rdf7bWgtdIJDLK54UtUMej12Z6l05zKCFBMQyTiAyTwZi8LlGCmqCB0P3F1I46hb/1jE
         PCf2gMj2ZkTososi1zxSDq/lZ9IxEd5j/Csg2s4ejh8AlttlZY0+DFbfj2e9O8FnS7tN
         bjgx7oH3Uy1bqWHyXjroneP/O78YCFvvqDTSj+qg7nMJdUDRUBvy4Z7gpLSugIOr7lSe
         P/kQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYGXvaZ7HYDTvDbG3QXmGD420JJ3oK+vp5EnIwBSibtu2aWzVW3RVYIuMzMlztglNlfWdsSP3GYDF9@vger.kernel.org
X-Gm-Message-State: AOJu0Ywd3mH98X6WLBnHqeyM68uQOmtKKxewDbh1Feza4BwMalMD7YeJ
	dOGUelSVN7YpnEUQa8kRwiwELv5JRDxLwxnmR7TTaaTgwWp5hy1+6SYIFlUd/CBSdXQEMxgpJYi
	VQEixmPDNq9pGTHoEc0Gmw+hcH80rucwO1He9S7G5DA==
X-Gm-Gg: AY/fxX7NCmPU0gic4Dhapk8nis+F1suUg1r7Gy9pT3bHHmRmessD6pK5c1+pqAytpq8
	erKvxEYM5rLiWtAiE9cvERShSrPys0bDQBjUk9VhtcbikzqQBBY/RO2x62zpnkUX44GbJalRcEZ
	DzCe8Qm1XZEUIlJch6Ipf3bagRIh4JL2nGtQYhI5bYyL/+ZfPWZZFIIPWNcOvfJcEUCbXmZKlrr
	yBb+lNsEJmyPbS0tON24kewYUaNWUVrZesr5QPKoKITXwPpUwCNJ7tCi7kbK7rpDOT8SVKs/Ekv
	PLLrNqutxIk+FiphFFjbXcKdvtwy0UDdVHx5+GU6P1cJvcfN+dJgcRP9F8kR
X-Received: by 2002:a05:690e:4191:b0:63f:ab00:1a07 with SMTP id
 956f58d0204a3-649164f2191mr3364006d50.49.1768600125896; Fri, 16 Jan 2026
 13:48:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com>
 <20260115-atlantis-clocks-v1-1-7356e671f28b@oss.tenstorrent.com> <20260116040329.GA1375823-robh@kernel.org>
In-Reply-To: <20260116040329.GA1375823-robh@kernel.org>
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Fri, 16 Jan 2026 15:48:34 -0600
X-Gm-Features: AZwV_QioGa-4X2KzI3YnQR765ca18KetbCGwv9R3-erpeNxDeN2zkJbwLVpqjgI
Message-ID: <CAEev2e8dRFD4FVyoNs6Eo-Qrvp4oKAQ96YTOyN5HUWVKVDUjuA@mail.gmail.com>
Subject: Re: [PATCH 1/8] dt-bindings: soc: tenstorrent: Add tenstorrent,atlantis-syscon
To: Rob Herring <robh@kernel.org>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>, Joel Stanley <jms@oss.tenstorrent.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, joel@jms.id.au, fustini@kernel.org, mpe@kernel.org, 
	mpe@oss.tenstorrent.com, npiggin@oss.tenstorrent.com, agross@kernel.org, 
	agross@oss.tenstorrent.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

On Thu, Jan 15, 2026 at 10:03=E2=80=AFPM Rob Herring <robh@kernel.org> wrot=
e:

Seems like there was a small typo in the example (sycon instead of
syscon) and your bot caught that. I'll fix that.

> >  .../tenstorrent/tenstorrent,atlantis-syscon.yaml   | 58 ++++++++++++++=
+++++
>
> Filename should match compatible.
>
> If "RCPU" is what the h/w block is called and sufficient to identify it,
> then drop the "syscon-" part.

This hw block has control registers for clock and reset for the SoC.
This block is instantiated multiple times, with each instantiation
controlling clocks/resets from a different subsystem. I originally
planned to add these later on, so you'd have 4 different compatibles
like "tenstorrent,atlantis-syscon-{rcpu,hsio,pcie,mm}".

Instead, I guess I should add all 4 in right now (the clock driver
patches don't support all currently).

Is the current file name okay for that
(tenstorrent,atlantis-syscon.h)? I based this off the spacemit-k1
clock/reset controller [1], so it would look very similar to that.

> > +  "#clock-cells":
> > +    const: 1
> > +    description:
> > +      See <dt-bindings/clock/tenstorrent,atlantis-syscon.h> for valid =
indices.
>
> Be consistent with the compatible string for the file name.

I will squash down the dt-bindings patches in this series into one
that adds both the clock-cells and reset-cells to this entry. For the
clock/reset indices, should I just use a single file (say
dt-bindings/soc/tenstorrent,atlantis-syscon.h) or separate files for
clock and reset?

> > +    clocks {
> > +      osc_24m: clock-24m {
> > +        compatible =3D "fixed-clock";
> > +        clock-frequency =3D <24000000>;
> > +        clock-output-names =3D "osc_24m";
> > +        #clock-cells =3D <0>;
> > +      };
> > +    };
>
> Drop this node. Not relevant to the example.

Understood

[1] https://elixir.bootlin.com/linux/v6.18.2/source/Documentation/devicetre=
e/bindings/soc/spacemit/spacemit,k1-syscon.yaml

