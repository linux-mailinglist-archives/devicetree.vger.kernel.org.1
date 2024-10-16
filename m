Return-Path: <devicetree+bounces-111867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3899A02C7
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 09:39:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6153D1C22D8D
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 07:39:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1CCC1C07E1;
	Wed, 16 Oct 2024 07:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hul/KEya"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB631BA89C
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 07:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729064380; cv=none; b=XedQNYJqVynrIL7CLMHlogJWgHjGbpbxEDABOUnc7f1QvMO/qc9rQWRxvkFk9AyDNapLB621gczwC04j1mzoNYtDrYQ5FsKG0AFO2nXyikQm1+P6KE79I51zKg8PlfNQOPsv5YpZuq0g+H+6FDUDo+bGt5jxF6DYHZ1TDhm+rn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729064380; c=relaxed/simple;
	bh=NPoNwCAoKsusx7fJ/VmaMrRDN4bS6yShBbiSyUB5tqo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BqJduNU0+AEn5VLKdhl+iSs4xJl26MW54aqtG9PqCVvCnxUQf7aQ6EF7AxhKBa3IRxGLA5sn5jVwXgKJdjqOFv6fsG5a7sy92Av7H7MsSMePaIXIvjSnTfqSXQWwylr5mMJU7Duu5toCNhKq74nXhOztbqa4h03uIOBDW42nkC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=hul/KEya; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2fb51f39394so29786501fa.2
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 00:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729064377; x=1729669177; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NPoNwCAoKsusx7fJ/VmaMrRDN4bS6yShBbiSyUB5tqo=;
        b=hul/KEyaPyqoAf/yR1Y0E+Dk4gc08kE2yJphxSXahu5ya7Myuoid2wG451egWDWk+i
         LSag8FYAjRi3iFnEwxrtli3MvJnw5v0jyc4DIrRbCy/0w1+9uLv019rY4+VZEWvlADIQ
         i+edOtx3g6c6cTvJp4z78IQG20F6aEAZpNuy8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729064377; x=1729669177;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NPoNwCAoKsusx7fJ/VmaMrRDN4bS6yShBbiSyUB5tqo=;
        b=XmSMZC7atJUUJ+L6RVtQAv9VMRmBSIHv2iHjgH4iAI+bWDQPsokYAGGPyJ0Mjzn+CT
         Uz8z2PqwZu/GUX8UsRZ4kzLuKvGlOFyIVNW7TrYWvl2yzM7BvFy+p114TdJuyHhdajdu
         caiw+smSu56LDqRlqTfqsPZUq+4cfFWynBP26OISEvFHBXkl36AtNpi62vyB/HMNPrtA
         Y5Bijwznd/SSrLAvSxbVmzMvJOXvppgeA2gtM976T0jFqkf/77MkEbUmsVVdTeyykR11
         IhxeeR0Aup+VA0yK+YFrjQDSdmYtkM3hi2XJof8529H1XaEsDMrCUj4gVpIqqFx2B1OW
         IxcA==
X-Forwarded-Encrypted: i=1; AJvYcCVE854HJFEutIUoIyqNhuVkqpEh4FeeJm5HcoQ3JOuP7f2K8l1VQ/Mxv7EZJDaUwGfj5uTfUl4qdGBd@vger.kernel.org
X-Gm-Message-State: AOJu0YxGOv8yDtjDt5omZ/xm1EbxBLyqKm4JwSmG+h9wRevkz4EYKQ6Y
	GdcoPaEoNShFScW1WIr/MJaCMZ+ikoWjtH5mYlgBNv7T1pXB33M8amLptQwoeLXjvcDQRL25saV
	nOeY/9Ee8oQb5jpK4VkGzC0qA5M4zYmLGqL04
X-Google-Smtp-Source: AGHT+IFZ47ariW2Rra8wgmSaA6DC+PU8PnYnhILwMybMfHSnCE3ukSpG6GGGC1OiiQsMnz8LTDjTAbXe4DKeoahrz7s=
X-Received: by 2002:a05:6512:68f:b0:539:e317:b05f with SMTP id
 2adb3069b0e04-53a03f31724mr1842549e87.28.1729064377360; Wed, 16 Oct 2024
 00:39:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241008073430.3992087-1-wenst@chromium.org> <20241008073430.3992087-6-wenst@chromium.org>
 <CAD=FV=Vs2bekyqBN_Lro_u32Dg9WM-bjDZr_tx-KyYH_toabVg@mail.gmail.com>
In-Reply-To: <CAD=FV=Vs2bekyqBN_Lro_u32Dg9WM-bjDZr_tx-KyYH_toabVg@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 16 Oct 2024 15:39:24 +0800
Message-ID: <CAGXv+5G4OpGK77D7Jo6dtPj_R9=6Uy9GjuQ0O8su0Z--ejboRw@mail.gmail.com>
Subject: Re: [PATCH v8 5/8] i2c: of-prober: Add simple helpers for regulator support
To: Doug Anderson <dianders@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
	Jiri Kosina <jikos@kernel.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 16, 2024 at 2:00=E2=80=AFAM Doug Anderson <dianders@chromium.or=
g> wrote:
>
> Hi,
>
> On Tue, Oct 8, 2024 at 12:35=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org>=
 wrote:
> >
> > +/**
> > + * i2c_of_probe_simple_cleanup - Clean up and release resources for I2=
C OF prober simple helpers
> > + * @dev: Pointer to the &struct device of the caller, only used for de=
v_printk() messages
> > + * @data: Pointer to &struct i2c_of_probe_simple_ctx helper context.
> > + *
> > + * * If a regulator supply was found, disable that regulator and relea=
se it.
>
> nit: was the double "*" starting the line above intentional?

Yes. That's kernel-doc syntax.

> Other than the nit, this looks good to me:
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

Thanks!

