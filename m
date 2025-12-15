Return-Path: <devicetree+bounces-246723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EDACBF198
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 18:04:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D62AE3019E31
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 17:04:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7204932FA24;
	Mon, 15 Dec 2025 17:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C0AwtroY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D9D4330304
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 17:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765818078; cv=none; b=WFNkqjY+S1/u9RvfcmXJchEqVcSRSMfEYHVcEkyrPWHFc/N5NYi5FVJ6WUofkIoaUY0YXqOIpEBKj+rMga8GQCFhgyb4/qWg9ipshLy2wtitJWxkFx9dO94XaYN40OI15YVjea2tQ734s0yGmVqEQX+hb/cFRm3my6YBYAkJguA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765818078; c=relaxed/simple;
	bh=edcxT4cXcjzjFU7UKD3gumpI6i2oeUC5T5fmFwgJQVo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KKaO1P8w6bq+JB6x/fLJ49nlwBclhabHa0nWQptd6GeclAgJHRaspFR7h49AVUI6Phkm3FyqV/3RtM0AfAxk1AVwMoS1PVKMsefCXBZm3MDV0n5R1Je904QlQ68FGD+N512q0dfzioOi9+QPoIZxvK1iuiha7Raw7SBxf9rZKFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C0AwtroY; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-649822b4b64so5845757a12.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:01:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765818073; x=1766422873; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=14paOATnTuGbpoBHlEqvmaIpAnH15tDpAkptToEMSzg=;
        b=C0AwtroYs9RXqQtKvo2a4dhT80JgY7iqpax4coqn1fdJbSihCzFNVGUQQFmwae58Ml
         aGV6lw960wokZB8RnzurpbHG1hwmmbiGkTpZmWEB0Fgy0wXw71qq/PzBbIZpt/e6rKBN
         ERPOz7GWARjHxF3sM7VMMbBoZzq70v0gS5wqvmnE1HpHpFXDQKQl7kgN2ubfWiveY3S+
         Xak6YX+Vr28RIwFtg6/rHZT3QyMtH0EHRIa4xGmubYo4TMAf0JIfBNHddX9keJUrz6E3
         fR8lbrMQnKYpOu54Pf6V3hMgidTP3mB4IhlDO3JWWMjtkunKpOpbXZKAkpiQgt9jvamc
         WGbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765818073; x=1766422873;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=14paOATnTuGbpoBHlEqvmaIpAnH15tDpAkptToEMSzg=;
        b=oQWNZCjwbxnsVbdZn8vOTIqAvNyRqZZ3ZWPS3VV1TXe5h9mSuwKVveriP91l0atBIX
         DMpQmLQU2JsVv65noF5anTQYTX0bjaV/sQNrA7MipGh9bBRS0SkBJuNdc4s75+dW24Uk
         7BLlQDT8x5Y2iwyOhozDzDZgvlRt/qJuxCK+yxEqwZvk+M+GxFaw9MOljgBl9LsCoX87
         XL3D6XUVSrLCso4iKiSDqrt8cU4tWvpA/40IPJH5wJTyRjIcYuD8GEn7Yht7fmP6liCp
         DsBUVwDwbYXNlPAnTnQnaYny8sFMRcFkTOMb2NzWsu4YN1PZ4FmdslbM+01MkMxfwE3Q
         YHbg==
X-Forwarded-Encrypted: i=1; AJvYcCXn0JOtlihZO1HfqKIFiesrWLh7Hl73yFpdVmOs8QnfbpIzSL9cekQLwyM92BCKhqQxHeliMchEUvEy@vger.kernel.org
X-Gm-Message-State: AOJu0YwGflIxIqB/xfKKngdPy1rVZDc+GhRw09MdOKLTwV5l4UIM9xav
	Q2kJpl9YeiZ5fiZV+ffyI4PdFrPpG5v0ltGrWTxap+Of2vTcTF9gERJ5bIyhe0Vs4y4I2fbAZEa
	n5LPb1qUsRKamaHFw//ZRQs3iZS0HcTo=
X-Gm-Gg: AY/fxX7/Gnz1Ur3cNU2r0lXf7BJQjpXWVhIkWz1S1sA3CvW4Nen6j2kd/c1yHHoAv38
	oe4S8ixQpEUR7QbAwFEGK5I7h/nGqs6f3IyO6Q+HpBVScXXzxYwchMZocqkGMQB8yZFSqm9MexX
	pBn2CFxVDO16p1SLs3bxT+/weSvi6sQjpyea0+VBs+eFi7V4BDyJYnT1PFnkgtkyAn/Tg7TZ48+
	dlonkr3LiG/fdlMTaZv+GoK6Ab02B6SsFGvdLG8ZD24JhwE6tz+yR0140Wpr1dPKi59bM5uDqpS
	oLLGDSAS3JbtYrTGA0RkYXCmOvciygSxV9ovIrJ54q6GLKgLbAinBwTMVdX8cSbjxi7+IzH82jY
	oAoI=
