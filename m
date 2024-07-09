Return-Path: <devicetree+bounces-84230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1BA92B69A
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 13:15:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 73502284C0F
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 11:15:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 484CF158A01;
	Tue,  9 Jul 2024 11:15:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="we/KRAhE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF9B158870
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 11:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720523715; cv=none; b=UD0PXMxg7y3gXQuXbHZp5gbApLMPW6J/KyJlMs9IGyi5N0Mih1bj3BZuUj+s4XrwGCtgyJWrt1mVUsH1z3F2+wOWc0PkMjeiGMVnBG3fTYLaTCZGgruqdPGJkoAd6KcTnzVheWU4YY03pralNxrA2GDAInG4fLHjeHAWnT8AU9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720523715; c=relaxed/simple;
	bh=a1z9aXVH0jD/Ns99p9cnjXyxouNm3dQ2gvZ1e148jWs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=exI1O4H+azRhIQJX9ANLvoRWksi1MgIsRj7mFZlhVnnK6nPDoAD+EwY2gs2B9JDrDC+ICRe/Z5uqn8YG1h9itkZfxanwmJWSzG8zTyr+4/N04RdstzbT8kB0tQsy+yPxgo0E+4uy+HnelYCzEeUmJ2EEwraLnbWM3El9Ld6gXqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=we/KRAhE; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-65011d9bd75so42266897b3.2
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 04:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720523713; x=1721128513; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JRnxn5kBog1S4c87fuPJ8CVw2ogmUFe7KoQqF9HGur4=;
        b=we/KRAhEuF/YgHgY85BnisOG1Vgur+POcRbi7uJp2gSTb357E6r4ZScnZ7UQv0vSNH
         ZvGD6gB8aJr1RbfSFQxCHEUbkksODOTT2LtW9mUGMV3g4BliEr2KwnffFYhya6q9PEje
         7acmZVnvudpRt5YTL3zsuOj8IBIofIPu3mXevczEEDgLozpYqn8eWMZE9S0ucDvXJO3w
         JsRsqcvelD6Nt/oZkzQB/svpQZeMvHFKav+Mxp0HOjzKjIWlTcWFALDBhY8Gyf9pVG5r
         DwYJm5G5ey7ZRfxVpexRxmZacjBUKNJrTiOuhXHLsZzluUtdegiIL3Dg6KLJ+yE4DDC9
         geuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720523713; x=1721128513;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JRnxn5kBog1S4c87fuPJ8CVw2ogmUFe7KoQqF9HGur4=;
        b=PL1+MuwIcW7RhXxa0+ORvql4bkr9NyEMl0/4TAx5cGB7oA+gIQrqmqERoisU479Tze
         BsEo1/wWcfkHRCsUkAmlodpzNbi13y0tPxiBHXuy2OoDMcRY2Q6U8fabdhLzy6CMK7lJ
         tA56iSi1d+ORWsWY7lxSNJ+0AQadFzXmff3asay3s6zHWRcqYMvaTUBWQUDcbkiB9zLh
         9Lls8WMY0nfW5TngF41BBjNIgRkRX5bLsA0eyhjd8+Z9AE7mGXgKDB0QkHD2SMkhYpzW
         OHbKckcOCZ1OYkd9a15sl0YhbwHFJh8Ij5klyciQ1ogZfWYBwVMerzjwpni5wTQUsBEm
         K0XA==
X-Forwarded-Encrypted: i=1; AJvYcCWXjQnI85QdprPiZwnWpX56Dnmby1UX/lFdVIztj1EV0EzAIwW6dtdjB6T4hlm4/CNcfJ+qCr/lrg9koWsYx0HcS37sp676GLRSfQ==
X-Gm-Message-State: AOJu0YzVwyZiOv6DZWnbp2AN2VPbbdvxzIADmE63KVFIIk0sIzbLziTa
	yVb1BTQpQV2MYQVu7W0KFPETOp/YoxWC/kkAfqfl3J17Roh20d0py4l5QXZ2PfZ1LXife/E+NUh
	VYr/Je0gf/YbH/8GH1CiH7ref5O6WNonl34fyQA==
X-Google-Smtp-Source: AGHT+IHvO18cEkcdgxI9LdmOavq97SRmsNIECRYT+ECXAWD9UTP9pFQ6ZQOwH4TjXmRjZ21qPReOQ/XXVr1I24f4iJ4=
X-Received: by 2002:a05:690c:4b06:b0:62c:c684:b1e1 with SMTP id
 00721157ae682-658ef249fc6mr31666527b3.29.1720523712710; Tue, 09 Jul 2024
 04:15:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240627-a5_secpower-v1-0-1f47dde1270c@amlogic.com>
In-Reply-To: <20240627-a5_secpower-v1-0-1f47dde1270c@amlogic.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 9 Jul 2024 13:14:37 +0200
Message-ID: <CAPDyKFrY6rL-aCo=GtmRBoJNBH=p3DteWWfBmWkFnWhpwHLnLA@mail.gmail.com>
Subject: Re: [PATCH 0/3] Power: A5: add power domain driver
To: xianwei.zhao@amlogic.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Jianxin Pan <jianxin.pan@amlogic.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, Hongyu Chen <hongyu.chen1@amlogic.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 27 Jun 2024 at 13:47, Xianwei Zhao via B4 Relay
<devnull+xianwei.zhao.amlogic.com@kernel.org> wrote:
>
> Add power controller driver support for Amlogic A5 SoC.
>
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
> Xianwei Zhao (3):
>       dt-bindings: power: add Amlogic A5 power domains
>       pmdomain: amlogic: Add support for A5 power domains controller
>       arm64: dts: amlogic: a5: add power domain controller node
>
>  .../bindings/power/amlogic,meson-sec-pwrc.yaml     |  1 +
>  arch/arm64/boot/dts/amlogic/amlogic-a5.dtsi        | 10 +++++++++
>  drivers/pmdomain/amlogic/meson-secure-pwrc.c       | 26 ++++++++++++++++++++++
>  include/dt-bindings/power/amlogic,a5-pwrc.h        | 21 +++++++++++++++++
>  4 files changed, 58 insertions(+)
> ---

Patch 1 and 2 applied for next (patch 1 is available at the immutable
dt branch too), thanks!

Kind regards
Uffe

