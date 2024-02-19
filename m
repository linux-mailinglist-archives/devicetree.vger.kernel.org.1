Return-Path: <devicetree+bounces-43392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1109B85A3E8
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 13:54:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 47D3AB20D7C
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 12:54:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C4EC32C90;
	Mon, 19 Feb 2024 12:54:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="udQ3cv9J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF4BD31A61
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 12:54:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708347251; cv=none; b=YX1Ia2O580xLDdH2DLCnIDHjkLeMCkHHWD8ugEb7lpyJGCMB8pdCp5gDDCtjX5xR/75AvzIur5zvS26spu4p4WhC8cq2YX2azU9qLctfZZduMWhlJlqN7DVY/W3vevjbP1LCx+hglUX8JI2RqkLS2aiFBTyPsNVPnkYVgRq10Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708347251; c=relaxed/simple;
	bh=sVsdNaxDrQaT+5xLkuNNBvQ4+mZpUehI+ER8LAoDUdY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fTWo7w6r01pF9wJUMHymwOwYByzKqgOTFdVBIMxPZVbNgA+/6ggl0BvL2YvmTCkfi5Fi6vzlxR12Buk8veZKD/SzcgbAzArId+d/PcDoIHA7itV30pZC8Pzhg1Lej1k7AICQRusqkUbwLkSlEbHDnJ99aoBUtFZmWr63xlWj+Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=udQ3cv9J; arc=none smtp.client-ip=209.85.222.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-7d2e1832d4dso1395348241.2
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 04:54:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1708347249; x=1708952049; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sVsdNaxDrQaT+5xLkuNNBvQ4+mZpUehI+ER8LAoDUdY=;
        b=udQ3cv9JtqKeraoYuLqdfWfwCCI8IqdYdtHNz3famgOyfzEASJbnUbi9Ip4iBFsEfQ
         Kl8HsjfC+7SkcF9V5ISgTbGDqgyoHJRrjgR0/PfVtTCIysmhpDAH+oe378A755J6JlXM
         1r94W6myxOuaOuRiIVphSmifjG0c6dN6Ppy0iQ1WbUj5I9pPZilN2tTRygjbg9MKHk3d
         pnM2uYsVw244oGzm9Y/8g4n35ljis+R+dRxgOYJIEg4XNhXjTDndDIcQhpEsUBMx+Bzb
         /xqB9GlsDT2n1v4h5B+LoZr03fuAttuy4C4vf+rBZrpUOCRTZoFDTdRI05jcpekZ90R1
         U54A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708347249; x=1708952049;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sVsdNaxDrQaT+5xLkuNNBvQ4+mZpUehI+ER8LAoDUdY=;
        b=dGsxhW8Yw9SKI2I1cx/2/gz2TFNHaKyCvlLzeubvahWaIBZToBRSkuWmmNavBQMl+0
         t6dzk3XWBql1AkBc4Qnt1EtX44Y6+/MiwEZRkLaLHFbIMVYzwq7Nrg+05Aec4V5vFEci
         2+UWFJRDJ6xkYCyw92kL8ATg0IG+oylqbEQU9EW+Bojyc+SaZBUS0MFRQ+NkuDUPMpEp
         3QsN8CKpH3lG8p3Suc8F28Hg/z3DPEdX9+Dl58C8vQRzkhkwWrFdjSePuXVRpezSkVGU
         B0XV8KsltT7Y73gdk17xcP2uW/umR//eSMPGvK6V8bNc64+g9x9hIOGV5Y6wwxm492Ol
         dkSA==
X-Forwarded-Encrypted: i=1; AJvYcCVBXssEr1fetCJsi5OM6fBgvXWlnIp8x4QS5MlGfC/SloHCAb48ygc5rTzVMFFUNKfupWxHWdOabbsSN3FRixkdw8k1CtZHERk69g==
X-Gm-Message-State: AOJu0YwAbM/dk5bPVvsrWei5VWQGQ8kmIYnfN36IK6WQA55RuYJkDKEx
	oy7Jf1YqBVrSjWMrXP7dT3A96uh0z6u+2MZ6HBJri+57UGiVOt1G4tN43heK8T/u9OhPLnmK00l
	F/NdPHffsrXkjmrK+4kxEdxfLCP9UCP2iZlXAHw==
