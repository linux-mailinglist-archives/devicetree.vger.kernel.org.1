Return-Path: <devicetree+bounces-155408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 910BBA56940
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 14:45:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C0DD3175902
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 13:45:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3A65219A67;
	Fri,  7 Mar 2025 13:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="0cShVDer"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F832CA6
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 13:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741355136; cv=none; b=I3whHEvUXt1Cli4JJKrszOA6NF3jwPeelmwdah5/ioQTNogF1w8iemUBEOxbPlaXMLfxcbUe3PIVt7dMN/59mPaD7476IBkI1za0gtGg8TrgpOl1Ry9hhclGx7pP0MK1X/2DAnsh75UmxBxS+F/qWkYX3wO7IgcT/rJ+LbrecrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741355136; c=relaxed/simple;
	bh=0TFrNUave7u0c/TFcLUTVj6EnbOoF9/okdBtc8ZpfRA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NsoGf2TVHm9T6sSryPQQ9cIIOEHjh209jIKuZv7jyKJpXWtjXsPLCu8iu1hAiwTPyKXkdVkWqY/t6pkekknpMxTWzqXVV8q6jAqwnzCmhfYnymi4q+ttZTei1Zl6Pu7CAE3D5wYjMnrb3fmdUex3EDx8IZGLL31/w+czq4nUyws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=0cShVDer; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-307c13298eeso22039941fa.0
        for <devicetree@vger.kernel.org>; Fri, 07 Mar 2025 05:45:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1741355133; x=1741959933; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0TFrNUave7u0c/TFcLUTVj6EnbOoF9/okdBtc8ZpfRA=;
        b=0cShVDeriLRrwT4wUp+Mr7DxhRumgDMo3z5AUUN/isi08PFbQyVe6kyBpuw1YLA0Oh
         7IQ9T9xR+s+8gtIFA6hHBNJK4f2VBnMnC0248BRwyGv0tPp0Cefrk6x6mwgY9wS2LY7m
         MA7tOU9bPLClp2pYfd+0vP6u4IuS9aJZW9GhQ8FY4P3kC6W9UgVFUEBJFWC0BRi3VrU5
         2H83BfQNVlIZh464+AblSBgJrrmkB3rTDByU+WT02h//DN0DVWppHG/HR0t8U8ppC7sc
         VcbWgTe4RVPr4ghqckOsPA1XLShhPDa+Zvvav445cyerOOvNqrCBL2d3hguLCm8XbQiw
         odqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741355133; x=1741959933;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0TFrNUave7u0c/TFcLUTVj6EnbOoF9/okdBtc8ZpfRA=;
        b=wd7wV3TlOum/qPgxu6BRCFzHwUbHvPZcvaBb1XeLDhIS6xvpA7Km4hSLCSPi991JDG
         ilqCfXHgJqfOeNr1jks51LAV9f6XdYHgu7s8XqAJUtvt0PSbg0YA+U7CdvWISB7bEnOb
         RIzMSc6H4R9lULri3pbp8t4oB5Ne+s2F64qOfQU5h9EdcyIj6VQvYN57bdSysS3qJuni
         gGzEOZH95+G8i0ZeQZ8Rymd3aBOEY0MeXkoAtEwdxvgtievt9Z2WFwJta44DQCZgOhxk
         oHFT9Nk+1fwMvybllMXB3xhkbuKVu0CfVBFZd0ru1sQxkRfwitcHvt0RlSYX3ouBPhMM
         naUQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYqYuGhA6K/EriIYaFS207Hyvx9MNACNHCwQW7fqnD5+PJXBaKBQC5w3di6JEWEdoCZisIZDDVpWMR@vger.kernel.org
X-Gm-Message-State: AOJu0YwpVv1AAoFK5PiHMT7CX80Y/dYZ8QvVWTiSN2FZHnP28VVB/ZFO
	bODzIoB1FIV/9NEW3sMEkFOHvsQGSMt/n8npQ9L5Zi8W33jWwSWsK9zYxrSrK2JdwZmHZWV3wj4
	zBb9MO+5sPfwoB59w9U0Mf2CD1odwffv/yVlkdA==
X-Gm-Gg: ASbGncsnKCf8SmiWQjG9GcZHEeipiLOrPIXaK7SfM6KPyvQWsOSJ+EaR63QRK5iu8BE
	1apjidroKIwpUZoX9rF8v57w1d5VvwBMMvjGsXb7JS5/80boa94QNULmjEF7qp8jBPzJoOVmUOL
	d+eufPQYFfoOyL8UFDA2AdNdpyewKu1Xmj0Qgjf04M9t4Vdidm/ae3TXQS
X-Google-Smtp-Source: AGHT+IHCHWdcrf+CS34Y1FeHjxgNuNdVmDEgpUXU6Qys+5+tGGxXxtTXUnsy+/28mQy/IygcRJFkYAAqwSVuG2rzZoE=
X-Received: by 2002:a2e:8819:0:b0:30b:e73e:e472 with SMTP id
 38308e7fff4ca-30be73f011amr23073541fa.14.1741355133270; Fri, 07 Mar 2025
 05:45:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1741268122.git.Jonathan.Santos@analog.com> <efdbddad734021f38a43cc9d101a22424e71dcef.1741268122.git.Jonathan.Santos@analog.com>
In-Reply-To: <efdbddad734021f38a43cc9d101a22424e71dcef.1741268122.git.Jonathan.Santos@analog.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 7 Mar 2025 14:45:21 +0100
X-Gm-Features: AQ5f1JoTCLJx2G8kFEf7gAq4XDizdZoV-M-jLWjt5ZT4aPIJLHyyF3f0r8-4KBQ
Message-ID: <CAMRc=McTdmgRhzN-tLdxvUXnxRVE7AiFDUJWPnnHC-pnfZc3uA@mail.gmail.com>
Subject: Re: [PATCH v4 12/17] iio: adc: ad7768-1: Add GPIO controller support
To: Jonathan Santos <Jonathan.Santos@analog.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	Sergiu Cuciurean <sergiu.cuciurean@analog.com>, lars@metafoo.de, Michael.Hennerich@analog.com, 
	marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linus.walleij@linaro.org, 
	lgirdwood@gmail.com, broonie@kernel.org, dlechner@baylibre.com, 
	marcelo.schmitt1@gmail.com, jonath4nns@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 6, 2025 at 10:03=E2=80=AFPM Jonathan Santos
<Jonathan.Santos@analog.com> wrote:
>
> From: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
>
> The AD7768-1 has the ability to control other local hardware (such as gai=
n
> stages),to power down other blocks in the signal chain, or read local
> status signals over the SPI interface.
>
> Add direct mode conditional locks in the gpio callbacks to prevent regist=
er
> access when the device is in buffered mode.
>
> This change exports the AD7768-1's four gpios and makes them accessible
> at an upper layer.
>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
> Co-developed-by: Jonathan Santos <Jonathan.Santos@analog.com>
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

