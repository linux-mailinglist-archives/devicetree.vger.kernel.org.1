Return-Path: <devicetree+bounces-186211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D442ADAB87
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 11:10:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8FFF83A46CC
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 09:10:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C41E126E16E;
	Mon, 16 Jun 2025 09:10:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="QeTLjma9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3900A20D4F8
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 09:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750065046; cv=none; b=Xwrjdz0tBkpqlrHiQWaaRho7KO/lz33aL2WLd7tkK2tA1fW+j/4vD4n+bsUHke4gs4TB5P/vvqye0k7f+YRHoQCous07WymUNCd/jJ0nDWdDE0khvbMplSsJW9jnBZoNclPE0JZnWrRRgrqU6tRKYKEXL1RDZJJEo+8WddP3NA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750065046; c=relaxed/simple;
	bh=SwWEvDaGj1H3eOVuukiaSaEPHd7lZiuo8sRHZvD7nY0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=o5pKm45BG1PdPS03MZOoCYmOyQEfDFetBpBNGaALnCajsQw6XFUNe+6DA9j0azHaY7s3d5EB+bdHsW7M2Lxfw5nOVxOvIiEQbeehRrouy8dvNMZ6e+ZEf0l8QaChgp3zRIv7ItnYEFXx5hOxF9pyipO+PvmjMS2j+kFtw7JTWLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=QeTLjma9; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5532a30ac45so4061454e87.0
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 02:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750065043; x=1750669843; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dmDMMMFI5G4DNwFWGn674MZ5D9eFoURbFcL3QvAF4Ig=;
        b=QeTLjma9gn5dGBch89jyBaqcj8KgX5NiNqQwcHs8G5cvaw06cb9bZkpJ8STzi5kSdG
         JVW2+7wpHPSn9w3hB2AJyf6wuSExYzSMtGO6o/1p7yfcJi6KsbnvPa40Xcu2H7UtlUE/
         29K7pR9ROGGDBVW74OXhCtAGTtk7EQ0PX8/NDFD9QUWP0vZiZtCXC2d75gNELPwxmXbh
         YQxJeSXNTnEEkYDS+wNgOYfV2rteAbB0sAo3rHdv2pCU0jIX57QIjCDT6rFyxnzVrh4I
         VaebVZgyoM4Q7ngwBnV0le0DQ7NbZvVeTyFnEWCMxhQ8I7xbMVl0rlYfNH8/jVwTqQcY
         jhcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750065043; x=1750669843;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dmDMMMFI5G4DNwFWGn674MZ5D9eFoURbFcL3QvAF4Ig=;
        b=tq1/Ezlv1DpywAjy7b62TKFpIsnMOW4+uuah4a1bUpjFOjogYL6AN1PMXsi80pBc0N
         GG6NAL8mtjBalWNANCPnelG+Vt2so3Z0C9Fl1MHHsD3fRZHJB6wu2QECpEcvsAQMvB4R
         JYyLnVASgH1Ih7F86kFmRl8bmkk4IVD4v8iov5jstLIseOJptkXir0tpVvoAQBALyFCp
         jHqYu5Md9Isb4cFC6LM2jXFEw4WoJ3EAtxdPIKrJ6B56+pWT9jREzsU7K+oG6StSTAPx
         GrfS+u5MJRb9lDnDSLg0nUybjk+ujX1BQAoC8rrQkYurNgoXBYde/LNZ/IU58n2vw9WM
         PsRw==
X-Forwarded-Encrypted: i=1; AJvYcCUixS4hIMWpmkl6LeftZBP2rreXyW9s7Y5gZ4SUQTz4Kt9uDjCyB7l8nSsIP9BGN3Lxx/izeqJOVyAc@vger.kernel.org
X-Gm-Message-State: AOJu0YzVt1G8mYY/UuB/9Tbl4lsaeCkBH+utXP6vCZN7YGUNqVHn+OiT
	z2acMDfzZ/PgP7EyJ0dau4cqMQuUSLltDRHbRLynKDWneGQEJ6SZR98h2Ivhw12GxJv3fQV9he7
	q+mnKXn0hHbdABpvU4CuLClMQTxgiYCWvLV2t1QpdnA==
X-Gm-Gg: ASbGncux9GsNEuRhKn/D+FRdwnVyUBawvGcl368vx6tnmCxdp/hZtLf0vfx641elX5F
	U3NFdx0+W9lYl9R+7uAh1dVewsATS58qffW7IbzXhay7IK8+9ROC9l5pnS18Xn8/nsuYjElKsG7
	hweh0VsD9deRMQE2UNuzm31etoYdq9BhR1u+omqOQmE4zWWH7F8XmbpFniKcuJ/maHNlKDpEXy5
	0w=
X-Google-Smtp-Source: AGHT+IHuGL7ppu54TT/M3Hxiz/E57PX/ijwwJDHxeHuWrcclls/KmfWg30WiaNhrMMlcrNDHFrl4pCAUL311IM7bJx0=
X-Received: by 2002:a05:6512:1053:b0:553:29cc:c49c with SMTP id
 2adb3069b0e04-553b6810d6bmr2008050e87.7.1750065043405; Mon, 16 Jun 2025
 02:10:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20250614180909eucas1p2a34e3242fb42f7fd25e4038c291276ff@eucas1p2.samsung.com>
 <20250614-apr_14_for_sending-v4-0-8e3945c819cd@samsung.com> <20250614-apr_14_for_sending-v4-3-8e3945c819cd@samsung.com>
In-Reply-To: <20250614-apr_14_for_sending-v4-3-8e3945c819cd@samsung.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 16 Jun 2025 11:10:31 +0200
X-Gm-Features: AX0GCFundfu1_DbYfr4amG4ZmgyhqyYCcYsn5RbDrpDylY7Och28dfv5wtCxrQQ
Message-ID: <CAMRc=MdrvZ0_3aWcmhYZP4CxOVbuYjL66iLPHKkDt=vCP7VN-Q@mail.gmail.com>
Subject: Re: [PATCH v4 3/8] pmdomain: thead: Instantiate GPU power sequencer
 via auxiliary bus
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Frank Binns <frank.binns@imgtec.com>, 
	Matt Coster <matt.coster@imgtec.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 14, 2025 at 8:09=E2=80=AFPM Michal Wilczynski
<m.wilczynski@samsung.com> wrote:
>
> In order to support the complex power sequencing required by the TH1520
> GPU, the AON power domain driver must be responsible for initiating the
> corresponding sequencer driver. This functionality is specific to
> platforms where the GPU power sequencing hardware is controlled by the
> AON block.
>
> Extend the AON power domain driver to check for the presence of the
> "gpu-clkgen" reset in its own device tree node.
>
> If the property is found, create and register a new auxiliary device.
> This device acts as a proxy that allows the dedicated `pwrseq-thead-gpu`
> auxiliary driver to bind and take control of the sequencing logic.
>
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---

[snip]

> +
> +static int th1520_pd_pwrseq_gpu_init(struct device *dev)
> +{
> +       struct auxiliary_device *adev;
> +       int ret;
> +
> +       /*
> +        * Correctly check only for the property's existence in the DT no=
de.
> +        * We don't need to get/claim the reset here; that is the job of
> +        * the auxiliary driver that we are about to spawn.
> +        */
> +       if (of_property_match_string(dev->of_node, "reset-names",
> +                                    "gpu-clkgen") < 0)

If you use device_property_match_string() here, you don't need to pull
in of.h. It's typically preferred to use the top-level abstraction
unless not possible.

[snip]

Thanks,
Bartosz

