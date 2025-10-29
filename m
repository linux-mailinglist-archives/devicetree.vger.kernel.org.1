Return-Path: <devicetree+bounces-232722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 463D4C1B074
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:58:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 25DD5660BEE
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 13:22:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36FA63358D4;
	Wed, 29 Oct 2025 13:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="RuSYPpDF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79B1C3358D2
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 13:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761743754; cv=none; b=dHBlMmYJ7fVXVL1NemtfNNpsGka5HwqaMGgpM5n7I/qLbjS9xRouPNOIrDFj90R94aho5QReu2BZo5ZXQr/tZE2XvZcdKU+9me64l0yInhDImishvHZJrOXX4kY9pxlI5dxE7F3oyVzwM0nQDbPbNDrwdIpXuNt8fBTvXtYoFqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761743754; c=relaxed/simple;
	bh=idJ1/xpsY9Qz5yevc36Vw8gxViLPchWiyXx0zGa+jFw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qdHFLSUrgHG4ZOJkLigIf54FO3q4cWqMEmsqJOvV+SN8l5wMPTKYCjrIHUGhJgnWIWTKVK+LmOFFVZd7gIDdJi8y4mf7GtLKgrmmGu0Cv3ZWhDZFm27X9dxtYj2I3c+DROAOxhqVW9Uzs8Qk0U6Z4pC1wO6fkQddEN7pgn0ab7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=RuSYPpDF; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-57bd04f2e84so8755200e87.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 06:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1761743751; x=1762348551; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oOUisOdkXU0bOduvB/ByBLb4wJp/5x2Vdu+Ct3A15wo=;
        b=RuSYPpDFB4REAVfafBOGVygb/P7rkfXo3U5o7RAbKuf+FFtQdoHehowXFNnsFCLPKM
         lsahh6Goc7ckmd8JBWRgi/E9gqB8MQg96XDwUWi1d+nXwsaHUHRbwiqSfcNcm1EzSoVf
         jitUK50/2fXnjO1Dg+OKrHZouoTWCKozi3cLm9ahFPz0neptppiUdWslHosJ+xsEqvLh
         qsoDLF3LmbaI28247Tn9fpyI7UXyXiTgY7h1kNq0Jd4W6EJiW+hPhx7bEenLKS2YGnbg
         M2a9IsdyW1RGosdkcI5gUgKW8d8oE0Zm2V25u9/caZzaH3cme21/ZyVfMtLzK7BUnoIf
         PAbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761743751; x=1762348551;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oOUisOdkXU0bOduvB/ByBLb4wJp/5x2Vdu+Ct3A15wo=;
        b=JacHIMlOdC++5GCa8ENHEuCy0B7lfeMkKdUlknfHpuvWBLKZIJ01T4IMCjDjZXbFJ/
         lancltV6QJ8Lx43ve5sYyAATfktr8biAW6k2fQ8Jrf/bahT7/1KKvC3DiwfHebKjiIyB
         IAw+R/CtRPZcLaLL0ZCBEkTWAxmCOVHumdS0pA+eYJ0Y3rQF/dbQEATAdDYxHt7kRkGa
         YSEJL0zac2M95UzEvt1S7RNxK9ChQf49QOKuY6Ujjl48hN6K8J4heOTR1PJYT1qfuXeW
         vMgzkHWpF5mbve0qI/fCqrHj41rR/tW9B/fnQHrOO6jroeV+d/1Yiw07LvWCpDaEmdjx
         Q8TA==
X-Forwarded-Encrypted: i=1; AJvYcCUbZt10O9yDaBCMhPtwXrk6I22xg2HI1mz3JE9mnk+jYcYaML3MMMemRcL2wCq6HSIGWesu5DZqRaqI@vger.kernel.org
X-Gm-Message-State: AOJu0YyBitQ3emqRSegcCddkuVlcL2wLsn8OME5jrAXgRLrk/X+9nPI4
	WB5XuP4OsEEnZUVBhKhPud4rhWq8GDQn6qfwpdKq/cZmAu/0FsUML6HZjsjeLEHnEYAfkY/gzV3
	yKdbpP9xdjsrIgRuMevdkWdp78y5eVJUICqs2gVsTsw==
