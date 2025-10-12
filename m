Return-Path: <devicetree+bounces-225750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EC536BD08A5
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 19:37:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7FDA14E42B0
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 17:37:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C32962ED16C;
	Sun, 12 Oct 2025 17:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i10D8LAz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC1C27B33B
	for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 17:37:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760290651; cv=none; b=KbDDUK+wjltKM6AsDaU46asHkCMU5YDwzb/tkSEKb9peCj754Zcwr7VzgKuuh3IdPwsDH2zrVg1OZhNOl7NQsK9rC0BscDl9s73Kqz4lXXLxgI6AspO1TlrQRGbRroITUGsjZaism1HT2APAYHORxqGfVQ2/FsFVV7WMsmbzxkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760290651; c=relaxed/simple;
	bh=wQf6CUx6iYNtn0zMxIL285xU6GTttxgQB+eMaEn+Nqc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kzWYm62JCEDOHgl3lDTvdulRm50oDs62n72xL5rbcWfM/f9TXgbL71HQ+TPa5Kjq7ZpgHKNs7d/Mh69nvX33jVq/vLLfOIbnTrShEk2X4h9Gopg/BQ+wgijb2q6xhzlZiBmM7HJxWcl3sv0x5J6UQ1Kchqr1t+0ISvQJVdjnnl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i10D8LAz; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-b50206773adso834251866b.0
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 10:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760290648; x=1760895448; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HjN46mR7vmbfRcA2+LhyFdkXLDPT8VQfkzRMb9fR+Rg=;
        b=i10D8LAzgSz5tmgbQycsZnksVhgTLRSff7nDR8WEHKl56VqacKuVViXYgHdLGw7qr6
         +WglBTINupcFWC0WNHYED19lDFMXmaB+X06lxi6u6RHVtSNj8KyNUN891znZsT4CPt7r
         6OJiBZnlZ0G9mb2Rg0GavlyAwlnFKpZByhRKxkKgQ3KeSH1iYH9gKD63n4QCcRp9ZZIX
         WZgc1GdfwIJpjhDur22iGOkrpcG2J6z12LIYodqO+4yAx++Y6pOeDVFIF8Ljg3V4eHLn
         1MwT00JzXl0nctbG2/N23Oqp6W7EWp3tcOQ+9IeJdjGn3n/6oFaevGFb7tbsX6r+fI4J
         STTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760290648; x=1760895448;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HjN46mR7vmbfRcA2+LhyFdkXLDPT8VQfkzRMb9fR+Rg=;
        b=jTlrq6YjA/8JToWgc04gub8e/ZaDCNHe5+ovsbhHID72WaoidRtfruk4GxHmyeCtTp
         y61KwnlZWGgh8nMq1E7j0jiLJ3J5+DB5Gul7YTQxNRiMBRembp9P4opggSCrysHqLj++
         5NdIaSDePa59Q6kmFkxb4wAvdt32ilIgcLv6brrG0FNX+qM2hicVlD9YmWoTlmy1LoSR
         KhBB5fvA4hwgWhEuJe9PD0MpdxbG1j9pYyd0V5QTcUyHPV0LtvNAcyeE5EjamwHc9Rsu
         fPzXTtMWuTYk8NbiMBqTV6s+xEcWemzpd1UUK91oEOVJtUOJHWbwDwJ83juCiAn+WBrP
         DCMw==
X-Forwarded-Encrypted: i=1; AJvYcCUvFB5jQLh5P7Mp7CfaWh3hnZ5XaNxQKpFoJO8DJTJEJWU9IdT7Z6yZKyhNl2B96qw+UdCXd6E7Wv1V@vger.kernel.org
X-Gm-Message-State: AOJu0YxulRr3Fu1zPZtnYtisisQglg4sEZHTp06/+86BRVIEEkE0hS4L
	FuIKwVOJzWSCllwLG5FhhXwJ6s44thmSm4JF7U+EOMlMKjD7zVrlpCg/phO4b5pZrNz8FPNTnRr
	Uf29VZxK8eMgIHMxsJk3e6c1be64WSPc=
