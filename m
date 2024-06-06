Return-Path: <devicetree+bounces-73046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 758888FDD71
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 05:28:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EBDEF287377
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 03:28:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 352061DFF5;
	Thu,  6 Jun 2024 03:28:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="cB5uE5NB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6254B1DDC9
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 03:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717644521; cv=none; b=lKy+g8q7mPbU9zDESf6WZWr3olJLE82lnb3EqibVf69mSXVM5afdVCwOQd73/T7ULjYMOlYwTPl6U2/IIOadncXgGgKr0SzCNYp13rfzhEw2U4TUWSC6ETGNOAxIoVAs6L/T2AW/xqnH+9v4m1WQeOOBjOr8LOObcfX3TNg/bKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717644521; c=relaxed/simple;
	bh=xlRiBRv2c0oWUuCdzxJ1CpU23sgbWcNpzLLbJvAQ8oY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fi8Wstq1jJszmiRlMktjt3cwMAKKcptlbzyU5dOgND6ZIDyx0DxOPdKrAWkZYonS9k8nKFsvoiNvEqzb9YcW+7pYHdnlWtXZr29OeU1ZVCsK6mFFYKJy7p0PR1avMMZn70L44BbiOXjCoxeqt1jWuiEJ+16xkbKtX1Amly0upy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=cB5uE5NB; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-52b9dda4906so695159e87.2
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 20:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717644517; x=1718249317; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uqp5qceNq5zHDEhmHDdIMgCbwP2xDR/VfW9ZZv9RNJk=;
        b=cB5uE5NB672qfHFBTqhOsfyc390GF48Vyroa7qdJYLs6CKDEcNu36lCkoKP3Soc0UW
         fj51a7hbGFI1YZUcYWagvronoZKZionVnd/l/rcwS4UuH1UqfSno91uT69ZpngODNvT0
         P5+I0+auNYP/KeIwDpmeUmEN8nLsy7Yz6x39g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717644517; x=1718249317;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Uqp5qceNq5zHDEhmHDdIMgCbwP2xDR/VfW9ZZv9RNJk=;
        b=bGx4p20drG+DE4TAI/ick1F8HTKznpYva1EuZ2Y8n5DJrGGVy8GOQbSMRblRpwfh+U
         BKWeA8FG0baQMwffMP4hfumNWqpAV+H/1LfUwWn0mXmdZGEX7M8X2wo+ceVrNX7/MN4A
         J78USMUhMtlJ4YKmBIwTznlbpJDdaLeNq+8vPmDRojFVvVYDsBuov1ggBwKbNYJ5oD1/
         fARJcQN5+0xP4qplBbuF1fVhjh1gQI3+pmE3DwBpWl0X3kVMUdAhNM7JVmKQ7jh9KgT5
         aOj+mZD+RTXVMNDPVlqFpt6PjBfYfuHJnrXna9DGmQw7X/0cZBmlxlJhWl9FdLiLXQWh
         aqcw==
X-Forwarded-Encrypted: i=1; AJvYcCX8pGqof1uwhJDcXMvi3yedwPsWpkUTsgo6KKfoipEj7AMuvzQZetOL5qiK6VGwX2qwUUf7NmBtkfTpy70b+EtI25+wmcWOSqsXzQ==
X-Gm-Message-State: AOJu0YzN8VZCsSSoy/IGLxbIucsQey/PWa54+Ks4TMriLutym0IUyJ+X
	YETNm5VFBc1RiPCKTp4eeGaLSar8qXbd4JRj5tnCXitAtyoNzC+cbQ4QS2P5CZvQ091SDVA59k8
	8MXJcok/XCXMzEzRqsyBrgTMc93p6Y4gpjUTA
X-Google-Smtp-Source: AGHT+IGsCEI0/+y91vNyNNYX+q2ZIumGw6d9Pxpjw+1niuix5bZfPr7FyV232O4Sowxvaw+VS8I/365F2zfGr+Nw9m4=
X-Received: by 2002:ac2:48ad:0:b0:51d:34bb:3c6c with SMTP id
 2adb3069b0e04-52bab4ea6dbmr2490766e87.31.1717644517343; Wed, 05 Jun 2024
 20:28:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240530083513.4135052-1-wenst@chromium.org> <20240530083513.4135052-6-wenst@chromium.org>
 <4f20f130-c9ab-43ea-a758-e29d7be10db0@collabora.com> <CAGXv+5GuGz-KahcbKtuyUA1-59sMWSL0QucOdp8FPoQWrc9YUQ@mail.gmail.com>
 <08256a88-7165-41ca-b484-4acf1c8e316b@collabora.com>
