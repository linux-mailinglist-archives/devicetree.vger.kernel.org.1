Return-Path: <devicetree+bounces-140283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F21A7A19179
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 13:41:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4331C1615D4
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 12:40:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21B97212B25;
	Wed, 22 Jan 2025 12:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ipyjz1tn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7881B6D15
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 12:40:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737549657; cv=none; b=UnRG+Kvm3uIqCJxfoViaVtQ8+ciAotSvMYHbHlGNK1Jv0ZaPYF/YkW5ctomUIp1koft4xZJet+uHe5GEl/s5ovYNQehsnvKyCs0dKtRExybkWy/qw6pq400/88RQMbfQSjITgadx2IrL4dMPjfFqCbVmjCKYCcE7fQWpPe1UTMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737549657; c=relaxed/simple;
	bh=hOWLqioRq5JucWHA8yspNPXe2ERjRF9nxoWgy+IfVbM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JaeHlHA4Xu8d9Z/OSRkFtWvsmvrCQRv9VtJCa+LLBjHcN7e2X1ipIbto2fh2Uy0Rb3RZhJnsUbeXecwR8qmDvYgjM5+Y2C+LCUNUIxJy1e/R3jqg90TrlQ5BgN1RiYoIz0271CRE/O1cmh5UHUVKR6ijOk5MOc4DdooFF5tJzzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ipyjz1tn; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-540201cfedbso6483520e87.3
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 04:40:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737549653; x=1738154453; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WJFfe/ReS+bB0SKEoehh4uNo6Rwt0UXw3v3zOYh0SCg=;
        b=ipyjz1tnnAp/yNJjWUSp1yyMKrYO1JKCxnsdl4jO37oGbghxwkAAEg8SUomyCt4UE7
         tZK+coeFcVtFc71vPURbh5RZo4RSYVxnUAkQM9O0yUtUWQCHJDFxXttAYpQELu09cdsk
         cuX8ww1tY/i+jUhkq2xShVG+w+3YF9rEou2jDKE7DPTeBlYiTdjb/GnjRQu0GxDncDdg
         dX7++PNU8QHYiaA4Tix/E+CEdx9kbKVabFOLbgnBekXgNiiDXf+pVyWqkJmcDt8+zq6g
         zkpP7Klgeqv+8cn6Km5l/ZuwJFtm2RAbD33nMA4CLrFB0yG8veHa/FkbLbbakcRKxqGn
         zMhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737549653; x=1738154453;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WJFfe/ReS+bB0SKEoehh4uNo6Rwt0UXw3v3zOYh0SCg=;
        b=MXNEAmZLF0pK4wTu/Nkhx8bh9vqlVcVPxdE/ObsxYq/1CIra6SPTcL3VEQQlAwETM0
         dwRYkq9E+b7kkt+jV2oHKAilg4+Er0I9Tem2aLSpp36/5XWHU+BvTe7EGxAif3Z7287i
         JSAVJzcSR3o26JcuPmQ1MuH3tz9taGM/KZGJ8TQdzRrnjKMXJjndxHMatqKJOK2DMuVn
         2y+6YTyE98+D5eMHb3bNdmsjjRsW+UscPoLtgFyvUbxEtmqW4kQhLPHyc3DnJgAB177x
         DirZQImybO4ylrHkNI3oVp/ZnbRd8eZZVFr7/Ob0Gxzu6dnGFeJW4yq1w92CaSElj6sE
         qasA==
X-Forwarded-Encrypted: i=1; AJvYcCWmVo2tfvvPfVNq1Wkc12tTFXsVaZCQtofaUYeBsZA8c48GovrGq9KyKAGF6t78VydPVni9kc/IVLFK@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1qRJ/FG8p47cECXM1YrO3PIhBivCUWZtV3BvDr5z3F1ADhgg6
	vRXmhXNDlFbi2JJUNTXxc3lLTdFeMQcQtDf7q+YofVAa0b2irW14SecZGCYsNDX7wuHNyiq7frm
	05x7qPfIYzK76LOFHTOczQL9EXeSQ/C8unZi2/Q==
X-Gm-Gg: ASbGncuop23wRvz3U2NxdioafpUy3k7NZ65v71FCznHZOajBy3o/6EHHyJ/JHzYOh+e
	JMeW1lHILU1w43HeUPOcupl/ckCJnPUch17lhV3t72w7Myi9K/A==
X-Google-Smtp-Source: AGHT+IG8x91swQ1/TCs2bNY81sSJWW2iCRubETASwyNlneW1MiOKNQOm+h1c21oPbkA4UckTqWfjL3th8Is1ivCtTMo=
X-Received: by 2002:ac2:59dd:0:b0:542:8cb0:88a8 with SMTP id
 2adb3069b0e04-5439c285ec4mr5563483e87.52.1737549653306; Wed, 22 Jan 2025
 04:40:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250115211627.193961-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250115211627.193961-1-krzysztof.kozlowski@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 22 Jan 2025 13:40:42 +0100
X-Gm-Features: AbW1kvawWKhH0X1YIWMRn8P4MqzemM3g4CZwqQRFd_gIgX8aGMtS5oZnnXo-N6g
Message-ID: <CACRpkdYTXk+U5n2qjBiaWmRPNAbeTR_CO1N+7-7XqjvSU57Byw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: st: ste-nomadik: Align GPIO hog name with bindings
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 15, 2025 at 10:16=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> Bindings expect GPIO hog names to end with 'hog' suffix, so correct it
> to fix dtbs_check warning:
>
>   ste-nomadik-s8815.dtb: mmcsd-gpio: $nodename:0: 'mmcsd-gpio' does not m=
atch '^.+-hog(-[0-9]+)?$'
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Patch applied!

Yours,
Linus Walleij

