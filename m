Return-Path: <devicetree+bounces-224266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9030CBC2507
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 20:03:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3FE094E21C5
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 18:03:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2907B20E03F;
	Tue,  7 Oct 2025 18:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="YDGW7iSt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EAD1205E25
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 18:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759860234; cv=none; b=r734T/S+d1Lw9QYptNTaC79MbAM1KxtxdmNMEiq9fS4MqtwE1wFkh1M0742B023nzlxNH3jLdG+vceg/oH/kPdaBW+Yh6RwV4Q9Lu0RtGGjwJ8M6mloO2QvaDKSpuvO8yALEF9mrkoWZQq8rM5dzh8hD831kCacrXnLXSNYEH18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759860234; c=relaxed/simple;
	bh=NHEmrtJIgEleCWQcevq6nqZY7xNB77jO7eLNYiB6sEU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=szdwqhWtkoe7KwyoqF8LD6EaCp/h+gJCfbrCj97tUG/gPZBz9hQ1Yf5UVkbd7A5JnxndFI0HMWGWJTCLXx/zwpCarZ33bOLUGfodZ76vitDYOVEGSTcGTEf7UloPJjBpJ2zYxRCFXjhHxqoLDXBaV0oWw09UpsH9HKHR8OT9bvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=YDGW7iSt; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-28a5b8b12a1so65901215ad.0
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 11:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759860232; x=1760465032; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BoeUTdyH6Ho2hK/WV0Pq7ReoILwQzxKPA2QdB9ZFVa0=;
        b=YDGW7iStLghTCfJ7+MCFpdhgAbzOjwWdGzzI4+L/86ppjDjIEg1yv6gMYK7LVKlQyQ
         A62FUxwi7lyqLo86FJjSoCt4Cxl4tlO0fCBif7yXNu8b81yfL6+NpNlMBvDELrOz4KVD
         Mp4yh4bsPfcGIXLH+lA7B/v9L+KcJsb0YxXnrsQuPpXPe7MF7chjW77QqwsBWQENainV
         SJ7yKYtzDCRymEeRt44ed1JSClqUNeFjqaFZkerPO885JnyLV+4lo/2X9BHI3g2q8V4F
         wm5F1GT8MSgfQGG8KePscMiHadq35L2g5kGW3vkcIM9+NuZVdcIgraWFc+UXAqJzXYQe
         4OsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759860232; x=1760465032;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BoeUTdyH6Ho2hK/WV0Pq7ReoILwQzxKPA2QdB9ZFVa0=;
        b=WULiEAeV3JzcW977g4zOFKPFmpthOlwTPPjVA5cv7yxNKOXn0efgR5pmuiA+o8gKu2
         IsHBJhea/0V7WJh5ut+X1+QWcbnvEwE9MfWnaN7irLr3mfQrBPT/uRxUh11Qejwcrti4
         1TiRUOb/6gKeYwNtJpoh4tR64kJ+7efK2Nmvj4/Q12lUMjnVRIToVRFo7YanIiI46Nea
         0zYeh5SivSOaS3RyAggBt5hnA5dMOdzZMokysZtTOiOvgPwOcWU4rSfeb90kW6BX6tzZ
         MQciOcnMoRtY4WKJ71OxObTDLCEMqjYbeRtuSOpccXcRNnt43fqGuUBPvIucM4gwK0Ed
         0IQA==
X-Forwarded-Encrypted: i=1; AJvYcCXbJ6PlWqan8GCGnJoFHoi8teqWzpuBHUZ1KD+CMfN2Vj923Wa0DV38+xv8cor000TQnYfA41wb4MRw@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5OV7+r0JfmvMYBL9+6ZGXxL3eZzk+ohk4kMUVuNPksyTeFjsw
	Pi+XwZ6F7v8sTnk+QllCrPYRP+3HWLPb/quQiES362UJ7jzj1eplWJyC9HsVN4b1Z4XJ0RgsABO
	aQe8He/YMCUXxBdws5GOO2jrnTHHKHb+yC8xNkv9j
X-Gm-Gg: ASbGnctGvMWOPqi9ueX3qGUMcF2d/cG2dpANDlPMfHLY4t4aNFUbvyp8N+Lqxx18jBK
	Lb2gYmA9GOK9g82kiSfVysRNXWFW12RYY6u8EuBcSu2dpXdGohH8DxyVk1DNwz884nnlM9xk+VA
	+ZgN24Tttk7y1MoZIpLf5i68DCOG2qXigaXU0V/uEROgRrgZPJ+Jcc2rC8h/N9hezaDGSedORHy
	XO+qCubT9JOuL/Gzx+XGcUbdZAFb7APmS5FFTewEpX1FjktsV0wgfU4LqCwZGJ1mmymNsqav8b2
	P+gqEFVd/HhmOQ==
X-Google-Smtp-Source: AGHT+IErqs+kJVv5rsWGTN2Z0xZ0ickiFqF1IQ4SpRF/lYWHEWgJPEacLea7fTefk87mdvoXJ1AdDn7lRgB9V20xPD0=
X-Received: by 2002:a17:902:d58d:b0:266:cb8c:523 with SMTP id
 d9443c01a7336-290273ffe89mr5647285ad.48.1759860231518; Tue, 07 Oct 2025
 11:03:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006232125.1833979-1-royluo@google.com> <36068ca3-912e-4e71-b688-8689ead8194b@kernel.org>
In-Reply-To: <36068ca3-912e-4e71-b688-8689ead8194b@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Tue, 7 Oct 2025 11:03:15 -0700
X-Gm-Features: AS18NWA8U90B63ffP5jXdkUD5e6eOAqItmxz5SXEaQputDmKkvJD4mEmS6I0ARg
Message-ID: <CA+zupgyLx8q23b-ecrLhYAU27HV_ZFMiH9XR81Q2MKRmMwpcNw@mail.gmail.com>
Subject: Re: [PATCH v1 0/4] Add Google Tensor SoC USB support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 6, 2025 at 6:06=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 07/10/2025 08:21, Roy Luo wrote:
> > This series introduces support for the USB controller and PHY found on
> > Google Tensor SoCs (G5 and newer). This includes:
> >
> > 1.  DWC3 Glue Driver: A new glue layer for the Synopsys DesignWare USB =
3.0
> >     controller (DWC3) as integrated into Google Tensor SoCs, including
> >     hibernation support.
> > 2.  DWC3 DT Bindings: Device Tree binding documentation for the Google
> >     Tensor SoC DWC3 controller.
> > 3.  USB PHY Driver: A new driver for the Google Tensor SoC USB PHY,
> >     initially supporting high-speed operations.
> > 4.  USB PHY DT Bindings: Device Tree binding documentation for the Goog=
le
> >     Tensor SoC USB PHY.
>
> This is useless message in the cover letter. We see what patches do from
> the patches.
>
> What you are supposed to explain here and in the bindings patches, is
> why we want this driver and what is Tensor SoC, considering we already
> have one Tensor SoC... IOW, explain everything which is not obvious -
> and duplicating SoCs with some generic name is for sure not obvious.
>
> Best regards,
> Krzysztof

Thanks for the review. Will remove the redundant info and ensure the next
cover letter provides the necessary context on the Google Tensor G5 SoC
this series intends to support.

Regards,
Roy Luo

