Return-Path: <devicetree+bounces-250944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 987A2CED290
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 17:25:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 59B4A30056E0
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 16:25:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D6072EC54C;
	Thu,  1 Jan 2026 16:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gS36cKCF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF69E2C0F72
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 16:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767284754; cv=none; b=IaHa1Xw0wvNhp3Q4LNHKmz1J+tdGu0hZujJicdYBwhn3FfCVopuND3IprwPKpdBAve7FmDXGB/waEFpPtVDfkzDfxBFTb2WrKz5RTRtp/Fp3AHRQsj2LodI5dx9/d9dFGLc7OqiJr/TsjUGFJHSrm1QJ06rL2AjvZ/EWBuzPGdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767284754; c=relaxed/simple;
	bh=2r4VTLT9xan+mgLSR2xWbBRlHL+FGtUT3aWVAlc1cS4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gesHA7jMtEFb7FLSA6jixdmUX1XAUB4ERuZlWi5np2lFD0kUkLS2JbppNSgUzNpEp5cqPaiaC5QCYjIZyX+9g6YmdoHORXpzCSjwMBPtbKvr+sfPmQEHG7YS1e0WJLeaKmgtds/JVDUeqSp7Gck5pgeJqdTQvr69NuN3aRni4kE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gS36cKCF; arc=none smtp.client-ip=209.85.218.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f67.google.com with SMTP id a640c23a62f3a-b728a43e410so2195024266b.1
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 08:25:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767284751; x=1767889551; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2r4VTLT9xan+mgLSR2xWbBRlHL+FGtUT3aWVAlc1cS4=;
        b=gS36cKCFinc87Dfh4Imjym0wPJokOyI6zr6kex3LATuW3/y/dJbziCVrB77zfzTz4A
         4V7UOcyh5Tvntn6qOHZoF8zZFjZTz/KJ9R/8RGw1L5YXHnsi+FzLWpMuRBBs7DjR0dI2
         D0zSjEJhsYhNcSJQxu0rqGH9gWvru/zxXD3QopuBonHN/pa1aJavOXbNYfXRAqyarbal
         VXpndEIwWX0S69rGxMlqGUtck+dUIDn1Zm1xz3dqa1SaCMS7TtM+f3rjxDEzRowsqCoI
         U4EWtPM6NYa+efhTtkON/ZHkKbras0XvHpGAGTBtryEjyQRMe9h9wu19kp1blY8PhUqN
         Arow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767284751; x=1767889551;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2r4VTLT9xan+mgLSR2xWbBRlHL+FGtUT3aWVAlc1cS4=;
        b=aE2XXbwZ+K3FzuAVVYqLO62fYHWzwIktDVT+4HSW4GEk9doScrhPEcd93TjXXZ1lNQ
         izcFl0UjFFYASkqktDyVXsifcK6rMy35jrvFV+7comHNW5AESA7RScUgtkx368/PvDz3
         +YYZhcAkKoPJ2SDYEX1n30SnXwr6OjXxrS3780SF3H7rQTduN8BirdEfjr1dVOhVc+Sk
         bTRLf0yv2lUde16Ifwu9Rql4SzWNa9o/OL8wTIZ2Vmj9X9Ui1arvbrg8hjd+gu68VACp
         hlTdjqaQrdIKws6g4JdZkLiD9nF9C0T2drgH0Gw6gbPOooXqk1jNRWwuRMtgkxvEdy+U
         VxDA==
X-Forwarded-Encrypted: i=1; AJvYcCUjbBOciLjeDQhsAMCFrNquBlxhazhT3l0GHSW4/Izngy+iir5FeSpmm96bs3DlV+bJA5zgXlS4yb1J@vger.kernel.org
X-Gm-Message-State: AOJu0YyWy1kFnRrqhjv9O7xZTSQTNX/pVNQxR/O7RDJKdG5wVpebBjF3
	6hcLAQyETQkmksqqobYRMCZ/iPbNpCNf5NlVCFbQ7ExGgBC/nlytjhqCfTcW3sv3mpr2jkwpr/D
	D1bDE6azW0q523+vNlLyFz6D+Lsr2EII=
X-Gm-Gg: AY/fxX4fCUY2gSwS1Ew3ovhv/grgvg7HitTDNeWUzgsa8nXCR3m1mqbYq59ZVIPUMTZ
	kIPzhj87mCj5JAagzIQlQl6mZpYEh3Njr17Tac2XjgvkZ5h1jk+CptFNT7GqHHq5TxaNLd3nMAF
	4vSqX/WUak2Hd2T++AKfmd4O5uJMl1K8d2fBUoEVftm6fhT9plNpB031gu69VrCE+SPAX14ptjD
	Aya8lzYfO6iECcqBNwZcEFsIt5PKi0J0LvC7xVaXS/xa+bKCoO4+2h/FC4aOgjJ6JvKHcw=
X-Google-Smtp-Source: AGHT+IEjVDdR44NrCRbTMZck7fShtWvQJES837s/kqS3/7QCo/r7wj5KNn22/vOnGrhf6Fau3jxa7OrP0/qvVBOFOJA=
X-Received: by 2002:a17:906:730f:b0:b73:9937:e96b with SMTP id
 a640c23a62f3a-b8037183903mr4408428666b.52.1767284750947; Thu, 01 Jan 2026
 08:25:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251221083902.134098-1-raskar.shree97@gmail.com>
 <20251227174559.33539640@jic23-huawei> <CAHc1_P6m11M=1bP-0k_ndgtkLtfnkSCMScznCC+HnWWQ1XtGHw@mail.gmail.com>
 <20251231170819.0365d731@jic23-huawei>
In-Reply-To: <20251231170819.0365d731@jic23-huawei>
From: Shrikant <raskar.shree97@gmail.com>
Date: Thu, 1 Jan 2026 21:55:39 +0530
X-Gm-Features: AQt7F2r-A_88P4yhFxjZCiTWn8IBbIceztKgquaZJfVxkPOxlc5xnP_KYHRZcm4
Message-ID: <CAHc1_P4TPzWVMrcrn-Jt23a2GF6+a2BDrFyt99b6m7ao98PKuw@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] iio: proximity: Add interrupt support for RFD77402
To: Jonathan Cameron <jic23@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, heiko@sntech.de, 
	neil.armstrong@linaro.org, skhan@linuxfoundation.org, 
	david.hunter.linux@gmail.com, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> If you continue having problems, take a look at the b4 tool
> and it's options for using a web gateway.
>
> https://b4.docs.kernel.org/en/latest/
> sending your work.
Hello Jonathan,
Thank you so much for sharing the b4 documentation. I have successfully
submitted the v4 patch-series using the b4 tool.

Regards,
Shrikant

