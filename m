Return-Path: <devicetree+bounces-185478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 700D6AD7FB6
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 02:47:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1653D16A7A6
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 00:47:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AB3F2AE97;
	Fri, 13 Jun 2025 00:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHQtk+UP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638408F7D
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 00:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749775662; cv=none; b=F/SoG92wzx5AuHHdHp+LUVCr2rQaO6EaFoIOb0Q5ZSB89nRgr31rKJ1Cc0gxFDCwGMlPQlAeshlPDQWQed6U982LY/N1x5EC2icInqL2gKUK8hPMFcqmt9IEZIlIujaaqPf8JzTQ5sKjiO9A90mJu3HqwyRkadHd3cPqA0L87AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749775662; c=relaxed/simple;
	bh=EhgURVoSvz7/ksTMDKl9z+WvWBKeGsfh3nhRUikgSt4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eHwj6uYhnW76rNk+Oz1LImTuoRX3ph80Aes9zm6NxQ1BeX4ouWUr78JuUelIOgiP1c+9rZH6ThsgY3T5TOTAkIi/HE7yCH6kxvyKZIo01WZ5P3vN9iwchJrGhATnU9kveR9bEmz32CFp8OZhDDYeMYJZ4BrjUMO5JcTSMbn1faI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHQtk+UP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF458C4CEF1
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 00:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749775661;
	bh=EhgURVoSvz7/ksTMDKl9z+WvWBKeGsfh3nhRUikgSt4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=IHQtk+UP2cM4VBqWu/ibTxCEIoK2UxZawCxo43xXTy28hwi00Tye2tOI37nN2YPX8
	 84N5CMJanqQ05Izr6wvSQf1hz7TKWlGyad5EHzoOKlkXlXuYWZWf6CU76XRWu2YBTJ
	 STPkjCTwekxh0a8q+vQypzdppi1M2ODExvqyRBVIZkhDC/aI7PDr+dGJJaJQkHcs+F
	 RblJrUvTatYyWuuA4si2X/bRCt9AKcYOUq0uk9LmrWZCs1nnLWQLudihYRhKamw72m
	 +nDf64RbrP40OY0CJtX5k33E4hBRoNz4hIZu2x3RISIJ9o2GtCUflVvIGbboYsMeC/
	 zoDxufAkBXLVw==
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-6077d0b9bbeso2799599a12.3
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 17:47:41 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVWtWDltqDiMyXuqc3Kfry0j1vP3Wen5rxNJj+rJC24o9SFldRdfPyTb0FtVn9quOK3YO/zrDtgfcB9@vger.kernel.org
X-Gm-Message-State: AOJu0Ywjdkz3BUG3AWWaWtADs3Djg0gm2J7l9Dn3AeMHHelAFLn6HB74
	MVk94x+ZrtcT2D/Sc1R1bDvyX2k/9LqpVZJmdiDplxRoZsFHvBEL+wt26ldGHCSDQz/qJaVxRNY
	1yVWYQ5ZiUyaJDJhIX188PMB6n4x3NA==
X-Google-Smtp-Source: AGHT+IGzVwz9Ku4ia5EtBsCdic6aYHUpzooFgEL+IixPaXo0r/qoCRgV+46Ey2n3ESW8KiDkNkm1xu6O/2uqcSx+Kno=
X-Received: by 2002:a17:907:608e:b0:ad5:eff:db32 with SMTP id
 a640c23a62f3a-adec5d1b6f6mr97769866b.48.1749775660447; Thu, 12 Jun 2025
 17:47:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CANiDSCvB5yytOgvk1QC812x4zOBn5Z4_C5wqUnV+2hSQXKM54g@mail.gmail.com>
 <a2efd2e3-bab8-43ba-a236-aa5052bc35c7@kernel.org> <CANiDSCs0xp_PsKmyNpY3zHh9xuvJEgYXysB2wyLEZOL_+4Lokw@mail.gmail.com>
