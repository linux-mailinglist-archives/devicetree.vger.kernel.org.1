Return-Path: <devicetree+bounces-25878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3AA814EE9
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 18:35:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0AE0E286B89
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 17:35:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 129EB82EE1;
	Fri, 15 Dec 2023 17:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PiKYYiJA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76B4282ED7
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ca0f21e48cso11207101fa.2
        for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 09:34:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1702661691; x=1703266491; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k/HoRgK92BjH7QovcEi8cDDtZyMd0kZkc2fCOkf2P1E=;
        b=PiKYYiJAZ9u2GHXOzY9FlvBxLhU4Ip8yQ6ARfsWefCCgU3Ja+vOaAJGG4KFYiyLugX
         eRJQ7obsIcdVDajKeJigv9kiaA49kF3SpU1OhZWMw1s4EaptumI2QWaXNJDtnIpDyeta
         owwBzxvZUhRB35UtCrzaVMzqpYco3AikTi2kw2thhf30l5s6LZ/WS9yq/SQt9uyqVVC3
         W+wV5wO3uDfBpYYEiLEdMHGprRo/JRXd5kh77M/NzCWvI2pj4NGHmGQCzrU0WCO33PqN
         nSM6YBZsxLRPMK0nJJZAK27SCBHBjZaQBzRuWT58pb7/NaVJqomz8Xqhc017i5ll1JnA
         5VgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702661691; x=1703266491;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k/HoRgK92BjH7QovcEi8cDDtZyMd0kZkc2fCOkf2P1E=;
        b=hn3/gdGw1EAF2b2arZufyzblRvaRZV+p0qg0hGDBctTUuoDxirvQaMRwwUrz+3IFo1
         +UZqSxaaBXtX3IVM+JAuuL+MncDB++aDMacWdrSN8GdpRqie0+jzHECE0xgYbMfm7iLF
         hUeDUya/DZ9N5UztiTCG78tCb9m0f/tMUOTyn0Wp/s1/KMRnR8SSIf2CXVsVGawnR5W6
         2orAmQhl4NnbQAnBVnEITsphBGoPWWdJKR7ipRkyZTUDM98bqHnv7dKg7L51UknJm2N1
         yYVM12FQQuN44mYmXYm89xWKcQWn1XW8oA5xFROMHe//W8jHRothQWxKxqIoL8D47LIM
         yDKg==
X-Gm-Message-State: AOJu0YxFkiaS7Y7AN4drqHoiGxfKqBqSgxBHrCNlpUtIBQ53ZqcZZ9nh
	3JwxP04ivtKip+Kn2Rv/bwc8MbFbJXU3WSxf0TfdyQ==
X-Google-Smtp-Source: AGHT+IESHbjGVQ8M8Os54q2PL2fQP0wlu9xEjVWVTRt1ow4s8PhgawTd1HW3ldYOsfIs8ww2VSHVrd2vMhjQrD4K/gE=
X-Received: by 2002:a2e:87d3:0:b0:2ca:246:752c with SMTP id
 v19-20020a2e87d3000000b002ca0246752cmr5759961ljj.70.1702661691479; Fri, 15
 Dec 2023 09:34:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231215-ad7380-mainline-v3-0-7a11ebf642b9@baylibre.com>
 <20231215-ad7380-mainline-v3-3-7a11ebf642b9@baylibre.com> <66e9fe7a-927b-465f-aafe-8aea0e5998a4@wanadoo.fr>
 <CAMknhBEPxYtZps2cFk0ZPckbcHenXJ_v4Dv+82ENg47J52gHxQ@mail.gmail.com>
In-Reply-To: <CAMknhBEPxYtZps2cFk0ZPckbcHenXJ_v4Dv+82ENg47J52gHxQ@mail.gmail.com>
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 15 Dec 2023 18:34:40 +0100
Message-ID: <CAMknhBG_4JR+OhBU7WPCrS0OPb7c_jebM4AhrkPNvzfOmQ4TvA@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] iio: adc: ad7380: new driver for AD7380 ADCs
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: broonie@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	jic23@kernel.org, krzysztof.kozlowski+dt@linaro.org, lgirdwood@gmail.com, 
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-spi@vger.kernel.org, michael.hennerich@analog.com, nuno.sa@analog.com, 
	robh+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 15, 2023 at 6:31=E2=80=AFPM David Lechner <dlechner@baylibre.co=
m> wrote:
> it only an int and not the pointer to the regulator.

I missed a word, so just it case it wasn't clear:

it only *returns* an int and not the pointer to the regulator.

