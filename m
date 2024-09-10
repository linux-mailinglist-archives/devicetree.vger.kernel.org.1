Return-Path: <devicetree+bounces-101576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1F49728CA
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 07:13:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 83EB52855F7
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 05:13:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9201158DB2;
	Tue, 10 Sep 2024 05:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="DE9ypckK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4430938DD3
	for <devicetree@vger.kernel.org>; Tue, 10 Sep 2024 05:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725945177; cv=none; b=la6putG3V/fcvn7ZJDk0lX8KfTSWNIzXtO5tMuMeMOS9YTH7hxRRPzhbg+WKjjSJNCAjlUXEGEZCEpUxwtf6tatT3wP38OOcKVHF7eQfiOIBNd4HHl5TRjsoNjOGErtG4LHcCLFj8GOfLSgOPYcuiVmgKnBNQOT4UVZxVdHc8VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725945177; c=relaxed/simple;
	bh=SRCKJ1TrkK26NnYDeLp7tM028WOKA5Wx4S7iWKHzP3g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HOP/7pVqBWqk64XYFbwPCgj307DRMwyOsw7wNbWF92ZEICjVbhm/sFpe45qA6xw/HpWY55jL+TwyvCRvMGLd1xq3holQl9OzZwKHGZQPjoipOzwzWgOW0sTx1a/GPaWoMvcHrr1BJ5HqlkMcBaVi8XgJwNFu8Pt7wZGlwqJ1IkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=DE9ypckK; arc=none smtp.client-ip=209.85.221.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-502adfff646so1123638e0c.2
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 22:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725945174; x=1726549974; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FftjutXCeiXVd5sNpriJUhOjNiXDvzsDr14ccTGO5ro=;
        b=DE9ypckK9zUcgSrj41oV8vFqS1IYzAcyUX1Md1DIJ1oUoI449dyRSYoK8IS5vm8wDx
         8VphXL0QZ0G4JgE/q0H28KrSXFhct3Qs6dCRYdtkyDAi5J2akfb9UdLqn7uJoSA6VTiU
         IntcXfbfV2SquMF8GLxH0Q8S/nrqTQil5lv6s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725945174; x=1726549974;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FftjutXCeiXVd5sNpriJUhOjNiXDvzsDr14ccTGO5ro=;
        b=omeJINSPeEEBc50e8Jd1cZWOKA/oL6N/eeMpkaEH65W86kpMiHCZFR1EzW0S/ZDpNk
         iPPS9egRoQvOwackgIwC9BGfb69gIOTUocG0LdQy83fX+fbTqCMBpPLX8zMijOlg60HL
         c/zEi6apBnR6AH+GWtseamgHrM/TNB5Eoh1qfv3VjCoqH19Q74YH1F9PDtqtJlJcq7sO
         4h0GZ0WH/dIPp+gjokhWBLvhkga4yMp4jffmp6Baoi4Uea+rOYWSgYiK2UFCLkDvHSLc
         uJf8UPZqNvIjJ00ryMhEHzIuU3KAmzsMfPZq8FSQziNapQmUl9WiHjhQ+dffKeQKxn3M
         nG7g==
X-Forwarded-Encrypted: i=1; AJvYcCVdk4PPDjAS8/Mm1HL2eOL60ES+RootzMcrsOB4Stu21JskVQbhsYwOqrwPGUT+7g2aACszwwgcR/s/@vger.kernel.org
X-Gm-Message-State: AOJu0YwjM9TO4ZFFiccoPg7Jtmde1CGpN7UaG5w9UP9ceJQ/mskKS0W6
	jtm3Loi3dVvJ8w5eW4CGOaKUdL4W4NtZpQdoQEUVu3M3C6rqz6OUFt+NzgtLKqXH2RT3gRH62ta
	PCw==
X-Google-Smtp-Source: AGHT+IE3826Kp33MNvDRVHXKqHJatdmtAheduYZGRDDafdKDJKqo8dgsYRan/aQbiZ8dbroV9BlYOQ==
X-Received: by 2002:a05:6122:36a6:b0:4eb:5cb9:f219 with SMTP id 71dfb90a1353d-501e77a1e11mr14764776e0c.0.1725945174047;
        Mon, 09 Sep 2024 22:12:54 -0700 (PDT)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com. [209.85.222.43])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-502f9a2dd2dsm128465e0c.5.2024.09.09.22.12.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Sep 2024 22:12:52 -0700 (PDT)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-846cc83c3c4so1434586241.1
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 22:12:52 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXalpG4Zeo6IBWJzgkPB72ewHR+0zkE76zsEf2wKeGL4Mc4vXSJX5rSRD3AxC0Y72yPSNHh30TdDWxz@vger.kernel.org
X-Received: by 2002:a05:6102:304d:b0:494:4fdb:f42a with SMTP id
 ada2fe7eead31-49bde2e784amr16042770137.26.1725945172144; Mon, 09 Sep 2024
 22:12:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240909111535.528624-1-fshao@chromium.org> <20240909111535.528624-7-fshao@chromium.org>
 <11bc2522-bc10-4dcf-8142-708b57d181cf@kernel.org>
In-Reply-To: <11bc2522-bc10-4dcf-8142-708b57d181cf@kernel.org>
From: Fei Shao <fshao@chromium.org>
Date: Tue, 10 Sep 2024 13:12:15 +0800
X-Gmail-Original-Message-ID: <CAC=S1nhiJ=7yAucJsaYKUUBrwrxOVBMB2CF=bFwyLa2o-5RmWw@mail.gmail.com>
Message-ID: <CAC=S1nhiJ=7yAucJsaYKUUBrwrxOVBMB2CF=bFwyLa2o-5RmWw@mail.gmail.com>
Subject: Re: [PATCH 06/13] arm64: dts: mediatek: mt8188: Update VPPSYS node
 name and compatible
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 9, 2024 at 7:41=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 09/09/2024 13:14, Fei Shao wrote:
> > Use and add "syscon" in VPPSYS node names and compatible to fix errors
> > from `make CHECK_DTBS=3Dy mediatek/mt8188-evb.dtb`.
> >
> > Signed-off-by: Fei Shao <fshao@chromium.org>
> > ---
> >
> >  arch/arm64/boot/dts/mediatek/mt8188.dtsi | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot=
/dts/mediatek/mt8188.dtsi
> > index 2900d78b7ceb..14e51a11f688 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
> > @@ -1799,8 +1799,8 @@ mfgcfg: clock-controller@13fbf000 {
> >                       #clock-cells =3D <1>;
> >               };
> >
> > -             vppsys0: clock-controller@14000000 {
> > -                     compatible =3D "mediatek,mt8188-vppsys0";
> > +             vppsys0: syscon@14000000 {
> > +                     compatible =3D "mediatek,mt8188-vppsys0", "syscon=
";
>
> If this was working before, it looks like this is not a syscon and
> bindings need to be fixed.

I guess it's because the binding was later updated in commit
26bcd8a53098 ("dt-bindings: arm: mediatek: mmsys: Add VPPSYS
compatible for MT8188"), and the corresponding DT update was unnoticed
at the time.
If that makes sense then this should be a valid fix.

Regards,
Fei

>
> Best regards,
> Krzysztof
>

