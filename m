Return-Path: <devicetree+bounces-93431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58292950DAC
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 22:12:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D6BB1C21EF1
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 20:12:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A23891A4F26;
	Tue, 13 Aug 2024 20:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kali.org header.i=@kali.org header.b="cZp0fMT2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D806A1A38F6
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 20:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723579935; cv=none; b=t3SczhBaWY7X8gVaA38OENhui/HZUx9np88vk87sikOS0DpdqFVkp5peXWP7KFtUMd1yc3sFpCOakapvFe1w0/hy6G9AjHRffG/QDVeFEh0qInHIwg1yL7ozoSJx4FkNsPyhVhWecXOzb3y+EE4DBtUv0bsb1MMMcpyRxKSf0zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723579935; c=relaxed/simple;
	bh=c/Nd47l6PNwU0M/Usiki4I2g5L1xvxlzkij/f/or1VI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=P9DL2nQZghlw3VYrEckR3EP+7SceGEfJee1qD7gJvMEnNRMGsMSEF7muYlfgPHfPeCv1Xvzq13G1GRs4ed5KMxIOg/xHftyG1RGrcWEeTDBAozs5pZkL3QdT7OoGPgCsCwzC/WHkSoKPpi4TS3948YgIXej6v9ZWsARN4cPU7jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kali.org; spf=pass smtp.mailfrom=kali.org; dkim=pass (2048-bit key) header.d=kali.org header.i=@kali.org header.b=cZp0fMT2; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kali.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kali.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5a1c49632deso6510967a12.2
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 13:12:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kali.org; s=google; t=1723579932; x=1724184732; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZZkqFEKfgA62MBE94ncqpNAE1sXGUAg2WiZjdurlqhc=;
        b=cZp0fMT2ze3TeWLeQAxJcw75FbNicODqd/Mo0ji8IvRN6iNKvcSedTIg1LZiCjJGw+
         rQBiJyMRCk4lpLH6gaMRT65TrMXwQCtgWrBPZbWKAXoiJxtpYusSh/wql863jR7Ao+kA
         4FPws4QgndvPHaGdcui6LDJXIuhvZPeaTTuzNNpNpq6EbGyDr/gMzOUFVSSz9h3lvhLr
         4f5MfCC0SYkFa/n0HcZK9JNvBe0HnTNvJFrDWGkb1P5p0HVWAdSuDyxzWru9+hwEX+kb
         H5Q6H6uyntVpIxPOcW1tq7FSAQHsVkYOJTBFprBFfmVwn230L6EJ5EohIgSnAoKqmGAo
         UdNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723579932; x=1724184732;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZZkqFEKfgA62MBE94ncqpNAE1sXGUAg2WiZjdurlqhc=;
        b=LUXuoodi4xD7H2K3iQlHVe+CcSFWD1pS0/q4RcvPH0Sm/qUklJn5r8C+W16+EWqHlE
         DWTJddd70o9s7QM6hsNW/kbjA16g2VjGAV/NT6/nlbIhoeZkJRTVmslyLXv58sjANG+S
         gI2B9B7Dcn6k0UXvE/6mVwiGHuFrZg8xU7LYRecZKCV6spZ+Usqkmh7qk/1DJXM6LdfO
         gZS3Zbut/WQJxnYLddFzMud9+naHT1W7kdTRtQ9coDRklHZrKzWLh3Ftg4+O1kVLskRd
         40rfDoKOk7cImva74/t/vwWfvnap9e8+N+QAfkB7B7ujbVXwa/+1va1PgsKMY7198gVH
         axtQ==
X-Forwarded-Encrypted: i=1; AJvYcCU3lEymiZnsXFffHSZF4pBg6oyfLVTUnZUj63uHtxfeImYQLtRdInE4ohk/B9EqfTwn+YMLobxQCZlS7Te4gamqATY102eAoXlZzg==
X-Gm-Message-State: AOJu0Yx9rfKr3hz/bWHFdzCsD26m5pFhAoB0c9Fok9dZaheRqOkza9cW
	0VXEoyh1GPeJMMu1ls/fky6SOYP+qSODkDF/0A36zZ33gFHc28GqHxeDfTa47CW7dQCiLl1wB8a
	eJp1zRXyAdPmZ/JzhWwnpXgShGmrhzZOse5Cql4TNeV6A++pmlnyzEQmC
X-Google-Smtp-Source: AGHT+IGlG/zcS96JKH5rJkRdWHJI2dNwey+vY6gYo7ofXGnhVUsUxmEUw9uBzFyOrKjBRG7R8jS9okIudWzJ2OCWgig=
X-Received: by 2002:a05:6402:270a:b0:5a1:bda1:3e23 with SMTP id
 4fb4d7f45d1cf-5bea1c76667mr467488a12.14.1723579931923; Tue, 13 Aug 2024
 13:12:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240813190639.154983-1-brgl@bgdev.pl>
In-Reply-To: <20240813190639.154983-1-brgl@bgdev.pl>
From: Steev Klimaszewski <steev@kali.org>
Date: Tue, 13 Aug 2024 15:11:59 -0500
Message-ID: <CAKXuJqhuusKMgVj7k7DEEBCSW6VjRhiyqoD6usaoSnawMxODaQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] arm64: dts: qcom: sc8280xp: enable WLAN and Bluetooth
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Bartosz,

On Tue, Aug 13, 2024 at 2:07=E2=80=AFPM Bartosz Golaszewski <brgl@bgdev.pl>=
 wrote:
>
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>
> This enables WLAN and Bluetooth on two boards using the sc8280xp SoC.
> For the sc8280xp-crd we add the PMU, wifi and bluetooth nodes with the
> correctly modelled wiring between them. For the X13s, we rework existing
> nodes so that they align with the new DT bindings contract.
>
> Bartosz Golaszewski (2):
>   arm64: dts: qcom: sc8280xp-crd: enable bluetooth
>   arm64: dts: qcom: sc8280xp-x13s: model the PMU of the on-board wcn6855
>
> Konrad Dybcio (1):
>   arm64: dts: qcom: sc8280xp-crd: enable wifi
>
>  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts     | 169 ++++++++++++++++++
>  .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    |  98 ++++++++--
>  2 files changed, 255 insertions(+), 12 deletions(-)
>
> --
> 2.43.0
>
>
What does this patchset depend on?  I'm assuming I'm missing something
in my config as I've tried to test this patchset and I end up with the
wifi and bluetooth being deferred on my Thinkpad X13s

[   18.655330] pci 0006:01:00.0: deferred probe pending: pci: wait for
supplier /wcn6855-pmu/regulators/ldo9
[   18.655347] serial serial0-0: deferred probe pending: serial: wait
for supplier /wcn6855-pmu/regulators/ldo9
steev@finn:~$ sudo cat /sys/kernel/debug/devices_deferred
0006:01:00.0    pci: wait for supplier /wcn6855-pmu/regulators/ldo9
serial0-0    serial: wait for supplier /wcn6855-pmu/regulators/ldo9