In-Reply-To: <08256a88-7165-41ca-b484-4acf1c8e316b@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 6 Jun 2024 11:28:26 +0800
Message-ID: <CAGXv+5EtKwdFRCX6BqmVVA5yXCDpJ8eb80m7yU8Aj7vz9E=36w@mail.gmail.com>
Subject: Re: [PATCH 5/6] arm64: dts: mediatek: mt8173: Fix MFG_ASYNC power
 domain clock
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Frank Binns <frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 5, 2024 at 7:25=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 05/06/24 10:25, Chen-Yu Tsai ha scritto:
> > On Thu, May 30, 2024 at 6:03=E2=80=AFPM AngeloGioacchino Del Regno
> > <angelogioacchino.delregno@collabora.com> wrote:
> >>
> >> Il 30/05/24 10:35, Chen-Yu Tsai ha scritto:
> >>> The MFG_ASYNC domain, which is likely associated to the whole MFG blo=
ck,
> >>> currently specifies clk26m as its domain clock. This is bogus, since =
the
> >>> clock is an external crystal with no controls. Also, the MFG block ha=
s
> >>> a independent CLK_TOP_AXI_MFG_IN_SEL clock, which according to the bl=
ock
> >>> diagram, gates access to the hardware registers. Having this one as t=
he
> >>> domain clock makes much more sense. This also fixes access to the MFG=
TOP
> >>> registers.
> >>>
> >>> Change the MFG_ASYNC domain clock to CLK_TOP_AXI_MFG_IN_SEL.
> >>>
> >>> Fixes: 8b6562644df9 ("arm64: dts: mediatek: Add mt8173 power domain c=
ontroller")
> >>> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> >>
> >> Just one question... what happens if there's no GPU support at all and=
 this
> >> power domain gets powered off?
> >>
> >> I expect the answer to be "nothing", so I'm preventively giving you my
> >
> > Well it's powered off by default. Just double checked, and without the =
final
> > patch:
> >
> > # cat /sys/kernel/debug/pm_genpd/pm_genpd_summary
> > domain                          status          children
> >              performance
> >      /device                                             runtime status
> > -----------------------------------------------------------------------=
-----------------------
> > mfg                             off-0
> >              0
> > mfg_2d                          off-0
> >              0
> >                                                  mfg
> > mfg_async                       off-0
> >              0
> >                                                  mfg_2d
> >
> > And with the last patch but with the powervr removed:
> >
> > # cat /sys/kernel/debug/pm_genpd/pm_genpd_summary
> > domain                          status          children
> >              performance
> >      /device                                             runtime status
> > -----------------------------------------------------------------------=
-----------------------
> > mfg_apm                         off-0
> >              0
> > mfg                             off-0
> >              0
> >                                                  mfg_apm
> >      /devices/platform/soc/13fff000.clock-controller     suspended
> >              0
> > mfg_2d                          off-0
> >              0
> >                                                  mfg
> > mfg_async                       off-0
> >              0
> >                                                  mfg_2d
> >
> > Things seem to work OK. I can SSH in, and the framebuffer console on th=
e screen
> > works fine.
> >
> >
> > Note that accessing the regmap through debugfs doesn't do much good. re=
gmap
> > doesn't handle runtime PM. And the syscon regmap isn't even tied to a
> > struct device. Dumping the regmap through debugfs while the power domai=
n
> > is off gives all zeroes, likely due to bus isolation.
> >
>
> The last part where you say "gives all zeroes" is actually the best outco=
me that
> I could have ever expected.
>
> So, well, many thanks for this very nice analysis and test.
>
> >> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@col=
labora.com>
>
> I confirm my green light. It's beautiful when this kind of patches come u=
pstream
> especially with your replies actually removing any kind of possible doubt=
.
>
> >
> > Thanks!
>
> Thank *you* for caring about this old platform!

Can you pick up this patch first?

Frank mentioned that the GPU core takes two power domains. I asked
MediaTek for more information but I don't know how long that will take.


ChenYu

> Cheers,
> Angelo
>
> >
> > ChenYu
> >
> >> ....but if I'm wrong and the answer isn't exactly "nothing", then I st=
ill agree
> >> with this commit, but only after removing the Fixes tag.
> >>
> >> Cheers,
> >> Angelo
> >>
> >>> ---
> >>>    arch/arm64/boot/dts/mediatek/mt8173.dtsi | 2 +-
> >>>    1 file changed, 1 insertion(+), 1 deletion(-)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/bo=
ot/dts/mediatek/mt8173.dtsi
> >>> index 3458be7f7f61..136b28f80cc2 100644
> >>> --- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> >>> +++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> >>> @@ -497,7 +497,7 @@ power-domain@MT8173_POWER_DOMAIN_USB {
> >>>                                };
> >>>                                mfg_async: power-domain@MT8173_POWER_D=
OMAIN_MFG_ASYNC {
> >>>                                        reg =3D <MT8173_POWER_DOMAIN_M=
FG_ASYNC>;
> >>> -                                     clocks =3D <&clk26m>;
> >>> +                                     clocks =3D <&topckgen CLK_TOP_A=
XI_MFG_IN_SEL>;
> >>>                                        clock-names =3D "mfg";
> >>>                                        #address-cells =3D <1>;
> >>>                                        #size-cells =3D <0>;
> >>
> >>
>

