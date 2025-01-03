Return-Path: <devicetree+bounces-135426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6F3A00EDC
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 21:37:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9CCE83A46C8
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 20:37:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ECAD1BEF6A;
	Fri,  3 Jan 2025 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="nmnb0TiH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 942A91B85FA
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 20:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735936653; cv=none; b=M5NfXo/lNWbcAE2C8NVfomkSDrwGh/9lz8gHkruo9rnPyduG6/OoLQtGGhp5gpNiIbm56Kf7Bi1aHEn75w2zyrOH2/vMSzyecOkF0pw1rxA6ptyk1Mfw5p8Jta/Uw7tH+qB0oIqALlQUY1ZHLscZMjeJ7GpKxk5M4fp+wiDgLdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735936653; c=relaxed/simple;
	bh=IcW+YRhLC17wMuxfvpweCXASJ4X50+pqxzp/4Y7uagU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=A55pPrt6Zn61UwHab75WVvAG99KAS0CQycw5VCSh8eyNMRmslVAJLtsy5p26bt/2mNfWNAvEjc7Jurf9vRTC2VN+ebOQBx0WsPZIOt3cUtHP0H0+1PJJ7Z64Al5YXK5yLJ8EzYkDJ/azak6PsFCFNvZKiz4s/0nHowctoB91V4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=nmnb0TiH; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-53f757134cdso13583222e87.2
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 12:37:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1735936650; x=1736541450; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IcW+YRhLC17wMuxfvpweCXASJ4X50+pqxzp/4Y7uagU=;
        b=nmnb0TiHgVP8CtfbOGQTPt9zJ5aouQXNzOwOfDHSD1+DpHKd3ijyZIDPUOaZopTlbL
         PQav5ieNG/XradOQ+y5ckfzn1FvbAMY8EejyaIujT7BBVaSys/wXvtN/XgfX3ZtEBkF+
         1OWJXucjbwGczyRS8gY3k34uIUyoH/+FOh65r2U33oiIPAhyzNhiUBWnYxnhTVXCJznO
         SEHcZc/U+s+e46VqYtKnK6naruai2QsGpvy4o+bb8+JIVnh9wIs9Y5ZJj4JrkYb4XoIY
         Z528foQX8KyQOOZDd8sqEO1KUeurrfAPPFGZjapJuaHZtraybb0897pfBdH72C6JurPz
         RWMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735936650; x=1736541450;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IcW+YRhLC17wMuxfvpweCXASJ4X50+pqxzp/4Y7uagU=;
        b=MntPlbfXMQNX8XLErymX35E411cTn5sVfY4cbNjC6nk2gmrn1YAF9WYrGGP9U/fY3r
         Ek6Kx6lPEJMM1xbp8ZjCPp0mNaHj7OptAECc8ItSVL+JeGlHp2tHNDWO77b7YPsJXtFu
         DghKQEEMif3rq2/WX9WVJKfA81kjsazmob/HNd6321cCq5MoWbFVypOYXySRbXDX8vrV
         ltvQ3mepbpoyQL8RprwAIuwQHvGQ1gxOb3gsWI2EtwGsZrTKwib1j/4eH8www8IoF5AR
         L3m1hvh1j9rOVwgi2zVGozn/qw6VqqSAWIdbLhn4Ya+TyVwJ1cPdKwPy/B/t9y11z9DD
         OjhA==
X-Forwarded-Encrypted: i=1; AJvYcCXTkLp6HPLsWjKaU3rNEVIC/+ii6Dx0HynbS9hsT/BQV+aa7+azpBwm+E3mP204s7sX6YGfvSQAT8uW@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+XJwsBGvjsCV9Mgmjxealtvajahy+jRhb9+bFpPpkWDan+PTx
	zfrwYPP+r+WaumxOGEnfO5pL1wrE00zOjhZTyV+YeU9gp0OWvDiiw+cOODttz6048vtiYFRwzpc
	1jVmlshAZKyBbA9fR+8MMb0OS6hDDO6LVhp3Gxw==
X-Gm-Gg: ASbGncspPquDc5+0gJC4SbtFXztLLDoFi1XSgrk4zR/uKPTYj2/4fvt6oLUBdSQiMZQ
	Kc0s4Zq45HXlSI5LGP52n4US+7HJfN0nP7QbRXWDexpnwu5hAwJEMv8jiO8raeC0VErXb0w==
X-Google-Smtp-Source: AGHT+IElo2uNzbI2yxezV962zG4A83qUdJfBpmfP5k3TqUGmdQidzq8s9ge/UzIYrQyyh7g9kHfGo+UfaLJzGbZ0vyw=
X-Received: by 2002:a05:6512:3352:b0:542:2972:4e1d with SMTP id
 2adb3069b0e04-54229724e7fmr12699339e87.37.1735936649705; Fri, 03 Jan 2025
 12:37:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241231-pci-pwrctrl-slot-v2-0-6a15088ba541@linaro.org> <20241231-pci-pwrctrl-slot-v2-4-6a15088ba541@linaro.org>
In-Reply-To: <20241231-pci-pwrctrl-slot-v2-4-6a15088ba541@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 3 Jan 2025 21:37:18 +0100
Message-ID: <CAMRc=Mf_WXkmEkOU2V+8uwuWu9YTEiEzj3Ah3_PeJKRrCPSn5w@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] PCI/pwrctrl: Skip scanning for the device further
 if pwrctrl device is created
To: manivannan.sadhasivam@linaro.org
Cc: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-pci@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Qiang Yu <quic_qianyu@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 31, 2024 at 10:44=E2=80=AFAM Manivannan Sadhasivam via B4 Relay
<devnull+manivannan.sadhasivam.linaro.org@kernel.org> wrote:
>
> From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>
> The pwrctrl core will rescan the bus once the device is powered on. So
> there is no need to continue scanning for the device further.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

