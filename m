Return-Path: <devicetree+bounces-222476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D83ABA9606
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 15:41:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8968F18991BB
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:41:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBFA3307491;
	Mon, 29 Sep 2025 13:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Yfmrrfy2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1482F307484
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:41:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759153284; cv=none; b=JpGCWzpnQEx9ZVXlGg+NmlqZLRd6o05Lf64VLJeE2HBFi/9zzgsK+E8wEJF5fBkdWO4+piHfKlT3fCWrWRC4TrSIuy3jsi5oj9mGNoeoYFo/WqE9sWNokqF254qzz5Tl2UNSe9F/ngSBcCeM1flLzxNfWLfYMd4jBnDv6QXb3zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759153284; c=relaxed/simple;
	bh=5uahX3/t/qKl+AWu2lHhkUSygd0Oeo7v5srfItKOpo0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uVNV8qKJkN8xfXv/2FjQ9KIj6u9Qpb/TFuYaFdF5iXiqLpXZlhlyV6RhqxKK17cYNfW7+asnkQa3U7+ulNHbm3I5AolLotisjxCte13AehPXd333qWzakaZNNxUtcHIthaBYcpoyxEhT48XuOTKPC+bz9HXGXe9dKTNjFsMUN78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=Yfmrrfy2; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-58984c363ceso190587e87.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:41:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1759153281; x=1759758081; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5uahX3/t/qKl+AWu2lHhkUSygd0Oeo7v5srfItKOpo0=;
        b=Yfmrrfy2+GMnQBf9zFdyVUDEWWBk7u2IspZC66fvQ78A1OHbwndRgBelIasgsZpbpL
         Myh+TWMFO+toEbK+5IE/UW6n3CRi4rpIoKJho27gz3Yp+1um0S1UYJKGmUzyM3TRVZbX
         a4W+eNLF1Ep145PoknDbfr0oqYv5FrdInBntIkfrZ48eL2YuJnvPi81RCCPrT32tIbtO
         Tj/vuH2BUk8mCzL/Z6O9F8NOCgAq9xsg8knlI0Fea5zcpL9O1J9ZKrRG8CvXjpG62Zyw
         2mDC8jahuA1b67ayY4OTaO82SbTCBPUT4KxWBXuMIpdBMmukJervGKJwOA5gj8OtkR6C
         3GGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759153281; x=1759758081;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5uahX3/t/qKl+AWu2lHhkUSygd0Oeo7v5srfItKOpo0=;
        b=n5Zh9i1Rhbnp6VJcAlWfp+DxrHtFEcnUBbD9YI8g2jMEb8jShGSWL4Z7cfI7n5icfH
         jRWs0fE4wFa0XuajTw9jaQLpywSdl/GsweTQIgyBBviGa4OiNChyQsMYAVp8W4TD6Dpf
         aVEa09FY3j/RDqPDx7HrKuoJHlcGHqczvvRmb5sSRbphnSLNjiJU5nn6F3xmvzPW4R9E
         u1m8CummZkVyTe3cR03ZqX0le3YUqMXLygnbRnjzYTkHI/qSj8qrE70wTZ9drkY6fO0Q
         8cpwls3o4GD6Pe8eTOCCyDK+qW545eLUbMNJrSfwLHijclfRBXvHA7qdqTm1Is1XsJ/k
         gsKA==
X-Forwarded-Encrypted: i=1; AJvYcCUTFbfw+lAGvssh+lSwzAyn4qLTaFl/NrcGzqv6PO4R4uetwZ4OniQ7c+dSzm15/9qkROgpjgQkRUYJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzVk2JOkGM4zFvncSy5dLb9YZXxzgXoYGmJS6t+jUzAiKcwPddH
	z7uPTmzSPn2plZU8jOraY4xF4ZH+fCt7NHybWXOcRjtaHsgNsiJxMDdaDC03Jopl23Y9xTThL/d
	UaWzBvpCeXtkGmM5eYlvC9oLhAvgTldyt37I0V11hRQ==
X-Gm-Gg: ASbGncu9xYEq0/1yqOySfpN+UB5S09npG9Z4Uk9lh1/+6fNjEll+80bUGTOHkGKod6Q
	lNi+kUiECBXT2EqrBSbLKKrNAKtUxAYBnYF3hB41h7bdAGQOb1DWYLbEZ2Y7ygBwcLk/AyyAKa/
	sh77IdtRo/UIcEXYd4ygoYdYEoc798I9vEH/BbtlmRAEHxUodbRvjoo2EM7pPhOmwHFKwwJQyLF
	jlVtKY/+MpP3CIj1BZo7zDNccClSjgyZJPRgfA=
X-Google-Smtp-Source: AGHT+IHVwcUt8n2Dr1HYLUuIj7lg91of8OCj1ZiQGHG98cWyZH+Ddd15Wdp2OohNipHuMRCcT2tzkYcUlRcdG1A1CM8=
X-Received: by 2002:a05:6512:304b:b0:57e:3273:93a7 with SMTP id
 2adb3069b0e04-589842801c8mr179708e87.21.1759153281232; Mon, 29 Sep 2025
 06:41:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250919093627.605059-1-kkartik@nvidia.com> <20250919-undusted-distrust-ff5e2f25cdd5@spud>
 <f6c001af-bfaa-4d1a-8c32-1e2889e78650@nvidia.com>
In-Reply-To: <f6c001af-bfaa-4d1a-8c32-1e2889e78650@nvidia.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 29 Sep 2025 15:41:08 +0200
X-Gm-Features: AS18NWAjOCk1Qe6m9A7AF8f5gOU-rIzmkU9f6UFIkGdqyVsyB080HPyzY-M8DlA
Message-ID: <CAMRc=Mee9JvcOCAqQxcCMBE7gUQWvZaM=wDAfyKTG5bKyZeHTA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: gpio: Add Tegra410 support
To: Kartik Rajput <kkartik@nvidia.com>
Cc: Conor Dooley <conor@kernel.org>, linus.walleij@linaro.org, thierry.reding@gmail.com, 
	jonathanh@nvidia.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-tegra@vger.kernel.org, devicetree@vger.kernel.org, 
	Prathamesh Shete <pshete@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 29, 2025 at 9:24=E2=80=AFAM Kartik Rajput <kkartik@nvidia.com> =
wrote:
>
> Hi Conor,
>
> Thanks for reviewing the patch!
>
> On 19/09/25 22:44, Conor Dooley wrote:
> > On Fri, Sep 19, 2025 at 03:06:26PM +0530, Kartik Rajput wrote:
> >> From: Prathamesh Shete <pshete@nvidia.com>
> >>
> >> Add the port definitions for the main GPIO controller found on
> >> Tegra410.
> >>
> >> Signed-off-by: Prathamesh Shete <pshete@nvidia.com>
> >> Signed-off-by: Kartik Rajput <kkartik@nvidia.com>
> >> ---
> >
> > Why are you modifying a binding header for devicetree when the driver
> > only appear to grow acpi support?
> >
>
> Although Tegra410 is ACPI-only and does not require a new compatible stri=
ng,
> we chose to add the GPIO port definitions to the DT binding header to sta=
y
> consistent with previous Tegra SoCs.
>
> Thanks,
> Kartik
>

Hi!

The kernel policy is not to add symbols nobody is using. Please drop them.

Bartosz

