Return-Path: <devicetree+bounces-45041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EF86E860769
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 01:04:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 718EBB21459
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 00:04:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 199D637C;
	Fri, 23 Feb 2024 00:04:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="D2vMev0v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 741D119B
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 00:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708646675; cv=none; b=EQhYDmA7qicJU3jFXSM3nEhstI/rfCz4fhRc37CpY7cewsLt7biaRqfzOgRWI31fHHXFW67DW70LENjzyiKo3J1lF/K9rCOUZV3nWhkVJ3UPxAdg1tESt5CJv69iXf7g66FaF9c9+YmkmEcLrghXN6QjOJkmDINUI3MQu7T8PCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708646675; c=relaxed/simple;
	bh=9pP5OlmtAIgm4P1Ua4x74MyvoK9EL4bdQqglBk/+A9U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Fbr8izS6Wec1ll/ubvTMvZSANuOvkpQwPORYfFUrfawjrtaBtdmj0qoGslMUGqNeVYDc/RTb/DBrgxbscqF3elKr0D823UehXL4ZiDXfJ/MK7YQWFjD9dUYS8b413EmrtaU/Vjrxv0PkI6z5cT05LD+tyr7SmyJxC3cW8uZOXOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=D2vMev0v; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-42db1baff53so51281cf.0
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 16:04:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1708646672; x=1709251472; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K4XV+6evrAtbe6Ax9g1oW9X84h/Wj2ygEaesXkyr4b8=;
        b=D2vMev0vrQHJXk/hljFc4iMPZHQhj+ajZQFLkai3mm0BR+TqPYbCLlUZ6gESe81LMO
         gNIkHVjjMvyUU87MFZj7zXJhM7px1FhulgKCjeMRhGnzsQ6/VRJahT1ZSfOX3Fvv4SpT
         lRcX6l5M/pMexV2D5DTqh6vX5qcWsrLDFpBEmFTlSyTkloZ+oMjOWHENp0Z8Qcf0lb1r
         FqT7OV3HpMwk6w3P3/+5vo7jgp52mL5N7IA1IYVADBTFQ40b+Hy42STmQpWaCMLYUqMc
         QQVy3G4HYfK1NqD4S6GY02Z7Uez7aL2+7FQRVsjt3ErSL43PT8D2DQonAzt6/rvbJ2Zj
         ajvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708646672; x=1709251472;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K4XV+6evrAtbe6Ax9g1oW9X84h/Wj2ygEaesXkyr4b8=;
        b=IxuteihSkqL4aTix2Wr9IU3kZ1U1uKkZoQ4sWV+6RZZDF7qPx2bXVNEJxEFQJ08zmY
         eEzmJZny1rMytixSPtGtNb37hogd8JJ7nxISPLYzYbpbK1PxwAWse/PHwJZNlItDYUpy
         K4xpop8i02IEf+UZn0kyQCipsiBNtSmEBZUJGxkou54NI4EaVlp3vy8sjbHRiR5S7dqm
         SfFGJz4u3vGSu5d4emRna5H1M9tlQoz/CQ6gupWYP1vacbTLgHFYFDWKhrxO7P0IkTHi
         ZuAbkr4tQPsQ6cUrz5lAqB6wN4P69hmxIHXRgVQIljeQMYm+3gNM5Y6QHQLVkgtjoiMz
         Z3Mw==
X-Forwarded-Encrypted: i=1; AJvYcCUczxj21VDs/6aw2/Dy4N1Sr83L5qWa6aB6cw+Hdu8TbZsOxpZYxbC5g8YBY6mWE3KX698xZb13btdkC2iBIuKK2zSqow4f8lAIiA==
X-Gm-Message-State: AOJu0YygJ8g9ZXCUHGr2CkEU2c/UKDVrts2d8ofR4bDbsgmmY/rmI+pq
	77XMTOcJpZWDrKqP9OZmGzPB5Dehu7qdVHpMofspboY5EkY2fO5SQ6ax6brSbTvdStx22n44+5b
	eaT64iqgil+f1vdiFsPJ0PeNw7M7dRTkU6THn
X-Google-Smtp-Source: AGHT+IGCEYReALWj0ivUpsTKXkYKdTcTd5VH39dy3gtqxDZ6oRtzNfNSG0nCQX3TRFOJh+JYmcLTyrQlRALpAFmJabU=
X-Received: by 2002:ac8:6206:0:b0:42e:5b91:b081 with SMTP id
 ks6-20020ac86206000000b0042e5b91b081mr205656qtb.6.1708646672198; Thu, 22 Feb
 2024 16:04:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221233026.2915061-1-saravanak@google.com>
 <20240221233026.2915061-5-saravanak@google.com> <ZddNAHqwCNR5MZc4@smile.fi.intel.com>
In-Reply-To: <ZddNAHqwCNR5MZc4@smile.fi.intel.com>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 22 Feb 2024 16:03:53 -0800
Message-ID: <CAGETcx8-fz7ijTJcBLMWetrZRfvS5GGGOBBoFM7an6qDtZ1NNg@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] of: property: fw_devlink: Add support for
 "post-init-providers" property
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Daniel Scally <djrscally@gmail.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Len Brown <lenb@kernel.org>, kernel-team@android.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-efi@vger.kernel.org, linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 22, 2024 at 5:32=E2=80=AFAM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Wed, Feb 21, 2024 at 03:30:24PM -0800, Saravana Kannan wrote:
> > Add support for this property so that dependency cycles can be broken a=
nd
> > fw_devlink can do better probe/suspend/resume ordering between devices =
in a
> > dependency cycle.
>
> ...
>
> > -     fwnode_link_add(of_fwnode_handle(con_np), of_fwnode_handle(sup_np=
), 0);
> > +     fwnode_link_add(of_fwnode_handle(con_np), of_fwnode_handle(sup_np=
),
> > +                     flags);
>
> I would leave it one line despite being 83 characters long.
>
> ...
>
> > -                     of_link_to_phandle(con_dev_np, phandle);
> > +                     of_link_to_phandle(con_dev_np, phandle,
> > +                                        s->fwlink_flags);
>
> I would leave this on one line, it's only 81 characters.

I don't have a strong opinion either way. If I need to send another
revision out, I'll address this (if checkpatch doesn't complain).

-Saravana

