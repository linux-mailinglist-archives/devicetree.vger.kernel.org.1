Return-Path: <devicetree+bounces-257206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BC3D3C087
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 08:34:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D4ED44FC153
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 07:14:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9A733803F2;
	Tue, 20 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aZmMEh80"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4363437F8D9
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 07:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.222.182
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768893231; cv=pass; b=qrU1JHnC0qQ4IP+QUF84OZzZJzSp0TX76Cn2TSg6XQAJxYzx7DEqgf4Vmc4wCvTIOnSWRArSVawT4Xp5mDQbymnUDA+Gv/T46E0cQjO9WGT6OLpoU7URGCj5qrQsSiGZMmqiy6/zSKu6cId+gJ8fl4XBQdJJLftSMVOT5OgtNqs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768893231; c=relaxed/simple;
	bh=m/AcdJHOfbL98COErVKQfn92HC1scPShYwrkryDi5Tc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VyiWN8iUSmBSwNLRD/8TznEqEmCWc5GuSdrr8+OOLUCPMZBRVLANESZrjjvT8j0zCCWTYS4HBzsRauDhYm6ePC0fZ7ObJuz9zdUt429YosqgqnGFBgNceqcnm2Iy/wyByOxNqJ27kNdiD8B1JLjgB2NhVTmmCD7j0rrVP6WOoOE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aZmMEh80; arc=pass smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-8c07bc2ad13so341639685a.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 23:13:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768893223; cv=none;
        d=google.com; s=arc-20240605;
        b=Vw8cHkYca45hAn0Q2EnXBOePuFa13MZyQBHAX1m0c1g7nx7T/lDza5Bi+tzJ5+RbsX
         JJL8m0MPVnuybuzlWsDus6HGk77QLDDme0k22M4lhNN48hUViu49qJYybTi13cVbDJD3
         QvLXQwpIl9Y/0MYV0cTXBtowYUTofkic8PmTL784vuoskiXBJo3u3mWeZ2uCnN6e1OeP
         WiJEHUs/LiJ7udFp5BNdG/+BKoHPcCWOzD/Qjyc7fizXT1oh8WvEuIqfDICaKkHr0jGK
         nItS8nPHSEv6LJ6uQzHa6/8Wj6CXCwnhYlY9PT096hRcBDzgwLSXZsKa0X2LV/izPnF5
         4L3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=m/AcdJHOfbL98COErVKQfn92HC1scPShYwrkryDi5Tc=;
        fh=3b9rtfa0lrvy953g8K50n1n4pjqu4+SLPptpBcGNv0M=;
        b=Ef+ltxQb29BHE5lFCkAr4C+uxOUqplXS+6hW4AlH0C5S1I4BxeopNHRHXOyXzmxS/I
         w9UvTHZXb3YmTaVYHi7nl3M0CFNlDQ25iFduy04RO1SP/2Uf18cQ+QXrZU9I3Rg6Cb0e
         FK7DVw8hDa04PeozTz2w1UGO5enPPvxApwbbj5Wi0rUBbLA0eXUOqiucBjFwJ6taGAP+
         PRw9MlXDSwY6c4I5fhz4ulIDAY8+iggYWm95Kz6vhesMkJaMIsJ7ty2Yh1Vj/8zTGifv
         lHnbhtWGBFDOKXj6WB626P08wymBnKKCla8O5eNAr+9u+SjFC5bZTWD04u4Si7m5m1G/
         VQEQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768893223; x=1769498023; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m/AcdJHOfbL98COErVKQfn92HC1scPShYwrkryDi5Tc=;
        b=aZmMEh80PyWm+3sY6uWVdBMVeBpJHl1T+R0gBnEegP0HWuT8YEzgFTmtkzbkiLtDi5
         ipWj/Lm4HqT/arhF3j8c9ayaVVENhwpjstF4GxIXzR5vA++AL1x4TauwsQDEVVx4ovKa
         EWbrVbP15X259Fc/XPGMnIZUtguXzPRjH4Pt3O51ohjBDmTWqFEFE/uWX96WDM39ed3L
         zipiU+U6NpKt1XSwxmWMhpxRY0pJzdhJ6BXzBfWe++kstKQQTtIMFkPm1/BBhrPxRlj9
         nPxI+ojBo/JyBPREJczupjm1VFdGEhdct9/z7CaWOjVqO5tm8/SqRRh/1rqEUZidpaqi
         +Qsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768893223; x=1769498023;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=m/AcdJHOfbL98COErVKQfn92HC1scPShYwrkryDi5Tc=;
        b=orlbTiZaqlOeFtUZBmRxEuMUXy25/GpeMuABPVGrPvsi8QdaN5HV+spiCiRu7+6eZf
         ZIb026onhUn/Ai4M63zIIuokBwJhWNa3+1RPypcAZQhvOdMUMYocvAu9fiMrDBALGJoP
         qI7Trdv3MoM+a4tk4lRF6fWSMAElytt+vQX82VIs429pAbnO9p1FMnVWthOsFXZCofXy
         5D7dRS7ZPF+si0MRugZ7RqJRBAIaqLdeJWGe7aNUoVPP6YP+XHhY4z1uaXMAALLQPsu7
         icx31Vq/cl0Nmfihq3sR9H+f1RBq487t1DO8wX+RP/QGfIyuUmkoDkv6aYWxwpfkDF/u
         45xQ==
