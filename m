Return-Path: <devicetree+bounces-18563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7947F7157
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 11:25:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6BACF1F20C23
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 10:25:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F469199B3;
	Fri, 24 Nov 2023 10:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QT+0vckL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92D4F1A8
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 02:25:00 -0800 (PST)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-5ce0a888492so5033607b3.3
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 02:25:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700821500; x=1701426300; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YSRwymbbTF0gzuOjYP7v4xf2W/UwQLRj17AdLnzK6Yk=;
        b=QT+0vckLDYvueES5sSJ8YP6iUDGcN9n4s0VhJfqMRhtrSXW5n7sOLHP6pQNq2VyC5G
         Ovp8omDt1WQCiuLLEWs7g1l+c7JTGJUDvKiHNMMhT2OOCsLdmTYE7jhnMvDtCqbyC5lL
         Em8MFWP5+CqXsCGfOxlNTa8z3UmBODF9Bcp6BrnXCIrncjhGc4trtd2DceyNrGuKNyhn
         hquH5eF+OKCXVyvTHWGS+K6zDmCYc61HFCESCKyEMT0O2HGquD4iMzqytELmCXZCBUo6
         aWqSBt6ClSxag7kVXs8tO3CFVrzT0wasABesU3lWAkURJUuj9vYM1k+rLkdcqfdfnz/W
         vn7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700821500; x=1701426300;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YSRwymbbTF0gzuOjYP7v4xf2W/UwQLRj17AdLnzK6Yk=;
        b=DJO1WlZKT+xtnvoP3gPM01HiHCmJ2WhJ0udEeRjQWViewwV5LS5EPGQYcr436uycK0
         RNyOYt8Tr/vl5Lc7euOw6mZquHhe/ty27R/vB8OhOBxjgg7Ka297u8p6nGvxybfWAz/f
         SksxSOaCAe6rlqH/qKHD9G5QAPzmIh1UgSsEqtCcMUaYqZFQQcTNk/FkbTdNA39DTRb1
         Kx2kRVgOhUHqSXnhSqv1qiqL6VomkX4w7fDtpdus8cXB4+YdOzco2Hcs+r1CgZOVh10+
         cy6IfhfLnMTkSD8CqzSSm/fckFHwt7SjQ74pwJkT/IJY2xCGQEfLmxSmeKbr9J7tZWNS
         7PgA==
X-Gm-Message-State: AOJu0YyM0GZKhkgNFX7nEdK8V5byBHbOZGfAHB5vumoImE2LJ9edyJRN
	n1NNM+Xcw8EXBQhKM0NiYnin1E/Xc3ricrQ25OuYTQ==
X-Google-Smtp-Source: AGHT+IHna5orXZBaFh71s5HEqAg5V2fQBcSodGOiIyRvx+fRsKxIrd8IvGfSuHAdM0CGYXYpGN0cGWpVu58CnfTDUts=
X-Received: by 2002:a81:49c1:0:b0:5a9:27c8:edbc with SMTP id
 w184-20020a8149c1000000b005a927c8edbcmr2136208ywa.28.1700821499637; Fri, 24
 Nov 2023 02:24:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231124094905.58425-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20231124094905.58425-1-krzysztof.kozlowski@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 24 Nov 2023 11:24:48 +0100
Message-ID: <CACRpkdaE-Gejf3YXxAEGV9aJakqK77ZvYYFAtUHmVFMxaPDE1Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: st: minor whitespace cleanup around '='
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Patrice Chotard <patrice.chotard@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 24, 2023 at 10:49=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> The DTS code coding style expects exactly one space before and after '=3D=
'
> sign.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

This shows a problem with how the ST-Ericsson platforms were grouped
together with the ST platforms, leading people to believe they are maintain=
ed
together by the same maintainers, while they are not.

I might have to split out the STE platforms so we don't get this kind of
problems.

Can you split the ste-* prefixed files changes into a separate patch that
I can apply?

Yours,
Linus Walleij

