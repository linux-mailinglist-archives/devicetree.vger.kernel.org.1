Return-Path: <devicetree+bounces-257106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 216F3D3BA35
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 22:41:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C615F3008C7C
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 21:41:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABDD62FB08C;
	Mon, 19 Jan 2026 21:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="i5p9bD6n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61BFC26CE1E
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 21:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.175
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768858907; cv=pass; b=TqrLjlN0uAsSSuqvbiaeMOX4FeMzTOpD1g8Li6aDePgjP6ctEKfK62a7O37WlZTWjOc/z5xNk6yBvxRib4ynWTkWVszp2nTraLp9KAO3smMFp86oABbzI/5iSSGEqPeJM+Ar48TIM6egp19eI1Di9F0s9yuRUHo2Emt2jdIEMvs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768858907; c=relaxed/simple;
	bh=fPv8UqVRWCTMaKO3cbthXj1loduQmnTrZGM0QykVE7k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bKXIr0JUYcQZKLgz13U4/EtiLmCuVhmhFP8JToTEtukbNVcuR1/EETXlTqkjm6w5Q2e4zZc1twlahUamQZ9ZxrWbHFYWk78mKuHzAqrarThtcp/ZFzJDccbUFNykT1V17IMIwCz+00azrkXq9jTFsUP9c2jKbYPRMTwu7QgjYZs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=i5p9bD6n; arc=pass smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2a743050256so7305285ad.3
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 13:41:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768858906; cv=none;
        d=google.com; s=arc-20240605;
        b=WMVyZvH4bUoaNfboHwAuHXvJKdZXUYiVqnscBm8iRf2ZrVqtBZ3BSqs9Ce18w4iQe+
         DR9lJQ7JS24DmoM95wD9l+gjF31MAs3fZWP/80z/G7+L+4V+YKWCOMOrPRvtTIIemBBP
         QMhJddranZk9jg59YB44LIy/vn9mROdhTzpALgkJOazETLFFwkbD35okuC+M9dYQFxm8
         lveuTe/vg7QiuDDQYcbSeE13OqNMiV8c9izhESt0le5nzPclIxeevo95gXvY7Zu4qXFD
         O4h2qH6apIRSBEI+vZrrcMgDHdDS1nrDCFtIf8KU7b2b5x3KMC9yR05J5RANG/wWcwda
         zCCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=pRWznSlw2S7cbES/gsl2WYiTRCw+WXgXVb1obiesglo=;
        fh=EArUbnJ8s6wz1A4GS5LHxh2HEmQW/bOxbREVBx7Y7NQ=;
        b=g9+i6CFi5E3qqt9dYwa9+on9pqM4ESPBLlus/le69tHihMG8W/QSj74Rasi81u3pDy
         e+G+1Z4ZgfJzO454eCUjVi2U0jXqqUS+rVGF5pEGjif2qwEt/Xww5Gj8zfiJXewUsD2z
         6uViAPGzVzV908AaGHdTLXZXkIbpo8ho/qtog24LAF0PZ4nmLKwv7bmbuQ5ODLRCVaoc
         7aUach+1W4Yftw4xzHRw/hVOX7f0AMdroSQdy8VmcdR0wxv98UxR/QQpV3mWxfzHpCGC
         u90A213pmv7rU4YuatKyJmUV21fTx3jgF8kPyZZJ++U7y2JA8yXcb1Uv+xgFil9jtS/m
         6M3A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1768858906; x=1769463706; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pRWznSlw2S7cbES/gsl2WYiTRCw+WXgXVb1obiesglo=;
        b=i5p9bD6ne71Bt38RI+YN1Wzxfi1nTnlQSY26lNOWwNHeaBgIG5w+IrduPsf9I6mw1X
         8eMxD2/VibbkfZOjpfN5+cgdj/a9Q2dVSR450O0aSa0F5CnbT7/NIIPw9YBB/S4dKZPc
         SepXtdh5UvW/IVK4mGJQB/m/ErswpTcu6Xei17cCEct3SCyXLt8WW/Ae7pSMm6Y4vDyy
         bM/lSefYxgU+e0hyKsCuFo2QAMhmJZhG8KM+pucgLNeyN4sB2RTtLD1ziE0JqB3nu8on
         /Yr+nI0gseYNV8MN+4lLekMXVs2OpKW1fNPZGNtXbIZBu6EnyNySutJ9OEIgQU58muyn
         wdOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768858906; x=1769463706;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pRWznSlw2S7cbES/gsl2WYiTRCw+WXgXVb1obiesglo=;
        b=YW+aERKcfU1zG8RfLvQTpGffxRbApJbhrJwE9gVKyQ1kb0RUh48aouvzpCkpNzmt9+
         aRTrPw546d4lVxFexGFxUlkpg/1wPsb3qc+GAkd1aHbzjyxvRjn0QXrYPQR8qbMkN3T+
         YH8L4AkUWNj3F8oz8YwMmBiheehA4UloE3SKPFr2Gjj5Q/lw2eke6dfJw3WW1XuO5eAi
         dOwO59LBWfLcmbLh20ICCPTLO7PixctooS4750fkSH9kUgYq66+ipt08J0ugDN5laN4q
         Ra0IzwU4zz1gpXIORvH5WvqSXnrNV7F/98XSydZ/QcQ8K9BTuAtQHG3Ym1E9FLtN4T2M
         WuBA==