X-Forwarded-Encrypted: i=1; AJvYcCVyvwZbyImdzhL4jqXw2Kygx5mIVLeBfv4EsYXOoigxmhqlVu8zIvk9EPEK4wn8JcNcx/k5X3Ew0vaq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/cOcPfWhmx9ZRYtYw3UhJ7gG8vDZ0+YJyuYiDMGiqYU6rcI9M
	2xti6NcCGCvCIaFScSMOjuHPnERays6Md1GlQt/HRUFswuKbJrxRK3bo6hmVbQx6fqRTLk8QzrY
	71ZfkhQLPYf2ows8kbk1KidgcYb93Fso=
X-Gm-Gg: AY/fxX4595uSpsH1XfdKmrUCY5alYcfvJ41OP6qLpa0Yb7yLOOPKqaHE4x0HLtE5f9H
	gWJlaB5boP9B0p/kSmWY3nhnj+DIPw9eBo1hAgdDEfClXUvS+SdzBRKoJuMwe514lzGW8IuRoKu
	/VTGDOfR6sHeR3e63H8tcmnvlxV+rgM7atoNfQI/gVww2hEWlkoh6Fz4iK2xsZnliypDh/037ir
	Jfm3TrfKf6ZwizIHw/HmNhxk3EkXe76WO6p2i+/wf59KC2RlJ4OKjEowrMuUtaqmLFD24qY/31l
	xNxESv6jNAGfl4m4SHXe8AvOOj0=
X-Received: by 2002:a05:622a:489:b0:4f1:ba0b:90 with SMTP id
 d75a77b69052e-502d82775d1mr8090231cf.8.1768893223391; Mon, 19 Jan 2026
 23:13:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260119-ufs-rst-v1-1-c8e96493948c@gmail.com> <6479d7b8-7712-4181-9c82-0021da94d1a8@rock-chips.com>
In-Reply-To: <6479d7b8-7712-4181-9c82-0021da94d1a8@rock-chips.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Tue, 20 Jan 2026 11:13:34 +0400
X-Gm-Features: AZwV_Qg9xEnym6d1IbZ761hDP0MCCZD2sOIi6gJCnx0Dbz6NZzcnmt6Sl_0hXVI
Message-ID: <CABjd4Yx_2NPkY7U6U8XL_89uK20j7S3e4px1Cbp+JbF3FavjyQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Explicitly request UFS reset pin on RK3576
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, Manivannan Sadhasivam <mani@kernel.org>, 
	Quentin Schulz <quentin.schulz@cherry.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 20, 2026 at 5:39=E2=80=AFAM Shawn Lin <shawn.lin@rock-chips.com=
> wrote:
>
> =E5=9C=A8 2026/01/19 =E6=98=9F=E6=9C=9F=E4=B8=80 17:22, Alexey Charkov =
=E5=86=99=E9=81=93:
> > Rockchip RK3576 UFS controller uses a dedicated pin to reset the connec=
ted
> > UFS device, which can operate either in a hardware controlled mode or a=
s a
> > GPIO pin.
> >
>
> It's the only one 1.2V IO could be used on RK3576 to reset ufs devices,
> except ufs refclk. So it's a dedicated pin for sure if using ufs, that's
> why we put it into rk3576.dtsi.
>
> > Power-on default is GPIO mode, but the boot ROM reconfigures it to a
> > hardware controlled mode if it uses UFS to load the next boot stage.
> >
>
> ROM code could be specific, but the linux/loader driver is compatible=EF=
=BC=8C
> so for the coming SoCs, with more 1.2V IO could be used, it's more
> flexible to use gpio-based instead of hardware controlled(of course,
> move reset pinctrl settings into board dts).

Thanks Shawn, both of the above is very helpful context - I think I'll
mention it in my next version of the U-boot patch series where this
discussion first surfaced.

> > Given that existing bindings (and rk3576.dtsi) expect a GPIO-controlled
> > device reset, request the required pin config explicitly.
> >
> > This doesn't appear to affect Linux, but it does affect U-boot:
> >
>
> IIUC, it's more or less a fix for loader, more precisely U-boot here?
> I'm not entirely certain about the handling here, is it standard
> convention to add a fixes tag in this context?

Device trees are treated somewhat independently of Linux driver code,
even though they follow the same development cycle. I believe that
broader policy is that both bindings and device tree sources should
equally cater to different codebases that use them, so a potential
issue outside the Linux kernel warrants a fix. Perhaps Rob, Krzysztof
and Conor are best positioned to confirm this or not.

In this particular case, the fact that the GPIO descriptor is defined
in rk3576.dtsi, but the respective pin configuration is not, leaves
ambiguity in the hardware description, which different codebases might
resolve differently (and not necessarily correctly for the hardware).
So there is a benefit in backporting the change which explicitly
resolves the ambiguity.

Best regards,
Alexey

