Return-Path: <devicetree+bounces-223615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 372CEBB89FD
	for <lists+devicetree@lfdr.de>; Sat, 04 Oct 2025 08:20:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D72D3347AED
	for <lists+devicetree@lfdr.de>; Sat,  4 Oct 2025 06:20:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E10422D4C3;
	Sat,  4 Oct 2025 06:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DsQcbSYu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAC162264CB
	for <devicetree@vger.kernel.org>; Sat,  4 Oct 2025 06:20:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759558815; cv=none; b=lAF17W8O8kFwlJ+AhKT3jQUoyI5obpUfbYXke4vGzSa0u4WnncnuOkTf6Tswu7yd2xM1qCb5jVJzECSYiDUF7A8dvBE7wP73yGwkHQ8hJRHbhCtjuPBf+bErEuhem7eAN2arwHxD9+KwR+JKgHjc81590Rz6w8NmtnGdNdHyYVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759558815; c=relaxed/simple;
	bh=cwvKQypMKJEPIzEUZe5Z66F8rm5W3HyDor7r3ulkwlk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bQAUu4YmtPPa0OEh9PLb4nkBH2Z1XeWSxdhVrYi4NL+6wiVRGRJet68X2VicpKX2nd8Ctflg4euCYR5nEXir1W+oXF4pFwi/wEUkuhHBCh5Yq60Xxs/LjF8+DwKv3WxS3VmSine9NflxW/3jxfZ93LaYshLTD9DbGo99882016o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DsQcbSYu; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-b3b27b50090so546551966b.0
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 23:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759558811; x=1760163611; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cwvKQypMKJEPIzEUZe5Z66F8rm5W3HyDor7r3ulkwlk=;
        b=DsQcbSYu7jmoi7Q+Gcs1dSwmcralfjQOtn1b6DBQVTC3YSVMap/XHeQwkyBd9WSBFh
         XWifW1fyvtxhjcZsr3aOUsKcmBfqJWyGXKhp/DMzh4bm8PBEsQsnvsuwTPw1Cd5AwzcZ
         WxQGNSw2WMwh9m/O/voAbmsI0qN2BD6bLQb+oMRLinb4TpospDam6X6UeX/q59hDOPkj
         gh0oMvZaiTVHDeoXQ0LOYUGevdKfPhJr9M8FZOP4kPHfRPy6oy83t+GX2v4Lk27cje94
         ZVQwmayvGF0J6ieKo1sOmgf+QwlaWSPx7ZcK9PkLe7zuFHMpLamrj6C07soPihS7I+h+
         e1bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759558811; x=1760163611;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cwvKQypMKJEPIzEUZe5Z66F8rm5W3HyDor7r3ulkwlk=;
        b=wzVyEcstRKXKjW9S74T9Xfs1wPdlsLc2vWpHsqMgjRpeHN9pBvf8MqH0YHjT78EFzq
         w+DV6W4S2S7AR9x9jyr03IJkKfZx7pHTt0Phvam97OdzjxqQrMiNr9dXmaI9e5ybZY5n
         Xwb1WoonlzXKEXGUonpfp3gRjiklV1Ty5wXnWTGARZ93mcayMNfbQj9f15XCQYmAJ6ab
         g0FmFWjQkM0ZK8TfTij+xonZxGX/HkHIoSIRPEqmBYXmAGCdJzkEhNOHDN3Qa65lfV+c
         tNoY9/tpsn8RUmYUqnVTSOaiLneCqY/64af5ygzmiiAzF/Ey41V03wh3+D7l9ofIQKsr
         A52Q==
X-Forwarded-Encrypted: i=1; AJvYcCV4e4uNbcCcHSlMNBoRVa6lVW4Gm3WoJsKc0nsDKAb4fCo1jjcLJcjNFV/zxj1XVx75eaiWTaTVLBQF@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3GvTsGoVYQAnjGnwRpXk7nGBo1RDOyj8q+SVSvLmcSC56ThzI
	3forfl6tSnwyjVsK7WiCHqkhQxOg/fAuphg1n77KmDVvhuitYBSm3l3JH3+0sYL/6QcsXWpAjEF
	xJgizaA5+CPzehFiyXAyJb+LgLBJFwDeRJCc+A5E=
X-Gm-Gg: ASbGncuK99HpFuf9J4YYQAeEdOIjS8usYBoL9RuzE37Pv8GwpRlq2M/p3OaGLLj0euh
	AOOLxJC88b5RiiyXqn7LD+PfcmurTX4Zxz8QvlhZ8Qzz2rVE/ghbUruDpmaecMfJquX/p97TSQ4
	onL6jwLCmgwO/Rp804Vcpvt0Ut57q5nA1UjKYWh9TCkti5YIwRMW9gMsfhBubI9dPuqwsoYW6ET
	UHYaY8nqfp2xbO8Z0ul+lT5sy0yfmZ2KJ5lfuCmFw==
X-Google-Smtp-Source: AGHT+IHvC6Z7Roar6Te7hGz1HgNqfK/9bJzycQ+JL4engfzt5VbPcx2Bzy1MDjmUK9nyex0/tG8Inr/iSP65hfRQ6uc=
X-Received: by 2002:a17:906:c14c:b0:b47:de64:df1d with SMTP id
 a640c23a62f3a-b49c1a76234mr684527466b.13.1759558810901; Fri, 03 Oct 2025
 23:20:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251004015623.7019-1-raskar.shree97@gmail.com>
 <20251004015623.7019-2-raskar.shree97@gmail.com> <21b1dc10-acad-43b9-a9c6-24abb2886856@gmail.com>
In-Reply-To: <21b1dc10-acad-43b9-a9c6-24abb2886856@gmail.com>
From: Shrikant <raskar.shree97@gmail.com>
Date: Sat, 4 Oct 2025 11:49:59 +0530
X-Gm-Features: AS18NWDFYveno3GXr5tGCM5q0b7CRS7Tq77mFhLV_Q5_pds9PsSNUL9CCHseVRU
Message-ID: <CAHc1_P67arWxOeBJZGGREQvBwVG6VaJkRu6_RawWDqRunBdzow@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: iio: max30100: Add pulse-width property
To: Bhanu Seshu Kumar Valluri <bhanuseshukumar@gmail.com>
Cc: jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, matt@ranostay.sg, 
	skhan@linuxfoundation.org, david.hunter.linux@gmail.com, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-kernel-mentees@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 4, 2025 at 8:52=E2=80=AFAM Bhanu Seshu Kumar Valluri
<bhanuseshukumar@gmail.com> wrote:
>
> On 04/10/25 07:26, Shrikant Raskar wrote:
> > The MAX30100 sensor supports multiple LED pulse widths (200us, 400us,
> > 800us, 1600us). These settings affect measurement resolution and power
> > consumption. Until now, the driver always defaulted to 1600us.
> >
> > Introduce a new device tree property `maxim,pulse-width` that allows
> > users to select the desired pulse width in microseconds from device
> > tree.
> >
> > Valid values are: 200, 400, 800, 1600.
> >
> > This prepares for driver changes that read this property and configure
> > the SPO2 register accordingly.
> >
> > Signed-off-by: Shrikant Raskar <raskar.shree97@gmail.com>
>
> The subject prefix [PATCH 1/2] says it's a two part patch series. But I t=
hink
> you send all changes in a single patch. If single patch use [PATCH] inste=
ad
> of [PATCH 1/2].
>
>
Thanks for your feedback.
I have shared 2 patches, one for device tree property update and
respective driver update in
MAX30100 driver. Can you please check the patch with subject ' iio:
health: max30100: Add pulse-width configuration via DT' ?

