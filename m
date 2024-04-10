Return-Path: <devicetree+bounces-57697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB0189E70C
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 02:42:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 986D2283FFA
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 00:42:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 936CA1388;
	Wed, 10 Apr 2024 00:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="RXi3DPw+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86D4A5256
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 00:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712709730; cv=none; b=f//5Qo+cEsQKGUwmW/Uul1MViExyxDbmWLygoQsNcBp/F+kj0S32B9jqKLL8cM3UncYk4Ig8/bVPUG1LfmfSAfetL56a3tbW7a0KyS25qEeEx8BC+sUa/SAzkFGztQia8bOQe9WEZo+kZMLXEBtXkOgRoZTAh229/XQIzQdtk7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712709730; c=relaxed/simple;
	bh=6n12Zu2PXd66Y71IlQLtaUfwzP6yoiw9IUKTbil8GRo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OhxlFrpoSB97ek7DPe6QEQK+h/ZGORTEu7KHhzHjUfZ1RwXasTo4mcswX+RiZOi70T2fjShUtUWpApGRGQgie8N3jeGxXzrAGTjruRhGItk/34A4SiiMd1ltNCbayVz+Cd0Exff8AmzGzHrSEbrTETxjsQ7ueDqRcUYfHVBQCbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=RXi3DPw+; arc=none smtp.client-ip=209.85.160.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-4348110e888so109881cf.1
        for <devicetree@vger.kernel.org>; Tue, 09 Apr 2024 17:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712709726; x=1713314526; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E707FZfqJXCBcA2uPBas1hK+jmqbfEZiGJ11/cbpPtU=;
        b=RXi3DPw+8a609DGiSGokomsp/tcC/Zdkvf174NC0Xl7hdBOmEzriLAA39/Z44B2AVc
         x+k1vGgAzOyzmkE0KKB/VGAFH4OY2DcPaHwKg1TR0tIFjs7p3spuBc80Qn2qUo0/ESJ/
         R7pUVuWO/BlRknRQo6Yr3g/E9P9KFLwtun1g1aONN6++2rPp/+JFTlkPK+dxP12IXhGg
         nmWbqK9POhXZgUaCNI9yzTgtxd/b4Km7aIfgyF8YkxkSyO3kBbCZ7I63vmazjRq5phV6
         OF0uglWOZkm5x9NBsmdyf/pmdFarHAcqP2cUun4I7+x49Kdf68A4GJz3dJwVd6JitA8M
         aYSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712709726; x=1713314526;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E707FZfqJXCBcA2uPBas1hK+jmqbfEZiGJ11/cbpPtU=;
        b=lxzW1SQPya4CsFSnHQeIpoqeag4z2Fc8Y17Sj5K1InAX63/wWlj2WRPlJDCus26M/i
         WEk9HolGIHQHtkL7jfjEdkngkIkDmil+zbOeZhnGvl+Gtbcq+7HSCqgU2vgtvYTM3W3f
         d2zDIko7n5JpxqkB9bwtcGHcNF3lAqUVFCinuGAZg5hamAxXHbz5cfgxAEFEh1lgu+ZA
         V2emXtbMbwSqeNG4teB5z7r/eKR+1wNFWrMehhwvFlYib9gaXFyxmqx3IzhybfFeJIky
         6+XFHQxqbjrXEggdIhVKTBEmTDfvbDQ2BcSoWe1GddyMazsW36MkAjsvA6BwC1gigIZo
         FwNw==
X-Forwarded-Encrypted: i=1; AJvYcCXD/+0rpTHQpi9R6VPVCIE1jCIGkYkFArgXo+RyDNInMi4gBaZmWypVZ18CETfIe7v+0WyP9Gw6XE/W6KtCJmSfX+BgY4/Y2MyAbQ==
X-Gm-Message-State: AOJu0Yx2HlMMGVuqfULz466XTtna//bPpErPinOtXf0lG3PiZUCbte4l
	QNF4GsC3h17E4lITiBQPqz1TPcLy3EKqjMl3nzCGCrVfyxpgc8ASfH2ZdhLkCnDoLMQ6yr67Dyi
	8TbIUbG+AgEVlBp9NEztVvNw6feyrLQ108Nro
