Return-Path: <devicetree+bounces-181361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F8FAC72A3
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 23:15:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5B30E1BC7805
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 21:16:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9208922127A;
	Wed, 28 May 2025 21:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="LOePSfXh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC8A5220F2E
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 21:15:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748466949; cv=none; b=qgZjAY5ROv7VsJb/jSF+G1T7Tj3yLQypF09KwG2ES0IO7m3L2zRVXIOGBymmmgjtUKGJTCnN7Y9PfztJ6hagWi2HNx08QFyVIq435aKq2Hk5cjNcYWCDKRaVBJvzypQjjcmCKkO5FtU2Cpx2Dng8BAn023rTZ6Rxop//6OpN4Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748466949; c=relaxed/simple;
	bh=6TB92iJqefXqaOhc1avT3ptbHkZ+VPv9uvMonohUfjY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Mko7umPj1WSBCkfeV4wnW5nUQIkHsSNC8UDpGX5EvgaKoskCq2nvShgmSwFtvOxy8HpIMFH93FwLXEq0JvYOwW0bGCUTnO7PZi2gQLQsgzmgvb40nXpoEj1FUazDHG6ZB+KMnRWTLe2hNWfb4KLTcCtfA9sjVIA2M7sMpoJp8Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=LOePSfXh; arc=none smtp.client-ip=209.85.217.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-4dfa2aeec86so95059137.1
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 14:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1748466947; x=1749071747; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=51BC5jKO33s661gXyiUDadI1PrOdwbd9xDeNJxZWYJc=;
        b=LOePSfXhKod3bDaB38wpbNtpXHj8gVwhBILZA3LX7Z/+yvqaxAZOQqcFBfqNBnka4L
         V7Dd3MhSh/7TBGtkhpTofW2HdE4Zg/AAzuHzWWh0M/XVQZRt0mgz5PablcKhOD7T+w/J
         rQx1x1T9S3Jgjx18M694eTURfItLW7HSumgcs9hW4U8A16uP1HzxUbRfuQV9ruoDC8dy
         1EFh5Gddq01iw8B6FE/aqcpv1ZewuIYNB6byc2RsYi04fARl4s5v/w1LFnp1mS+MY+VM
         1HyAcrBa0awCFo3Tj0I3owFImrk94uqa39sUiCN9GpkJUgdeVZ2hXSz9GOKnX9G1BwML
         TpjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748466947; x=1749071747;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=51BC5jKO33s661gXyiUDadI1PrOdwbd9xDeNJxZWYJc=;
        b=Av1Awm3oblvqSrrWS+ZMMIw0eCzJVcfYSDGRcXPUG3gLpGvwlR/ERQ47fR4QSUc3et
         CUnvYGyJLU4dAztWxVlsY6nXV1/NiWVL5PGRQ55oSKJPw7KGLx7EpcQD1Ouqd+4Ny7oa
         QTUMp8F5CD7trysGrzSlNV99G5JUMQ1gfD9/cEKiYAGiATwS6BtGMQzy99DaT6Q0aNLj
         3f45qMR7dGco85duvVtqJdyOQ7kUVcIQa9XTsjSEMDgDPOCfc7if2f8MGiNVycT3QMK8
         90ufzrMTudquoDPtDn2qo6migMYYwfldsUulXixgb5tfMl2342C1AtK56h86cOOLxVKe
         etvw==
X-Forwarded-Encrypted: i=1; AJvYcCWaPbviHKQMZ2rS7BZZM7lPN8+IymUXJvlkeAtVKwWgZBslkP8qw5AIXRvhUmQNGLz3mhjRxGu5xAic@vger.kernel.org
X-Gm-Message-State: AOJu0YxttlPlE2FUt9K+epG/a68gdHX1wFjQB+cVUpssoG4ZwoVBj77L
	AH5/DlyF2girjbuv2KO4XAAYcIXdFDTIM4ql8LY+0dCLKSlIcF2hEtCPCSVoRGbvvmegPzy1GO3
	Dd+bK73BgaxNKrZVuS392cBvUt43kvh9ElgV9ZHFF
X-Gm-Gg: ASbGncuE1R2MUDTmRnZQYc6jtpVv7P+Sz59XDE2gSoqLafi+6PTo0Wd7HDROynu160p
	FWTDupAGVK2IfCCqLql88rPAIIrj6mju/Pt5QRbNP9QXfbjy0m8rIv52p2V+0YuYdVfwPg7FFXY
	50sBftsYyqAMWmlzSIu22vV1G1XLY9pmIsbVIrSBRy+aI3lKDNUMwaHa4huOrJkgd6dz6po1fS
X-Google-Smtp-Source: AGHT+IEGjOs82kTFAU/Z31a+vH3Qzfatibe+2Qf0paK/asZmHcpx8dE1IgvJTlZDLnKNENdG06sLfEKF7hXQmR772zM=
X-Received: by 2002:a05:6102:26ce:b0:4da:e6e9:1f56 with SMTP id
 ada2fe7eead31-4e4241f1005mr15436061137.23.1748466946407; Wed, 28 May 2025
 14:15:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250528174426.3318110-1-dtokazaki@google.com>
 <a0bf24c6-58da-42e7-b686-03a893b38ecb@sirena.org.uk> <CAOC4094v+MyrWgbkDJZ5KJhzuTmmgAuS-XacbFt5jHK3aYtOrg@mail.gmail.com>
 <f1084652-9a1d-4d2c-a7c7-9f40e380f5a6@sirena.org.uk>
In-Reply-To: <f1084652-9a1d-4d2c-a7c7-9f40e380f5a6@sirena.org.uk>
From: Daniel Okazaki <dtokazaki@google.com>
Date: Wed, 28 May 2025 14:15:34 -0700
X-Gm-Features: AX0GCFv7MoeBQkPF5SI8TR13qspbgej9rz94jeuiM1MPCfRMK72J5uqpJwNutLc
Message-ID: <CAOC4097gBTJWAYLTO9c9-NgJmZ1Vvq7KzUxkuoOvByhm5fOQuA@mail.gmail.com>
Subject: Re: [PATCH v1 0/2] userspace-consumer: adding is_shared flag
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Zev Weiss <zev@bewilderbeest.net>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 28, 2025 at 12:20=E2=80=AFPM Mark Brown <broonie@kernel.org> wr=
ote:
>
> On Wed, May 28, 2025 at 11:32:19AM -0700, Daniel Okazaki wrote:
>
> Please don't top post, reply in line with needed context.  This allows
> readers to readily follow the flow of conversation and understand what
> you are talking about and also helps ensure that everything in the
> discussion is being addressed.
>
> > > What is the use case here?
>
> > The request is for a regulator to be controlled by two different
> > subsystems. One is a userspace HAL and the other is
> > a kernel driver.
>
> > Alternatively I could expose sysfs nodes in the kernel driver
> > for the HAL layer to connect to, but it would add coupling
> > between userspace and the kernel driver that might not
> > otherwise be necessary. The userspace regulator driver
> > would add some abstraction between the actual hardware
> > and the sysfs interface.
>
> Presumably the HAL is working through some driver since otherwise it
> would have no access to the hardware, that driver should extend it's
> interface to cover managing the supplies.

The HAL communicates directly with another subsystem via a mailbox
interface and doesn't have a kernel driver.

> This coupling seems
> desirable, we end up with one kernel thing which knows about the whole
> device and the firmware description is not dependent on the fact that
> there's a HAL.

I see, I can make a local sysfs node from the kernel driver to be
exposed to the system.