X-Forwarded-Encrypted: i=1; AJvYcCW1zQOt3zSVj1rw4nUxq4ywk7SYqgeqdFH9l1bsWSTF/JW3bVRc/aml6z8Htj+v0I11+M8HnL0YWw9/@vger.kernel.org
X-Gm-Message-State: AOJu0Yyzn9a+02yWkxp1pkEYFo+yfshgDx470K2WDcZwykxJLl92+B19
	Bn6wmKUzt5AIszWPh3BDAHsfMhmyMgsld2sZzmEyeeFrPaCq48HTxXpUdYmlIc/zeKdr/takhdF
	9vbNswSjUSmaiq4CfanWbtmUYmhBLcbY=
X-Gm-Gg: AZuq6aL6F/Ir3midkyeMlhEVeX3tNfcBxarl3qvnvtb2X+vqmkbYrRlCMIxKtxynD58
	9jEtAnLbOlZQ+7roz4PU9AHgey5im3SfENq85NKDQ+l/dVVVWWBR5C/k0v1mJWoHofUE7J7IJ+H
	j8lO7B02XigknwfI0kjDP2VdXdqUVB0kLYtHgUuZyJaMUJgBd9zeaM1Dv82Zj+arUu8gLpCSoGO
	TLDqRQEmMHB9ijVUATLHqjziwxM8YeLY7XDRWAlitIOlZqMeofy9lOjMInl5TJ+TkGuCfLqMkU7
	VdbToYfB8/DpAzX97E4YilMLJovU
X-Received: by 2002:a17:903:41c7:b0:295:9e4e:4092 with SMTP id
 d9443c01a7336-2a7177e69demr117828295ad.56.1768858905805; Mon, 19 Jan 2026
 13:41:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260116023900.2036657-1-nick@khadas.com> <CAFBinCAeNcKW_dK+1LD7U_+JkcozxmMw9J4oGUt1=OcvJ95dFQ@mail.gmail.com>
In-Reply-To: <CAFBinCAeNcKW_dK+1LD7U_+JkcozxmMw9J4oGUt1=OcvJ95dFQ@mail.gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 19 Jan 2026 22:41:34 +0100
X-Gm-Features: AZwV_QianNccn2npt0qzJu8jf1J7ZW5nG4PtEcDbgkjGz-yQ00oAH_jww9o3OAc
Message-ID: <CAFBinCCuV9eqDDg9fgy5hkQ8KukxpbfSgTzGq_C38nAB1HtDFQ@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: amlogic: meson-s4-s905y4-khadas-vim1s:
 enable SDIO interface
To: Nick Xie <nick@khadas.com>
Cc: neil.armstrong@linaro.org, khilman@baylibre.com, jbrunet@baylibre.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, xieqinick@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 19, 2026 at 10:39=E2=80=AFPM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
[...]
> > +       no-sd;
> > +       no-mmc;
> > +       mmc-pwrseq =3D <&sdio_pwrseq>;
> > +       vmmc-supply =3D <&vddao_3v3>;
> > +       vqmmc-supply =3D <&vddio_ao1v8>;
> I'm missing:
>   clocks =3D <&sdio_32k>;
>   clock-names =3D "lpo";
I've been a bit quick here: clocks and clock-names should be part of
the wifi@1 sub-node

