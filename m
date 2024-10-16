Return-Path: <devicetree+bounces-112065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B829A0E5D
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 17:35:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A130281C63
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 15:34:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E876020E02A;
	Wed, 16 Oct 2024 15:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="VAIAHPmS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEDC54720
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 15:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729092864; cv=none; b=PFVfltQJySo2jJfTsfditj4BTSyk8dhqud850TdA+RDszAxWu5qTJMwMIeAzSUDoO5VKTSZaHl11sm9hfQzPycT5Hwb7s9Qf7aSSzuKBQjBP0ESBDRAV/V7GX+Kj+js/Xai1wxkVVCQ6kEykQ0FTOAS0b6WGKuOYYo2n6NsQ9yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729092864; c=relaxed/simple;
	bh=nJMbjUcKi6EbniPKKMf5mPOzUN+tw8qhO/6T2EniAjY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WdRC0/LUcTHVWxBf59ZZ4dTjiO9MOXrOZe5j9VfT0nwkB6MFgWlFN74XP73vWENVhzt+FveXcAd9qaD2a+M4TU5TIXHmSfC/8sxzPJnCd7kVrPIe/rWviC/G0DL5LV+M1sKjvgG9l9Odd+6vE/+hKeU8TTPXaAwRhXMkYcFPw+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=VAIAHPmS; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-539f7606199so3889375e87.0
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 08:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729092860; x=1729697660; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nJMbjUcKi6EbniPKKMf5mPOzUN+tw8qhO/6T2EniAjY=;
        b=VAIAHPmSiy0iESdmlsjpv6phco4SCFMMIF14qbrgGmi2FSbabB77q8j8i2OjDKHqzs
         dI2QA/BSVhqLQzMtbnpvN7fo9g8+9nURinAnZPLDCVlbUyrBAn8BAJeYe/tD3XyfKfDn
         7MVuhynl550j8X3Yp+X+Q1WOP62PWWb1ZWl8c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729092860; x=1729697660;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nJMbjUcKi6EbniPKKMf5mPOzUN+tw8qhO/6T2EniAjY=;
        b=HKtjKtieFFvzSSfEvQbLP57Avs+0x2B+ZI5dgxVwLhJnlZT3iVzi7kYaFQEKvwscoU
         T88aQt4k3fMvhzR7PIeAwj60q603l/Zi99K78NpjqU37MCs5+vY1h6Dz0pWPkL1tmT1n
         aNZ4kbtzXk3erE6nHmm4b1LPc1zbayNRGJErkZCSotmIWqYUXCwiRiJxJdoakAAXopFO
         K8LfbWgpTChmkrR4XRmd68b1wkiyA+qJTYcdKfN/Ac0e5Ig1KkdasZPo0dRNOIUgmo8h
         3NzGz9VCdavmyvomD3lcHcMwtLrTsAzyyzRlPnh+Kavrwaqv1XZ2FYDcU56HvVLLMQbo
         4kjg==
X-Forwarded-Encrypted: i=1; AJvYcCXxAHrPQbBDBN+iKYYlg7Xx+RxH90r9fL/CdPs8CcfWdB6+6VLju6rmVuQzP75EFccopHj2ZYYD09gt@vger.kernel.org
X-Gm-Message-State: AOJu0YxQto8CT9Fug6NLE1Y5XzBanbyIMIkGoGenw+wHMq2c+IztZv7C
	wgaCbNJTl8HTnAyxBrtUSacmKOl28kBV7fj+CGGch9+VvYB5hMs1zU/7dWZGyl6Rq/VVBbnYMHt
	lg78b
X-Google-Smtp-Source: AGHT+IGvfBGlOiN1MrqV7jiemSEx+jr7I3kaQhi6D8+vpm18CqN5zih87YMZxaiea6MxJDRkKGhRXw==
X-Received: by 2002:a05:6512:3f04:b0:539:edc9:e81b with SMTP id 2adb3069b0e04-539edc9e9f1mr7473380e87.28.1729092858806;
        Wed, 16 Oct 2024 08:34:18 -0700 (PDT)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com. [209.85.208.175])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539fffa89f1sm486344e87.62.2024.10.16.08.34.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2024 08:34:17 -0700 (PDT)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2fb388e64b0so48619621fa.0
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 08:34:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUJ0ku4h+iJw3TdFImtk4rvV4KDxK2xj7+ialoITlc7uiyYdypvU+POagZCuqd5ESXX8ci6vLdUMX5a@vger.kernel.org
X-Received: by 2002:a05:651c:1509:b0:2fb:6465:3183 with SMTP id
 38308e7fff4ca-2fb64653a19mr17100581fa.3.1729092857448; Wed, 16 Oct 2024
 08:34:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241008073430.3992087-1-wenst@chromium.org> <20241008073430.3992087-7-wenst@chromium.org>
 <CAD=FV=X+_iYi0_RSakh6bzVYuNpiqUvjHTrL81n8h4dO+WZf9g@mail.gmail.com> <CAGXv+5FTdNqK14OYe=PN5_BcF9Ve7-FyBTKz=mJ+1QiiUzu0_Q@mail.gmail.com>
In-Reply-To: <CAGXv+5FTdNqK14OYe=PN5_BcF9Ve7-FyBTKz=mJ+1QiiUzu0_Q@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 16 Oct 2024 08:34:01 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XNZJ82e2rfMicAiXmxAx5hwydsnMVO8naaakRfroyNow@mail.gmail.com>
Message-ID: <CAD=FV=XNZJ82e2rfMicAiXmxAx5hwydsnMVO8naaakRfroyNow@mail.gmail.com>
Subject: Re: [PATCH v8 6/8] i2c: of-prober: Add GPIO support to simple helpers
To: Chen-Yu Tsai <wenst@chromium.org>
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

Hi,

On Wed, Oct 16, 2024 at 12:49=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org> =
wrote:
>
> > Just commenting nits, so:
> >
> > Reviewed-by: Douglas Anderson <dianders@chromium.org>
>
> I assume this stands even after Andy's suggestion to drop the gpiod check
> is applied.

Yeah, sounds fine.

-Doug

