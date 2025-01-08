Return-Path: <devicetree+bounces-136735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CB3A06021
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 16:30:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2505F167105
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 15:30:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA1D6178CC8;
	Wed,  8 Jan 2025 15:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="axSj8eh/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465282AF16;
	Wed,  8 Jan 2025 15:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736350248; cv=none; b=kusZACdSGG7lPlJyFW9gkUrJOlqiY2WUAGxKlO+jbbdJhbeEmLFAdoTcQDp21D10FhQf2KLKevp4krf18cbzu06uYBm7K1DuYoXHAY6hwrmRaxqJI9iKx+r74ho6My90fkIKnpIleL+0oShwjm4TEtjBwgBWIi7RViDEzvnyUxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736350248; c=relaxed/simple;
	bh=4QBeGhiJKl0BLWTJvIaclvU0rNNe19EjbUo9ENqWZ38=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EFQsH3E8HvfJQBKa/sih3mLHWf3prHHPiU850Ozu1PHc0tGzBEEfhFO07uROnt2uHujGQANF9TegCz2hOausOYEcMscVLzQaFpQBv1/oxBdXYVbzCCYONKjH+8ut2IKaaic8g5QNK43JTWDivJzffLz8CfkOmCN7KnUCHudnHxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=axSj8eh/; arc=none smtp.client-ip=209.85.160.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-467b086e0easo85402071cf.1;
        Wed, 08 Jan 2025 07:30:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736350246; x=1736955046; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YrhJ08F+g99/pDpHcc0SfE5usAMSb6pyknS9o1Vrtpc=;
        b=axSj8eh/KY2u4x9CPXKzawH1wQ0RQtDlLenqmRv72Plj2dqPNbSCuh0n0PQeYvlORL
         6XylPoLFlEkFCeDVHB530NVBijT93juAkXWn3cIbEJEbstpUnmFTZ2W+Q74aVe2k3Vwl
         l/LDz5yTkfqkX7pG9Qj6GkADVDn31fFeVF4rV0DMi4dKKNcMUmDCb+W2PHpeiMf4paVm
         zxFsqD4vBIEErBdSyDOpPBHBMYG2YTFpYtyJ61RjypQWrBykLZCBJ5ipnXxdZrSm1a7H
         6ZVqHiW4KUh9eR6o2sUBoJOcQWHPldr3OtLJReq3xncbIOpvpGcobyL8XcbCn5ecES4S
         dAFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736350246; x=1736955046;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YrhJ08F+g99/pDpHcc0SfE5usAMSb6pyknS9o1Vrtpc=;
        b=r7rtf75l9mLm/sHPb+jYZRwsM9UuHsCz9AiVpTreBmKB87iAgC6D6j6z9gjo3rleY5
         hjH92Zmy4grZv2+pu9U+UT9v6jkdyL+EBWbtOBFErO+0DHMUhD+gRyXog7L5KcgrxpHW
         FalxCBSs+UJqPJyOupIeyRtuEV3JMiS6EbegxmVI87/x+nyznCsa4rvlgxaODpymfZxy
         vYklLx9CtemzXV+vy/1B+om9DFeIZ4DLFKgrjTTpiQLLmKt969Nk5yw56EXnDxCvO6W6
         fgY6OiCmOI4HRp45E4TF0ae1QmLxdKR7zE8NNFkF0vEQqRIKvmmvM8NMkRo3+A0CJgoq
         0qhQ==
X-Forwarded-Encrypted: i=1; AJvYcCUQPlYtkpY1Z8ztJo4E4qvhAHUC3jzI3Nkrcx2FMyW0xZcJoYFBnoNiyVewemyCrdIXl6BINGChTx5C6pXg@vger.kernel.org, AJvYcCX0zYHF35jyC3ug3tkrOqQiMwWv5TCc5L2yH5ZWoQM++U+2S3pjN2SWPZ1HthjCwFzs1K/v2x3fp63i@vger.kernel.org
X-Gm-Message-State: AOJu0YzN7GYx08q1ky8fVYMqfgQfsFx1b9qGBqckPZa2uR8jAp9kw6jQ
	zrHb5JwsVCv1fbmtxoWIXA0ZlZGoxJfUtANhcGiPD9e6GwSkX6d2O4grOetkCEdGG4fGb/ENZiW
	begOKLvNI95xgyP77IGQmYt5J+qg=
X-Gm-Gg: ASbGncvIRTsAbljRw6scaJq9eQRawOSGelhmbTc9llac3pQRuKzkkZzFlGjSuP9H/xz
	HdwI8x+GrINZpwtOaBvwDSEBEY0edQq5+d29GmLiXcYIar572Sg==
X-Google-Smtp-Source: AGHT+IFKoNRB02f9LEFBsjP1jngmLgnZ+gqmlVlhb4sD5ormVLieH9nwZeRMYU+GK1pDFpGelYsoVARAQOsSY3XSoak=
X-Received: by 2002:a05:622a:144e:b0:467:81ef:1953 with SMTP id
 d75a77b69052e-46c71079ec7mr43270661cf.7.1736350246055; Wed, 08 Jan 2025
 07:30:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250108-rk3588-h96-max-v58-v2-0-522301b905d6@gmail.com>
 <20250108-rk3588-h96-max-v58-v2-2-522301b905d6@gmail.com> <1950286.IobQ9Gjlxr@diego>
In-Reply-To: <1950286.IobQ9Gjlxr@diego>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 8 Jan 2025 19:30:35 +0400
X-Gm-Features: AbW1kvbaSD6420vb9Z-krZSCK7YnPn-rkLl-OwWfP77vCyeVbOh_HhHdHm1BmrY
Message-ID: <CABjd4Yy4Qd1rD43u3B-s=HxVBnaQt7fSgP9NFY2YeY0eKMESvQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: Add SPDIF nodes to RK3588(s)
 device trees
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 8, 2025 at 2:01=E2=80=AFPM Heiko St=C3=BCbner <heiko@sntech.de>=
 wrote:
>
> Hi Alexey,
>
> Am Mittwoch, 8. Januar 2025, 10:09:07 CET schrieb Alexey Charkov:
> > RK3588s has four SPDIF transmitters, and the full RK3588 has six.
> > They are fully compatible to RK3568 ones. Add respective nodes
> > to .dtsi files.
>
> While it may seem that way, we still want soc-specific compatibles,
> to future-proof this.
>
> I.e. going the the
>         compatible =3D "rockchip,rk3588-spdif", "rockchip,rk3568-spdif";
> way, so that now things can just match against the rk3568, but if some
> fault emerges later on the code can be fixed with the DT staying just
> compatible.
>
> The spdif also has an example already for all the spdif variants that are
> compatible to the rk3066 [3], so it'd need another "items" block for thin=
gs
> being compatible with the rk3568.

Hmm, if we are to believe the driver ([4], [5]), they are all the same
as the good old RK3366, which in turn is software compatible to the
good old RK3066. Same seems to apply to RK3576, given that its current
.dtsi just references the "rockchip,rk3568-spdif" compatible.

Does it mean that the binding needs to be restructured so that the
required fallback compatible ("rockchip,rk3066-spdif") applies to all
variants? Or shall the existing ones be left alone, and just RK3588
and RK3576 added inside that "items" block?

Thanks a lot,
Alexey

[4] https://github.com/rockchip-linux/kernel/blob/develop-5.10/sound/soc/ro=
ckchip/rockchip_spdif.c
[5] https://github.com/torvalds/linux/blob/master/sound/soc/rockchip/rockch=
ip_spdif.c

