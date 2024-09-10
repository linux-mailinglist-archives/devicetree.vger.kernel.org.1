Return-Path: <devicetree+bounces-101579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2364D9728D8
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 07:16:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6D07CB2163C
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 05:16:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED12413B286;
	Tue, 10 Sep 2024 05:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kxAmN0L8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FAC11B815
	for <devicetree@vger.kernel.org>; Tue, 10 Sep 2024 05:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725945360; cv=none; b=tj8GSR+DN60f7iDiE2dtSJdjmtNIoDjYfH12eyJim9X0xmitqrSmuy9iNeGUU38QgBOpypwt51r6J2Awhs3zu7roj4YPAiMOwU9Q27c2a7jvThQESq742K4INxxfVGfKT9sz+fY77xTbY2t8Yu7V1z9BUvf5NGhz4WDofQYXJjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725945360; c=relaxed/simple;
	bh=KkKyun3pACw9OkcAef3QM14XISf5GtqqFq5NzbfLfhA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M+pTYchjSjLtNhzMiq3OKmtkZiO02AS6tkQ2VjQO1p9HSfrWRYCkkTEKx1yI2A97OgRvaNPVwI5UqHhf+XuZeXt7JsHUsxAy2ynl4Y41lVJiOgkHEN2ZsiuoywsBVNOf7w8JXBmhMYuH0qnAIXGZTMczAU156ziZRBpDgsis0fE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=kxAmN0L8; arc=none smtp.client-ip=209.85.217.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-49bcbf7bdb9so1465311137.2
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 22:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725945358; x=1726550158; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KkKyun3pACw9OkcAef3QM14XISf5GtqqFq5NzbfLfhA=;
        b=kxAmN0L8qaEgsMSssm+YjAEEcGbK+OiTakpdDKlF7LWK86BqPVeTnFRVple2symOhe
         4QQLPb9eAVMS0Ge0hG3YjGe8oynD0kgmIhY6huxTJXNyZ5Ws2kCyoaG1aUqHEwvS6Fb4
         LUNZ1XyQHL9UPdqQiPQ/7X9ALyO11cAQ2KQR8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725945358; x=1726550158;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KkKyun3pACw9OkcAef3QM14XISf5GtqqFq5NzbfLfhA=;
        b=WnFiygYzo1hxzsIu4SPNBuwEmMm1FeUWdTlrVuBervV8pwc/MuCc+ljHmvtL9IAUPw
         yI9OoIE/2pTc/LMmuvwOfyFQ5FaNIv5FpmXFc9mxC2QvOi8RKcJ6OCU3n1VqpD9MLXH9
         tSvMWorpuOeAA/Mv6378IjB1xU6RXczgmYg0Kf2AXxLWzgC4Gjq+j/yeNlI471DKpQ7S
         KHPrQUiZV44NsRqBdoHwM3E6ZZUr19s0AY1Ma0QxREjIvuptDBCghAJrzbxaZMzH4ASr
         Te6fwk07910BprBTHaIh2hCJIbHMTImP8hsw5Ry+k7ncvLgCi2713+e3P/fMZLCPKZHp
         W60A==
X-Forwarded-Encrypted: i=1; AJvYcCX1TFcKTriA446tE8HcURS0qOOxTTz4O4PwQj/QsudQyBRnAJ1C3Xf37bq4yMZ+v+HNZPgiJgaFCjpe@vger.kernel.org
X-Gm-Message-State: AOJu0YzquTIGrpbH1Jw/ML14F6IXk11K0ULKU2j8BvNm3DE4ZvSY8quD
	QGleqOfOjoSWL7S6WY3J9NGZATYMT6B5SUyhU7Wgh9OJaLNNcqwqlgg6A0xziQGJ6ntif9uUNZX
	K8w==
X-Google-Smtp-Source: AGHT+IHR5tDXr/3kdkw0hecKKLDLc9ahB27G1bj+ZzkTvuT0z0tmurP0imQTM5USrqT49ZZo0TYLLw==
X-Received: by 2002:a05:6102:c88:b0:492:a6fb:23e5 with SMTP id ada2fe7eead31-49bde166dd7mr15072299137.3.1725945357703;
        Mon, 09 Sep 2024 22:15:57 -0700 (PDT)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com. [209.85.221.179])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-8489ac4a91asm642228241.9.2024.09.09.22.15.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Sep 2024 22:15:56 -0700 (PDT)
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-5010a36e69dso1725877e0c.0
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 22:15:56 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU6a1XiuXH2aQdaIoOepQ0gyL8b9nkF1bKx5I7S3Qp7cwKxLYQoebzw8gJ7oDWg8Du2LH+XclEN3RTT@vger.kernel.org
X-Received: by 2002:a05:6122:45aa:b0:4f6:b160:3806 with SMTP id
 71dfb90a1353d-5021438e58emr15631095e0c.11.1725945356258; Mon, 09 Sep 2024
 22:15:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240909111535.528624-1-fshao@chromium.org> <20240909111535.528624-2-fshao@chromium.org>
 <b5b540f7-d26f-4529-8066-506aa02a0654@kernel.org>
In-Reply-To: <b5b540f7-d26f-4529-8066-506aa02a0654@kernel.org>
From: Fei Shao <fshao@chromium.org>
Date: Tue, 10 Sep 2024 13:15:20 +0800
X-Gmail-Original-Message-ID: <CAC=S1nhaNE3qoL=H1cx2XLszLO7EqTHX13KoKwgFENX_=Eqqvw@mail.gmail.com>
Message-ID: <CAC=S1nhaNE3qoL=H1cx2XLszLO7EqTHX13KoKwgFENX_=Eqqvw@mail.gmail.com>
Subject: Re: [PATCH 01/13] arm64: dts: mediatek: mt8188: Add CPU performance
 controller for CPUFreq
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 9, 2024 at 7:42=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 09/09/2024 13:14, Fei Shao wrote:
> > Add performance controller node and performance-domains properties for
> > CPUFreq support on MT8188 SoC.
> >
> > Signed-off-by: Fei Shao <fshao@chromium.org>
> > ---
>
> Order of these patches is not helping. You mix new features with fixes
> and bindings.
>
> Please split fixes from the rest. Bindings are expected to be first in
> the series.

Understood. I'll resend the fixes and features in separate series, and
group the binding changes in the beginning.
Thanks for the feedback.

Regards,
Fei

>
> Best regards,
> Krzysztof
>

