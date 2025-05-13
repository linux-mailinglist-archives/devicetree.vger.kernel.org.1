Return-Path: <devicetree+bounces-176661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 99235AB4FDB
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 11:32:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F4E9189E7CB
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 09:33:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D5DF226D19;
	Tue, 13 May 2025 09:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oGrLbBdN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2868921D3F4
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 09:32:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747128763; cv=none; b=a1Wh0jPSbMrrmQSMtWXXE+Df+eYqmRtPDY5B2Xtw7P1rbDJ1LS5EGw97eiGdzvIk+HbMnbRlVdRUqng/p++ndnE+OHkxviu9usTj3yJ2ljgDdP9+z6WLgXnuPRH4TDbEOC9DcG8f0g8V67CbTnBxvZ8ZF7BelbmjfjbEvi/9FtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747128763; c=relaxed/simple;
	bh=NY6vJD4bfvHx2WAT2VVCtdPSXGmyW9DHyy+RXKVoSAc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GCCKbleJ/D5GUeLmyeu3vBAMfkGJiWxXTNqppo8aF/sbSoou2cCSpOEHePEdBFoeNSwc+OCMWWVBZ9+5mY85ygheK8O7QvEaFCGT0kSvLSnt1NA05e+lE5GapMi/nJjSAWu87tXEhDCIb5+nBsil3XMofT4a/lzJxAZ+apNKJjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oGrLbBdN; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-54fc61b3ccaso5581615e87.1
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 02:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747128760; x=1747733560; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NY6vJD4bfvHx2WAT2VVCtdPSXGmyW9DHyy+RXKVoSAc=;
        b=oGrLbBdNe47+XhC7TJrOpYDGraecVQIUsdahLRDkYTEymSZekogcC9clY4rGX9O4EA
         SyGRIJJh0KYEzI1izldRcXez2IEjVPslU2GReqr2wr+fOVx4IYJS/S9t5HG/akhS82Do
         OPPrsCBOQ8AWpPhx4vm95xqFL46rh9IpaTOHLDlcr5XLQtVMbMLfPk3Mpws3ppXoRDLn
         kLl3zs65IlT0EhhCNwSejQ+QcaMoACgv2iS9rYXXw641iq/Gd0Lamug30VZq+iv7jSWJ
         04f1dt5xZOqCLOHc7oLR1Gn5xUpcIys2v40BmxnNdOPxK0mRaoPW96Q9nU+lt0KCCMYr
         hzSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747128760; x=1747733560;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NY6vJD4bfvHx2WAT2VVCtdPSXGmyW9DHyy+RXKVoSAc=;
        b=lM/sY5vcQ1UBUMyuWGH4DaZcFlXEhey4yQKw0qUbOv8TwZXIADk85F3ptRuFSdEbm4
         umZUTs/rq5w+z8VPWPhkxtwhX0dlnbiAPs90bJoJMD9wDe1EAQO+XM12U5V/VCKe26IA
         xaSINFrzyBj+sx7iRIRROqrZQzs3h4pFb5Dmxbi7E6sPjGAnkiTkiHY0RdgNh19jh/lK
         APF+EJAxGVw785L9YWegkA1x8JhnVHd4PV2sPxK9/mkqtFeacel1zvKzJspjCFpEQPUg
         wi/FnK7v00CUPuriv8T+FURIkL2Yt6BYPYUi/LL/rKO9nzsSEzFoPd/ojWWpN+EARlpI
         UU3A==
X-Forwarded-Encrypted: i=1; AJvYcCWat8n1Y9vteOmnP1MeCZlf2zIYYT56Y0TEtaZxYyf/P6MmIeUU3GUhbiMRfukp/36vltX4yrpJcnNJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyCdNqoSj1rSYJGLt0YBC7jFILaaN/l63XlxAWWuA/mwjDizyje
	Fg1uG5Eg7B+XKdTK1cHyCkkIQDlp3tD8HJjQqFNnXHs3CnC7dQ/wB9oJgT+dh7z0lt03VB2Cquq
	y2Jp55jGHyLrbcCeykjtMW71vlQiWMoEMxDCPVw==
X-Gm-Gg: ASbGnctGY56McgpNaeyXaFKDDc+JHPhEiEOCGWCeQqbPAC/aiOzLkmiLQ1yA+64g0Un
	cahRyUKD/Iq4yElVZOhK/iax+YvrNgDLTLupW4Ez8ZSt9EygQeQ9E+U9i+UZkvOx1WLtPrpfLSu
	iOWLfcwlIoQwlz8WURZAyPTzqtso7oSSz2AbE9sz/5Ds8=
X-Google-Smtp-Source: AGHT+IFnK4yMmep2oyTd3Pj8ao8ZioYGFRMefY/RBKYSi7PGi/PRviB7Soxar1b8q/3OFeF6n//VAYjpNJYFXydwDaU=
X-Received: by 2002:a05:6512:ea4:b0:54f:c17a:9ec6 with SMTP id
 2adb3069b0e04-54fc67ed719mr5685544e87.55.1747128760174; Tue, 13 May 2025
 02:32:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1745605382.git.Jonathan.Santos@analog.com> <f76579f8aa040125568c044c86761211a2e2f5ae.1745605382.git.Jonathan.Santos@analog.com>
In-Reply-To: <f76579f8aa040125568c044c86761211a2e2f5ae.1745605382.git.Jonathan.Santos@analog.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 13 May 2025 11:32:29 +0200
X-Gm-Features: AX0GCFup66n6QQY-S1ZUx_c9rDRe7cXgMWjG_C9fMa-KAt7hqRpUWdgbNpUpBRs
Message-ID: <CACRpkdZG0h+0vDJZSt_UyukYXVTX2wLjK-JReqgutJJ8zJS_yg@mail.gmail.com>
Subject: Re: [PATCH v6 01/11] dt-bindings: trigger-source: add generic GPIO
 trigger source
To: Jonathan Santos <Jonathan.Santos@analog.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, andy@kernel.org, 
	nuno.sa@analog.com, Michael.Hennerich@analog.com, marcelo.schmitt@analog.com, 
	jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	marcelo.schmitt1@gmail.com, brgl@bgdev.pl, lgirdwood@gmail.com, 
	broonie@kernel.org, jonath4nns@gmail.com, dlechner@baylibre.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 28, 2025 at 2:12=E2=80=AFAM Jonathan Santos
<Jonathan.Santos@analog.com> wrote:

> Inspired by pwm-trigger, create a new binding for using a GPIO
> line as a trigger source.
>
> Link: https://lore.kernel.org/linux-iio/20250207-dlech-mainline-spi-engin=
e-offload-2-v8-3-e48a489be48c@baylibre.com/
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

