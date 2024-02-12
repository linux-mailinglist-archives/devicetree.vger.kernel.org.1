Return-Path: <devicetree+bounces-41017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81127851F36
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 22:09:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B2D0D1C21DAE
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 21:09:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEACC4C62A;
	Mon, 12 Feb 2024 21:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="HkuOz9iA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A78C4BA88
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 21:09:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707772147; cv=none; b=XrMN3/w4t06GQUyT5EAlwvDeWL0RED6WN7OLEOcnIYBH4EPwf1z+W2tYkvDLorEA9YZM8IRFZAMnMANeiS3sNitd8Ctm6Ov+3VtQUzZ5ibQHwZXSKxFYqkcWzJ7zshKu2f2WpUnIeva4W4oQt3n6Iv6x+NIQQg1xlGYcTArecas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707772147; c=relaxed/simple;
	bh=eaHK+0uqBKdiARIJBHAVmUjXS27cvj8wATvIY7GoRsI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VOD6W74vtcI3L/U2456XqQUjsIojLosjYbP6tGZCK0zKwwLGXNc4XpNIBiW+dVPX82CvmaeRmibMbFlGBb9GdvxExY8qVOczRDB6S+gqrQn80q0bR/X7v1X5us6U2I6+7usVUUcpiBE4M74Ft+MRTlLKLstqn9elhyQ/62TXhjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=HkuOz9iA; arc=none smtp.client-ip=209.85.160.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-42a99dc9085so8901cf.0
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 13:09:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1707772145; x=1708376945; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TtBS0t8HQq3ffeWINKiRfJ18TizLD6ebAqVB2qey4Fk=;
        b=HkuOz9iAWxKX9Kfw6AreLg3cb5CYf1V/CvTFQ1mYwjusKfKivSAjRIKbBSJQP8PO4l
         +rIfxENn4uHp4CoUPJsMoxnRzXw45ZIGOCAZD2UPRGn+G/CVzhr8zQnzQkbB50hbjHBD
         R7kODf3VoLYPyd/+vSfhMkUVSkaeBwPZMhkXGCgxGhaQM2ObQQNF+J2/pqs2RDAWz3q1
         Y4+SFZ+OZiEHVOskFDKtW6gOJSmnwBhiG0xGfGKvgL37dOeAq7hB3L6+I9tV+aALJdTo
         3vQUfqpUDh+UsYjiS50oE3u4RxtV7nGiwD4PrsUP5rPrWDrmWdjYHOjgQA3cxnhXm6Xq
         NIag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707772145; x=1708376945;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TtBS0t8HQq3ffeWINKiRfJ18TizLD6ebAqVB2qey4Fk=;
        b=Wkt/JNA1iOVC8LorsUCK1ivIiI9ZffsdX0tSLHF4bdyXHirp+pz+OM+Oi3yXLGHTgI
         xZH3YnWGitiwpB49VvCXOn0+WRdTpMPbU4BZOLkaPvK8gZpu8oxnU6GbJn5Fvzo6rhwC
         FPiSu4vuKRhKCL0xRQk/CXtmB82BIviUctGEDgnYAYlvkeMwu3LNmFmH70fkqNHDo+SX
         mADB6NSqC8BmwFDeXVZuUKZuAjilPa/WAsVDKKJLB5u3IoU23W8fcMU5SddJ9axTeagt
         EmqQ0+q0/3OWk391hihTkPnAqPy4Emp1RjecC7QHjm/F+mC+6M10ABaO6VbxkA/isc+I
         VpKg==
X-Gm-Message-State: AOJu0Yxw5jb6jz51O4GT2a6gxjtzSc/I2y/wJ7Sy5KmIwYicajoyE7nS
	Q/0llI0SR0UOPRqFg5XtZlebK3M8EhynDKZFtauSnxOMfP8gO4UH2xp9unzdqZrQC03avJ/dws9
	YtGKd7jTZP8827oIVdbhITpxNqH6lVK2KpOLd
X-Google-Smtp-Source: AGHT+IEpfEiCwSBozGYMJtQATokzhNsF6j8mBiB8P/EaHiE94WS6h4ItcmTOw7U41gnDZuvqbY6Um7RjsjvpZH5HXgU=
X-Received: by 2002:ac8:4f8c:0:b0:42d:a99b:3346 with SMTP id
 j12-20020ac84f8c000000b0042da99b3346mr10964qtw.28.1707772144930; Mon, 12 Feb
 2024 13:09:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240210030549.4048795-1-saravanak@google.com>
 <20240210030549.4048795-4-saravanak@google.com> <05e4fb58-f075-4995-9331-c3f8e8a850de@linaro.org>
In-Reply-To: <05e4fb58-f075-4995-9331-c3f8e8a850de@linaro.org>
From: Saravana Kannan <saravanak@google.com>
Date: Mon, 12 Feb 2024 13:08:29 -0800
Message-ID: <CAGETcx9dRCG8WzFABuEGy19hXgbYgMDV6b+-8bnzKNsbrpFiDA@mail.gmail.com>
Subject: Re: [PATCH v1 3/4] dt-bindings: Add post-init-supplier property
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Len Brown <lenb@kernel.org>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-efi@vger.kernel.org, linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Feb 11, 2024 at 6:52=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 10/02/2024 04:05, Saravana Kannan wrote:
> > The post-init-supplier property can be used to break a dependency cycle=
 by
> > marking some supplier(s) as a post device initialization supplier(s). T=
his
> > allows the kernel to do a better job at ordering initialization and
> > suspend/resume of the devices in a dependency cycle.
>
> ...
>
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 3dfe7ea25320..40fd498543a5 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -6055,10 +6055,11 @@ S:    Maintained
> >  F:   drivers/base/devcoredump.c
> >  F:   include/linux/devcoredump.h
> >
> > -DEVICE DEPENDENCY HELPER SCRIPT
> > +FIRMWARE DEVICE LINK (fw_devlink)
>
> This breaks ordering of MAINTAINERS...

Oops. Thanks. Will fix it.

-Saravana

