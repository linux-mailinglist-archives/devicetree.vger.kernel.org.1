Return-Path: <devicetree+bounces-113081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D604C9A486E
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 22:49:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8317D1F20FD1
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 20:49:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B683118CC18;
	Fri, 18 Oct 2024 20:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Hss/a/DJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9078D18D625
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 20:49:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729284557; cv=none; b=ihko9YZrL71cbAU26IysFNoQC8nb3mYy8NNDwcRJdELjYa42tv8Ip5UL1sal1j3iX6jDHJLD9LmNqS1DTW6OLn7ULJKvSl1xBGgWOGpTKKYMiu94DuCfpdzGhAnL5lgKCbDKvOX9HTfZywhzXQc5dkakmBonJ0VUEy9X0B0sVEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729284557; c=relaxed/simple;
	bh=sq2lBEx/oPK3mFck2yfdIPZDDYu11WVFdH4z5opWiaw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NGQ7wLcmSe/ocZ4waiR7HlE3JPBAb4dIAbgcz2Mu04midAwX0iDIJd4zK8kh8Div40s4hMnjRoGZU7qKrDSS0gdzo3j1vLW29m8L9NjDFEOsvdEzzT+ZC2D/7j2svMQL68zDa+qtpDxJx98VWKK9Zqewj+7Yuw8MsAzBLmpwQW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Hss/a/DJ; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2fb501492ccso28433351fa.2
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 13:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729284552; x=1729889352; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SM/k2Z4ZPVx9AnrPUOX6+i0klklaqbDryXRJgrrJdkw=;
        b=Hss/a/DJ5Nb2+8tInkvIJbaLgJJh1RD7vbWaSnNXp2cq1xAvJQYrpyIZ9/g8Py8pvH
         +WTGD0V63yvstX/5452TXTqqMTgfnzloPI+Xy1NyF8RWqYMdKSTCn3VsJjqCPUzpRj2w
         kP4SXFR3HfE78NhpS51UW3OOSRh0zgjehQ/J8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729284552; x=1729889352;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SM/k2Z4ZPVx9AnrPUOX6+i0klklaqbDryXRJgrrJdkw=;
        b=HOXK/+FAn9kJ/FYMo/HZyr9QXwqE1EL7KQCzVEq23ulluLzVYDjeuGqtgOOeGCPlJz
         08PeB2/OVmhRSpkzmQiXPuCEXD/vI9QsBoDdMVTMU/EUKilnV13C4b17csqyPUAP2t2p
         bNpzt1qTkWm1z4znaq6hpl39GWmHdPgvyTn//hRuFQ6ITPfiyWtk9ayIDismJoQjmFxu
         Zi++KRVXAn1JnHG9I2mM+ctmN/sWW3j/AqMBEBzDs/kwh5ytFcTYKNKwzofvsFfbsSgi
         wQiWIuaqJcIPCWH9PNgEwNXqx4lEZiLtFC2eChKiy6ZOE+k+mPb9h4jDT8UQAj0HvX64
         7HHg==
X-Forwarded-Encrypted: i=1; AJvYcCUob9Yumj5OhNS3CdryPvso0BTAAhu5mzhDMEVreZdpTk6WBt8pgvtZ2mrquqQDkUsQW32iZPAsPDYu@vger.kernel.org
X-Gm-Message-State: AOJu0YxKcU+BCOxzDJw6Dwr0D0rI3ee6irhnMlCX+wvDy2wQ3WB+bxVw
	4StKZ/lvtH6rZa+0akfWGiBgpe+7TBB2e10OsTmXhBwM/yOxnEhKpmxlCThKscFRZlz4RggTtbL
	7G5Qv
X-Google-Smtp-Source: AGHT+IHIz6RdBF/Ko6XlyX+NNFYlVk8Zy3wh+cKdrKSsxvnUmCCbPNQB8o6mKGmBIirbnfaq0Gmqww==
X-Received: by 2002:a05:651c:1990:b0:2f7:4d86:5dcf with SMTP id 38308e7fff4ca-2fb831e8e2fmr17387511fa.35.1729284551949;
        Fri, 18 Oct 2024 13:49:11 -0700 (PDT)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com. [209.85.208.169])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb809b21a3sm2935581fa.30.2024.10.18.13.49.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2024 13:49:10 -0700 (PDT)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2fb3c3d5513so28920451fa.1
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 13:49:10 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV8LIMF3SQVGcZdMOjhM0nRrR07eJTbEdtwMZ+J5mKlhvAxdyiuuLguqqMqtVflgW62JJ0FQYYbsI44@vger.kernel.org
X-Received: by 2002:a05:6512:3985:b0:539:f23b:59c3 with SMTP id
 2adb3069b0e04-53a154b3094mr2178158e87.34.1729284550257; Fri, 18 Oct 2024
 13:49:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241018020815.3098263-2-charles.goodix@gmail.com>
In-Reply-To: <20241018020815.3098263-2-charles.goodix@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 18 Oct 2024 13:48:56 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UFrk4QCxWzV9zUZnjhwiFf22Fji5KH83svdwba2mPVBA@mail.gmail.com>
Message-ID: <CAD=FV=UFrk4QCxWzV9zUZnjhwiFf22Fji5KH83svdwba2mPVBA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: input: Goodix SPI HID Touchscreen
To: Charles Wang <charles.goodix@gmail.com>
Cc: krzk@kernel.org, dmitry.torokhov@gmail.com, hbarnor@chromium.org, 
	conor.dooley@microchip.com, jikos@kernel.org, bentiss@kernel.org, 
	linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Oct 17, 2024 at 7:09=E2=80=AFPM Charles Wang <charles.goodix@gmail.=
com> wrote:
>
> The Goodix GT7986U touch controller report touch data according to the
> HID protocol through the SPI bus. However, it is incompatible with
> Microsoft's HID-over-SPI protocol.
>
> Signed-off-by: Charles Wang <charles.goodix@gmail.com>
> ---
>  .../bindings/input/goodix,gt7375p.yaml        | 68 ++++++++++++++++---
>  1 file changed, 58 insertions(+), 10 deletions(-)

I'm happy to let device tree folks make the call here, but IMO it
would be much cleaner to just consider the I2C-connected GT7986U and
the SPI-connected GT7986U to be different things and just use a
different compatible string for them. So essentially go back to your
v7 patch from before [1] but change the compatible to
"goodix,gt7986u-spi". If, for instance, this device also had a USB
interface then I don't think we'd try to cram it into the same
bindings even though the same physical chip was present...

-Doug