In-Reply-To: <CANiDSCs0xp_PsKmyNpY3zHh9xuvJEgYXysB2wyLEZOL_+4Lokw@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 12 Jun 2025 19:47:29 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK7B7UGLyF+ANG0t-jQ8nBbiVKzn64kt0phDBu0OhAcmA@mail.gmail.com>
X-Gm-Features: AX0GCFuYoAu628zGKlR6a-BX17qHGQjrU7Jb21NdslCrkdjnSInUkYbqbkpLlRw
Message-ID: <CAL_JsqK7B7UGLyF+ANG0t-jQ8nBbiVKzn64kt0phDBu0OhAcmA@mail.gmail.com>
Subject: Re: 6.16rc1 dts-bindings check fails
To: Ricardo Ribalda <ribalda@chromium.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 11, 2025 at 2:06=E2=80=AFAM Ricardo Ribalda <ribalda@chromium.o=
rg> wrote:
>
> Hi Krzysztof
>
> On Wed, 11 Jun 2025 at 08:41, Krzysztof Kozlowski <krzk@kernel.org> wrote=
:
> >
> > On 10/06/2025 18:11, Ricardo Ribalda wrote:
> > > Hi
> > >
> > > Media-CI is reporting some dts binding errors:
> >
> > Every builder of linux-next sees this, it's not specific to media.
> >
> > >
> > > /builds/linux-media/users/ribalda/Documentation/devicetree/bindings/c=
rypto/marvell,orion-crypto.yaml:
> > > properties:reg-names:items:1: 'deprecated' is not one of ['const',
> > > 'description', 'enum', 'not', 'pattern']
> > > from schema $id: http://devicetree.org/meta-schemas/string-array.yaml=
#
> > > /builds/linux-media/users/ribalda/Documentation/devicetree/bindings/p=
ci/marvell,armada8k-pcie.example.dtb:
> > > pcie@f2600000: interrupts: [[0], [32], [4]] is too long
> > > from schema $id: http://devicetree.org/schemas/pci/marvell,armada8k-p=
cie.yaml#
> > >
> > > When I test your  for-next tree I have the same issue:
> > > https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/log/Do=
cumentation/devicetree/bindings/crypto?h=3Dfor-next
> > >
> > > They do not affect media drivers so right now I am just ignoring them=
,
> > > but I wanted to know if they are under your radar.
> > >
> > You need to update your dtschema.
>
> I was using the dtschema from pip.

I just released v2025.06.1, so update again.

>
> If I use the version from git, There are other issues as well:
>
> $ python3 -m venv venv
> $ . venv/bin/activate
> $  pip3 install
> git+https://github.com/devicetree-org/dt-schema.git@master yamllint
> $ make dt_binding_check
>
> /usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindin=
gs/net/snps,dwmac.yaml:
> mac-mode: missing type definition

This is now fixed with dtschema update.

> /usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindin=
gs/regulator/infineon,ir38060.yaml:
> maintainers:0: 'Not Me.' does not match '@'
>         from schema $id: http://devicetree.org/meta-schemas/base.yaml#

So far Not Me hasn't cared to add their email address. I guess we can
delete the binding and driver...

> /usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindin=
gs/soc/fsl/fsl,ls1028a-reset.yaml:
>         Error in referenced schema matching $id:
> http://devicetree.org/schemas/power/reset/syscon-reboot.yaml
>         Tried these paths (check schema $id if path is wrong):
>         /usr/local/google/home/ribalda/work/linux/Documentation/devicetre=
e/bindingspower/reset/syscon-reboot.yaml
>         /usr/local/google/home/ribalda/work/linux/venv/lib/python3.12/sit=
e-packages/dtschema/schemas/power/reset/syscon-reboot.yaml

Fixed in next now, in Linus's tree soon.

> /usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindin=
gs/pinctrl/xlnx,versal-pinctrl.yaml:
> allOf: Missing additionalProperties/unevaluatedProperties constraint

This is now fixed with dtschema update.


> /usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindin=
gs/soc/sophgo/sophgo,cv1800b-rtc.yaml:
>         Error in referenced schema matching $id:
> http://devicetree.org/schemas/rtc/rtc.yaml
>         Tried these paths (check schema $id if path is wrong):
>         /usr/local/google/home/ribalda/work/linux/Documentation/devicetre=
e/bindings/soc/rtc/rtc.yaml
>         /usr/local/google/home/ribalda/work/linux/venv/lib/python3.12/sit=
e-packages/dtschema/schemas/rtc/rtc.yaml

Patch posted, but still some discussion on this one.

Rob

