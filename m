Return-Path: <devicetree+bounces-183256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E80ACFDB9
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 09:50:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 73F4C188B6B9
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 07:51:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60D1F28468C;
	Fri,  6 Jun 2025 07:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="mHckVdkK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 886F5284684
	for <devicetree@vger.kernel.org>; Fri,  6 Jun 2025 07:50:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749196250; cv=none; b=KHTixc60K0RbWViVBMxc+99CdEMFGYgQVvGNfUudxQxlrD5QwWp+oQqod85yP7mWGfyXfmGEYX+5OKjrICupi3K6ayfTcPIjOrrmmTX6DnycrMZonu1QfHnfYP9Dmjp16M1L5S6PlBOnsTlCbHKU6gNS4mjUiFVaZ5PYYJpLdfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749196250; c=relaxed/simple;
	bh=wPoBJxhkcFhcU1dhyc7aep8kuC84kUm5vq3DmgKJjwE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YSm1itlQwCqoCrQzDTzkaxMbD5yIrhcyV7BtEVZADZLNlrxiiA21UO0BxbPlRUMg5EGPq1NqPDIRTWX2C9DTk65fMevGksbCRQ1+Rniv0BsZU3Ds0jgDtNewdFrEW8RXQ2Qnu1AR4KsExOEPGk2KwwlfbaM+T+7YpnpuypT5AXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=mHckVdkK; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-32ade3723adso8354161fa.0
        for <devicetree@vger.kernel.org>; Fri, 06 Jun 2025 00:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1749196246; x=1749801046; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rm4T5ss5l6d5YD6Na8dlxdY8BKrMjQHyc2yVXx42+4w=;
        b=mHckVdkKDwxM7H1Gm95g2S5Qg3bimQBf7k9qXuyxNEgTqZlr60qL5i8DsgMX9gVGHv
         fXk1BxjG9dtXJO/vdSNa0sk4CE8okkSDfDQzYW++pnBInlzT/Th+61jTYXdzM4FcuBzm
         U8DzTMs9x8GJBQ8Ml+L6jY6cd2sc1cYGsJqVM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749196246; x=1749801046;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rm4T5ss5l6d5YD6Na8dlxdY8BKrMjQHyc2yVXx42+4w=;
        b=Wk3vBWPMtq62w8qGo8bBHdYzuBbsOZQ5vcSKKhRqa7wICvrBs43QpivZ7Y7ijGIPp+
         YAUFxOR0vdLOKjVckFDDYGuS3qCGlvkdqGzrkl59I6CJHfPXRzqNKNZSFCdCE75cYyN/
         OefBCHZ5GOf1ZqY8TnZwOVxOrOtvjm0UA5BinqM1D+6pDZUzhgLjNGaEICYPxiK3xIxL
         tweUkXzRRGOFsTWs6NalXKkp4ON+t8UKLqyG63/MD+C0hKYr2ikhxfbKIDN9gntNv2y/
         YxlDiFmFNoP1TxF7GAWAgZGSAa64wWowr/0IQALWgfhzbASDNpAaB+pdJvuyCGosGHhi
         agXQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBn07+teoKepwdZSXq6HWPbhSn9rIF4mREOng8/pc/WWUhCapqL5NfFfdH2UPf/fp1q3AJWrPciYW1@vger.kernel.org
X-Gm-Message-State: AOJu0YzZyRJ+IwSVGaWW3LYu3IWx0fybStM3Og7NY4xHJY0RB9L8anEW
	PRD9IqfXgOL5BxOn5VL/N5xCwzMl2hgPH47YoL2HLwuyNEi9vqiViY9nJdwyyxEh7zOSmrAaNof
	NLheK6RK2IjDvkUMrpDClRz65bTk5zTdhxD/riUsDSiYh9773efQ=
X-Gm-Gg: ASbGncuv1hSsd7JEGW2NMHtVNZE4o5P4whhuYt9aOQTLzBxAMTXk9SBw9Nj9Zxl7IHz
	PPBSNwsGqpToaPz0sq6oPzrZqIusvilfcHcD71ncNdbgdGgsKNmgu2uTCgJ9OE6CxS81xNTzQs/
	637FGWufGqT+aMEedwvGfAKkR6f5UY5JyU9JfDf4hUcOx5y5+KFtKONPBPTwaG
X-Google-Smtp-Source: AGHT+IFbKR4s9CitEfgNJcsl0QhC9Vk4xSWEUHEwXIP7bIcoci9LebkzJqucGfI4/l4+Z99afgP92CHraRrtTZAdj/I=
X-Received: by 2002:a2e:b8d6:0:b0:32a:8846:9776 with SMTP id
 38308e7fff4ca-32ae70d541bmr2192651fa.22.1749196234912; Fri, 06 Jun 2025
 00:50:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250421101248.426929-1-wenst@chromium.org> <20250421101248.426929-2-wenst@chromium.org>
 <CAD=FV=XLonF5qM+f6diESvnqAHKm4Y7wwPsNssdNqZfkn2OzSw@mail.gmail.com>
In-Reply-To: <CAD=FV=XLonF5qM+f6diESvnqAHKm4Y7wwPsNssdNqZfkn2OzSw@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 6 Jun 2025 15:50:23 +0800
X-Gm-Features: AX0GCFt9WzCgD2IIEFQ5utFqrLWuXwM5tZhCHvVXVAvSJ22GZSGtAIfEBPnfCtQ
Message-ID: <CAGXv+5E3bJf0o8y4kve_f+EefKqcOeW99VA_HcgKRm2+Bj+uhg@mail.gmail.com>
Subject: Re: [PATCH v2 1/8] dt-bindings: HID: i2c-hid: elan: Introduce Elan eKTH8D18
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Doug Anderson <dianders@chromium.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, chrome-platform@lists.linux.dev, 
	linux-input@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dmitry,

On Tue, Apr 29, 2025 at 3:34=E2=80=AFAM Doug Anderson <dianders@chromium.or=
g> wrote:
>
> Hi,
>
> On Mon, Apr 21, 2025 at 3:13=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org>=
 wrote:
> >
> > The Elan eKTH8D18 touchscreen controller is an I2C HID device with a
> > longer boot-up time. Power sequence timing wise it is compatible with
> > the eKTH6A12NAY, with a power-on delay of at least 5ms, 20ms
> > out-of-reset for I2C ack response, and 150ms out-of-reset for I2C HID
> > enumeration, both shorter than what the eKTH6A12NAY requires.
> > Enumeration and subsequent operation follows the I2C HID standard.
> >
> > Add a compatible string for it with the ekth6a12nay one as a fallback.
> > No enum was used as it is rare to actually add new entries. These
> > chips are commonly completely backward compatible, and unless the
> > power sequencing delays change, there is no real effort being made to
> > keep track of new parts, which come out constantly.
> >
> > Also drop the constraints on the I2C address since it's not really
> > part of the binding.
> >
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > ---
> > Changes since v1:
> > - Reworded commit message
> > - Dropped the enum for the new compatible string entry
> > - Dropped constraint on I2C address completely
> > ---
> >  .../devicetree/bindings/input/elan,ekth6915.yaml     | 12 +++++++-----
> >  1 file changed, 7 insertions(+), 5 deletions(-)
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

Can we get this merged for v6.17? Or could you give an Ack so that
it can go through the soc tree?


Thanks
ChenYu

