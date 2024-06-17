Return-Path: <devicetree+bounces-76635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E186390B658
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 18:30:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 814131F2298E
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 16:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A418B155A46;
	Mon, 17 Jun 2024 16:30:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b="N7NxbYhr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA03B1553BB
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 16:30:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718641814; cv=none; b=nlURNYWlO01p7HdJNNFzCaTQ/jwaIqZq+L4qeC4fs8jJ/7she4YrkvGPkBseGw4S5U1UYCw3oYfRgVK+IKrsuHvJr7s/04/9tyFRJRA+Gk1DavwW5t8dDJFpZkEVAcTtDN0J9L6nQdDMpshYCVs2MxONFOuIPC4bUv4EzxnNXEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718641814; c=relaxed/simple;
	bh=c4CGIueJgo3FyF0lUSOsJIiD5YkmHOWg5+dfrNt3KDo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aLcdBk6UNDofFREJHMW/9s/zV9oPRgdA7NOJZKLrQp2oAgmU5n6m/+m94mQmdcSay/67Y1PsB6DDk5I7AQsN+xicPYSFb1Vb0mKCidMDNxMBm6cNBHtexIIVIcPAQKU3oXlS05TDYztf7elyc8WUDp4QMrixQSkpqRbTXk2rk4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com; spf=pass smtp.mailfrom=timesys.com; dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b=N7NxbYhr; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=timesys.com
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-6fa0edb64bdso2486228a34.1
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 09:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=timesys-com.20230601.gappssmtp.com; s=20230601; t=1718641812; x=1719246612; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c4CGIueJgo3FyF0lUSOsJIiD5YkmHOWg5+dfrNt3KDo=;
        b=N7NxbYhrov6FonSL8kq5eMGaoZxAxl6xARpHiRBgYaQtIOoguDLis8pHRwk0SQ1qHg
         qn/JR+Cct81n0cXXCc7RipLG4koJiBlrymDDhqfSuoc13VTyODG8nPGiI27plS3KARfm
         xpNLcIjXx2fzS2HGJqxJzIolNjy9a9vFbcgktwe8I5KMCTZ2Pu5LcAw0oY00DRVwxIZk
         SuqyGl1ravsuHilfk3hGPaIDC66/ZcA960oIFwKp5gevAFUieCyiHBSx9b485N742IaX
         8RzqMrj54TciTjBty9G53+bq2EH3Tw7+bzIDs6nJCCwUR/iV6PWqm3EZyCmPOuEcnaDb
         ArvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718641812; x=1719246612;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c4CGIueJgo3FyF0lUSOsJIiD5YkmHOWg5+dfrNt3KDo=;
        b=OCss5oaOh7dWAcuzTczfkH6eP+SigWn3hQO8rb4u4PerP1yQgcOtOVvBZ7Yp3vkWYh
         hIpuyTBS6XBMoom0L1WFxdwBwrQyAu14LaDDF5yWv00OT+sQocPRjKDFwx/vP/cnzRRH
         Km9tR6160NKlDcMNkZRzp2KASMrj/YZZXnHPYklbVNkwPqndGqZXDiv8U4x7/0qoIa2o
         MQdQ/of9zwGU3ob7YC7eYSt/oKqvZoEVjFnCO9WE5NF3YC1JnxsIpzJCCEvlwbNhBPmP
         f36MQ4/w7MeztAyjI2FRjFhBpvGlRbgW55ReFRTIWdKQAmihe9OUSMl2/0Ixzl3qvYEh
         QzWQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZ1OVdPjGNo7hQcgD7NmvAoMrf7Uybs7t7BpIPCRUQSg0Bx4yy102EN1ZxQq3HqcMJnv/0PfrOmWZzIN3CGS//+oKBuhDp7eXHDA==
X-Gm-Message-State: AOJu0Yyfa38qTAFH3JLG8iTf5+es+IyHG5hGJnub+Gsm1ju1FmJ+Mqbg
	iPODfipBYOedqE4eagAUuU6sY/sgPHweRaLW+pgsurwzFDTAcX8y6XEphW2+t6ZITKfiN+HiYTN
	t+rm+/4iZePFfKuniNxR3Gytxtp/f64zBogYM1Q==