X-Google-Smtp-Source: AGHT+IE6pOiRvKwazX638Ih8wKd7cvEo05JqQcXWWafVxMVp5G/KiIGH74/vCv7oIW4NbZNraz/tqKumu97CziTEeuU=
X-Received: by 2002:a05:622a:1cc3:b0:434:6677:7311 with SMTP id
 bc3-20020a05622a1cc300b0043466777311mr50389qtb.17.1712709726223; Tue, 09 Apr
 2024 17:42:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240409053704.428336-1-saravanak@google.com> <CAMuHMdVL4xUMARcze=ZyZA=Hi3=nvfZ34juSKG7cgA5ygxASaw@mail.gmail.com>
In-Reply-To: <CAMuHMdVL4xUMARcze=ZyZA=Hi3=nvfZ34juSKG7cgA5ygxASaw@mail.gmail.com>
From: Saravana Kannan <saravanak@google.com>
Date: Tue, 9 Apr 2024 17:41:30 -0700
Message-ID: <CAGETcx84fpe4KgrbOr15DYmCKLqdDVHn1DdkVRT8FjBW3qBLXw@mail.gmail.com>
Subject: Re: [RFC PATCH v2 0/2] fw_devlink overlay fix
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Herve Codina <herve.codina@bootlin.com>, Rob Herring <robh@kernel.org>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-spi@vger.kernel.org, 
	linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 9, 2024 at 8:10=E2=80=AFAM Geert Uytterhoeven <geert@linux-m68k=
.org> wrote:
>
> Hi Saravana,
>
> On Tue, Apr 9, 2024 at 7:37=E2=80=AFAM Saravana Kannan <saravanak@google.=
com> wrote:
> > Don't bother reviewing this patch. It needs to be tested and possibly
> > refactored first.
> >
> > Geert and Herve,
> >
> > This patch serious should hopefully fix both of your use cases
> > [1][2][3]. Can you please check to make sure the device links created
> > to/from the overlay devices are to/from the right ones?
>
> Thanks for your series!
>
> After applying the first patch (the revert), the issue reported in
> [1] is back, as expected.
> After applying both patches, applying[A]/unapplying[B]/reapplying[C]
> overlay [4] works as without this series, so
> Tested-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> Note that the state of /sys/class/devlink/ after [C] is still not the
> same as after [A], as reported before in [5]:
>   - platform:e6060000.pinctrl--platform:keys link is not recreated in [B]=
,
>   - nothing changes in /sys/class/devlink in [C].
> But that issue is not introduced in this series.

Thanks for the testing and additional info! Looks like I'll need to
make more changes to accommodate more cases. I'll send out v3 once I
figure it out, but it should continue working for you.

-Saravana

>
> > [1] - https://lore.kernel.org/lkml/CAMuHMdXEnSD4rRJ-o90x4OprUacN_rJgyo8=
x6=3D9F9rZ+-KzjOg@mail.gmail.com/
>
> [4] "arm64: dts: renesas: ebisu: cn41: Add overlay for MSIOF0 and 25LC040=
"
>     https://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-drivers=
.git/commit/?h=3Dtopic/renesas-overlays&id=3D222a4936b0d3dabd43bdffb3a57842=
3bff97b02d
> [5] https://lore.kernel.org/lkml/CAMuHMdXNoYH8PJE1xb4PK-vzjXtOzrxNJoZhsHT=
-H4Ucm=3D7_ig@mail.gmail.com/
>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m6=
8k.org
>
> In personal conversations with technical people, I call myself a hacker. =
But
> when I'm talking to journalists I just say "programmer" or something like=
 that.
>                                 -- Linus Torvalds