X-Gm-Gg: ASbGncvoJKAJL8RiUv0qs+4cHOyPXaA3FahTE8VZ1aT00H+v4K+QLubXFfl2Q36gnke
	C9PjHPZvscn7VrW7q8cq+EVfWs+KuVwRbK4MxjS0WJgKx7CdJLS5S4LuxCR6pDrxo4axtqIdNRu
	d0ab+YhySr7t+dK2fiJTYRPXqwlQ/ev0gFQBFm5LQO70CykjoA8g44gSX3zLxpTQ8uhFSNol5YG
	8EGlRJ53QUeHKAt8ypV5y9ZoccnuJz3hYFJwzEf2XhTH84zYXuEn4xP7MS1S8Ek6qEKa7W+3VUS
	1Qj4Oqx4WnlMccmenXE7zndkmr4=
X-Google-Smtp-Source: AGHT+IERc+XWdsch1n0sjpOQOzD+cW2IjfHO0Rpz1QeHwY2DnN9gsWkr3+lO2lQRgACmeZoFB2eG85VNyJBLdF9v7Qc=
X-Received: by 2002:a05:6512:e84:b0:593:5066:8e35 with SMTP id
 2adb3069b0e04-59412878b7emr1119097e87.13.1761743750670; Wed, 29 Oct 2025
 06:15:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251029-qps615_v4_1-v7-0-68426de5844a@oss.qualcomm.com> <20251029-qps615_v4_1-v7-7-68426de5844a@oss.qualcomm.com>
In-Reply-To: <20251029-qps615_v4_1-v7-7-68426de5844a@oss.qualcomm.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 29 Oct 2025 14:15:37 +0100
X-Gm-Features: AWmQ_bnxen2afRHV8wd2ApkjxBH0TleB__nu5t1NsDGu_HDLvXbdqDWBWRF_WWQ
Message-ID: <CAMRc=McWw6tAjjaa6wst6y3+Dw=JT8446wwvQ0_c5LHHm=1Y-Q@mail.gmail.com>
Subject: Re: [PATCH v7 7/8] arm64: defconfig: Enable TC9563 PWRCTL driver
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	chaitanya chundru <quic_krichai@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
	Jingoo Han <jingoohan1@gmail.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	quic_vbadigan@quicnic.com, amitk@kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com, 
	linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <lumag@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 29, 2025 at 12:30=E2=80=AFPM Krishna Chaitanya Chundru
<krishna.chundru@oss.qualcomm.com> wrote:
>
> Enable TC9563 PCIe switch pwrctl driver by default. This is needed
> to power the PCIe switch which is present in Qualcomm RB3gen2 platform.
> Without this the switch will not powered up and we can't use the
> endpoints connected to the switch.
>
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.co=
m>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index e3a2d37bd10423b028f59dc40d6e8ee1c610d6b8..fe5c9951c437a67ac76bf939a=
9e436eafa3820bf 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -249,6 +249,7 @@ CONFIG_PCIE_LAYERSCAPE_GEN4=3Dy
>  CONFIG_PCI_ENDPOINT=3Dy
>  CONFIG_PCI_ENDPOINT_CONFIGFS=3Dy
>  CONFIG_PCI_EPF_TEST=3Dm
> +CONFIG_PCI_PWRCTRL_TC9563=3Dm
>  CONFIG_DEVTMPFS=3Dy
>  CONFIG_DEVTMPFS_MOUNT=3Dy
>  CONFIG_FW_LOADER_USER_HELPER=3Dy
>
> --
> 2.34.1
>

Can't we just do the following in the respective Kconfig entry?

config PCI_PWRCTRL_TC9563
    tristate ...
    default m if ARCH_QCOM

Bart

