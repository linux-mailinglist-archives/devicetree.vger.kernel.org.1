Return-Path: <devicetree+bounces-45040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 610A9860763
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 01:03:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D3863B219B5
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 00:03:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30A0D19B;
	Fri, 23 Feb 2024 00:03:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="vpz9+XJd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 835BD3209
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 00:03:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708646608; cv=none; b=fxhGACeGfiw7T4yz2RhFVPuAUci23KK/s3AnGVJyWm4gpg9c7aWTGIHFA84e3uzcCDkcsO0ikfuNtdM+Wce8kgc61QNtVMNSaIFprFcRPmG9GzQ8YGUpPTMPb5kZW09V8IYSAnd8sT3Vmu5yse5X7tjYs1GWu1N9d1dLKLT8nII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708646608; c=relaxed/simple;
	bh=ji5lizpEt7VXBO3Sj9iMwTH5eCI1cYZ5fHrovqOl1nI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DYn0r3XRNAXOUQdhnu9rpD6ZO9aRODhNl3EjSDFoUQVsdrIjGjX9SxY3w9+ihJJqzkJxGJXhEmHjlXHYBt7eXA7mIoWskz0Rakf7c+9/L0NmeQNjJZd7gt8g2MdCX8P8T1ssInvI87SqHc7KrUYclagg5j2fYrPzoQewdJSOnZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=vpz9+XJd; arc=none smtp.client-ip=209.85.160.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-42e2507c6e1so57631cf.1
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 16:03:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1708646605; x=1709251405; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ji5lizpEt7VXBO3Sj9iMwTH5eCI1cYZ5fHrovqOl1nI=;
        b=vpz9+XJdi8mc5NzhiyYJYVtGExN/UELfNIU7w7JILdC6cwWnucvGoIKlxGb/blW6MH
         cVw3vVpNKXFvXfZMftmCm+7qZf412EyA0ApVe3yawQAoN7gGz/f1NsZy93XPYyOo9+H7
         Azz8x4dtF6jdfySRCsx+SXIbh232kFHa/PcHkD22X+ZLBBNHJojpxCk/ArwPo29E3iCX
         UMIKlhhtUcucPFDYQIO7/MY+w711Eql35Rglsd+hrqKA6I8FLB+vvBwDT2I+qC2CqN+0
         SoAcnxsEq3YBmv10TgbksPKComqqHxFGEDxknlj1wjsNJ2KE3GQQlCRiPgZq8EILodtj
         3ndQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708646605; x=1709251405;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ji5lizpEt7VXBO3Sj9iMwTH5eCI1cYZ5fHrovqOl1nI=;
        b=l8gtPmF4unBGsjTKuVkr0vqyF0j71z3CUZ+Gyw1tTGD8Z31QjgL357cvBvVCNqkyXL
         rRFL9Ltg0tVf4BHU6eSBxCryGlyh0fk8XYBxBLSyk6k6hCzom24yBAGmUbn1xWHkglq0
         csB+C2QBGioCzNU2EjF8QdXtYe9yMK7E5CGiAdBgFgItgQb/bPELmZcoBYjsP0tRN4Gk
         Kjp3yoTP2AVY9gJ2Be+/Dc7EibL/8cqMT1NJiJA71FnqsTKdyVdFszx80SNvRLyxYtsA
         Ek+UHAMSTCt6F83iPBdRlFFeAnRa0iOnTU18TS4xUmWUdhXRv6Zvn04MQVcp5dygPuRm
         gBxg==
X-Forwarded-Encrypted: i=1; AJvYcCVuM/0k/G8x3qIFjknH0W8L/AYvdprVz6Qmj41D7cZg4QYyxl+NjY+OAf1Ih0e5Hi+hXD+yKaeDzov4q2wSzoO/dUkLxx/Ab13eEQ==
X-Gm-Message-State: AOJu0YxPPdxooA6ituWlbV/U312xnzTRJrvnxlGAPs+5IzaZOTcbl7PK
	t+kBjl9N5qDIse+hJ+ZNh1952710m8jPwC4sBwNuCgGawue7lPNNLxRMP4a6hfO8U8NO7Rch+Bd
	aprSkiRFn/a1H/RodwfVea5dDIRWGlEMnR3lm
X-Google-Smtp-Source: AGHT+IE/qVPaF9hdk7Fc9eyOZ27fSzcfdChCqEg6lSFD8trMhOj0+FjzVUDOystxqGjnNTEpmtr0QQ2Ib5we2bUgHYw=
X-Received: by 2002:ac8:4907:0:b0:42e:660:eb8d with SMTP id
 e7-20020ac84907000000b0042e0660eb8dmr662808qtq.5.1708646605370; Thu, 22 Feb
 2024 16:03:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221233026.2915061-1-saravanak@google.com> <ZddNdqoqEz3BSXGI@smile.fi.intel.com>
In-Reply-To: <ZddNdqoqEz3BSXGI@smile.fi.intel.com>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 22 Feb 2024 16:02:47 -0800
Message-ID: <CAGETcx_usPewYSPq=E_-_fuSge7H+YiQwS8Z4bbouX0SSH6sOg@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] Add post-init-providers binding to improve
 suspend/resume stability
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

On Thu, Feb 22, 2024 at 5:34=E2=80=AFAM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Wed, Feb 21, 2024 at 03:30:20PM -0800, Saravana Kannan wrote:
> > This patch series adds a "post-init-providers" device tree binding that
> > can be used to break dependency cycles in device tree and enforce a mor=
e
> > determinstic probe/suspend/resume order. This will also improve the
> > stability of global async probing and async suspend/resume and allow us
> > to enable them more easily. Yet another step away from playing initcall
> > chicken with probing and step towards fully async probing and
> > suspend/resume.
>
> Do you know what is the state of affairs in ACPI? Is there any (similar)
> issue even possible?

I'm not very familiar with ACPI, but I wouldn't be surprised if ACPI
devices have cyclic dependencies. But then ACPI on a PC doesn't
typically have as many devices/drivers and ACPI might be hiding the
dependencies from the kernel. So maybe the possibility of a cycle
visible to the kernel might be low.

I would really like to see fw_devlink extended to ACPI (it's written
in a way to make that possible), but don't have enough knowledge to do
it.

-Saravana

