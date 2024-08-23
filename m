Return-Path: <devicetree+bounces-96211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A1B95D247
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 18:00:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5FB462840AF
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 16:00:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFD4918BBAC;
	Fri, 23 Aug 2024 16:00:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Iiwad0iV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0174B18BB97
	for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 16:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724428807; cv=none; b=XBMFUkI/ItBC7Zai3OfKTAYtIuW2BWFt37+Ajoq77eG4oJIQ0lc5y79yxDXjK17BTPGl8nqUCEeDv/Wifh2iAbsEzqtmouJVDdKyzxfUu5ek71XRsnxluDbXwBIftVnaPvvP+Xl9fWxSHe4Zj62Fwac73K4/mgHz4sJJmPMoV2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724428807; c=relaxed/simple;
	bh=N9Q+HfstvZrc3Uyj8dpSq40+6yhOtXrkXeQ5BkBE9Xc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kgtGtuasuDggjNzVVEQLGAAfVlM5WlpYWsErcZgotfq/PAZvTmHfTvkd8zSCsCeIOvzvzgib3h84kuPpF+TLIwXc8mYrxmVlCVAwc+vaQDh5/irhNN0Wi+G60koAhbPfyXajG3DtTXm1qfuvpyBofy/2Mas7XV+AjnQeNn7qWRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Iiwad0iV; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-53438aa64a4so968833e87.3
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 09:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724428803; x=1725033603; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N9Q+HfstvZrc3Uyj8dpSq40+6yhOtXrkXeQ5BkBE9Xc=;
        b=Iiwad0iVu258zc/Oqitvsvpcp77cYcfVRtrErPCrrzbY1n7eWb0M4IWsouWyn/FVMD
         QC0evnXVtfiTNNkndOJniMSABAjTrilzlrxkM2yF8w+/mlQDkmSJWvQZC6nW4UosyNpK
         y22ZhrScMOXJVw4rRjW3a5QFd7qcJtkfPXO1dx6ofEZl7FoQebvE6RTCNbRSz27IrtSx
         DSFsx2K/WWCfyYZ9pSPzNrbU7B2U8gXsUvhvNl8JqAyFT+kLqX/6cKjzf2xREr4w8/Um
         iQGSM/a1QFsJNIwkRD2DnJVMsXAgSCwMZcMP2Fu9jeT31owhD1hQExuSxljO42SJyKrj
         /jzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724428803; x=1725033603;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N9Q+HfstvZrc3Uyj8dpSq40+6yhOtXrkXeQ5BkBE9Xc=;
        b=Lu6Gzt7Iat/4vyDODivhrAUFTVGSYKrIHipaJ/FKzZI+j2B89Kla6Uu6JvE+SK1fPM
         HUFsF+MXCTuqN70anhAd8DZfWWU6tI23lNhE6X28rNg6Z84iM2GUb2FUVeOC7i7QNR73
         dFElJwjoHx7Os2wadMVhrs9TLAOH/WkyX4zDi8UM3XB7cJbUL8mqcotSqVpIpnr9FIe2
         /ACoXuk8hDX86ARCJ0HKxaarOaafs+Imb+yBuCHn+4gUcKbya91wBnEuOYbJnIE7b+EB
         JD3x1cRxOQJFRbsrkgexeW1CxW0BCcehy5MxQtJrRY/2th6C1vpgtuASAsAW1YYJz5rq
         qYjg==
X-Forwarded-Encrypted: i=1; AJvYcCUmQpCgFOBolFeN3z6TmNwWniTcUeqrnnIaXqLSmLzKtSFDCKCeQe3eAYVRCMmJC2BCBTutbCu3yqWM@vger.kernel.org
X-Gm-Message-State: AOJu0YyWZOqI6YG6h21rqoCKW4IABAMAE0Xy9Bjl+c3eHpcFZr3sqBWu
	zy0oUfLX+/jJ3v9h1cuRf/b4MyJewhG/XJV8JIgm6Z1tl36Jx9gEUYh6JcKwJgHXSWlCCiB6Uwc
	vtqa8Va2U+ywqw+yhdA8mIkLhfwpZ2NB80kY7vw==
X-Google-Smtp-Source: AGHT+IH08LPEDFU5VHx7AqFMaGHbX23x27JBvOmuBNgaED1KnPIFyOCr2R1LWU/ISWTOYE+H7pGSrEdTHvtQQQj5kqg=
X-Received: by 2002:a05:6512:3088:b0:52c:9e82:a971 with SMTP id
 2adb3069b0e04-5343882d1ccmr1899018e87.7.1724428802573; Fri, 23 Aug 2024
 09:00:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240807082843.352937-1-ivo.ivanov.ivanov1@gmail.com> <20240807082843.352937-7-ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <20240807082843.352937-7-ivo.ivanov.ivanov1@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Aug 2024 17:59:51 +0200
Message-ID: <CACRpkdYdJn3jSmur6q3+NrURFTQJO5tcxV=aTGXk7JfPyN1=ng@mail.gmail.com>
Subject: Re: [PATCH v1 06/10] dt-bindings: pinctrl: samsung: add
 exynos8895-wakeup-eint compatible
To: ivo.ivanov.ivanov1@gmail.com
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Rob Herring <robh+dt@kernel.org>, linux-samsung-soc@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 7, 2024 at 10:28=E2=80=AFAM <ivo.ivanov.ivanov1@gmail.com> wrot=
e:

> From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
>
> Add a dedicated compatible for exynos8895.
>
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

I expect that Krzysztof pick these up unless he has already.

Yours,
Linus Walleij

