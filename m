Return-Path: <devicetree+bounces-133326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B37C9FA4DB
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 09:53:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2B8907A20A5
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 08:53:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96D7B1836D9;
	Sun, 22 Dec 2024 08:53:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xlE8zbwj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1EE80B
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 08:53:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734857619; cv=none; b=jerGNIuMExfIhZbMKd/oUkf2Enmhc3T/s65Zjq/2WUfmcvw2JOcSf6q1qdeM8mp8vMiFXjmxORI83qlefY2KHK5xgTKpBc0RAsmtJl2TE9p294UX74IOzletuzPJbNFkg1AQyiHTjt7k/OSwRd5U7neIAtiJLyqHA7Rc711EiZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734857619; c=relaxed/simple;
	bh=uy+9LyTXsAY/BQBuiIUA8MsV1hOwn7563EKaKnc5erA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AvrOf7jYCYX9sh5Oj0hydCpnbqYz8seSNch0QJ6zNbpYA+iC0Q/SNh+4U52Mj/q/d+wX5C8ZrG5Z7Fw5KTjeOzoEv8cUEPWASWudnRTqHjSdjXh6/M3HXizNj0+QEOEL+LehS1/nDjAMRk9kqWx5Oc36mhJmo3gYntbSdSnoohk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xlE8zbwj; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-53df80eeeedso3304314e87.2
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 00:53:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734857616; x=1735462416; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LqkNDF2+OAIBEt+vZBkgAIYRzlhyLbCcweDvqsNrSNs=;
        b=xlE8zbwjWPL3gIvYfJ/bAjikzb+oU+iMHqTS+Lz3aT0gxBJGGLb4kALawXODPCVkYx
         mluIS4oAnO5MzNbArwWjssOnFxbOR08FRpBsulimFd3PzYDltCZS13HKnP23VRIz9oMi
         L+bwxlYppNCAp2y2FHFB+HkKDrnRIJr8/14MbixEuIBEi0KfZ7MOzbPc1FCDBFLR9ccv
         qp7OGyxtgi2z8lhvFzQ/P9P5iDIvtdZnVeANoTuellW3D4ny6yOCbeOYCT+VMhmkxawm
         SlpFsTcn9pNtI97a568X4nlWksAo6DGc2rNi13X6pz7e2toFVu7VOWxTuiBVUzaQrGhJ
         ED5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734857616; x=1735462416;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LqkNDF2+OAIBEt+vZBkgAIYRzlhyLbCcweDvqsNrSNs=;
        b=MSLm4EbzR1QCO4stYR+h2ckxycdczfmeTqmIOpbpZSeFz3+JdAAASLZvvc32eC+761
         KeF3LQ+8X8rDVLeugS4+/SHy0D+QKD0DsV8Rnke+ablaORfFB1OWJLDBT+Hjt5YPI//m
         RapWGMuI0VUIYoUs8Nzr/knV8DILyQRj8RxySB/oEA47TcZZrwVotyUf5nqRBpP/vuHV
         OXp58mpBtTWrPtDSTLxNSWSNdP7tFScbtsSKJHldf6tDAuKLisHPc02NbGKCgiVAiw/G
         QHA3Rn1Rrx9y2tH8sCsWlby9RyDX+FWxNGnG9D9P3JR9m4As+/KmsinPuk2ZJUznaZ66
         BA0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUsg3y5cZ4jm5NPKuXS6K3i3iaJT6kQqQeQXziG9t6pFCv5pWqkdawT1aLS3kSzU3ELwab5+X9rIrZQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzWUp5HLTFkxmCoMwJLaykHmw+bjDbdWAHIQCW0utDmgskwL104
	pb41+n4p/wS3IV//mfgugoZZtD2lqyQ1NkG6sAy2GucfkUNX4rCuQCOwArt4q6XRzH3w4bx2QVI
	Y5eiIan6H+oYYOFKM0HBn1vykgo945M/YB6eq1A==
X-Gm-Gg: ASbGnctbHTChSDDrQ9vMBxPHaDA3eM0IpQ7bvuDAopWZH3rC6mZERuoO5XDUnw8GmC9
	cSDnIVqoW1tnIh9O4XlJ+3BhS9gWE272XwWwZ
X-Google-Smtp-Source: AGHT+IFVBFNKlsL8myP7J0bvsTo2nQeXxkAQfvBy72BMFyzv1dJd92Z01I4khkW9NjBLKbw1ibbqU7DjCC0Zb/rjtWw=
X-Received: by 2002:a05:6512:3b90:b0:53e:36c8:6e54 with SMTP id
 2adb3069b0e04-54229582067mr2654686e87.42.1734857615997; Sun, 22 Dec 2024
 00:53:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241219-correct_gpio_ranges-v2-0-19af8588dbd0@quicinc.com>
In-Reply-To: <20241219-correct_gpio_ranges-v2-0-19af8588dbd0@quicinc.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 22 Dec 2024 09:53:25 +0100
Message-ID: <CACRpkdYrmZBC+wm62brjPtArFhxcnNY2=sw+8jHiyproh-kPtQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/6] Correct the number of GPIOs in gpio-ranges for
 QCS615 and QCS8300
To: Lijuan Gao <quic_lijuang@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jingyi Wang <quic_jingyw@quicinc.com>, Konrad Dybcio <konradybcio@kernel.org>, kernel@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Lijuan,

thanks for your patches!

On Thu, Dec 19, 2024 at 9:00=E2=80=AFAM Lijuan Gao <quic_lijuang@quicinc.co=
m> wrote:

> The UFS_RESET pin on Qualcomm SoCs are controlled by TLMM and exposed
> through the GPIO framework. It is expected to be wired to the reset pin
> of the primary UFS memory so that the UFS driver can toggle it.
>
> The UFS_RESET pin is exported as GPIOs in addtion to the real GPIOs. The
> QCS615 TLMM pin controller has GPIOs 0-122, so correct the gpio-rangs to
> 124. The QCS8300 TLMM pin controller has GPIOs 0-132, so correct the
> gpio-rangs to 134.
(...)
> Lijuan Gao (6):
>       dt-bindings: pinctrl: qcom: correct gpio-ranges in examples for qcs=
615
>       dt-bindings: pinctrl: qcom: correct gpio-ranges in examples for qcs=
8300
>       pinctrl: qcom: correct the ngpios entry for QCS615
>       pinctrl: qcom: correct the ngpios entry for QCS8300

I'm planning to apply these 4 after v3 arrives with the collected ACKs etc.

Yours,
Linus Walleij

