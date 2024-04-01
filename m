Return-Path: <devicetree+bounces-55169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1A38945EF
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 22:23:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2B33EB213F7
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 20:23:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D861D5381A;
	Mon,  1 Apr 2024 20:23:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="vAp1fWyI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6CD046535
	for <devicetree@vger.kernel.org>; Mon,  1 Apr 2024 20:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712002980; cv=none; b=jlfuFEkrfnP/JdQrZu8Av1UKlTEpUiZ4owhiIvlmj387te4+d61rREQeaavI/F113c6Q9JnlSXo+mMMvLWRM+dy4U2hdtjetJfJWdRlzdIV4J5m7lM5+8Q2WcVDASdCeAQvFKU4lmV8/kBW2HmsUcQmvL6eF8LNdWMUUGUcyMFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712002980; c=relaxed/simple;
	bh=pTckc76jra1p4YfT6sJans2kodnxohGel0d8lmhfhBg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ekc7wORsYUCpbyyKZU3ekuZZe1p43vfAuAra3jUwJyeYyJNagjk43ThAth94AtuAlr00/AWjtg4j8vO3ppqRVaiCIVbST80ImiplCcgUXo4eta3auqFGHFGgTSde2+79m5eqXEnwemYfu7xZPdXK+7tU7utUE+smmJH538T3mKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=vAp1fWyI; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2d4979cd8c8so43036561fa.0
        for <devicetree@vger.kernel.org>; Mon, 01 Apr 2024 13:22:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712002976; x=1712607776; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5+Pkd+pnNIvLV4XvYMElmbyvB9teJQxJ5a1nWqDqW8Q=;
        b=vAp1fWyI/gOTbTUSXojvuj392O3Oj+iDzb+Sn2U6OZ7Wgih7SnS2qTSTi+xHcsT7VO
         uiSRsHO4D5eFaCWGiHctc+xOox+5IW0RWbuPL8Q8WF3KlntF9lRY9EGy/c6y/xWMFGTN
         dPwlCSIrC1Ux9sX2xTUHW+9+2on6Dh+xGtPNIoG58DYuRFz4H6VZnOlZevtvTv5Bsiwm
         xW8v2aEYueDbo1F6qz4ODckGtNn1Rj32Lt2Qjydwoa4EBLxXG64lulYEYhi/LGtIAnON
         okqx4ZpdwJCxBQpoxXobMI3Aq9q9KA9YHweasxdGBgY51bnpMXKcLCT8UF+TJGNR0QpA
         Cy+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712002976; x=1712607776;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5+Pkd+pnNIvLV4XvYMElmbyvB9teJQxJ5a1nWqDqW8Q=;
        b=VuRXznXEDuuQv07YZ6o27x8mHToHhIyHM8u6Ef4dloiMXSPYOsqwsJa7dvHiNlLOR6
         vF55Updhi6BqPqgEmAOmf13qF1W2/6E5EZNy/VX95gkIuPg8bQklBq410mhaIbRloLu/
         Peh2knkAC+wxBfjUC+/u41n3d0GHcIJi5g2oEHgkt9MFobcmP1Qt7/+u8wP7SKoaPmln
         qvo5i1sN8s3g7n9zbKb2YRiX+YToHpYRer9nZdGLe0q5P+fBYkLoMZollmoOB2vn8shI
         BejWqAvmbg4LF3mITFOZLrzeok2G9P67bjHCLpiGo871NPam7BxOGxD2X16H8P2gZQSq
         bswA==
X-Forwarded-Encrypted: i=1; AJvYcCWswDzQ5R125LeTYHrCPrrgn04LO7r2MwwreXPzzbcwFkUkP0lrBVdVx0+denA4+nWdHFWicZzdwL+zPJzaShA9TAMz/M9KWO7J5Q==
X-Gm-Message-State: AOJu0YwAHJcACO3+VesLnoJRzD8F6jTWj+TyCarMvjTSRQXbvri1QiG+
	WkaBnDNFDGoguv6dPVgX2p+96riUJ9Uz8M1kXdLJ2qURftOoG+8a19UvZzFX7WyM4mTMs4lME/F
	9BIwmELxJrN98ucoeHnWIBntvAcZ2+VZNrwJEsg==
X-Google-Smtp-Source: AGHT+IGpR6Km9u/y6Bv8P1q5AaUH2Lop+WAEOA9Qu4pIhLyEUSPoVij1RwxOm/lV5viXWbxn3z6viFJzlC5mFlWzPkk=
X-Received: by 2002:a2e:8899:0:b0:2d6:fdf0:24a1 with SMTP id
 k25-20020a2e8899000000b002d6fdf024a1mr4566384lji.18.1712002975886; Mon, 01
 Apr 2024 13:22:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240401-ad4111-v1-0-34618a9cc502@analog.com> <20240401-ad4111-v1-1-34618a9cc502@analog.com>
 <CAMknhBHeKAQ45=5-dL1T1tv-mZcPN+bNo3vxWJYgWpEPE+8p3Q@mail.gmail.com>
In-Reply-To: <CAMknhBHeKAQ45=5-dL1T1tv-mZcPN+bNo3vxWJYgWpEPE+8p3Q@mail.gmail.com>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 1 Apr 2024 15:22:44 -0500
Message-ID: <CAMknhBGJt1TG0-UXMqqCT6nxJKAX7ZbsPF19eeWqwKsXbKOQoQ@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: adc: ad7173: add support for ad411x
To: dumitru.ceclan@analog.com
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Dumitru Ceclan <mitrutzceclan@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 1, 2024 at 2:37=E2=80=AFPM David Lechner <dlechner@baylibre.com=
> wrote:
>
> On Mon, Apr 1, 2024 at 10:10=E2=80=AFAM Dumitru Ceclan via B4 Relay
> <devnull+dumitru.ceclan.analog.com@kernel.org> wrote:
> >
> > From: Dumitru Ceclan <dumitru.ceclan@analog.com>
> >
> > Add support for: AD4111, AD4112, AD4114, AD4115, AD4116.
> >
> > AD411x family ADCs support a VCOM pin, dedicated for single-ended usage=
.
> > AD4111/AD4112 support current channels, usage is implemented by
> >  specifying channel reg values bigger than 15.
> >
> > Signed-off-by: Dumitru Ceclan <dumitru.ceclan@analog.com>
> > ---
> >  .../devicetree/bindings/iio/adc/adi,ad7173.yaml    | 59 ++++++++++++++=
+++++++-
> >  1 file changed, 57 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml =
b/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml
> > index ea6cfcd0aff4..bba2de0a52f3 100644
> > --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml
> > +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml

Also, I just noticed that AD411x have only one AVDD input instead of
AVDD1 and AVDD2. So we need an if statement that says if properties:
compatible: enum: - adi,ad411x, then properties: avdd2-supply: false.

