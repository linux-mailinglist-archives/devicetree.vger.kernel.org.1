Return-Path: <devicetree+bounces-62019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CEFB8AF770
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 21:34:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5D8CEB23138
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 19:34:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46F711411E2;
	Tue, 23 Apr 2024 19:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kali.org header.i=@kali.org header.b="Js9eopjK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B8D140368
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 19:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713900876; cv=none; b=UkqEO9gBFQn0CSRQJVi3m3c0XxtJb82eMdoc5/TWTqAtmSUd0b3VAHOtPEwcUHW0uCP9ZmENwARJH23WxclKx1cwcLGIKyOcg+lxRZvpw4X4m+51nzVskxFMdO0HykIeTBnNMYyxVLALcCIjJd6HjHNgpZFRbvFRCV8xBUQGFF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713900876; c=relaxed/simple;
	bh=ZOZ+y5VbjQ8yVHWIZavAYJ0sXnUefdr3JATmwrdazgs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Rqr0yR7tGU44ea/bbRAiJg6cEN6gBGIrxGZB6uDPMF2ISTQJervd2byOJKSag+grqbrjhTGFHBl8Eymj8i5D3QpHNp9dlczcAY+z2a+lXiVs1SSY2f3pS2lShFRD0iPTvwzUCI3DpBnuPjhtYIBq/kFP/G8NamJ5hE4MDoKZA2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kali.org; spf=pass smtp.mailfrom=kali.org; dkim=pass (2048-bit key) header.d=kali.org header.i=@kali.org header.b=Js9eopjK; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kali.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kali.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a51f9ad7684so355610966b.2
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 12:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kali.org; s=google; t=1713900871; x=1714505671; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KkKvDb9V/ATAgWVKpntTauHpgkbHp+/NvkNQiaeQsIU=;
        b=Js9eopjKJ8a3eeftQJhJpOUjFi480ZgIQTpTLrRCcCxnvbIwSO7NobwInv8YSh/fxC
         dKA0fsTtv9edISil+K0JXleWIEF8952PmucQQlWwJdvMMzN49wEcwcw6Iw/BjaBnIb9Q
         IcDK0xsm5nDWXET7JU//vEgaYec+Y0/hBh9kZzn9vmgGd1IeJG9sfSf04DjFEBHFLeJv
         DUjI53Z2sIwLNpneTivsDKY/uuYEREceYANeWgoZzhc83RJWAOid3bK++MmopR9YEpZc
         mUEzv0EeutpKKM+7t9SC5leA+lzSEZTJNdlZMeF7I9nbUBNmNOf3/x7RQtFtYLjyc6Tk
         01UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713900871; x=1714505671;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KkKvDb9V/ATAgWVKpntTauHpgkbHp+/NvkNQiaeQsIU=;
        b=Av1ajZ8bmDjWAApk3RKjJRazM5gjtGz12rNfn4nXu3S5Ghm2Ko7jE8E+/pOYf2W0hE
         EFld0p32z9EeODvZHCSqwgcfD7v4RIhAVeVyeyK1myeTqGNvT4sufAvWR9OmgZXH3NIm
         ExrfyukTs/bRuUj3FHK5AyBrIqN0+etIIx07YhMT2hZdcr3qsAdd9J68nx5QwmN2C7HB
         29RwxbrDLquzFfJipOoqn7ueV5lD4s95CoPc9wfP9q9eSZOM8ue0ZD5193xp1AYRmHr/
         63Jd1PLtit59mq7wo+KEtt7NuCsv2BdWqCwgP2qJybcivx843D8rIIO+27pdorz5Ow3L
         doNA==
X-Forwarded-Encrypted: i=1; AJvYcCX0fgxdYrpMMdaAaCdTp1VcQMmSsA3gVR9O0u9lUZWTdSAbaZsz8YVyx9z9vhqlsoPBoV8FdTFBPeqLVdX9AJYqgKV2rXDgkDpZnQ==
X-Gm-Message-State: AOJu0YzjRZQ4xSWkXiskH+fh2VastSeXml3j/4PHXACRnCjaU1dRTnHZ
	2e+ApoNHr/5KFKVDm9k2pOTQkJgkTkuQ31At/2V9QWFKIrIXJveeZXUaDtBuU+SsOfj+TrrBXbn
	FDCTyiSdARI6+l3FF/mh3jklz5/2HQWR6F1u9Mw==
