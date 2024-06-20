Return-Path: <devicetree+bounces-78017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A786910AF9
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 18:04:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 25E03286010
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 16:04:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB77D1B013C;
	Thu, 20 Jun 2024 16:04:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="KUtedE+n"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043761AF697
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 16:04:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718899444; cv=none; b=A6/sN2cl8eT/X24M/UAixZCZn2vREUOaGsUtaVrv9Ymziwkm97uMkhqdwifwZQjZ/hyu/tJ1XJAQXH9podWilaJGzrJtUzoLEVwzEXdH0whIGOrqA8IAbVobJ61xOrsEAls5HZ6v+ztr83wpbiXdG9avmwU7k1t/cumqcMVfDzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718899444; c=relaxed/simple;
	bh=sQzq/TKljZMD4pKsJgwfiUeJ9tPpo+3DV47u3VvC5mA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pOsxigxIE4qXUwscOBJzhPUgNzKi0Rmi34+U/YsgMHZeW31Kr97ClkerM+wByzlpbaVPQHAVUWG4jDnZlueS/pWTSzqQ2VT5Mo+5ieiL/OA71iXJDpmIEP5b2mS4Rb2gusU4Un4+Mm/GX+jEdd3K6R174TzbS350IgQYJnncPjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=KUtedE+n; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1718899441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=iDqQrPGd42O44YfWw+IRXhYqcC8xwDaLQyCUqbKdOfM=;
	b=KUtedE+nylFg3gvp/NBPfAYeZLBRRKpdwY5HegCRkjwb+BNnn4IMSZG+jW6ZBAGrbhFOVL
	eWgGryWLpTyk6/GZQz7wkoxLyWCnXXk4uBG6ZJaWGlWffeo+acVKDVSmUmuMKYTUUUaxCR
	ryhRv1HuAcBhxDtRDZmLT2XLZVoeTqE=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-484-7TMfrX4dOs2rPKpF4vjRkQ-1; Thu, 20 Jun 2024 12:04:00 -0400
X-MC-Unique: 7TMfrX4dOs2rPKpF4vjRkQ-1
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4404a08e4d0so20358821cf.1
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 09:03:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718899439; x=1719504239;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iDqQrPGd42O44YfWw+IRXhYqcC8xwDaLQyCUqbKdOfM=;
        b=UsWVfP3SIafwFEI7kYE8Cx9/vIoZRzngCaHlOS+Yk/KfduJtdKxNQMcbkMAgrfnRot
         7Ubzw8qzQLdUK3P6PEnnTDcRHQu/KHctGkNgfI25QhTdk5Wd+fwbrKnsyxNAHMUljqUy
         RPslGG3rV7xivJLSTnXMkZUin22ekT+/f/FGfF8y0Po3pK6kXwqzH0kjvcWaGAH0a+Xy
         mFkTVU+j9cqUU8Gy/124gjof4bxx6aUpyNtM9lrK2hQsWl+bMMvMg8j0WOCivxrOXirt
         t9LG6tSdwNWocyQzhSAD6Dx93Y5Qc6w4oWiGf+kgS+wlWcJzQzNu/KSCHl3PBTj057GF
         gQgQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQwjrdPBDygH6E1cHNnFLAt9rMzv8n6MvV84xGCMo2RsI1SzqJUc42WpeTm6p1HVQT8ANGj4YhdkNjCGgrCOX5PUgi0HbbDaeP1A==
X-Gm-Message-State: AOJu0Yyg6DJCp48xZ2EN/rOvGGmZ+vIVDJIRnC46JdUZPCb9MyMIhc7t
	X55zPUtoqTZzUMycDsgsmA2EXlfAp0mvfi48fO4nF+hbsiyeNmx53wOKOetR3/Wty4Bkps/EHoE
	vJeiCiKfC2QtbX4F7///Vatf7FbdCs3EGGSPkwp613oPQ1gC4AnfqOMYzACg=
X-Received: by 2002:ac8:574f:0:b0:440:e39:372a with SMTP id d75a77b69052e-4449b8cc771mr147429471cf.3.1718899439058;
        Thu, 20 Jun 2024 09:03:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhB1DYbQ7e1+d1lc5JGo+U74y4WtMNDo+mQhkOQObAXNZnPDXfG8If9cx7sbaD1+JFxdxvwQ==
X-Received: by 2002:ac8:574f:0:b0:440:e39:372a with SMTP id d75a77b69052e-4449b8cc771mr147429061cf.3.1718899438587;
        Thu, 20 Jun 2024 09:03:58 -0700 (PDT)
Received: from x1gen2nano ([2600:1700:1ff0:d0e0::13])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-442198f6160sm66411891cf.45.2024.06.20.09.03.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 09:03:58 -0700 (PDT)
Date: Thu, 20 Jun 2024 11:03:55 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sa8775p-ride-r3: add new board file
Message-ID: <henuash23dwkj5fcmub6sabygwo4kam7fgots2pp2j3eu4asuk@cn3o7a62lo74>
References: <20240619183255.34107-1-brgl@bgdev.pl>
 <20240619183255.34107-3-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240619183255.34107-3-brgl@bgdev.pl>

On Wed, Jun 19, 2024 at 08:32:54PM GMT, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Revision 3 of the sa8775p-ride board uses a different PHY for the two
> ethernet ports and supports 2.5G speed. Create a new file for the board
> reflecting the changes.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/Makefile            |  1 +
>  arch/arm64/boot/dts/qcom/sa8775p-ride-r3.dts | 42 ++++++++++++++++++++
>  2 files changed, 43 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/sa8775p-ride-r3.dts
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 0c1cebd16649..916fbdbf5631 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -112,6 +112,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sa8155p-adp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sa8295p-adp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sa8540p-ride.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sa8775p-ride.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= sa8775p-ride-r3.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sc7180-acer-aspire1.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sc7180-idp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sc7180-trogdor-coachz-r1.dtb
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride-r3.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride-r3.dts
> new file mode 100644
> index 000000000000..d7f0a25c1fc4
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride-r3.dts
> @@ -0,0 +1,42 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2023, Linaro Limited
> + */
> +
> +/dts-v1/;
> +
> +#include "sa8775p-ride.dtsi"
> +
> +&ethernet0 {
> +	phy-mode = "ocsgmii";
> +};
> +
> +&ethernet1 {
> +	phy-mode = "ocsgmii";
> +};
> +
> +&mdio {
> +	compatible = "snps,dwmac-mdio";
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	sgmii_phy0: phy@8 {
> +		compatible = "ethernet-phy-id31c3.1c33";
> +		reg = <0x8>;
> +		device_type = "ethernet-phy";
> +		interrupts-extended = <&tlmm 7 IRQ_TYPE_EDGE_FALLING>;
> +		reset-gpios = <&pmm8654au_2_gpios 8 GPIO_ACTIVE_LOW>;
> +		reset-assert-us = <11000>;
> +		reset-deassert-us = <70000>;

I need to read your other series still wrt "ocsgmii", but any chance you
have access to docs indicating the reset timing? I've never had docs for
the specific Marvell phy on the prior board or the Aquantia one on the
new board...

Boot time is something automotive is always concerned over, so I just
want to make sure that this timing isn't any longer than it needs to be.
Right now it looks the same as the Marvell phy's in the "v2" boards etc
and that made me raise my eyebrows.

Thanks,
Andrew


