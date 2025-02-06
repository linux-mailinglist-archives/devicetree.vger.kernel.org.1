Return-Path: <devicetree+bounces-143524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 07273A2A4CF
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 10:41:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BBA6A3A9757
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 09:39:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0659622619B;
	Thu,  6 Feb 2025 09:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="licLhQ5e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F148226183
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 09:39:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738834760; cv=none; b=K9ysnr7pLiSy8SMq940JpxQxKHP7cbqCnVpPamUDcPFZpYCtRbSWuQIKav4t30VLDaxmaOOVO3/kOorwNC7zMeMZJfyKqZHqf4TPBzhULph8cDxh4eJFojxNFEv3NxuwhTJGUTkNF1EJrYsYdj8txJJKvaxmAQnrDfbDEE8UIhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738834760; c=relaxed/simple;
	bh=QxqCdZ87Rgx4ITls+sBoaB5NXU+rg+6sFyys6kqsgrM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=d0+VKr2wOi3enNvtH1e4ucN0nPzRu3u8aqDBKbvKXWWYhhC2Zefj4ZhElXeWE2QvhuYraT1Ea+yZPVnBuk64gGUnG2JeqEOJn5ZwD+mDST5ht2dLdEjYyTwHheqEMjFwkbH671pK2HwUnLi5Mr7pTU1KxJV9QYGi32Y2V86SN5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=licLhQ5e; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53f22fd6832so798745e87.1
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 01:39:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738834757; x=1739439557; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QxqCdZ87Rgx4ITls+sBoaB5NXU+rg+6sFyys6kqsgrM=;
        b=licLhQ5eluAjHoFsYIbW48leUXFFrxtQZp+uT7wowm2HOsPHZS0jcfoTUJMckdz5Q3
         Jfh9DeT40HqnUK7zLqMjbUzW8IFVc9DT7Sk5w19tf+M5zO+J+Fe20wmBeVrjdtdcT0q9
         GrYRgeOfHC7Hll22udPz93wCAAbfvD8Qy0ck4ZdggdcHHnGnOWchX4fJ+IYU1Zl1QN1z
         a2WMRH25KGl11EIFVZRTPTytWmkSF03w0a5/of72MmZSLewa/4qLD6cvOg7RvDYHxGF+
         r2Ii5U59SwZfrL9joMoskb2bze8zTD2EXP3ZSRIIYUiiLj2Z9w+YpYl2C10IU8A/r81w
         qkiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738834757; x=1739439557;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QxqCdZ87Rgx4ITls+sBoaB5NXU+rg+6sFyys6kqsgrM=;
        b=rZxzkfZnXkJnNVvO9ro21usfqkfAc3wc1DAauNILUIUev9qZLbcBS+pU4hWJK86Moy
         U9csyPgiGswwzwx13i4p/ZYlkvv+07uFp5Tjsb+NtGPoh4X/zLkAPlxYHsxgo1BPVf1o
         y1zf+dk4RrjDnd/BV3abeNF/F43wa+W1ADIn9sGA5xyOH4PcaHw9dp5is3TcHcBfyckS
         c87Ylxkh8vSEwSDMoWtji4bau1b1rcV4emxcgl8CyvvNN0RyDrvVmyXZVzL3Ehh2N9v1
         z3vK6ICHyionkC9fIqPBEnu/Z29OKd705S1Do994PIt87dfODumxQxR5YFrD0R7JuYHj
         lQjQ==
X-Forwarded-Encrypted: i=1; AJvYcCVL6XArsQCJWgsa3Mty9kD0mDIEZotkNxOoWWiYq23NhUT6+PxcBy8os21WJUnt98uwq4/wLdRIqBEK@vger.kernel.org
X-Gm-Message-State: AOJu0YwCnUT9myhc+iLh3iBsWqjID2sOuF6tWazz1DN6F4ek1+oBnoxF
	hQa9jYU+8Oq0pCbDW6/DtxzHYFAh7PhHQ0xSyotVkfhgSMZ8EJKGqFRN9pSMZD7XEHzK+i974BY
	pXDR79qmDoOAStX6qmMV3/hW0uvAxrRoOWUiQHA==
X-Gm-Gg: ASbGncuLGjiIM+OvXmpGfbEPNogmyfG6c5NdFPUwyoMVebBNJ+TMTLE2NgJJZkZBe2L
	ZBm++9eBMSmPlLb2O4S5b0K6KunHih3JFjW15pIGCLaF5V9TPWjSA22ZWyXcaZPOoGfIwFKg=
X-Google-Smtp-Source: AGHT+IHy2erTOylDXjPHhr46b25AbKpq4hR75UITsDiNv3fd/IuGBDeoE5/TCxFr0JD6443xhniX9GkOIwD7QR0zOhc=
X-Received: by 2002:a05:6512:1385:b0:543:c3d9:418b with SMTP id
 2adb3069b0e04-54405a0c5f6mr1856455e87.16.1738834756940; Thu, 06 Feb 2025
 01:39:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1738328714.git.mazziesaccount@gmail.com>
 <3d85fe979fca352bed4d9841e3233c055dfaf154.1738328714.git.mazziesaccount@gmail.com>
 <6867812e-7269-4686-9fc2-55afd9fa91bf@gmail.com>
In-Reply-To: <6867812e-7269-4686-9fc2-55afd9fa91bf@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 6 Feb 2025 10:39:05 +0100
X-Gm-Features: AWEUYZlG4xyNl-aquwRcbpurNNF0W3dgBH-PwD4_WNVA671mh_9EE2XioA6hXcg
Message-ID: <CACRpkdaP6biD8ueeezBDw1P3LP6ARoJw0zfkmxC-QKK0fw79YQ@mail.gmail.com>
Subject: Re: [RFC PATCH 4/5] pinctrl: Support ROHM BD79124 pinmux / GPO
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>, Lee Jones <lee@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Nuno Sa <nuno.sa@analog.com>, 
	David Lechner <dlechner@baylibre.com>, Dumitru Ceclan <mitrutzceclan@gmail.com>, 
	Trevor Gamblin <tgamblin@baylibre.com>, Matteo Martelli <matteomartelli3@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 5, 2025 at 2:40=E2=80=AFPM Matti Vaittinen <mazziesaccount@gmai=
l.com> wrote:
> On 31/01/2025 15:38, Matti Vaittinen wrote:
> > The ROHM BD79124 is a 12-bit, 8-channel, SAR ADC. The AIN pins can be
> > used as ADC inputs, or as general purpose outputs.
> >
> > Support changing pin function (GPO / ADC) and the gpo output control.
> >
> > Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
> > ---
> >
> > NOTE: This patch is not properly tested. More thorough testing is to be
> > done prior v2 if this pinmux approach makes sense.
>
> Just a note to reviewers - I dropped the pinmux from v2. No need to
> review this any further.

Why? Gave up on the idea or want to pursue it later?

Yours,
Linus Walleij

