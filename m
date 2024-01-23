Return-Path: <devicetree+bounces-34122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D566A838B55
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 11:04:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F8CC28F8B9
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 10:04:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D92975A0F4;
	Tue, 23 Jan 2024 10:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="dW4tmYxu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82E2157870
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 10:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706004280; cv=none; b=AJDTSq3dEGdddCikYeHD50UrM1yDj1Of3dEvzJYsNDq/v37ZmW1nerGW2D90AppsVKdLPEYeTyEmH7XHAAPfMC39q9AdxfxpkzW4k9ckAwh91isR3CuFpGxSK1q4vZ0mGoc2kDlCzqOMjzInT3ZRhnnr5i05ZLUfwA1EXyoESCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706004280; c=relaxed/simple;
	bh=5vAc5dMR/Gkgelph0J80OaJPM3bIt5m4U43XM9yf3lk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TfXJ3YifUDCPm/q6fgOyK4LBFaFU6sPJtRv54oTdIBHRQZ5SnZt6+NcprD/q0cqZNjPgADVuoftHjyInsRJsCyAPfGyoauVJcZG/WhZnYr5znmtcbTTgUahbxg/rTsFRfHXTdodlpfMR1lPt8f+eNtGgItjtyR5tkg3NbBDLqAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=dW4tmYxu; arc=none smtp.client-ip=209.85.217.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-4681f304691so961766137.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 02:04:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1706004278; x=1706609078; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5vAc5dMR/Gkgelph0J80OaJPM3bIt5m4U43XM9yf3lk=;
        b=dW4tmYxuZb2rn3K9uG5fmNHwHHvUMv+X86L2Jt0dPPcaDJ4QDCJUi/gsj5/QvLOJoI
         mtzFsZzLOT697oI9xtrrMdxpJpxyMpAgO1L9slgWz7qwk+Cn3ZFK4hPGaVG5tfz5LRGH
         s8S6TrnTyROExZX4b2tplmSMe6ePhHkvi+pHvVsjsf3G5h3lIEdUhl2DMy+coh1b7f1a
         HIMoTWuplUhyHhInIxooS0TtOz0dt6FkmjJZAyOKA/8nxBWr4B/NvUwmisJlMuaoe6qu
         11le9/fA/93btOu6tUv8yMMkCLa78Fel+zWeOov3HteFSnpDwfQms+nl3RaZdiy+7/A1
         jVEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706004278; x=1706609078;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5vAc5dMR/Gkgelph0J80OaJPM3bIt5m4U43XM9yf3lk=;
        b=pv31jTDZY9O7zFE1oQxjlQ63Vxbj1+kr2nQRLwYWwElBOmog7Wx6lBjF+cmDMnLoJy
         ZXKqD8+5Pl3erNOY0aCZ+Op3z2YCSq0R4c3wu1r/SDMCnUNlHnUufY1g+JLyzMDtdRxS
         mwyc5+bJ94K/YTjrRDDhO1dQmMdNecRSrHhezmyIIVPMGDK79IjBpamxDtD+ofHtHhf2
         zuEk6TrC/pe9ybYK2MWIZmmya6WAyHLaQrTtZYbl5q+gJDYzROp7EMOZvxqObLimkmI3
         prRpVC3sDxnbv3PCeHf1mAXLxX465vXyjp9GuUttCHRSIDmyQ29lh6E7RzoE4v6Iaba4
         2YJQ==
X-Gm-Message-State: AOJu0Yz5mDRBRrOJbu2lENRgz6BEmgGzro4zr+++9QWzQqbRyHhtYPn6
	+HAkMY2kdBWCnnQddO/WXbGJvPvKxvKonmddaYI3GxHbp8FtI45MPedvvmixfqxB+Oa+4ZEs3Ic
	OgyLxs7Jj6ym2FxuiZ9FbLd8mjnrsEhbRGO8D1A==
X-Google-Smtp-Source: AGHT+IHq+QhUDao5htbMwHdTS/OmUBt1hcN5E3DzlhYEGpGpjAeJ0k25WMpPPgDCK2so5vWCJusvRWnjPsYbXp0LbXU=
X-Received: by 2002:a67:eb8d:0:b0:469:b6a3:453f with SMTP id
 e13-20020a67eb8d000000b00469b6a3453fmr1561108vso.13.1706004278362; Tue, 23
 Jan 2024 02:04:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240122182158.69183-1-brgl@bgdev.pl> <98925264-badb-4954-b542-9287a0c7d184@linaro.org>
In-Reply-To: <98925264-badb-4954-b542-9287a0c7d184@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 23 Jan 2024 11:04:27 +0100
Message-ID: <CAMRc=Mc+GNoi57eTQg71DXkQKjdaoAmCpB=h2ndEpGnmdhVV-Q@mail.gmail.com>
Subject: Re: [RFC] arm64: dts: qcom: qrb5165-rb5: model the PMU of the QCA6391
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, 
	Alex Elder <elder@linaro.org>, Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 23, 2024 at 9:30=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 22/01/2024 19:21, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > I'm limiting the audience of this compared to the PCI power sequencing
> > series as I wanted to run the DT part by the maintainers before I commi=
t
> > to a doomed effort.
> >
> > Here is the DT representation of the QCA6390's PMU with its inputs and
> > outputs. If I were to implement the pwrseq framework that would be able
> > to assign the relevant pwrseq data to the consumer based on the actual
> > regulators and not abstract bt-pwrseq or wlan-pwrseq properties - would
> > that fly with you?
> >
> > We'd need to deprecate the existing BT bindings but unfortunately they
> > are already described as consuming the host PMIC regulators in bindings=
.
> >
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>
> Please provide lore link to the binding.
>
> Best regards,
> Krzysztof
>

This is the one:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Doc=
umentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml

Bart

