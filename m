Return-Path: <devicetree+bounces-58894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F202E8A3905
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 01:47:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 204121C20FB8
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 23:47:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38309152DE3;
	Fri, 12 Apr 2024 23:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="3Bd7Lw4R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5C815218D
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 23:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712965668; cv=none; b=qaC89C6+RkiydSZOhyh+gJ8zxlmSta2BfguGOjaprJ1aXcpgplXKqjOAtARAX9YG0y6ooKDJdhsNF0PValljtwLMIzLYBlZ0jX/i9v0XTjc0rQ77fkE68K4KGdNhsa+3L+5jvIAsCBhh6Fh0hb6xM0Z4WBeOI84QrSxr6Na/L84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712965668; c=relaxed/simple;
	bh=jw/yz0yE0kH6mgpkP9FvufT0s7h6fEHt5cUIgmJZCVk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KwDTl4LKRO8LsPn03xtz9PCvDCOGxBwh3W9EoraMjC6FnBUDnHJTuNU3K3FIdxyUF6gEZtigCxE0ugZvwFOaba7PjGOdfmFHZ+VL+mBzim35Ba5HlaQEPwkjvW+Ss9bzDwixOUWP328AxX09jfSqutYI1KjfN7M7XN2mdekgmoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=3Bd7Lw4R; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2d476d7972aso17936231fa.1
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 16:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712965664; x=1713570464; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eM8/+MVXo4j589BOsrVszGbTlP/kpDmS7ndlq2yapl0=;
        b=3Bd7Lw4RCRbCJyzVOwolosW85tdJPCGwMiUtVw8pVLAjIHl2DGSa5JOQKaKVPAyAP+
         kubIz6pM3vTQ3+Mc/GVMerGtVRsuWJEskZ0Gm9aHyv+rmm0CDOGnjRfdzEb6rBzqBL2c
         BrEBWDlmGXnCY7Z8Aw9D0ex9/NEKjg03jzkB4+/qTcQ8F5Y50W0e1mEYRwnNmu/TUqG5
         cdNZGNZxAQr2Uwupa/KSCmnYUXtejn90u2cxeJNJr1jdMckVhqXdd1TjMLUqDrquMqmF
         LSi2l7C9EHyg/20Ql1kdoENrXvMiihj1in9+B05YdWwc3OlV8tlP5S6JYcaShJEpglhA
         aFwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712965664; x=1713570464;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eM8/+MVXo4j589BOsrVszGbTlP/kpDmS7ndlq2yapl0=;
        b=e52gFTm4n8pla3q5XFXYAcg/xIsg72U1TWxIQtJLMSho+bf3UG4m+q2/dgrRRF7UHI
         xNahMoPE2jUPN/ZJ7fOn+PrlfHLX98N+WZl5oS1bpT0BJ10Q0yJbB/d5sOzRytgXAUgO
         ZgJNXS6luX3+7oy1ugu7sYokf8GTnqaBKZIwRIdDptXT1+TdBjzEk6PcsJaWAeyYHfGC
         L5gKz4uOblOkAU1Gt4z/bL2s1RTSpIIqPt5lQnoNYnzl5noPuGJqZln3GJ+HwdEVsMV8
         JylCqe7BZK5Bxqs/VA54vz+hagEVX1s4PLI+AJIPuuz0s4+j4uZzWriWw6u+mCZvAaWC
         U/7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUX8YJkB4h9jI0wKqLaWT3MbkpQ5vLNya7sjTtNjJKYWZTGyc3Rlr1SAmQ0fhsHiDSDhr7jm3DM9qKRTk+TULGKPIEs/JZtLH5jzg==
X-Gm-Message-State: AOJu0YxuJPc6wJCZcbQedF5qU9w5kI1JqcBFEetdvG9V/FZ1nNqZnEam
	Aq+VsnbH/av5nnXOkuxwF32k5xo6J/SDo8KPRkdaGT4ac4N9fguzMcLrPdf3uhA8FC77Y/0rWHA
	yPny4vUOCuiBDtJy5VRp4oolZq94UREB+ikAAkQ==
X-Google-Smtp-Source: AGHT+IExiVIJcWMSlJZEaatbknw9+1QMz0NNtkro7JngoiP2cYevmLCqjU/V1Zl+XIXmghwPbX45naeJ8amcBFZEP8M=
X-Received: by 2002:a2e:97cf:0:b0:2d8:5e21:8eaf with SMTP id
 m15-20020a2e97cf000000b002d85e218eafmr3182431ljj.41.1712965664380; Fri, 12
 Apr 2024 16:47:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240412-iio-backend-axi-dac-v3-0-3e9d4c5201fb@analog.com> <20240412-iio-backend-axi-dac-v3-7-3e9d4c5201fb@analog.com>
In-Reply-To: <20240412-iio-backend-axi-dac-v3-7-3e9d4c5201fb@analog.com>
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 12 Apr 2024 18:47:33 -0500
Message-ID: <CAMknhBHZRfvNtkbpWbi7tTXYa_rgRk+Q4z5MOd0O61FeEqBQnQ@mail.gmail.com>
Subject: Re: [PATCH v3 07/10] dt-bindings: iio: dac: add docs for AD9739A
To: nuno.sa@analog.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	Dragos Bogdan <dragos.bogdan@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 12, 2024 at 8:36=E2=80=AFAM Nuno Sa via B4 Relay
<devnull+nuno.sa.analog.com@kernel.org> wrote:
>
> From: Nuno Sa <nuno.sa@analog.com>
>

...

> +  adi,full-scale-microamp:
> +    description: This property represents the DAC full scale current.

The description could be improved by saying what determines the value
that need to be entered here. (Also wondering if this is not something
that should be set at runtime using the _scale attribute instead.)

> +    minimum: 8700
> +    maximum: 31700

Missing a default value since this is not a required property?

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - io-backends
> +  - vdd-3p3-supply
> +  - vdd-supply
> +  - vdda-supply
> +  - vddc-supply
> +

