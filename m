Return-Path: <devicetree+bounces-240245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 69367C6F45A
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 15:26:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7F0F44F9650
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 14:17:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0547623A9B3;
	Wed, 19 Nov 2025 14:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gg04QoV8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2561C255E43
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 14:17:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763561822; cv=none; b=kqhNj1aqGXxJQ8QL3ezgUAyxnXKgU6JJ5B9j/m9RNCb6U/hyMEWHqYENLl1XMSf+aEPAp4dNypIlABtRWfR7nlhzEh0On37ymiKxBHbZraT5qcPwHoij8ZlK02Ot2R1WjDbZZSEMNvA6gwzS2DMAnNA1P9Mj2aXd4rqu0g5RYxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763561822; c=relaxed/simple;
	bh=awKddCc3yTAuC3bB9cWOYHXwvySxzKFc6nPBtbPY9B0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Np3Umks1Uw4r6b/G3udxQq0gj4PnnYvBBQJvFOHYZJqxwlrEYRyhJS12rhsU0W62otyfGjBeIsa9F4pamoMFeeSRskbKCcQx+jG2F0H4lVOus8BBGHFO5iQyxpl1DNHJXjKpmPUc+Iy5ih08xDhkWJIJkAhNyuPllJ6Rbec/nTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gg04QoV8; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-59584301f0cso7006061e87.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 06:17:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763561819; x=1764166619; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=awKddCc3yTAuC3bB9cWOYHXwvySxzKFc6nPBtbPY9B0=;
        b=gg04QoV8wv/+a8a1QIkdPfWGLdQ4Ws/yw9yIu2xM5P1gfu8hu9SvX268d3avRMyuL1
         ExLpQCTlHCjeM0rcBdqyKJBDOv8LAX50s8GRxuLs0ixpvPeeplGHxDueNLVt6qDH6+h/
         h/2E4MTHUxJrRVHbdtZUF+wpQibP3Bm1n7w+YbeAfz+E1oC+X7OgAW2Im0FZGq4JkUI2
         IIjhQaNMSfWrlTkd+X6N3NQ2FcVQA6/efWd4pZs5b6CecvfBmSdYhD4xzb93uoZRljMo
         k9oJgeJenirCrp0lrTJKut1WtjbQqEIE4YhWt+UmgyP3eeKIcX6jRCo++whuSqhrDMjq
         A/yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763561819; x=1764166619;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=awKddCc3yTAuC3bB9cWOYHXwvySxzKFc6nPBtbPY9B0=;
        b=j1WlHckqwAxJcICFcTHJmzIIdBJSqXyvq4PFcN16gYaxyTB0z+HXf1jciuUiQBNL92
         XjVU4Qvvfz2X4rBNSl+iiapfAd19K+sd5DEhjUAaypQLJKnqbp75HMHfOVP10itGhgoa
         VbERRBePaghhWPqbAs+FErdEcBzO8eOreK8YqKsz1HH03Hin8wSn6hZGZMkLnueqsamg
         VR+OCzE4RoWxlwfb6g4I/FDzvA//8TTNJ2Zqm6L3myB1LQBmNHZ+jA0Dfw7a7sxNmQMI
         suUkAUSF30+maqw9wYq51NNBXIZPe5lLHJnX7DcDfgEusG7IaULmUo8/QXwlD4xn9mGc
         yYXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPZ6oHgSH5k4gkc//xxJ9G18c4kuV6G1bzkD6bTAk5ug/ODD7EswDkboS/fzcoJvyubE/A7ZZES+er@vger.kernel.org
X-Gm-Message-State: AOJu0YzN0UJCbj+6NLO0PGO0diffWBl2QH78rs/raXbIf8OnjbQ1gCNq
	iRm5BDRLwyVAT/q+38ivfBbaWtUGNTiTIx5c/bE1ZfqqPsHRPHx1Jb0wSvyexQx9TzoqUTWJ1pR
	Ko6ADWEPqeUjlJTrwXdq5tDVeiet32wzjxN0hkdoguw==
X-Gm-Gg: ASbGnctH9nkq3FjRbQHuLgVgRXy+9l5l3MS5TXzN1/MGHsS+QhZG0znxdpPo68T5zPh
	mgfL0DrgXHoP02AoLBwoIGzxrKCVem/M7eAxi2v5y/7xUVDGnWLiXmyNdlIzU6hys2VsOZsDlrc
	+tJ0cXvkWWj80gICfi0N+OsDfzO7XIyR4IXruJyPRTWSRmEgwlGJS7hEtabOnx9AO0Si5vRsfeA
	In58W9ckTQ03av9Ujp27vIknVjpFezyF68tmBPRbNBJIWPiRh5hpK9LU6qZ58OROfHzpvk=
X-Google-Smtp-Source: AGHT+IGairnJxnYRKkuHYVw0JVrBsc+2FMWfccI9lHotg2DPX4sHJAgyu5upYOPaMi5aXgvof+7aycNKLZqXk7xQ9eo=
X-Received: by 2002:a05:6512:230a:b0:595:7dff:ebb1 with SMTP id
 2adb3069b0e04-595841fa4d7mr5909063e87.36.1763561819191; Wed, 19 Nov 2025
 06:16:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251118161936.1085477-1-antonio.borneo@foss.st.com> <20251118161936.1085477-3-antonio.borneo@foss.st.com>
In-Reply-To: <20251118161936.1085477-3-antonio.borneo@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 19 Nov 2025 15:16:47 +0100
X-Gm-Features: AWmQ_bn95RYU3PYx77I_yIH51aH6sidmJ5f83D5VEpU-6oaLBlEbr7SStcwerBw
Message-ID: <CACRpkdYuRas_jgi5K9hbxtJLrxxQ+wS-dJcunT5m48qS0tKXAA@mail.gmail.com>
Subject: Re: [PATCH v2 02/15] dt-bindings: pinctrl: stm32: use strings for
 enum property 'st,package'
To: Antonio Borneo <antonio.borneo@foss.st.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	=?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
	Amelie Delaunay <amelie.delaunay@foss.st.com>, Pascal Paillet <p.paillet@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 18, 2025 at 5:20=E2=80=AFPM Antonio Borneo
<antonio.borneo@foss.st.com> wrote:

> The property 'st,package' reports the SoC package used in the
> board DT and is used to inform the driver about which pins are
> available for use by the pinctrl driver.
> It has historically been declared as an uint32 enum, where each
> value is a power of 2.
>
> Deprecate the use of the numeric value and replace it with more
> readable string values.
>
> Signed-off-by: Antonio Borneo <antonio.borneo@foss.st.com>

I think Krzysztof is right about this, deprecate the property and
(re-)introduce it on the top level in:
Documentation/devicetree/bindings/arm/stm32/stm32.yaml

It may be a bit quirky to get to this property from the pin control
Linux driver, but it is the right thing to do.

The Vexpress has some inspirational top-level custom properties:
Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml

Yours,
Linus Walleij