X-Google-Smtp-Source: AGHT+IEslj1Fsbja32LV9ONgff3lUyGEL2tcsS4Bosl1t1oXCFrK07BfwXVZXeC5kd1XbxYsTCpBl5wZjIz2jsZwWb8=
X-Received: by 2002:a17:906:794f:b0:b79:a827:4c4a with SMTP id
 a640c23a62f3a-b7d23663422mr1205521766b.15.1765818072622; Mon, 15 Dec 2025
 09:01:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251109141119.561756-1-ajithanandhan0406@gmail.com>
 <20251109141119.561756-3-ajithanandhan0406@gmail.com> <5f15284b-159b-4860-b58b-35c624e2539f@baylibre.com>
 <8e2c73ca-3746-4b2a-9d85-c12b51a69059@gmail.com> <8ad18de5-53cd-49ba-8e84-1e8c7e5bd627@baylibre.com>
 <15106906-3bcc-4187-87d9-c838fe99b583@gmail.com>
In-Reply-To: <15106906-3bcc-4187-87d9-c838fe99b583@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 15 Dec 2025 19:00:35 +0200
X-Gm-Features: AQt7F2pRcI9amJXjbl2Z5tr0_ickskCvuKLcMkmW-cmgPMFrNAUbVYeyj4M7Jko
Message-ID: <CAHp75VcA2SNGb6cpHaOQwQ_dNaG5xCZnfrXtu+u9pB1+oz7xew@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] iio: adc: Add support for TI ADS1120
To: Ajith Anandhan <ajithanandhan0406@gmail.com>
Cc: David Lechner <dlechner@baylibre.com>, jic23@kernel.org, nuno.sa@analog.com, 
	andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 15, 2025 at 6:49=E2=80=AFPM Ajith Anandhan
<ajithanandhan0406@gmail.com> wrote:
> On 12/15/25 10:06 PM, David Lechner wrote:
> > On 12/15/25 10:13 AM, Ajith Anandhan wrote:
> >> On 11/18/25 7:34 PM, David Lechner wrote:
> >>> On 11/9/25 8:11 AM, Ajith Anandhan wrote:

Please, do not forget to remove context that is not being discussed.

...

> >>>> +/* Regmap write function for ADS1120 */
> >>>> +static int ads1120_regmap_write(void *context, const void *data, si=
ze_t count)
> >>>> +{
> >>>> +    struct ads1120_state *st =3D context;
> >>>> +    const u8 *buf =3D data;
> >>>> +
> >>>> +    if (count !=3D 2)
> >>>> +        return -EINVAL;
> >>>> +
> >>>> +    /* WREG command: 0100rr00 where rr is register address */
> >>>> +    st->data[0] =3D ADS1120_CMD_WREG | (buf[0] << 2);
> >>>> +    st->data[1] =3D buf[1];
> >>>> +
> >>>> +    return spi_write(st->spi, st->data, 2);
> >>>> +}
> >>> I don't see anyting unusal about these read/write functions. We shoul=
d
> >>> be able to use the existing spi_regmap with the proper configuration
> >>> instead of making a custom regmap_bus.
> >>
> >>     The ADS1120 needs register address shifted by 2 bits
> >>     in command byte (reg << 2). I couldn't find a way to do this with =
standard
> >>     SPI regmap. If there's a configuration I'm missing, please point m=
e to it and I'll gladly simplify.
> >>
> > I think you are looking for reg_shift in struct regmap_config.

> Thanks for the pointer.
>
> I did look at reg_shift, but it doesn=E2=80=99t fit this device. With .re=
g_shift
> =3D 2, regmap would send only (reg << 2) (e.g. 0x0c for reg 3).
>
> The ADS1120 requires the command byte to be CMD | (reg << 2) (e.g. 0x20
> | 0x0c =3D 0x2c for an RREG of reg 3).
>
> Similarly,
>
>   .read_flag_mask would produce reg | mask (e.g. 0x03 | 0x20 =3D 0x23),
> which is also not the required format.
>
> Unless I=E2=80=99m missing a regmap configuration that can generate (reg =
<< 2) |
> CMD as a single byte,
>
> a custom regmap bus seems necessary here. Please let me know if there is
> a way to express this with standard regmap-spi.

So, and if you define both?



--=20
With Best Regards,
Andy Shevchenko