X-Google-Smtp-Source: AGHT+IHjzvlrr838N1DpEkEeLzzIsELYsb2zHrhaAqxCRJTNhyRbdCIQiZBSmvhFuWqlSzeRBTrPNi1jOBSJAcQmjjA=
X-Received: by 2002:a9d:62ca:0:b0:6fd:5445:c6cc with SMTP id
 46e09a7af769-6fd5445c914mr6508564a34.23.1718641811875; Mon, 17 Jun 2024
 09:30:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240611094810.27475-1-piotr.wojtaszczyk@timesys.com>
 <20240614163500.386747-1-piotr.wojtaszczyk@timesys.com> <20240614163500.386747-2-piotr.wojtaszczyk@timesys.com>
 <83cbf43e-c927-449f-8b7e-5c8d3ee8cece@kernel.org> <CAG+cZ06EeXUDiLsDXkz+6EHqJwpvv2MWwfpvB8AYw0=ZhUkTfQ@mail.gmail.com>
 <83a45f7c-d90b-44d3-b57e-9dad21045e27@kernel.org> <CAG+cZ06kzikieaD_JCBybwWk8XKZQjJxa34Cg4QHxrxpT+j0eA@mail.gmail.com>
 <2fe7ba36-05b9-42c7-8726-ea891cfc7afc@kernel.org>
In-Reply-To: <2fe7ba36-05b9-42c7-8726-ea891cfc7afc@kernel.org>
From: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
Date: Mon, 17 Jun 2024 18:30:00 +0200
Message-ID: <CAG+cZ06XNV=ZZ8Ag00kaz1xWitXDN-yezUoc7M9JwQ5MUu7hTA@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] ASoC: dt-bindings: lpc32xx: Add lpc32xx i2s DT binding
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vladimir Zapolskiy <vz@mleia.com>, Russell King <linux@armlinux.org.uk>, Jaroslav Kysela <perex@perex.cz>, 
	Takashi Iwai <tiwai@suse.com>, "J.M.B. Downing" <jonathan.downing@nautel.com>, 
	Arnd Bergmann <arnd@arndb.de>, Chancel Liu <chancel.liu@nxp.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, alsa-devel@alsa-project.org, 
	linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 17, 2024 at 5:48=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 17/06/2024 16:04, Piotr Wojtaszczyk wrote:
> >>
> >>> It's used by snd_soc_dai_init_dma_data() in [PATCH v3 4/4] to give th=
e
> >>> dmaengine a
> >>> hint which dma config to use. The LPC32xx doesn't have yet a dmamux d=
river like
> >>
> >> and if I change driver platform data to foo and bar, does the DTS work=
? No.
> >
> > They shouldn't change the same way as expected dma-names shouldn't chan=
ge.
> > Lots of drivers expect the dma-names to be "rx", "tx"
> >
> >>
> >>> lpc18xx-dmamux.c therefore it still uses platform data entries for
> >>> pl08x dma channels
> >>> and 'SND_DMAENGINE_PCM_FLAG_NO_DT | SND_DMAENGINE_PCM_FLAG_COMPAT'
> >>> flags in the devm_snd_dmaengine_pcm_register().
> >>> Typically instead of this platform data you would use regular 'dma'
> >>> and 'dma-names' if it had
> >>> proper dmamux driver like lpc18xx-dmamux.c
> >>
> >> Exactly. Use these.
> >
> > Then I need to write a lpc32xx dma mux driver, device tree binding for
> > it and adjust the
> > LPC32xx I2S driver for it. Is this a hard requirement to accept this
> > patch set for the
> > legacy LPC32xx SoC?
>
> I do not see at all analogy with dma-names. dma-names are used ONLY by
> the consumer to pick up proper property "dmas" from DT. They are not
> passed to DMA code. They are not used to configure DMA provider at all.
>
> You parse string from DT and pass it further as DMA filtering code. This
> is abuse of hardware description for programming your driver and their
> dependencies.
>
> Why you cannot hard-code them?
>
> Sorry, to be clear: NAK

That's fine, clear answers are always good.
I considered to hardcode this as it was in the first version of the patch s=
et
but LPC32XX has two I2S interfaces which use different DMA signals
and mux settings and I really didn't want to pick the virtual DMA channel
name based on hardcoded I2S node name therefore I thought having a DT
property to select proper dma channel is a better solution.

--=20
Piotr Wojtaszczyk
Timesys

