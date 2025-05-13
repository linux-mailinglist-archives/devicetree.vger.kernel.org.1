Return-Path: <devicetree+bounces-176744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFEFAB55F4
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 15:25:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5EA9A860D4C
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 13:25:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 055982920BC;
	Tue, 13 May 2025 13:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r1UOD6im"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0348329209E
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 13:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747142709; cv=none; b=Wo5ADO51fxDePn7uzeRvNdLjh6YXj9vyw6SrAvXMuMmN3A/xDsV+H3+3TfUQ8ukaH6s9+Hi8oK/w5v64UwyXTYbkA2TVtI4ceWFeZk3GzqU2TtgSWZyOWcb61fSiF+nTXS0I2R7lVjEBEryFuJbvEoXon6LxppaBy2txLkoVQfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747142709; c=relaxed/simple;
	bh=oeaPKUbEXcR7UnhZHw3ByvLch2L+QYwsj5q5SBmNOrQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hZwqi/2ajs3ZqtdskmxlJRx8Yks44E4TgG9Hc87VnUXpmUjDng23eDcw4DRjCdcPhHto5nuKRv88axCEOLwfg3oPMOKE9c+ptyKQJlaMXZVCloXlpbMV7E0dGCtVlZvwfCnUgFsB2PwxwXQH/R+UxDys2SSyqtL+Z4kpcu1tmnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r1UOD6im; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-54fd1650b83so3270788e87.2
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 06:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747142706; x=1747747506; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oeaPKUbEXcR7UnhZHw3ByvLch2L+QYwsj5q5SBmNOrQ=;
        b=r1UOD6imcOR0vjLR4Ea4z8EREqHxMrwLbcVbFsJ9DHLFpm61/ltUsrJL7LeNi5Qhxh
         prPNPS3JKEOR7qgm0S7QhxzrgPkga+cSVv3BDVZTqOC6ASdpqzWt5rC238BEZcb15uJ4
         0sk2pBPy//2E6FGw9vhlADBJqjsI5o+QpaqqfUjSyZWDMImw97gJOpwUOcM3nbJMj87r
         5GiD2TRI9tx23/cDvftm8oa2VAgqJSrHIygx4gTndK2ycaMtY10lhR0Puf8UIOBGyVeW
         TypTK5yrylagYWvaZ4g/Nmug1nYl/gcCzCDvpbErHCyUvIArbgsmfpY0qZVe2NCQVZoA
         v5+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747142706; x=1747747506;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oeaPKUbEXcR7UnhZHw3ByvLch2L+QYwsj5q5SBmNOrQ=;
        b=cL4shA2V4xv/k/uwKu3Z4VzSjqn6FldJQx2+n6KWlvyhfeypapwj3z+SV7b/2iW7BD
         gVjcejkV8UTQQ1/Y5HPapDIOmJKxX95UaEOdnhrP3E4kM5oELEg6MAp7+XJQVML1fFw6
         EQM7w73FwK6BmCvdkogUpz0oWD/lkS2gBvFSQBVqJxU2o6URGNPxir59hsMdznJQPFbP
         X07fyIfvIlvRUA5D39TNy0CAFD6lWpflup3tsHU4Hq62tG+fYYnH7Cs0vC8YgLDLHNmU
         c0sCGK/+/Z7IM31jwL+7ahPd4ov/UgaiaUkQQNXwVBxHR4xLL9pCmuCRU3VnrmPTu9mj
         +w9A==
X-Forwarded-Encrypted: i=1; AJvYcCWk/GzgJyP52zkwLRnm9pdMWw3j6IAWyo1B+0xDKLMsOrujlmxvV/IucUQHJKm/vZ+WQzqSPZcRQidJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxykpFVv/W4AsHa08+stvrgn5GAf3vllET4ONrKm+HQQ+RssRgh
	FQw3gQveGk9f41OFGBj0FbaGjaXN9wBEnWH3w3yXF0qULFXiBWo81I5cqpDOuPV26X2dJWcfyiL
	uwCvvJwJOVT8R+Tgna5wHhaOs8uxMel+yqfr2MQ==
X-Gm-Gg: ASbGncswNx2C5zWZ4lSGmF/zuz1v4g3IScswTpntfJYQaeYilwWfNY0pWo5AL8C2aEs
	BPaqCfX66Xqyag1T4AHSzNyAFNGjfkBGfDxNrWVe+coHAwyUTIeLP51wad9V+nhriq0DorcXjYU
	j+tWPnyAj/XJ5uinNXhBBas5TsCv9Z8rJB
X-Google-Smtp-Source: AGHT+IGrFe0tuAriV566xCxGXQdjanyVItnT/Sux+rzaMTjlQlVvAT/07pib6nmXkVlcFGa3WzzOP2qmoucOJhH9xsM=
X-Received: by 2002:a05:6512:2283:b0:54b:1055:f4b2 with SMTP id
 2adb3069b0e04-54fc6763856mr5251355e87.0.1747142706043; Tue, 13 May 2025
 06:25:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1746662899.git.Jonathan.Santos@analog.com> <f62bcaabde172e0b2880f7d05dce97d684cc04ca.1746662899.git.Jonathan.Santos@analog.com>
In-Reply-To: <f62bcaabde172e0b2880f7d05dce97d684cc04ca.1746662899.git.Jonathan.Santos@analog.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 13 May 2025 15:24:54 +0200
X-Gm-Features: AX0GCFvMmIKAiesRTZ04kXYyY8RbLpVm-_ozv8YU8-R0c4lMc2-ZzlahfAbU6BU
Message-ID: <CACRpkdbWauD3Z5TMdGTmVbLC-sBBNJ4wCqJxoixQMwUHDektrA@mail.gmail.com>
Subject: Re: [PATCH v7 02/12] dt-bindings: trigger-source: add generic GPIO
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

On Thu, May 8, 2025 at 7:03=E2=80=AFPM Jonathan Santos
<Jonathan.Santos@analog.com> wrote:

> Inspired by pwm-trigger, create a new binding for using a GPIO
> line as a trigger source.
>
> Link: https://lore.kernel.org/linux-iio/20250207-dlech-mainline-spi-engin=
e-offload-2-v8-3-e48a489be48c@baylibre.com/
> Reviewed-by: David Lechner <dlechner@baylibre.com>
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

