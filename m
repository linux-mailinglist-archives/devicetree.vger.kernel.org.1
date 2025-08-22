Return-Path: <devicetree+bounces-207919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B07A0B312D9
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:23:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BF9017BE157
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:21:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC48D2EAB8D;
	Fri, 22 Aug 2025 09:23:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yramlMjx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C64732E717B
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:23:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755854585; cv=none; b=I9wAPWOdTKY1CtGpE5S+mXKA8zGfJmKXcMMrUnHd4xx9+TuGFACD6r8yE1nN8dU1TsdbmHzTY0EeTqC0fohYgqolcHTRNFPJjrDapuXUkimp8d/j8ccDW94IBpLmm3ivKhunwSixqZ9yWgTf1WhHIcKmqxaOOvrK4FmpJzrygZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755854585; c=relaxed/simple;
	bh=A81kBoegl40q6quwOX0WX4yiOUHqnmUUvR3iJOA0a2w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UHK5+zhb2F66AoY4AlN7gY2yk3crM/uT/KdTDgVKJ9vc0aFUPqTts3sgedndAd+5SUtz0VR0xDESZgl9eOCvMpDFvNIiLphHAd5I3/G+G7Q2ZQcx5C/7Uw3eemjieupIc+P03HPQYkncSGDpdNQYOY6v+XC0rifrGqopD6Ldlf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yramlMjx; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-333f92cb94eso16493161fa.3
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755854581; x=1756459381; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8rvb5BTFOBJCsAqheRi5OrrkHsnM2r6jQ+WuONy16iw=;
        b=yramlMjxo2HVLHr77caITJqmao78DQi+W03uRRGABVDoijpNsUeuSCdK1TmpiJ0hXi
         GdZ4vJX75/t4Q+Q9Da1aUSKfT/UUVQNzpkZVqBZd7/uWx4WotQs1xPHzUoD63hJlWajX
         VAj/Pdcsg4mCr3WWO+WVte+c9XTUg0bzLml3DfEek7dleo4tySjsDb9Wpf0pDxppHiIX
         cqiFdOvgyAqqOqrmV9U0qKwyk7iEiojvSM0EvAc8MvwykNTPCwxI3uYvlKRc6SgiCz4s
         AnguQxajQDLQ1IS+mXISkUlGcJXvmR9W+RpSLjxoi6fb6rmdb9bnmctZozyEhIt65U28
         HiGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755854581; x=1756459381;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8rvb5BTFOBJCsAqheRi5OrrkHsnM2r6jQ+WuONy16iw=;
        b=GUYKeutAqOb9ao5mTr0WzJ2g5uJ4+maobXliCAf2l/dMEvFuxs/eBSRUbRzsN9SRD/
         XJzBdBWdPK2/w0PIEMEOTXMG4f/D74l+QWdd+OxUQMk6fl3RK7avISE0Rw3j/0+y+pt9
         mNSWdLRoJvA2pM4K7R0WvcLZ0EvcDo9SVOypSj9cqXkufbrie9ighsqtrRDFW0FoaqhS
         WOh/i0j3uph9YnIQ1n+w01aNqUUITVYE1CJc4MTi2YIpMJiv40K5FzefCkvLXN1WNp/g
         vKIOmRzLAcYl9oQEV8ssCnQ/01xpTwBaqDVdES99VYsXmKIqvUY2pneEDXaTQKYTt0QX
         dWpA==
X-Forwarded-Encrypted: i=1; AJvYcCUgx0EuIUOT2RJZutV2RJR3ZmUsbJF4hL+E/qHx+6zJ+f1c5h4DyyDDISY0LxtfDKTRHTjV5SfnqBAh@vger.kernel.org
X-Gm-Message-State: AOJu0YxDmb9FhzJbaFdckUsgHbRrJjbM0OysbpGx6HW/z1XbSW6utooO
	1q2ZpAVBEZLobh39drbEYgvLC3zuLWmLNRlp9zu7mcVsgqHbOrSQj7VJN3ehvYnRwhp8gFRGLkD
	bT2YOPpoZRNtpwVB3w2GBxrCygGpzglB3lF76KN5NiQ==
X-Gm-Gg: ASbGncvT9Zw+h4gszjlCwnpKsm366BUlvLGUed8ZkZmUH/O4tgjJ/Zo8CE1BwHLSYil
	Er1UHy3xQg+nwUDRB2LA1pMp0kssK8gmU7vpX0gwoGWVYIOknSZKqPC4BIr0KfmkesGITwhnkZY
	r/+gI2l7Low6H2YiR9TjxLoWUlyOzOpMiQDoqyQlYyQ3vWOgKVsIZiZRGutplUPT5Gsp8PhrztV
	s90rNLt+p6Dl2SLJQ==
X-Google-Smtp-Source: AGHT+IGmS+5jZRiY3M87jYqtd1N1nFCNBKn5R2TEdrmd3+xxfd4PG/kXNNSVVgmhRVuloDKPRDouFdqjsq+r/vvoIgA=
X-Received: by 2002:a2e:8a86:0:b0:32b:5272:38eb with SMTP id
 38308e7fff4ca-33651002d61mr7071001fa.40.1755854580887; Fri, 22 Aug 2025
 02:23:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250822075712.27314-2-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250822075712.27314-2-krzysztof.kozlowski@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 22 Aug 2025 11:22:49 +0200
X-Gm-Features: Ac12FXwu_A2fq6cbJB5U4ofkj6w0TKETQ4RpzZE3LHHotvIJu8LJQDJ8_-1dTpA
Message-ID: <CACRpkdbLKXx7GEOPemFGSTFy8oDG99TUFwC7sH7xkaoqe-cY8A@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: mfd: Move embedded controllers to own directory
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Benson Leung <bleung@chromium.org>, 
	Guenter Roeck <groeck@chromium.org>, Tim Harvey <tharvey@gateworks.com>, 
	Michael Walle <mwalle@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Jean Delvare <jdelvare@suse.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Lee Jones <lee@kernel.org>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Cheng-Yi Chiang <cychiang@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Tinghan Shen <tinghan.shen@mediatek.com>, devicetree@vger.kernel.org, 
	chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-hwmon@vger.kernel.org, 
	linux-pwm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-sound@vger.kernel.org, linux-watchdog@vger.kernel.org, 
	Mathew McBride <matt@traverse.com.au>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 22, 2025 at 9:57=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> Move ChromeOS Embedded Controller, Gateworks System Controller and
> Kontron sl28cpld Board Management Controller to new subdirectory
> "embedded-controller" matching their purpose.  MFD is coming from Linux
> and does not really fit the actual purpose of this hardware.
>
> Rename Gateworks GSC filename to match compatible, as preferred for
> bindings.

Maybe add some definition of what we mean with "embedded controller"?

Something like:

"An embedded controller is a discrete component that contains a
microcontroller (i.e. a small CPU running a small firmware without
operating system) mounted into a larger computer system running
a fully fledged operating system that needs to utilize the embedded
controller as part of its operation."

> Acked-by: Michael Walle <mwalle@kernel.org> # for sl28cpld
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Overall this looks reasonable:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

