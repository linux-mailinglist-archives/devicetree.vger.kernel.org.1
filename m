Return-Path: <devicetree+bounces-23057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAE780A199
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 11:57:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5D70A1C20A9F
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 10:57:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EE7E199A2;
	Fri,  8 Dec 2023 10:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Y2tJ4e2t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-xe2e.google.com (mail-vs1-xe2e.google.com [IPv6:2607:f8b0:4864:20::e2e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 223F8AC
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 02:57:01 -0800 (PST)
Received: by mail-vs1-xe2e.google.com with SMTP id ada2fe7eead31-46495e57cdeso456601137.3
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 02:57:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1702033020; x=1702637820; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o+tNF5EsLXtyupWrlqEM7GZhKXuVewT3D28kbGFjV8w=;
        b=Y2tJ4e2tlrGPZRnqUhpiGNU+vzGXv3PMC3ha3ht0Ew2CmRmPr/MaeAj+o8Fh+1DsQd
         hHMo54b/E7lVMANuSnrHs+U0pTMdPEX8IyKDncgf4DLRtMHI2qLhaZZPmiQ6lk3nOT6o
         YHZfSW3O7SZff2ZYP6njdwRBHrTEieA2/1/wm3K6Ukof9R1EfKqrQjk1tTktandJkDzz
         u3YQn6CoeRWcYJJkDxcUCmRm3Ja82nk00L4bjGw7ha3vBXz+wnqFB1/zmmleydi2FcAf
         Xf4T7irEMxmZgoASclO5/0rYH85+b39ruzNgO7NwIYTWKSZK3ebiLkrBmOlFmEHqJM7T
         Np4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702033020; x=1702637820;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o+tNF5EsLXtyupWrlqEM7GZhKXuVewT3D28kbGFjV8w=;
        b=OtXrDazSPr+Vi7z4LKwweoFolgBeTo7XGcsoOWNy76j5kRyLu8qJRCvEvred0lWl09
         5KdMe8l0GLdgT+9094N1oZ2AOOberh9vKd3kE2c98B+LjsRgWYMwJTAJpjY+lownlk0H
         tK14hq/OO2RYhC8D0AdkrAtKE5HMkOiLBaa0hrYpqLeMGPZKav6GqrbYttz6XSA7K6+f
         M0pFfKzz3qEjOqba9OVj/zznAouYYmf2roJUxeeZE8J1fKBJtnGW9ywlYWSzYhAMYT8a
         hadY9SNeIfqLdJRloLSU8tu30HGer9prpWnbc/wKJxCE18Y7LNp2up2SpAHghh08F6tm
         FH4g==
X-Gm-Message-State: AOJu0YzJp5nmL+bFeOShHbbrh3eddibrCyM6S06gQRxhW15FSF+0jrkh
	F5ferbNHUE8rQlG3KiEoYhFjtD/5fXv/xIQlKZlneA==
X-Google-Smtp-Source: AGHT+IEHD69JWoUnKQJPk7pnx/qHAJ4Dktm3e1iN43C4RmpJQic+HDzpJ6NL7KbY/jmHKvSxaz5IEp79PAKEAlPjqrc=
X-Received: by 2002:a67:f146:0:b0:464:8a97:d58 with SMTP id
 t6-20020a67f146000000b004648a970d58mr2917911vsm.5.1702033020245; Fri, 08 Dec
 2023 02:57:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231208090936.27769-1-brgl@bgdev.pl> <20231208103222.GB3008@thinkpad>
In-Reply-To: <20231208103222.GB3008@thinkpad>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 8 Dec 2023 11:56:49 +0100
Message-ID: <CAMRc=MfR4hVAaJmYCyVYg=4bux7KrRE=fkwiZztD5opEY4VDjw@mail.gmail.com>
Subject: Re: [RESEND PATCH v2 0/3] Bluetooth: power-on QCA6390 correctly
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: Marcel Holtmann <marcel@holtmann.org>, Johan Hedberg <johan.hedberg@gmail.com>, 
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, Rocky Liao <quic_rjliao@quicinc.com>, 
	Alex Elder <elder@linaro.org>, Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
	linux-bluetooth@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 8, 2023 at 11:32=E2=80=AFAM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> On Fri, Dec 08, 2023 at 10:09:33AM +0100, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > Resending with all maintainers in CC.
> >
> > Patch 1 is just a typo fix as we're already touching this bindings. The
> > second patch adds more regulator definitions and enforces them for the
> > QCA6390 model. The final patch enables the power sequence for the BT
> > module of QCA6390 in the hci_qca driver.
> >
>
> Is bluetooth fully functional without handling WLAN specific resources li=
ke
> regulators, enable GPIO? When I checked last time, the chip requires both
> Bluetooth and WLAN resources to become fully operational.
>

WLAN-specific regulators for PCIe are enabled anyway but the WLAN
enable GPIO is low and the relevant pin function is not even
configured. I can confirm Bluetooth is functional.

I too thought we'd need a common power-sequence here but Abel pointed
out that neither RB5 nor X13s require it, it's only needed in later
models.

Bart

> - Mani
>
> > v1 -> v2:
> > - squashed the two bluetooth patches into one
> > - changed the naming convention for the RFA regulators to follow the
> >   existing ones
> > - added dt-bindings patches
> >
> > Bartosz Golaszewski (3):
> >   dt-bindings: net: bluetooth: qualcomm: fix a typo
> >   dt-bindings: net: bluetooth: qualcomm: add regulators for QCA6390
> >   Bluetooth: qca: run the power-on/off sequence for QCA6390 too
> >
> >  .../net/bluetooth/qualcomm-bluetooth.yaml     | 26 ++++++++++++++++++-
> >  drivers/bluetooth/hci_qca.c                   | 14 +++++++++-
> >  2 files changed, 38 insertions(+), 2 deletions(-)
> >
> > --
> > 2.40.1
> >
> >
>
> --
> =E0=AE=AE=E0=AE=A3=E0=AE=BF=E0=AE=B5=E0=AE=A3=E0=AF=8D=E0=AE=A3=E0=AE=A9=
=E0=AF=8D =E0=AE=9A=E0=AE=A4=E0=AE=BE=E0=AE=9A=E0=AE=BF=E0=AE=B5=E0=AE=AE=
=E0=AF=8D