X-Google-Smtp-Source: AGHT+IHxyvxbs8UNV+RvesaBK90xtZZfu2Xu6HFPB14T7Tm6G1AVsPn3zgxyvNAFZBNi1d1T6kkfRUxMA6fnOOW6aBY=
X-Received: by 2002:a67:c902:0:b0:46d:2b65:aa16 with SMTP id
 w2-20020a67c902000000b0046d2b65aa16mr6787860vsk.34.1708347248824; Mon, 19 Feb
 2024 04:54:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240216203215.40870-1-brgl@bgdev.pl> <20240216203215.40870-4-brgl@bgdev.pl>
 <ZdDVNbjv60G9YUNy@finisterre.sirena.org.uk> <CAMRc=Mf9Sro4kM_Jn8_v=cyO5PxCp6AnBdeS9XspqVDGKdA_Dg@mail.gmail.com>
 <7c1327c0-d0ea-4797-a5fa-5844ba46bf53@linaro.org>
In-Reply-To: <7c1327c0-d0ea-4797-a5fa-5844ba46bf53@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 19 Feb 2024 13:53:57 +0100
Message-ID: <CAMRc=Me=3HhGc_yZuaEo1TsLbF2R=g+072185_PAh5GmAQ-M7w@mail.gmail.com>
Subject: Re: [PATCH v5 03/18] dt-bindings: regulator: describe the PMU module
 of the QCA6390 package
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Mark Brown <broonie@kernel.org>, Marcel Holtmann <marcel@holtmann.org>, 
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Kalle Valo <kvalo@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Saravana Kannan <saravanak@google.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Arnd Bergmann <arnd@arndb.de>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Alex Elder <elder@linaro.org>, 
	Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Abel Vesa <abel.vesa@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Lukas Wunner <lukas@wunner.de>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, linux-bluetooth@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-pci@vger.kernel.org, linux-pm@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 19, 2024 at 8:32=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 17/02/2024 19:32, Bartosz Golaszewski wrote:
> > On Sat, Feb 17, 2024 at 4:48=E2=80=AFPM Mark Brown <broonie@kernel.org>=
 wrote:
> >>
> >> On Fri, Feb 16, 2024 at 09:32:00PM +0100, Bartosz Golaszewski wrote:
> >>> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >>>
> >>> The QCA6390 package contains discreet modules for WLAN and Bluetooth.=
 They
> >>> are powered by the Power Management Unit (PMU) that takes inputs from=
 the
> >>> host and provides LDO outputs. This document describes this module.
> >>
> >> Please submit patches using subject lines reflecting the style for the
> >> subsystem, this makes it easier for people to identify relevant patche=
s.
> >> Look at what existing commits in the area you're changing are doing an=
d
> >> make sure your subject lines visually resemble what they're doing.
> >> There's no need to resubmit to fix this alone.
> >
> > Mark,
> >
> > This is quite vague, could you elaborate? I have no idea what is wrong
> > with this patch.
>
> Use subject prefixes matching the subsystem. You can get them for
> example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
> your patch is touching.
>
> Best regards,
> Krzysztof
>

Yes, I always do. And for Documentation/devicetree/bindings/regulator/
the subjects are split 50:50 between "dt-bindings: regulator: ..." and
"regulator: dt-bindings: ...". For Documentation/devicetree/bindings/
it's overwhelmingly "dt-bindings: <subsystem>: ...". It's the first
time someone wants me to send a DT bindings patch without
"dt-bindings" coming first in the subject.

I mean: I can do it alright but it's not stated anywhere explicitly.

Bartosz

