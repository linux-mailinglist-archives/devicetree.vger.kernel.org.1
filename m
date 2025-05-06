Return-Path: <devicetree+bounces-174234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B7678AAC6C4
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 15:42:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 484101BC09D8
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 13:42:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09E4128003B;
	Tue,  6 May 2025 13:42:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lessconfused.com header.i=@lessconfused.com header.b="HeXbKkpt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C030219315
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 13:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746538948; cv=none; b=q4kMAJjNzXHgVwUQiicuRNcBBg8SlM3KN44x/zHjpe14ZbNAdAJzHN0R6b9O482REX1/sxALkVl5mMO8bVokjvv0R93TpLf3Yb3oj2VRsLIuXXRXmNci89B66Hx7/IG/7ExhQD4LPJVuftpK4Z9gLFtMXkoe3QP9c59b1T01XUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746538948; c=relaxed/simple;
	bh=JseNVTS5cyJQpI/Mfz9vsdQjjHZ+PMPgo17Lr4qAjrY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=srjuS49x1v2oGUeV6FNbLYwWfNrWwQBI+nCmY8PqNiCRUbFUP2DcNs+XhgpEJwMhX7ZqsDOlrNby45+4Vk58gmlJbO1hXKJh27ISJPUVwrZ7wzdIbsS1TFbFPnhQ8dkbTYZTJmOewi3KQ0300SiGKqQ7o4xy5Oem8REuu0g42U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lessconfused.com; spf=pass smtp.mailfrom=lessconfused.com; dkim=pass (1024-bit key) header.d=lessconfused.com header.i=@lessconfused.com header.b=HeXbKkpt; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lessconfused.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lessconfused.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-308702998fbso5183039a91.1
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 06:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lessconfused.com; s=lessconfused; t=1746538946; x=1747143746; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JseNVTS5cyJQpI/Mfz9vsdQjjHZ+PMPgo17Lr4qAjrY=;
        b=HeXbKkpt1qIQTa3tdXetfK5FROdbIsq37GIZRK1WNfszcfTsPnqtO5Fo0aM7q8zvU7
         NUdOMVwgEM687AenZ7TCjIlYdnaxc/0reivxktQVTxSq3TF+pYq8YAklkd36bbe9tvoI
         fxu1aJcaNnprAG36yprMmmg+cAOM0cIhNjAw8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746538946; x=1747143746;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JseNVTS5cyJQpI/Mfz9vsdQjjHZ+PMPgo17Lr4qAjrY=;
        b=R2kBSffQI2XinQD6HVyvVkuQKA4C4bHTmlwB2me13GNj4XLgR3ipRgZF0LM4x3a+xI
         mtp1e73bM1RoUOYNI2mTAKgmXuVTm4b1Tvd3HBfLcMmNK/JhoKyBV4PQcx9KS2p/vY06
         1tZqQQuOwmwW8P0hyoEWPQ2vXIHVWXtubqjENHMLKJCmBICqO4eY5MpQPl113Mw2Bavl
         SF+Txan0sE0ruxOEQjgfpkvwrP3CplKQ36hPRNRHRyDus1sW4cd02CgN0ibpYwqZ0uP3
         VfT3H76iVb/32WbXzd0I5yIaaGuXeV/sv7hKmX8/RhWgrCc2deNjGbIiXuB+0f9RWnfP
         5DeA==
X-Forwarded-Encrypted: i=1; AJvYcCWp7WVAoUv74UzCpL9c2b4X7dPiYOghLFEXx31/08Y7eBeCbl+RQnFe3s3ksBbQ6Eu9VWvzldPk8Ua0@vger.kernel.org
X-Gm-Message-State: AOJu0YwzsN4z15Z2qAoTmYIotRYzhPc/7pMJ8BmiDr7Mr1J6aCapu9H2
	2Z1+m14ij3NHMV9YIsumeJDouHyn7iMQCWGf9smvhPVIegItM0g0w0sipEw5lwqnfD1RguaOUwb
	pzetyBFLL0jXr958kMaCJlZSr/gFSPK7fLwCVag==
X-Gm-Gg: ASbGncuMaStd/xeWhI3lYt34fcytTTY9ibwCRqZhxl2sfrwV4Z6nHL4VyTMtFRm9vrY
	z1kBWtEAm1vvgFH4qmBd3hXsK12q496pwgAjTrn5Q9qQOT1zyKv/QvZtaUU3DLxOw0OuIuHH+Jl
	vDMRyYuOiymH+xbAHvgi7k2F+JeCZC2kmgWVYGq76zHlDV+D+TTYLlfm4=
X-Google-Smtp-Source: AGHT+IFMb+lrclQ4OPHCAh1lzSkIMnskyJOofZ7Kk/Nmt7sTAKcOTEwR67sDgAeExPy9dKzAQGA9Dqsm1s06dVSJZYE=
X-Received: by 2002:a17:90b:5446:b0:301:a0e9:66f with SMTP id
 98e67ed59e1d1-30a6198e12emr19037686a91.14.1746538946445; Tue, 06 May 2025
 06:42:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250505143700.4029484-1-christianshewitt@gmail.com> <CAFBinCBmBotJL=wC2=oV-o7piGckoBvN3S6ofYh20fEP9sn4XA@mail.gmail.com>
In-Reply-To: <CAFBinCBmBotJL=wC2=oV-o7piGckoBvN3S6ofYh20fEP9sn4XA@mail.gmail.com>
From: Da Xue <da@lessconfused.com>
Date: Tue, 6 May 2025 09:42:13 -0400
X-Gm-Features: ATxdqUHU86InfKfq52zvNkEmca8096lqpeIdB0VVbLy3DnspBF4H2KEICm4USso
Message-ID: <CACdvmAi3JbdLstkudF=Fb_O_P1GGADuubKVS6s22hvC93qz3tg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: amlogic: sm1-bananapi: lower SD card speed
 for stability
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Christian Hewitt <christianshewitt@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 6, 2025 at 2:26=E2=80=AFAM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> On Mon, May 5, 2025 at 4:37=E2=80=AFPM Christian Hewitt
> <christianshewitt@gmail.com> wrote:
> >
> > Users report being able to boot (u-boot) from SD card but kernel
> > init then fails to mount partitions on the card containing boot
> > media resulting in first-boot failure. System logs show only the
> > probe of the mmc devices: the SD card is seen, but no partitions
> > are found so init fails to mount them and boot stalls.
> >
> > Reducing the speed of the SD card from 50MHz to 35MHz results in
> > complete probing of the card and successful boot.
> >
> > Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>
> > ---
> > The same workaround of dropping to 35MHz is also done with the
> > ac2xx dtsi; which has a comment about CRC errors being seen at
> > 50MHz. It's probable this is the same although I forget now how
> > that diagnosis was done (or who did it, Martin perhaps?).
> Maybe Jerome helped investigate/debug? I can't recall and at the same
> time: if it fixes the end user experience it's a win.

We had an issue too and ended up disabling MMC_MODE_HS_52MHz | MMC_MODE_HS;

>
> _______________________________________________
> linux-amlogic mailing list
> linux-amlogic@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-amlogic

