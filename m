Return-Path: <devicetree+bounces-53002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A2288B3CC
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 23:17:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A9C43B209B7
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 16:40:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA21E1422B3;
	Mon, 25 Mar 2024 14:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="HGyMikF8"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC1913248B
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 14:51:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711378267; cv=none; b=abybi3y+l/WvskkEeyEjHlw0YNqa4qVrNMr5XifXBvZ5qfez2EOKLCmC12XRrVZvzEvq6h/LoJ1CAgjUxqUTlwFTfYxUjRzYjnv11CDDZ8aLI2nlQ6Wp7XT6hzLIaqshWHJYniYUrtsjGOe9wIQ8FzmOavKlQKHaPK+TMgAFXQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711378267; c=relaxed/simple;
	bh=fExKIKJW/Sui9p0QMSEHCLxBIxThmZtBvMsrSKs6nH4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A71ALE2iPzcc9y5046fLSu0TvKY9bopJwcGGlIZEF2GYm3NNjtvlY2D2hRaOdHbAgaCgpIp1gSCWG0E8lD2EMKhj5vFNkLo4JaZiziKlttSGQ6uEGJvy/0bxOq09f/VU/JXXF3zUMAg67Ad+F300ENlXPqM30g/hPH7IWjq7k3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=HGyMikF8; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1711378265;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6f76n+F3TImw5GBRyhLX3S/9HNrkYFUIIpB+Isg5Lho=;
	b=HGyMikF8UgioXmnPnpFuY9UDfIRAoxvnv6WtpjbrOnxayfmCv45VG7dCfv5Og0FJAtSjn1
	tyLaOTXvwKnoaU5eLpfk8a99TXRqVsplh/RSmpZ3nuK6uR+AxI5IIvCHKc95zh/7XNssoG
	1IBDLQj/1E0wtxX0gunSgW4GZNKrPFw=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-150-oI-NDailNh2UB7hXC3HDBQ-1; Mon, 25 Mar 2024 10:51:02 -0400
X-MC-Unique: oI-NDailNh2UB7hXC3HDBQ-1
Received: by mail-ed1-f69.google.com with SMTP id 4fb4d7f45d1cf-56c1c344fe0so226975a12.0
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 07:51:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711378261; x=1711983061;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6f76n+F3TImw5GBRyhLX3S/9HNrkYFUIIpB+Isg5Lho=;
        b=IIrMAI40gtoKXSYTjSw8cnJxXLl/VqYVnJ6DRkTyB3EE7BD5E1bA+rKUqMX3ZnaTmf
         32v/2Zzu8qzmv9UJR3kCeDwcWp15IK4UlnyN8R/Hhx2Jfho+dqq1igOjnYfEilrDAh4I
         PW4tgDzykxovc293FMzwcSFhqbZrQlgiMrdV1d0ZmDJSerwj486YyQ23WwsxFg1sWIq1
         MKUVlbCuWETCN0k32UymnX+NdDuQ+q3rKnB7YoOidEpwMjTPubyOPDwtGhIeOx2xgOLm
         HjWDiCrA4SgwMdXSIEVPjluxbeTusz1P5x8DC/iJjbUVxLjnLsZX73cn4Q5TOrFtpK+M
         CbMg==
X-Gm-Message-State: AOJu0YzW6baZHjlNPXt4xpp6hFTMIL2m8CXMervFA/Tklwbqc2ilSxZ4
	i9sevHYdJ/OGpR7Fc/Xu2QGulLCXkpUzEkVBYQSFkEyDTST/7jzTONSz0vOtcET9g/gpMEnD6t7
	yb8GTM7ujkGRbWDwvcF8WEOgnX2TPNzPHlBPW/TCNyVSlAwC+nfma+Ku+wbY=
X-Received: by 2002:a50:d659:0:b0:565:665b:9c82 with SMTP id c25-20020a50d659000000b00565665b9c82mr5477527edj.8.1711378260918;
        Mon, 25 Mar 2024 07:51:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPqhUMr6qXBjwymyKLKDFFf+Ez8n4lo28gTUTivdmH89U3wE5JSwWmqkk/4T2fLKQMBnPtQw==
X-Received: by 2002:a50:d659:0:b0:565:665b:9c82 with SMTP id c25-20020a50d659000000b00565665b9c82mr5477507edj.8.1711378260600;
        Mon, 25 Mar 2024 07:51:00 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id l2-20020aa7cac2000000b00568e3d3337bsm3033238edt.18.2024.03.25.07.50.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Mar 2024 07:51:00 -0700 (PDT)
