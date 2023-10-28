Return-Path: <devicetree+bounces-12614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF6E7DA7EF
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 18:01:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7C0F11C20985
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 16:01:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADC94168B7;
	Sat, 28 Oct 2023 16:01:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mYidd5He"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B378621
	for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 16:01:18 +0000 (UTC)
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE418E1
	for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 09:01:16 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2c5629fdbf8so43071451fa.0
        for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 09:01:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698508875; x=1699113675; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+C4htKxxG/0myTJYp+gCkrihurqn4Ntp5Fw1DhZOWF4=;
        b=mYidd5HekR2DpNvxbBYOeyE5i52fe51zju5uePNGtzymdL0kI2LN9z+RYGUU8PJq1E
         vSxRtywHi+ObFX9EoCuyYZG1cFGyYvXRwjuZnFf6hQf9gUgcOXGO7Z7MQg6XG6O38QMi
         EpQ54T6QtrlayiO1oHRPlrqZp1tQsDgGEXi/NmrJPvWXnH4tM2Onq41T9Q9aP+5giXbd
         3GXzl4b5ga2mfYhZ7A7EF8vhX70WnAzRxpgGDa1ato9uGYAgMM1XABftXOJPBSepm+wh
         FdFPU0luarbBMbG4bjvQRmtVl/S+gWtpbG87YfGMgAGdEhw/uy/UBbTuSOgQM0wAmvOi
         G+sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698508875; x=1699113675;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+C4htKxxG/0myTJYp+gCkrihurqn4Ntp5Fw1DhZOWF4=;
        b=AwrVejGbj6Nitdb5PXyr+hPjmWM5sJpPscMU0mPDwLCuv68U8ockcUa+NfHatsveM6
         +SuLEmQz4nEwadpWa/a6Jp6K6R6NOfbQj8VabP/0ikA1OLd3Jrj2ewh2m9jpwpGiTXqI
         0Yk0rb2gqog50TezRWbKVjGMpvtefe+TI0OPEkXv+15556eYVxzGGESH1NKhmmolKNtB
         YqR9azSIdZ58zCwW7FqIQxo+J279j3JY6d//3BlgXUzsaX7GwW/RXOV0xysbWMf+jK7B
         Q+3QTK0zAkIvPSmvn7Y5+P+fV8qUVJFh/XfWM1V+JAkY/Qs6M4Qn9lS+UAptdCvzMmo2
         K9pg==
X-Gm-Message-State: AOJu0YzblEAifKxpLEvyJuztLZThKE6780/mnhY8DlPHbZs5y2787NsZ
	OYCU8RYGS0TjMg50xu1NcYOOEOqQcaa4KGrG96Y=
X-Google-Smtp-Source: AGHT+IH21H8+dIz9zobUr17Kr9MlwqkqsofrzMh0hhj0mP2cLhLco+dI0RnfmzZ3xZl/fUNKEQ5nUgg+7y3qpZF/qCM=
X-Received: by 2002:a05:651c:31a:b0:2c2:9414:7dc8 with SMTP id
 a26-20020a05651c031a00b002c294147dc8mr3683988ljp.36.1698508874656; Sat, 28
 Oct 2023 09:01:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231024154338.407191-1-dsankouski@gmail.com> <20231024154338.407191-2-dsankouski@gmail.com>
 <5c126f13-d199-4e09-bb58-fbf281947115@linaro.org>
In-Reply-To: <5c126f13-d199-4e09-bb58-fbf281947115@linaro.org>
From: Dzmitry Sankouski <dsankouski@gmail.com>
Date: Sat, 28 Oct 2023 19:01:03 +0300
Message-ID: <CABTCjFAkjw+EO2ZgPcbKP+dX8d-Rem+ceoNUVGahFM8zUhKbMQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: regulator: add Samsung s2dos05 pmic
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D0=B2=D1=82, 24 =D0=BE=D0=BA=D1=82. 2023=E2=80=AF=D0=B3. =D0=B2 18:59, Krz=
ysztof Kozlowski
<krzysztof.kozlowski@linaro.org>:
....
> > +title: Samsung s2dos05 regulator
>
> Not a PMIC/MFD device? If not, then:
> Samsung S2DOS05 Power Management IC
>
> Otherwise, if this is only for regulators:
> Samsung S2DOS05 Power Management IC Regulators
>
AFAIU, PMIC/MFD would be a device, with more than one function.
Analysing s2dos05 vendor code it's capable of generating interrupts
and measure current(which I'm planning to implement as a hwmon module).
There're regulators with interrupt functionality in linux. Since
current measurement
feature would be in hwmon subsystem, can we consider s2dos05 NOT a PMIC/MFD
device?

