Return-Path: <devicetree+bounces-12174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D03D7D83E4
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 15:52:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17F00281FED
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 13:52:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CD7B2E3FF;
	Thu, 26 Oct 2023 13:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mxFdr4SC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668972D049
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 13:52:17 +0000 (UTC)
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FEC61B1
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 06:52:15 -0700 (PDT)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-5af6c445e9eso701957b3.0
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 06:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698328334; x=1698933134; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5l1pXXPojYJERfyGbdEpNZqOClr1acgIl7421/gNGH0=;
        b=mxFdr4SC0qtnzbV6PAGMQA4W7/7r2CJPyZECw1TMM5yR41EId/0VZRHp9F6GiRkd3F
         ZkTOKozF0IyO0eHP1YOv25Y39/6bUzZ0gutNCWxC1TzcFXZ+e3nmQQIG+DOJth/0E25N
         TTqjHZCPjMqM/vihPdrmtWV+47nCaPuD1s02V3xk0OBFKgf+qhh1Xt/UkXYyHRJOrnwp
         KUKiaQGcuRCn/GtLC1KdqdZP06OHjq/za2+1TV4w9VYbeKCzYMl+vu4kSUcUxhoLx2/m
         Vk8xdgAfm7cqNisU99MfUu6ABGlTsvx9QzhUGk/ZKccpqOlcGN+F4W9Gpa6nTfW49loh
         9XDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698328334; x=1698933134;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5l1pXXPojYJERfyGbdEpNZqOClr1acgIl7421/gNGH0=;
        b=MITZMQnEXr2MZ+GkleH0LvcNGBawSf8YcM0Ff9kX1Qh+gCVMkmirbCr5SE/UqEjPOC
         TsQvUN1F8Ou9Cepa1gjQJoMuW5CdZ8yb9B7eRakKennYPtoX52tK/9dX6CUVsrKXY+tb
         EDt+QgVlAfuhz2OdBVZCxKiMjPqUU9744la+qKlu3MEvfVyOwjUclxFlgxfT5mFuewEN
         i88ti2QuHoEYhRt2/5x6nRatdEHotfxoUqiS4bmpHbnG/xwfQkRc7DHGyvOV94liJOT0
         0wSHrYUhSQk4Qg9NgkppnsDq0/ru1qkLv8rRdkA1t7unlJcsg9NfnRQBbg0R14n75rs1
         lhMw==
X-Gm-Message-State: AOJu0Ywk6jHEsckaJHfpnO/UxiSaq7RVMpgoneyzvHgbKlp2rc5ucLQP
	99sYC2oWStyFu/Y69AEVHCzZfJbYEBbdb4KIZdwzVg==
X-Google-Smtp-Source: AGHT+IHfP/O7KN1EAK1myIjKq27giWPODeYiJ0sVAkgkirwOVfNgi1SOykk4KY59v73CE8NRUJB2ldzUl35zFlzaUsc=
X-Received: by 2002:a0d:dd0c:0:b0:5a7:d11c:f0ed with SMTP id
 g12-20020a0ddd0c000000b005a7d11cf0edmr20160216ywe.33.1698328334604; Thu, 26
 Oct 2023 06:52:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231018145750.429385-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20231018145750.429385-1-krzysztof.kozlowski@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 26 Oct 2023 15:52:03 +0200
Message-ID: <CACRpkdZZhm+h-ZXy6X6xX6DE1bVbWPR3hd9EpgEDUUNX_t4S2g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: qcom,sa8775p-tlmm: add missing wakeup-parent
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 18, 2023 at 4:57=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> Add missing wakeup-parent property, already used by DTS to indicate that
> pins are wakeup capable:
>
>   sa8775p-ride.dtb: pinctrl@f000000: 'wakeup-parent' does not match any o=
f the regexes: '-state$', 'pinctrl-[0-9]+'
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Patch applied.

Yours,
Linus Walleij