X-Gm-Gg: ASbGnctEKT4NV71zfi/zGu14ZwE89jS3dYNIw7fKmr8owt4lXLfuUIvRp0DRjw14wbi
	BZDdtm3eG6gx8MuoJ0nTW8AdmzPxWeyB6ctkzIo1XVsP+bdBeTN7eHLSAjq7PlWUOtE19nrTJBq
	KUKgZseIAOzMtFl4/S6Xr/qk92W90o5EWTHe6qIY6l4EEi1lX/7BGql6To9QsJSZwzHZ6jpIzXQ
	W0L7R9BH3mRbQqchVuU3DiOG8DkosRFrU0S
X-Google-Smtp-Source: AGHT+IGFP/EgOGkWxqjUos/OJLXKzFze7OmeAssC7kBZ/7quZxkALgbxBsS2MKonlO9lkxUJo4zvtwxsst0X4NFCXYo=
X-Received: by 2002:a17:906:c143:b0:b40:bdc3:ca04 with SMTP id
 a640c23a62f3a-b50baba84camr2323169866b.0.1760290647947; Sun, 12 Oct 2025
 10:37:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251008031737.7321-1-raskar.shree97@gmail.com>
 <20251008031737.7321-2-raskar.shree97@gmail.com> <20251012180644.019616c9@jic23-huawei>
In-Reply-To: <20251012180644.019616c9@jic23-huawei>
From: Shrikant <raskar.shree97@gmail.com>
Date: Sun, 12 Oct 2025 23:07:16 +0530
X-Gm-Features: AS18NWBpLXveHlQdIhTnFbX7i56JOrqOKowAXbKZ3PnsuA7_QAtU4BLr2PqKRcI
Message-ID: <CAHc1_P4L2oiM09YhewH69GHcVW667b0xW5eeH9+UY0xi2aO28w@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: max30100: Add pulse-width property
To: Jonathan Cameron <jic23@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, matt@ranostay.sg, 
	skhan@linuxfoundation.org, david.hunter.linux@gmail.com, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-kernel-mentees@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 12, 2025 at 10:36=E2=80=AFPM Jonathan Cameron <jic23@kernel.org=
> wrote:
>
> On Wed,  8 Oct 2025 08:47:36 +0530
> Shrikant Raskar <raskar.shree97@gmail.com> wrote:
>
> > The appropriate LED pulse width for the MAX30100 depends on
> > board-specific optical and mechanical design (lens, enclosure,
> > LED-to-sensor distance) and the trade-off between measurement
> > resolution and power consumption. Encoding it in Device Tree
> > documents these platform choices and ensures consistent behavior.
> >
> > Tested on: Raspberry Pi 3B + MAX30100 breakout board.
> >
> > Signed-off-by: Shrikant Raskar <raskar.shree97@gmail.com>
> >
> > Changes since v1:
> > Add unit suffix.
> > Drop redundant description.
> >
> > Link to v1:
> > https://lore.kernel.org/all/20251004015623.7019-2-raskar.shree97@gmail.=
com/
> > ---
> >  .../devicetree/bindings/iio/health/maxim,max30100.yaml      | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/iio/health/maxim,max3010=
0.yaml b/Documentation/devicetree/bindings/iio/health/maxim,max30100.yaml
> > index 967778fb0ce8..5c651a0151cc 100644
> > --- a/Documentation/devicetree/bindings/iio/health/maxim,max30100.yaml
> > +++ b/Documentation/devicetree/bindings/iio/health/maxim,max30100.yaml
> > @@ -27,6 +27,11 @@ properties:
> >        LED current whilst the engine is running. First indexed value is
> >        the configuration for the RED LED, and second value is for the I=
R LED.
> >
> > +  maxim,pulse-width-us:
> > +    maxItems: 1
> > +    description: Pulse width in microseconds
> I continued the discussion on v1 but just to make sure it is not
> missed, add a bit more here briefly touching on factors that govern what
> the right value is here.
I have considered the feedback from v1 and updated the description
with suggested factors. I have shared the v3 patches with updates for your
review.
Thanks and Regards,
Shrikant
>
> > +    enum: [200, 400, 800, 1600]
> > +
> >  additionalProperties: false
> >
> >  required:
> > @@ -44,6 +49,7 @@ examples:
> >              compatible =3D "maxim,max30100";
> >              reg =3D <0x57>;
> >              maxim,led-current-microamp =3D <24000 50000>;
> > +            maxim,pulse-width-us =3D <1600>;
> >              interrupt-parent =3D <&gpio1>;
> >              interrupts =3D <16 2>;
> >          };
>