X-Google-Smtp-Source: AGHT+IH87NGKddba5prxL/1tAL691vJ5SdfupDVTkNMYOm32zggQSb/SYSaaqYz2R82H1Z3QDHH1KIbl+W6MvLYaYY4=
X-Received: by 2002:a50:d718:0:b0:56e:10d3:85e3 with SMTP id
 t24-20020a50d718000000b0056e10d385e3mr260126edi.13.1713900871444; Tue, 23 Apr
 2024 12:34:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240423134611.31979-1-johan+linaro@kernel.org>
In-Reply-To: <20240423134611.31979-1-johan+linaro@kernel.org>
From: Steev Klimaszewski <steev@kali.org>
Date: Tue, 23 Apr 2024 14:34:20 -0500
Message-ID: <CAKXuJqgJXCHSVcj+acnqauXidAFq0oXaaQTF31+-gSCSHK6cVA@mail.gmail.com>
Subject: Re: [PATCH 0/6] HID/arm64: dts: qcom: sc8280xp-x13s: fix touchscreen
 power on
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Jiri Kosina <jikos@kernel.org>, Benjamin Tissoires <benjamin.tissoires@redhat.com>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Douglas Anderson <dianders@chromium.org>, 
	linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Johan,

On Tue, Apr 23, 2024 at 8:47=E2=80=AFAM Johan Hovold <johan+linaro@kernel.o=
rg> wrote:
>
> The Elan eKTH5015M touch controller on the X13s requires a 300 ms delay
> before sending commands after having deasserted reset during power on.
>
> This series switches the X13s devicetree to use the Elan specific
> binding so that the OS can determine the required power-on sequence and
> make sure that the controller is always detected during boot. [1]
>
> The Elan hid-i2c driver currently asserts reset unconditionally during
> suspend, which does not work on the X13s where the touch controller
> supply is shared with other peripherals that may remain powered. Holding
> the controller in reset can increase power consumption and also leaks
> current through the reset circuitry pull ups.
>
> Note that the latter also affects X13s variants where the touchscreen is
> not populated as the driver also exits probe() with reset asserted.
>
> Fix this by adding a new 'no-reset-on-power-off' devicetree property
> which can be used by the OS to determine when reset needs to be asserted
> on power down and when it safe and desirable to leave it deasserted.
>
> I tried to look for drivers that had already addressed this but it was
> only after I finished implementing this that I noticed Doug's reference
> to commit 18eeef46d359 ("HID: i2c-hid: goodix: Tie the reset line to
> true state of the regulator"), which tried to solve a related problem.
>
> That commit has since been reverted but ultimately resulted in commit
> 7607f12ba735 ("HID: i2c-hid: goodix: Add support for
> "goodix,no-reset-during-suspend" property") being merged to handle the
> related case where the touch controller supply is always on.
>
> The implementation is very similar, but I decided to use the slightly
> more generic 'no-reset-on-power-off' property name after considering a
> number of alternatives (including trying to describe the hardware
> configuration in the name). (And as this is not vendor specific, I left
> out the prefix.)
>
> Note that my X13s does not have a touchscreen, but I have done partial
> verification of the implementation using that machine and the sc8280xp
> CRD reference design. Bjorn has promised to help out with final
> verification on an X13s with a touchscreen.
>
> The devicetree changes are expected to go in through the Qualcomm tree
> once the binding and driver updates have been merged.
>
> Johan
>
>
> [1] The reset signal is currently deasserted using the pin configuration
>     and the controller would be detected if probe is deferred or if user
>     space triggers a reprobe through sysfs.
>
>
> Johan Hovold (6):
>   dt-bindings: HID: i2c-hid: add dedicated Ilitek ILI2901 schema
>   dt-bindings: HID: i2c-hid: elan: add Elan eKTH5015M
>   dt-bindings: HID: i2c-hid: elan: add 'no-reset-on-power-off' property
>   HID: i2c-hid: elan: fix reset suspend current leakage
>   arm64: dts: qcom: sc8280xp-x13s: fix touchscreen power on
>   arm64: dts: qcom: sc8280xp-crd: use external pull up for touch reset
>
>  .../bindings/input/elan,ekth6915.yaml         | 20 ++++--
>  .../bindings/input/ilitek,ili2901.yaml        | 66 +++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts     |  3 +-
>  .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    | 15 +++--
>  drivers/hid/i2c-hid/i2c-hid-of-elan.c         | 37 ++++++++---
>  5 files changed, 118 insertions(+), 23 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/input/ilitek,ili290=
1.yaml
>
> --
> 2.43.2
>
>
I thought that I'd purchased a Thinkpad X13s without touchscreen, but
it turns out that I do have one, and since I do, I was able to test
this patchset, and it works on mine.

Tested-by: Steev Klimaszewski <steev@kali.org>

