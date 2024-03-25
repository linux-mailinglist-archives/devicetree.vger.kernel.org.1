Return-Path: <devicetree+bounces-53004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F360B88A9F2
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 17:47:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C383303D3F
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 16:47:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B13F137915;
	Mon, 25 Mar 2024 15:01:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="IPXxTTFD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92C671327F7
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 15:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711378908; cv=none; b=cVSAU+2BmzOIkI13aygVH50meRcTVj7ldpaqdfROIbF6h1oYZ8wvGpaen0IEpaNH7z3NgzEuRgdsjXZxLD8yChuVORRlzqKYgyA0F5V5m2rtOfISZYPW/b62RN8iABGOhrqJQDFp8WsmfipL1SJu3raoq811SKOxz6BGpvNf85c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711378908; c=relaxed/simple;
	bh=J1GJWD2Uw75AizZkYb7+DSC6vbUI9FgQBFn59jiHELI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dqR66JTlRVTuDQ/rmeaC/6ZMOiNOh0FW2TW+NoqetQNYEMwOTD/bUmKYJC+ICt0PkO0jA3cYI45IB9qVVfw0a83zNNUrqeL5Y/kJ43HFgzo8ZnZw655eGm+vd/Uw9SRf/dGSIGLUgcemQlP8tVtDAu8mtXArsLXmj3/ToGhSrmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=IPXxTTFD; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2d23114b19dso65952781fa.3
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 08:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1711378904; x=1711983704; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J1GJWD2Uw75AizZkYb7+DSC6vbUI9FgQBFn59jiHELI=;
        b=IPXxTTFDZ2yqE7cPE0bgKDl/r6ii8rARFxYt+n1Yde2OISROkMCUVXHOimuHc1d23K
         I8SonAi3QeQlp1TBVBqi354iIK1wxdDDM6OrsUScCH6kdRk0TgCnnOynytvzq2qrpVCo
         Yu9w28sfNj7K/UZZUqHww0EaahDj5fAysq2Hu0xMY352T70UnW22or36cFUOSRnxmEW5
         zdXpN/427/YWbMSMqwDh7ph9G4UQ7DvlXL5f7mp4hnArwkz/xqJfNTcfIzxG+D8na2Kc
         O2OqBKszt6b+02XFAfgP1YyKQheXE4EIAOUm8ZmGTJ9irfS2la9wC/gn5959ls80Qwav
         ENDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711378904; x=1711983704;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J1GJWD2Uw75AizZkYb7+DSC6vbUI9FgQBFn59jiHELI=;
        b=wmX5EHvs4zhNOFdTAG5FNV+ipur9UKhW2rI4EdFd4+tczPhxedHBYaVLU4/L6Rbb0r
         /sZdQiigHYWk0f3nBhoSV/H4fIWdpcju+vVX4L8zmRob5wtivcYwL9U4sDUTlkJLNicH
         mRXLG88mCAlBZlL6r565kkx7QrKpMRGr0qOSUb18PiycXQ+nGdzgud+Y1+V79MoGXjmY
         XQbRfkysfO3Mrq4o1ZCy85DmrFhx5GEX3al6zfvPESleOr5pRsJJ7iAPUYU5rAxxYUUk
         09vGOdsYwAb80+YpX1qustNk2Z7ibsOUXMA7VepHJJfCIGdqGrlCORKQyiJHe2IAHRhj
         wM0w==
X-Forwarded-Encrypted: i=1; AJvYcCU9z1oPjnGRbN6zkptyfrXNtDd7jPrdWnCJu8pP4Sj434bq2PcKc5bmUZ0q+M3o39FUs6SlDxy27c3Idb4FlsS90FsC6agCb82nmA==
X-Gm-Message-State: AOJu0YwQoIpNNQLvFIR6aSA63NmdJT5iqFirKvKhMd325Hv5bnFlXhDi
	KJuTMYyFLsKH3OGKG339VsRyuxp5365fTEtE8Uw5SckDTDJPkGNL+4xdhkhUoTJtj7DYQ3wT2u2
	vragpKnt/3E7c8SbKVfMHdogcY/T1g1d4w+Q2Bw==
X-Google-Smtp-Source: AGHT+IEXWyh8xd3VomCJthT7kJfFp+OHTh+i9uf/Ek3pq0kOY3hlzw+qYnSAMFsfi1PIn1RIyt45npMZCd1BRSd8e1M=
X-Received: by 2002:a05:651c:232:b0:2d6:a5e0:f50 with SMTP id
 z18-20020a05651c023200b002d6a5e00f50mr56296ljn.11.1711378901034; Mon, 25 Mar
 2024 08:01:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240319-adding-new-ad738x-driver-v5-0-ce7df004ceb3@baylibre.com>
 <20240319-adding-new-ad738x-driver-v5-7-ce7df004ceb3@baylibre.com> <20240324131059.77fa8e68@jic23-huawei>
In-Reply-To: <20240324131059.77fa8e68@jic23-huawei>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 25 Mar 2024 10:01:29 -0500
Message-ID: <CAMknhBH0E258geq8WOKf3X0r7VngdDoSfNB5g6KTGBzEoUtMqA@mail.gmail.com>
Subject: Re: [PATCH v5 7/7] iio: adc: ad7380: add support for ad738x-4 4
 channels variants
To: Jonathan Cameron <jic23@kernel.org>
Cc: Julien Stephan <jstephan@baylibre.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 24, 2024 at 8:11=E2=80=AFAM Jonathan Cameron <jic23@kernel.org>=
 wrote:
>
> On Tue, 19 Mar 2024 11:11:28 +0100
> Julien Stephan <jstephan@baylibre.com> wrote:
>
> > Add support for ad7380/1/2/3-4 parts which are 4 channels
> > variants from ad7380/1/2/3
> >
> > Signed-off-by: Julien Stephan <jstephan@baylibre.com>
> This and other patches I didn't comment on all look good to me.
> So just those minor few bits and bobs for v6 and I'll pick this up
> if nothing else comes in.
>

Hi Jonathan, as a reminder, this is the driver we dropped from the 6.9
cycle. We still don't have a patch prepared for the resolution boost
feature that may require us to reconsider some of our userspace
interface choices here. Hopefully we can get that sorted out in the
next 6 weeks, but I just wanted to make you aware ahead of time so
that we don't end up in the same situation in case things don't go as
planned again. Do you have "usual" way you prefer to handle a
situation like this?

