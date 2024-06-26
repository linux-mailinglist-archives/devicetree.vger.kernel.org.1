Return-Path: <devicetree+bounces-80301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF5C918549
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 17:07:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E7531283AA1
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 15:07:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1FA318A951;
	Wed, 26 Jun 2024 15:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="1CFGL6q/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364D61891C2
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 15:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719414445; cv=none; b=CWTbnrXp7OvdS2mzEbpgZ0DniYcvC+PZImZtThzcloZddTMCzgk0QGdqKsPxvseMTxoXHGfxXNMRlPIwHQjyq6EFYmHQkyC5cjlYIboQxF/T3W9172bv699fyUIOAzOHqugxgrV/HMIowQVjjgktRXLfOKk1lniFLfx1kTshpAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719414445; c=relaxed/simple;
	bh=wXPMzNtNlpsPJeeERAGhiFsCceMNMb3huYtSRM1DPwA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QOVOsxYOCzLzL1T7VA6h5eWojoUFOW1Ub4dUFTHcPvCYdZC5ZclUgxLwTpgZRN8f1Dkhv9HY7hTRsTuZdjz2FXUToM3DDF9aPMPK2oLciCDEHVgP/1syQETk03P28R9uVV56wV3zBdXvq2XArZkRHfqnAzXIOYhHzz+0kgbqj5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=1CFGL6q/; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2ebe785b234so75157841fa.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 08:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1719414441; x=1720019241; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KPxOJfkJIWCY4sqntkOf7FIbvrW1HVZyYX7BT4XYMJ8=;
        b=1CFGL6q/2aGvnWYJoCUN9Ar1l28aj+2En5Px8PWW+ij3f5viv8qy+/fFR+X0jO2yCm
         r5xKYAtR4LGz5U8Gntx7YRB52OuwsZmhrkvQyK1+bkM993ny10m03o/BcCC/4f70/kZ1
         SOv7bvPypXzBq8XZcaK7Ch2EgIxLKWukydROY5MUs42nSz64/VMwp4nNm32uNV8z8LSt
         o8JXBdXJhQfkj9pkbeNPAbp0qokI5L7Tx4UwOej3Bn+4lkZPuTzKbd+E9FEqx2G0LM6J
         CWqOmwHd9LwauHu5N47AZXc8s6AAKgn0qrRQ1DTYs6yWR7Hmalfy22zD9lOlv5EAsACw
         ZuMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719414441; x=1720019241;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KPxOJfkJIWCY4sqntkOf7FIbvrW1HVZyYX7BT4XYMJ8=;
        b=uhEpk8Zu3W0C7rEbax/sSsb18iB+sdxM6to8kWrNJ8XWn7cAw5bBP4w5CQKW/R/zIG
         zOKtiZsfqL5SSPCPxkdtKGcTsqo8ptEYNCcbN75Gy5Fz0ETo8TGfkBMXu1M9XBIAZOZU
         d0xKTljztQ6ouBWIuS8mdDR38US4nWQu5B5eWBtsi7w3gQf6PN0BcuhzF+iVO13RbRaT
         Wqhmlpc342Lhxe4+ruZBf7YUUErTRJY4mmNNxhX7CjeEUn9vimJAgKbiU++wftZB5NE6
         Tr17t5XsdW3mlMo96nlAg2k53+h16fb1oaEO6CVkqUpEwZ/9EXQBlSIXIUECnpHdyBzA
         P23w==
X-Forwarded-Encrypted: i=1; AJvYcCUE/j3RE4gYPuR2PUzW7CHmp7BgAfxuCWSICv2+YjaUh3wTFA6DB13/JflmB4NmD8kVNZcTBTHieTAMMHnlkRwmeLSAk3pbMI2A5A==
X-Gm-Message-State: AOJu0YzQAKrFgZ8kqlTtY50fkhFWFpE7tvmPkm2q3QjETcCZtY8crJJB
	7umbr9ReN5asaTxZnTmqgf0oYytROaXQ2DLdm7R9wb1cKU1Hwk3UkRguzFfZicRlYwN14KkOE2q
	ZWo2uBxBEnVg6bjcegqIsmcBrYKtK+ZXgsiSKhA==
X-Google-Smtp-Source: AGHT+IEUkNjLlmTxavRfhMndMCySdn3PbAFz1s6PnS1Bxg+VsA4owIRUUH76BL6HCSdoGMnwFnx4HSaROo7ZAfFCFEQ=
X-Received: by 2002:a2e:9f10:0:b0:2eb:fc08:5d83 with SMTP id
 38308e7fff4ca-2ec59389fffmr76705281fa.44.1719414441210; Wed, 26 Jun 2024
 08:07:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240626-qps615-v1-0-2ade7bd91e02@quicinc.com> <20240626-qps615-v1-4-2ade7bd91e02@quicinc.com>
In-Reply-To: <20240626-qps615-v1-4-2ade7bd91e02@quicinc.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 26 Jun 2024 17:07:09 +0200
Message-ID: <CAMRc=MeAz8yT_-YR8dSW+hZrezbhsTcc+oSdCO=+sZ84M=fkmA@mail.gmail.com>
Subject: Re: [PATCH RFC 4/7] pci: Add new start_link() & stop_link function ops
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Jingoo Han <jingoohan1@gmail.com>, quic_vbadigan@quicinc.com, quic_skananth@quicinc.com, 
	quic_nitegupt@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 26, 2024 at 2:38=E2=80=AFPM Krishna chaitanya chundru
<quic_krichai@quicinc.com> wrote:
>
> Certain devices like QPS615 which uses PCI pwrctl framework
> needs to stop link training before configuring the PCIe device.
>
> As controller driver already enables link training, we need to
> stop the link training by using stop_link and enable them back after
> device is configured by using start_link.
>
> The stop_link() & start_link() be used to keep the link in D3cold &
> D0 before turning off the power of the device.
>
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
>  include/linux/pci.h | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/include/linux/pci.h b/include/linux/pci.h
> index fb004fd4e889..3892ff7fd536 100644
> --- a/include/linux/pci.h
> +++ b/include/linux/pci.h
> @@ -803,6 +803,8 @@ struct pci_ops {
>         void __iomem *(*map_bus)(struct pci_bus *bus, unsigned int devfn,=
 int where);
>         int (*read)(struct pci_bus *bus, unsigned int devfn, int where, i=
nt size, u32 *val);
>         int (*write)(struct pci_bus *bus, unsigned int devfn, int where, =
int size, u32 val);
> +       int (*start_link)(struct pci_bus *bus);
> +       int (*stop_link)(struct pci_bus *bus);
>  };
>

IMO stop_link() should return void.

Bart

