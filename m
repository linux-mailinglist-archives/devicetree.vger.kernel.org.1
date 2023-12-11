Return-Path: <devicetree+bounces-24069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 08ED480DC54
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 22:02:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 85D5FB214D4
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 21:02:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C56554BCC;
	Mon, 11 Dec 2023 21:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P/w7G0Wj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A74BCBE
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 13:02:33 -0800 (PST)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-5d2d0661a8dso49361077b3.2
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 13:02:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702328553; x=1702933353; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cZfsZrrRBlZwfErbKCDlnyMZePAWlHxlE0E9UWOYGmQ=;
        b=P/w7G0WjSFdG4l3M3g02vvLEnBwqml1AyvE2NiC1NCLAynYfl1BMPYI3oV+Ch/cMDk
         tI9Jb9aSKXXSvTPAJO6QG5J8jHRWZ8kZ0zWUf9Lzgjo7kjeUEyQZo51b+YVri6SqOLUT
         ZLWZHQWvLskk05QRZsBxBrcHngBOi2nLjxH0dLomEeeHv84Q9IhAcr9kzQlCJ8YFYRoF
         TNv7sjkbbL0JrrhylrAYlK0u+vEFl5wXqBWMzdgk0KST6a8Wc3aIdro35AcA2Xyx3JW9
         joFnb7/ESr+prdztc5JC//6ur24+npmd9CDLu3dJzjZ9jyccf2WotzpNsC5k9qrm7F5G
         gxTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702328553; x=1702933353;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cZfsZrrRBlZwfErbKCDlnyMZePAWlHxlE0E9UWOYGmQ=;
        b=eOvmHfmqUtLUW9G7wX/l/0pfRrvjD986iCaaPW7sFlFfKUaP0B5C7bp5RuTTHuu9b8
         LvrOml4mGSwG6zOAmieJx0PhRbCLkOgNiXJdDgoPYMsasiGQx7YOd0NDXh53Ssb0JbX+
         0gx2yhSpbmHmFEBkCtfRexkV7gGhlqfGYC4OYaa6KRFfhZtrKYOwgQPrftCFEGDx7Fcs
         nKdOnpkyNZP2qegJi+DvEqGEPkKL0coUwwI7akELhXrMXEX835E09zXj8hIQR/8bnxy1
         0FYLZb79+pxBZLaidzA9eTADNSQVKjgHmFPJ9MmSy0SLWAC7d7ceeJorHc9f3kdKWQN1
         1yOg==
X-Gm-Message-State: AOJu0YyXhkZVWLr4rd/BUDEh6m/2blcsKa6+Xovp2TVaGtUysIPxSvK8
	OrTqLCqGY5G4WNmJpPXsJ93IzhJ3QJ9iRrDd+jlDsg==
X-Google-Smtp-Source: AGHT+IEx7mNSHR0hv8E+Jx+J+xIQnLDD997azEZuKMXEYCvggtMUMZoyCLaTgxmHG3TvQOqT3+BfMVSbsiM6LZX48/o=
X-Received: by 2002:a0d:f842:0:b0:5d7:1940:b377 with SMTP id
 i63-20020a0df842000000b005d71940b377mr3838384ywf.67.1702328552858; Mon, 11
 Dec 2023 13:02:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231211162331.435900-1-peter.griffin@linaro.org> <20231211162331.435900-10-peter.griffin@linaro.org>
In-Reply-To: <20231211162331.435900-10-peter.griffin@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 11 Dec 2023 22:02:21 +0100
Message-ID: <CACRpkda8LJS+9dPQFqQLFDbj=gvJ9rKSu=ECczDB4QUv+FZgnw@mail.gmail.com>
Subject: Re: [PATCH v7 09/16] pinctrl: samsung: Add gs101 SoC pinctrl configuration
To: Peter Griffin <peter.griffin@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, wim@linux-watchdog.org, 
	linux@roeck-us.net, catalin.marinas@arm.com, will@kernel.org, arnd@arndb.de, 
	olof@lixom.net, gregkh@linuxfoundation.org, jirislaby@kernel.org, 
	cw00.choi@samsung.com, alim.akhtar@samsung.com, tudor.ambarus@linaro.org, 
	andre.draszik@linaro.org, semen.protsenko@linaro.org, saravanak@google.com, 
	willmcvicker@google.com, soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, kernel-team@android.com, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 11, 2023 at 5:24=E2=80=AFPM Peter Griffin <peter.griffin@linaro=
.org> wrote:

> Add support for the pin-controller found on the gs101 SoC used in
> Pixel 6 phones.
>
> Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>

Looks good to me.
Acked-by: Linus Walleij <linus.walleij@linaro.org>

I expect Krzysztof to merge this when he feels it is ready and
send to me by pull request.

Yours,
Linus Walleij