Message-ID: <a1cd7477-570b-48e1-b3fd-941b176bc9c0@redhat.com>
Date: Mon, 25 Mar 2024 15:50:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/4] platform: arm64: Acer Aspire 1 embedded controller
Content-Language: en-US, nl
To: Nikita Travkin <nikita@trvn.ru>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Sebastian Reichel <sre@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, platform-driver-x86@vger.kernel.org
References: <20240315-aspire1-ec-v5-0-f93381deff39@trvn.ru>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20240315-aspire1-ec-v5-0-f93381deff39@trvn.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 3/15/24 2:51 PM, Nikita Travkin wrote:
> The laptop contains an embedded controller that provides a set of
> features:
> 
> - Battery and charger monitoring
> - USB Type-C DP alt mode HPD monitoring
> - Lid status detection
> - Small amount of keyboard configuration*
> 
> [*] The keyboard is handled by the same EC but it has a dedicated i2c
> bus and is already enabled. This port only provides fn key behavior
> configuration.
> 
> Unfortunately, while all this functionality is implemented in ACPI, it's
> currently not possible to use ACPI to boot Linux on such Qualcomm
> devices. Thus this series implements and enables a new driver that
> provides support for the EC features.
> 
> The EC would be one of the last pieces to get almost full support for the
> Acer Aspire 1 laptop in the upstream Linux kernel.
> 
> This series is similar to the EC driver for Lenovo Yoga C630, proposed
> in [1] but seemingly never followed up...
> 
> [1] https://lore.kernel.org/all/20230205152809.2233436-1-dmitry.baryshkov@linaro.org/
> 
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>

Thank you for your patch-series, I've applied the series to my
review-hans branch:
https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=review-hans

I've fixed the Kconfig typo Randy spotted while applying this.

Once I've run some tests on this branch the patches there will be
added to the platform-drivers-x86/for-next branch and eventually
will be included in the pdx86 pull-request to Linus for the next
merge-window.

Regards,

Hans





> ---
> Changes in v5:
> - Various cleanups (Bryan, Ilpo)
> - Add Bryan as Reviewer for platform/arm64 (Bryan, Ilpo)
> - Link to v4: https://lore.kernel.org/r/20240312-aspire1-ec-v4-0-bd8e3eea212f@trvn.ru
> 
> Changes in v4:
> - Move to platform/arm64 (Sebastian, Hans)
> - Drop fn mode dt property (Rob)
> - Add fn_lock attribute in sysfs (Rob)
> - Report psy present correctly (Sebastian)
> - Link to v3: https://lore.kernel.org/r/20240220-aspire1-ec-v3-0-02cb139a4931@trvn.ru
> 
> Changes in v3:
> - Supress warning on few no-op events.
> - Invert the fn key behavior (Rob, Conor)
> - Link to v2: https://lore.kernel.org/r/20231212-aspire1-ec-v2-0-ca495ea0a7ac@trvn.ru
> 
> Changes in v2:
> - Drop incorrectly allowed reg in the ec connector binding (Krzysztof)
> - Minor style changes (Konrad)
> - Link to v1: https://lore.kernel.org/r/20231207-aspire1-ec-v1-0-ba9e1c227007@trvn.ru
> 
> ---
> Nikita Travkin (4):
>       dt-bindings: platform: Add Acer Aspire 1 EC
>       platform: Add ARM64 platform directory
>       platform: arm64: Add Acer Aspire 1 embedded controller driver
>       arm64: dts: qcom: acer-aspire1: Add embedded controller
> 
>  .../bindings/platform/acer,aspire1-ec.yaml         |  60 +++
>  MAINTAINERS                                        |  16 +
>  arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts   |  40 +-
>  drivers/platform/Kconfig                           |   2 +
>  drivers/platform/Makefile                          |   1 +
>  drivers/platform/arm64/Kconfig                     |  35 ++
>  drivers/platform/arm64/Makefile                    |   8 +
>  drivers/platform/arm64/acer-aspire1-ec.c           | 562 +++++++++++++++++++++
>  8 files changed, 723 insertions(+), 1 deletion(-)
> ---
> base-commit: a1e7655b77e3391b58ac28256789ea45b1685abb
> change-id: 20231206-aspire1-ec-6b3d2cac1a72
> 
> Best regards,


