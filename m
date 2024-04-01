Return-Path: <devicetree+bounces-55156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 296C8894591
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 21:39:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BE44C1F21D8D
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 19:39:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E9E653378;
	Mon,  1 Apr 2024 19:39:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Y2IiX8A5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0995339B1
	for <devicetree@vger.kernel.org>; Mon,  1 Apr 2024 19:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712000381; cv=none; b=BIiqaozAePh3WM3g/pqFWkUuKHa6/cSe5Urlgh7wgLbfq8FK0sWBoDlaQ2FLMzB3H7niw7Uu4CtDh8zBeWZxJcHrxtDZUyo84VSAQ3EBHhs74XUvYFZ/k9z4HMTEbvExz2lWaVKvd70UcnMloObKXvJUd57IjKRGVcF1RbTO+Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712000381; c=relaxed/simple;
	bh=LskxEzdqiK7UJEs0HwcKgs9F4ApVVJrqCgN0+VDPHSw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AqZpac/o5TWeqIjSdjyjVK2a6vVKSl8iXrtwIKANWZ5u+5yiMHHXQNNB5zQLQ4kZfK2szaGMgNHQfvONUtPcNOplWXuG3hx/6U/aBvtDFYEubc+Ks8cNbhrpd654kaJ9YbXgFB/v0nS9N1LzHA4vaxItH89FEolTxwbMezlUWoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Y2IiX8A5; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2d52e65d4a8so61724191fa.0
        for <devicetree@vger.kernel.org>; Mon, 01 Apr 2024 12:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712000378; x=1712605178; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LskxEzdqiK7UJEs0HwcKgs9F4ApVVJrqCgN0+VDPHSw=;
        b=Y2IiX8A55LdPNCYAIU3Rbq0GaQsq3BwCyGtA4Qadedy7IVYW8Eb4vLl7jwTM8G8xTW
         qKMSiGA19KWnE1lzF2q9xJYf4IhEpTCYRxZJK7cp9XCoo1I3AvE3/CZpZyC4tqiMJOce
         Qt+PQU+WjkmLDL9DNLsWAiKniAMCVWQqFtJJ8GQFoUJTuEPhMcazO3MuBnhoQdh1qumb
         KCUaOjL5T5o+lY0XJvE7iYzpDUou4oNAUtmTlpBX3/mUpbnaO9jEy2KTDesoREjxfivs
         bOGaYuR2JYJIbBHqcBt7pKAPJAFfaUB/hK2TwOqra3Y+WDjsA7RoTOLcZdAdJwK/jFna
         FyFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712000378; x=1712605178;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LskxEzdqiK7UJEs0HwcKgs9F4ApVVJrqCgN0+VDPHSw=;
        b=DBS61eg7UdIYd/rmF5XjohUj4fLBR6ouXJYgI43Vhh/wzowkVrfjWln8q4PYLUFeZz
         /MS2ZHWLEqsP6D7HgO08xEw8c7UCdw5aQHw3r2oonAQoBn8possH2bk8mF2FtE9bNVo5
         330bCRGzB8zhSP8gc7j64Z24r3nC93z8s44jIKgNglYm5L2I9uU+BXOV1e6wL1zRHm/R
         MmEHw2GqADSnUXWzBJ4O8DZhE7fAqnQxVM2MmQezzw5os5QOjdLHMuAEc/XkdE44IlNR
         J3Qr7NHguJfeEHKxpZsWQiQKehEUlYbOmVwmDWGH3MH+eq14VTPmXWSBvLiwEglrU9Ty
         5XPA==
X-Forwarded-Encrypted: i=1; AJvYcCXpvsTmFzapg2A6RD2GhjA0HQPQoo6/Vz0JNCVNOtFSOoXghdw/jcYxJG8ozn5HFMCV591qNEbErHntow8Luz5LFkIk/dYYpqpNFA==
X-Gm-Message-State: AOJu0YzZ8ltxZYTpa8+9yrz+rQgRJJwYMXTdaYHfD2+K52/nHHxtRouq
	ujkYWT/f2ObSnS4P5vpQpM5G08hd2HXFJpYt6MsOzvvqKk2wZvzckDdERnMITEmwWfD/a/zBXl2
	yaxeRKkG+nRB1b0fe4UuLSVtVhVPphZ/uvxkIMg==
X-Google-Smtp-Source: AGHT+IEO8zJ8rv0MhPzignDlPzaz635H7qKxQfMLwxc/lKvYLJz6e8GZV+puDbUt2GN15bbO2cyTz2xS1jBwdL7Wo8U=
X-Received: by 2002:a2e:3209:0:b0:2d6:c2dc:3396 with SMTP id
 y9-20020a2e3209000000b002d6c2dc3396mr5979861ljy.30.1712000377759; Mon, 01 Apr
 2024 12:39:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240401-ad4111-v1-0-34618a9cc502@analog.com> <20240401-ad4111-v1-3-34618a9cc502@analog.com>
In-Reply-To: <20240401-ad4111-v1-3-34618a9cc502@analog.com>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 1 Apr 2024 14:39:26 -0500
Message-ID: <CAMknhBHo3xkkZymVfvauL7nBPn9+c1ZUoPwyk4mJO4syRJEhiQ@mail.gmail.com>
Subject: Re: [PATCH 3/6] iio: adc: ad7173: refactor channel configuration parsing
To: dumitru.ceclan@analog.com
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Dumitru Ceclan <mitrutzceclan@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 1, 2024 at 10:10=E2=80=AFAM Dumitru Ceclan via B4 Relay
<devnull+dumitru.ceclan.analog.com@kernel.org> wrote:
>
> From: Dumitru Ceclan <dumitru.ceclan@analog.com>
>
> Move configurations regarding number of channels from
> *_fw_parse_device_config to *_fw_parse_channel_config.
>
> Signed-off-by: Dumitru Ceclan <dumitru.ceclan@analog.com>
> ---

Commit messages need to explain _why_ the change is being made [1]. It
is not obvious to me why this needs to be moved.

[1]: https://www.kernel.org/doc/html/latest/process/submitting-patches.html=
#the-canonical-patch-format

