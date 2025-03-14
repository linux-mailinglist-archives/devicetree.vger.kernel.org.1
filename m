Return-Path: <devicetree+bounces-157519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 242CAA60EAC
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 11:23:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8EA783B2C6E
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 10:23:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66E001F3BA3;
	Fri, 14 Mar 2025 10:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YG15XV3e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 749561F2369
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 10:23:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741947784; cv=none; b=o0H/+wGHssLSTRO8lsoFk0xHf0UG6XP+pH4m7gOXguTx1MDb/utN/o3LLJaqbXEMZqUa+ESa2i/VXPQSuf+D1gp+6MTXoLBYyQAsXKzL9rjVgs6fjLQ/xyVoF5wREF6fxipyJR34LT+R7BasHzfZLMuLtOgEUTdLOtYWFw25G90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741947784; c=relaxed/simple;
	bh=R3FNuXX2GmqDhO1V0LTe9ZodhGNso/MxtnDwLp/xsVM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WV+Jf3J7iTv6UVmWDC5FEaxuMgmM+6EVApGF25n3dOBApYJaD546/DaTf3Mkg7SnQeZ2mmE82nsciziXn/7gO7YDKC9wM6JxdY+V8bax6L7t0I1VGVwoH3MVJ/rDcRXXdKU201R/OqnX12WrDTnUl+g3ZJRrVRJxpJXIxQtNZyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YG15XV3e; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-54993c68ba0so2098086e87.2
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 03:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741947780; x=1742552580; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R3FNuXX2GmqDhO1V0LTe9ZodhGNso/MxtnDwLp/xsVM=;
        b=YG15XV3eTz1eSHuWLs3V/5O9+7tUafD3ST9ePndQs6Fus8jBm1r98ZTQABTzsr5dKe
         fcfK6Zdm0nWjMtGmVMURHXhMRBILWEXzzIRO5ihrdliWZJMxFzBd2dF78SIYoHs7PI7j
         qWalYNvbaoHwosoGYVFrisUtwmRkG2DYvMuLdt/ZN0gyf1I01DdXHC0AJStH5gGbsetz
         BNKo+TpWP3fEDxoKfadcZ01JNUqpucvlDSp4ZEPX/Zug1xDR9rzzhvar4N62N/D6UtwO
         Zi6uvW+OEoZnLtbahBw4jYYxpZtej69J50l7HbyJqdUvxH7aI/Zu+Q+Co2uVQrrqPgx4
         XA0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741947780; x=1742552580;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R3FNuXX2GmqDhO1V0LTe9ZodhGNso/MxtnDwLp/xsVM=;
        b=JddL68fZJhtGluVoK2TMO2si0s5dFpatTFV8DDVMymdgkImIldXlgpmcxuwY2m9dZq
         /aGYoZ4KnT+GHwZbZtYwdeMXhwrWj0TOejg5LlK88gLoMYYfPEuv4+ekxQAXc/JfSXuP
         9uPe6ttjOay7LHge60AcKvFLU10daCz+4HfW3bULvtwagniJ2j2qGy7NL+JzyNPVM5hh
         aWTBLQbOrosxvcNXUHRAK73T0MZuTcZ9Jc3lcPieV5rCbpJZhjJlW53f82Re1x9yp1KY
         qcLzsXiw+iZCqmSSedeWct+gFni0V+59e2/ITgwnW1rBfIxWxyqmKRDAS9tlhXdpozXA
         tMiA==
X-Forwarded-Encrypted: i=1; AJvYcCVCg92rwGggl7pcevzQot2Kfoqjy1+gN5/uYekszTpvJ5+kZEPkdTK5v8zZKDS8cV+kecfboFs7XFOf@vger.kernel.org
X-Gm-Message-State: AOJu0YwyBnlYpEmfN7pdZyoSO0czzrItSE5LANhzE25tuJpTUD3raKsE
	Z8Cdqjj5/Q5kz1vObbjbefpiUgrTH6RXu6bBzpn3q/kvMZXe14JylYf+p3VqjlrCJPx47f4+MaO
	9P7424la22BaVhVdJmvYtqfSipyhTGImRmYfuLA==
X-Gm-Gg: ASbGncv7muqIvYA4Y5j4AXW2EDmc441EyMzLi5RmkyzJPZhnsBzWvxnfxxBqNoPgUlv
	pSXhc4t9zLdrXHr1ITGu6CZ+57IeDPQI5cWMW4nskChLp7GYk2KFC/1nI13VQhcTQGzMV5Zs2AH
	vAUUXY+YQeuMK4vbC0Y0xcP0k=
X-Google-Smtp-Source: AGHT+IFRy+oj381HcLG17WN2twiWfwvbXqYf+FzldwnytvF99CDrolKoTfBkWEHzPycGeBhKT3RqAyyS6qDRC3LGTmw=
X-Received: by 2002:a05:6512:118a:b0:545:f4b:ed58 with SMTP id
 2adb3069b0e04-549c3902d36mr745591e87.18.1741947780537; Fri, 14 Mar 2025
 03:23:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1741268122.git.Jonathan.Santos@analog.com> <d055d21a2a1e4e1d64c457d38e3cf6630d4183bc.1741268122.git.Jonathan.Santos@analog.com>
In-Reply-To: <d055d21a2a1e4e1d64c457d38e3cf6630d4183bc.1741268122.git.Jonathan.Santos@analog.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Mar 2025 11:22:49 +0100
X-Gm-Features: AQ5f1JqGYkWzEfKnAtPNgqr4uBw_KbB-Dek4h3EJu5HoogzTnrZCjzpFr3BwQdY
Message-ID: <CACRpkdZsnDtvKdzRmSUqDSVLfdz_NYygXQq5V5Eig4b64Fwr+Q@mail.gmail.com>
Subject: Re: [PATCH v4 04/17] dt-bindings: iio: adc: ad7768-1: Document GPIO controller
To: Jonathan Santos <Jonathan.Santos@analog.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, lars@metafoo.de, 
	Michael.Hennerich@analog.com, marcelo.schmitt@analog.com, jic23@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, brgl@bgdev.pl, 
	lgirdwood@gmail.com, broonie@kernel.org, dlechner@baylibre.com, 
	marcelo.schmitt1@gmail.com, jonath4nns@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 6, 2025 at 10:01=E2=80=AFPM Jonathan Santos
<Jonathan.Santos@analog.com> wrote:

> The AD7768-1 ADC exports four bidirectional GPIOs accessible
> via register map.
>
> Document GPIO properties necessary to enable GPIO controller for this
> device.
>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

