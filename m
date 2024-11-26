Return-Path: <devicetree+bounces-124598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C830F9D954E
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 11:17:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 302F7B20C78
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 10:17:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2FF219CC32;
	Tue, 26 Nov 2024 10:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hprGI093"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CEFE170A13
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 10:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732616245; cv=none; b=dXqVwf7RTYUhD/5pxylZQuap/Dt+ATqnByLMoqtMhwbuTpJNZqqx4764CVyauoQ2WcuxUoCQRr1OyJMKjczsnP2kuvpdEfQ2aLKoOBZt6qAELtUglktJInAIy9+1COdf511k7NoukWZ2mcnD36pvOOBd++D9s/eae6nz7pk7OIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732616245; c=relaxed/simple;
	bh=0tb/1VpCPVFgloHLNFl73KUluXt5M3902QRNEkET+pg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bNIjQwQwNZha6CE0tvchqy8oNUXByExvZXX/cV3+V7Nt+izWUhpTBbjHCkoP+42l/s6M7krs7qvm0wiMh42W8Q8qZzPlj/p6RxwaaZeh8F8ZBFGPqZyBZ8suJHMoNHOnW7HWP4Y1QpxhVUk1iPcg1q0Js8ScoAGaQacPbtPb1Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=hprGI093; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2fb584a8f81so56957611fa.3
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 02:17:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732616241; x=1733221041; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0tb/1VpCPVFgloHLNFl73KUluXt5M3902QRNEkET+pg=;
        b=hprGI093hNC9LfvCIMytQB+Yzbl000e+CSk5MWOssmYrGX+H3oQyB40X1tdBTfyPpo
         vgwqYpwFpXcEX3Z/ZaMrDhtU1+ycHX6HqbP2MO6C21qc+gTiuqgPd8W7MVQE5mFIqoBH
         zyNcdFAWb/gs1PAYbdFfPnWx7rI1P7P1GCBn0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732616241; x=1733221041;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0tb/1VpCPVFgloHLNFl73KUluXt5M3902QRNEkET+pg=;
        b=PRhhxG5HlACc4erpa/ziaeif7T1nfghmeiv7WwE9VK9tFeLuaJ9SUft8VncYzV0rLQ
         emOxKM4t5kA8QjChI0wz2I6DCR33aVk/jdSlZFJz0a5U6J3ClAk8g8DUKQr5WXYb1lpr
         12RdN4VyNgnwGEmz+Oozc7LOzrpaa0SR1HmED3u49sE14upufWyVQv3grsGePEZhTLYf
         hITz0PEKdiuEdQu//QatX7uhE/XcrnoiYm/4eqLKLl9rlm9FRLiPV9BWUPf7uxz/RHMU
         tbA2zX+PziNUeWo5A0ySsE+IvGHb/5mZnTlUf4puPiZKuO+snG4ueusFq3reCtI2QRC3
         SAlQ==
X-Forwarded-Encrypted: i=1; AJvYcCVPrMrsfm4qs2CUHVEEtiaFzn32uv52FsxF0JYUJecsUeSKyMYPt+GdhMyAPmF4SIea+s22WAbWQQdV@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7uiPMnaBW2526tqRE0IbR4/i1Oa2aBnAwmQTo6eOSfshK0Ykp
	7oLY/NcXYy2T5xO3EMlrvK6C1grthNwkPoSjz/K/D8hhWDpPlRQ1/OQEwOTGKtsWOlY5kQRSO33
	58Q==
X-Gm-Gg: ASbGncs2p+NlXyEfohqRtyYJ0QypXyjuUhWGObUjpqzBPfJgNGznwO6IR+hltEo/3pH
	H53U2t17KDaxqrIkjKQPVV6HGB25Rw1PhgBoJD80+xqeiAAZZW4YXPO4t4PQMNWYaLVzdRWnUxo
	bZlGbx+VmXggy6ZfPTRt0hACMJ+ISkg0Fjp/L0SwOAuJLMZR26jvl2jdGm+asmcHt4nsmXgmgVe
	Nwp60bVwYdbANpEUpY/r+Osu35ygj6nxwL1/c0AO2PDf0bxlMP4A/adrib+N6usN35XhNf9eMKz
	J5XijFPx3o1dKuDg
X-Google-Smtp-Source: AGHT+IGix0nCURjewog6rv77lUvHjLAwpX9b1+1nAnv+AEK+4jeX1NyRUyGHdCQIqv9E2GOVttLl+Q==
X-Received: by 2002:a2e:be8e:0:b0:2ff:c368:5765 with SMTP id 38308e7fff4ca-2ffc3685815mr43031991fa.8.1732616241414;
        Tue, 26 Nov 2024 02:17:21 -0800 (PST)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com. [209.85.208.52])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d01d3b0a86sm5020570a12.29.2024.11.26.02.17.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Nov 2024 02:17:20 -0800 (PST)
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5cfc18d5259so5733a12.1
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 02:17:20 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUSYZowHhGJMgaDkAwgzIx08HWUwJrrYw3tyfoaCPe4bMpgez2UX9MpoRlrQ9OJaaM3Ue4gkPb0uHcH@vger.kernel.org
X-Received: by 2002:a50:9505:0:b0:5d0:b76:3ae1 with SMTP id
 4fb4d7f45d1cf-5d06f5111c2mr40797a12.5.1732616240006; Tue, 26 Nov 2024
 02:17:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241126-damu-v4-1-e746eec2cb52@chromium.org> <9004a82a-56a3-4d88-b0be-7e9d45932607@kernel.org>
In-Reply-To: <9004a82a-56a3-4d88-b0be-7e9d45932607@kernel.org>
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Tue, 26 Nov 2024 18:16:43 +0800
X-Gmail-Original-Message-ID: <CAHc4DNKNrOUPJ+3DE+f+78-SAeQkuqEHqFXmwwaPTG+ni_1MMw@mail.gmail.com>
Message-ID: <CAHc4DNKNrOUPJ+3DE+f+78-SAeQkuqEHqFXmwwaPTG+ni_1MMw@mail.gmail.com>
Subject: Re: [PATCH RESEND v4] arm64: dts: mt8183: set DMIC one-wire mode on Damu
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Hsin-Te Yuan <yuanhsinte@chromium.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Hsin-Yi Wang <hsinyi@chromium.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 26, 2024 at 6:05=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 26/11/2024 10:57, Hsin-Te Yuan wrote:
> > From: Hsin-Yi Wang <hsinyi@chromium.org>
> >
> > Sets DMIC one-wire mode on Damu.
> >
> > Fixes: cabc71b08eb5 ("arm64: dts: mt8183: Add kukui-jacuzzi-damu board"=
)
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
>
> Where did this happen?
>
https://lore.kernel.org/all/01020191db901d32-5c318445-b8f4-4f4d-86db-316dc0=
db04ec-000000@eu-west-1.amazonses.com/

> > Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
>
> And this?
>

https://lore.kernel.org/all/5a668114-2ae6-4217-9614-b690c0870849@gmail.com/
> > Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
> > ---
> > Changes in v4:
> > - Add Reviewed-by tag back, which is dropped in v3
>
> This resend is very weird. Didn't you get a replies that this was applied=
?
>
>
> Best regards,
> Krzysztof

This patch had been applied but was dropped due to missing a
Signed-off-by from the author
(https://lore.kernel.org/all/20241009071543.5230cf79@canb.auug.org.au/).

Regards,
Hsin-Te

