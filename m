Return-Path: <devicetree+bounces-175047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B11AAFA43
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 14:42:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB87D4C69EC
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 12:42:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CD94226D19;
	Thu,  8 May 2025 12:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gURJ46rv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA1522655E
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 12:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746708130; cv=none; b=Lv+kTO4qU5Cjddq10QQPN7nNRR6S1TdH9l62nQ4xdr4cgkFygxT+S/p4625ZRyYDT2fFS5NvHskgfaR5NSCv/XCvSBuyMTdfm/WIdeOaHCmukheXMIq9QGtFUsONgsOLOiWGY4T6l16Fi5PeJ3CQZfadnHYoisgOzmv+Fu2FxPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746708130; c=relaxed/simple;
	bh=EyI7Fjbv9vasMfECrqQ2zJvUpIbkeXpQeunAnfVQFfU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VP3VvonNGjaYUkhrMzHVm8O4fYfVvU6Hlgy/ZhYFmW0ePdZYdwlBHWioBwip4QB9/BuR+ogtjUBJrrqUv1lQJhLKE8u2cgVTj1tWN73iLTa2ouHZqvhOUd5h2oHRNjB3gfNYvAH9wFhpS78B61lVAxAlbojJnKBxCoJxnIV32K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gURJ46rv; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-310447fe59aso9595881fa.0
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 05:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746708127; x=1747312927; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EyI7Fjbv9vasMfECrqQ2zJvUpIbkeXpQeunAnfVQFfU=;
        b=gURJ46rv70b/zG1WiCu3cBy35RiLNxeKbl6MGAjJsxwqsi1Pjvg5fU8IO67GANE7bI
         vSceiFZNkj8t/0jlFinntKqmIYnmJ8TR1qMNDRlTigZojtevIUI5eiezgi0F1DmxqRI2
         DJ42kHDIT1aAPHw2klxxDC0vLTdrNPmqA9XVqMvLB0a1EZOPdLCDByy1OOnoeFj4g+SY
         yJ+WU55nWff1hgKcFe9OR8XZSqtVhmRiOw0MWr98uSnHxtgxED7T47sdfpb5lb4Bspsk
         OSlVswOxPlW/HkFAs2KOP3huyo4FGO8WZvYhPnm0AoaQ+I231i5Bk1RfLqdGDreBkBPa
         vctg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746708127; x=1747312927;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EyI7Fjbv9vasMfECrqQ2zJvUpIbkeXpQeunAnfVQFfU=;
        b=sGaCfETuF8Lf8DCiDC+2ev82GAby9a+kLcScsF1W4k8gyzRFSiiZorbEs2cH3r8zb0
         vNlWNereIdeIjyHMhy/G/YrocPerB0yzTxha+U9jWtun5r7tDqoUq8AavHLuL++6vNB4
         KpW5EuLalAPnKVrmeBD//JzlqbT4HV2Q34xJD+kj37PNgvaJdlcPrRs4lQEWt/ksB8Mm
         zaxHGrcxv2jJNIiBp1l8IMgcIrBRuGky8L/8irmVcKbbYw2g/Avd2Z3O6GTcqkLr0Xiy
         OG9LmeptZ6nJbJ/VMyKbSIMjHDqq1aMkB0dLisxwAoSBdf4ZHXiaIBDJh4aoicnjWzif
         nuLA==
X-Forwarded-Encrypted: i=1; AJvYcCXj+fGN+tpd4qzzBc/CytfecxrBuD88d7CafiPl9Cl8NaqSkDs9iPXFOcf71OQOFC9DuTXEDfahy3iU@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1H1B9OkZKsTrLCXILr7fOvO1enAqMQEYG1+Si068YkG99/05Y
	oWOyqftX5MWbLZV3JXhxb+0+v7Ic++rqipRC8mtJg64Iv6Dz0hEZzx9GZjShpuNJQfL//3kZgGy
	uFuNLlZRinz71ivekas61cMFLhWG+CnxBZBrpKw==
X-Gm-Gg: ASbGnctwpZ9/x1fH4d50xM4x7pgZQo7qSB3SoQ2OZos5BC1QG9//qXalddDwueFyEdM
	zEdnj4KSuekyOIalBtp51q5Y1ZmvMw9YgwtcxkmCDeeKYp3SWN+RQMSLcmtd5l4drbNltcOlApV
	YzggYzT5hazroeLALSvdfmfQ==
X-Google-Smtp-Source: AGHT+IHqekdqaLIzGmIdqheNh4dgp9pFASMhDYidMguSp4rJY0A06hOjVIznt1/54pbPSKaSgiUo7aRxsMOaETIuJk0=
X-Received: by 2002:a2e:be28:0:b0:30d:7c12:5725 with SMTP id
 38308e7fff4ca-326b88dc5acmr12392841fa.33.1746708126820; Thu, 08 May 2025
 05:42:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250505-sm8750-display-panel-v1-0-e5b5398482cc@linaro.org> <20250505-sm8750-display-panel-v1-1-e5b5398482cc@linaro.org>
In-Reply-To: <20250505-sm8750-display-panel-v1-1-e5b5398482cc@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 8 May 2025 14:41:55 +0200
X-Gm-Features: ATxdqUE9wVz2T5hOOhWQL_hbykigK69E5fJNykseRpfwtW-6smHNUPu2Ku2iiPE
Message-ID: <CACRpkdbvsr3kSu3=+NcY5LHNNzwwCW0WdLRt8BydgiNhQ-b7+w@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: Add Novatek NT37801
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 5, 2025 at 11:16=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> Add bindings for the Novatek NT37801 or NT37810 AMOLED DSI panel.
> Sources, like downstream DTS, schematics and hardware manuals, use two
> model names (NT37801 and NT37810), so choose one and hope it is correct.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

