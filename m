Return-Path: <devicetree+bounces-36728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B34918427B8
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 16:13:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 709562890C2
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 15:13:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E827811E0;
	Tue, 30 Jan 2024 15:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="JYKw4HzD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD6654F94
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 15:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706627577; cv=none; b=CKNyIdljR/8HqP9NarENgeuWdxLZ4nqhZpNimy4b35w1fPFHR6T+z++fO5ZfilQuew3I4neelWmoiqquOm50asSBgQeHLGEp6PqZj5WlN6xBopE3chyWPAd7ftYIcWp+Hk5+EnzagDbrzQDwAExjmyG9Gg7p09kkQL7fWcudLr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706627577; c=relaxed/simple;
	bh=0DFkUFct/ugpR387roshgw0jmipzQatTIY1QClEk+/c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JJwwXMzlmOF+boiM866Gdu96MbRPYtt0/5JtWOxcWC6hj8hJOJnuqMpER0sziqgsx9Ro72T3pKByK6Tx0E2K6KTlSkVnYcMhtEyl6LU0MNinrVHtleLq60VJXNqMGh5ihfxHc7JypNQX9dcUOdWFzA+BUmPW01bST61DqXcS7Iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=JYKw4HzD; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-5ff7a098ab8so39775027b3.3
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 07:12:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1706627575; x=1707232375; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0DFkUFct/ugpR387roshgw0jmipzQatTIY1QClEk+/c=;
        b=JYKw4HzD8UHaCRMuh3hBPjlFEJ3R8jl7CQ7ppDDDRMY8wha2/QSJNQ7LO+ZXeiUEgE
         E1PzSF0oWktF366KA+ZdPzqCJeKCGGnfBSvYYLvhWzGXuYMFYAHXo5cdCJ8nBtLwfHkU
         5h/VGwlnC5Zy7cYX05Bwe0pSMuuiYgwuPMc/ehME9UKQdbF7iUfxAO0kPqCwiwC3tX8n
         cb8c6l4VIJQVAMLqmqpIjwr0uf9bKB2HGcEDkUY9ycoqWMVGXd67CBqw3hjgUHTYgAeL
         aIY5KfBwCOjF190ljJoYpiXVqreyBzXIq9MPgdxrRS7Y3yefVGx88OMpDFlSjP6CY16u
         6jxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706627575; x=1707232375;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0DFkUFct/ugpR387roshgw0jmipzQatTIY1QClEk+/c=;
        b=aTp6CQjwibHFKE0+Xrn84Eu1odw6+cONqYT5Axys0jR9s411taaimMtJMdqaDstBIi
         PIX30/RiQ4a4+GrNwo5gP3CaxbuXXR7lxl4Ohlz9NTmj2+/ZJ9snDP+Mvj44J7hbPRgm
         V5JI8cyuokyPub38hwtkKtjJwuaS2b1mAn6TXjl2UAtkxucThMSNurdrNrATuMYILwrH
         NQtQK91ZG3IqNHNOp9TNhWDnfip7nUvTlZrASm1R6a8zw3COgGefU/VrhQ9rJ12tbmbl
         g83uEge7ijju/ir7Xa3PPVks9LwtfSs3ZKaQqr9eXGrkmdss30G2klPilCzv7f0H53XQ
         6p1g==
X-Gm-Message-State: AOJu0YxY3jCVvyK8mBzOGmFgquaL+dizjFjNB9/cXxlA9memSXQLXv1L
	qzUtxFmIPUzRciLxgy20z1ky/deuCYxM6IUYzfQ6ArGrfb7XzoncoYTOrHLDbL9J5fAez0MNr8P
	I53VBl6+AIhMeEleYj/UbOqNal9/UAG8lgZFn5Q==
X-Google-Smtp-Source: AGHT+IH2LCbeMRSP9X7Ok3vkK3v+WUD6xQZxMdyDiVi8B1Q07WJwPWe+Zz0oJ1EcFj1EyfZwcK1Vi2tiEtpfMGUKcnQ=
X-Received: by 2002:a81:c406:0:b0:5ff:4a64:a8ec with SMTP id
 j6-20020a81c406000000b005ff4a64a8ecmr7620907ywi.38.1706627574732; Tue, 30 Jan
 2024 07:12:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240130130930.18683-1-brgl@bgdev.pl> <9016fa2b-fdd6-4124-a53b-e06d45acd673@linaro.org>
In-Reply-To: <9016fa2b-fdd6-4124-a53b-e06d45acd673@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 30 Jan 2024 16:12:43 +0100
Message-ID: <CAMRc=MderwyjSGL3vhFngSnsX2rA3Gy7UG+9UFxsgryTcvdjWQ@mail.gmail.com>
Subject: Re: [PATCH] Revert "arm64: dts: qcom: qrb5165-rb5: add the Bluetooth node"
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 30, 2024 at 3:27=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 30/01/2024 14:09, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > This reverts commit 71a73864e144aadaa582fe8296ef73fcf3ea7377.
> >
> > The bluetooth module of the QCA6391 should be represented as consuming
> > the power outputs of the PMU and not the regulators that are PMU's
> > inputs. We will be able to model it this way (together with the WLAN
> > module) once the pwrseq subsystem gets upstream with a dedicated driver
> > for the PMU.
> >
> > Thankfully this change has no corresponding DT bindings yet so we can
> > safely revert adding the bluetooth node.
> >
> > Fixes: 71a73864e144 ("arm64: dts: qcom: qrb5165-rb5: add the Bluetooth =
node")
>
> I don't think that dropping more-or-less correct DTS nodes is a fix. A
> fix could be changing the less-correct DTS into fully-correct DTS.
>

This node was added this merge window, the bindings didn't make it.
It's not used anywhere AFAIK and a better version is coming.

I'm not going to insist but I think it's useless right now.

Bart

