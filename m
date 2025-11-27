Return-Path: <devicetree+bounces-242782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B46C8EA46
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 14:57:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C0E93ABD74
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 13:53:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 513A432E758;
	Thu, 27 Nov 2025 13:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Dnu4my3I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E600532C93C
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 13:53:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764251584; cv=none; b=jB/A5dfr7scSrWOujJZwBMqx5QzCMPiN541iAaeUTy/q1AH7KvrC5/G81OguviBIUNSPXtMM7yyNAXIbwQICJmZ7OSR2lo+hgXqMVLm7PnVKAvFUqH21xLwjfN/uU/FhBN9wurVN5uHC3Kns3rGv6Xat8Z+EG+/2mj1sIXZG3gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764251584; c=relaxed/simple;
	bh=uvWSUnAueiEOoFOEIl2JYdtmpK89idUnhb83TwQALwc=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eEL8BvZUOhkvzSFte6ZWhQtLMctdA2DuXsdDDKlROsFwXqXAFNi9Tj2lYTk5j08Qqcv0Xo+mIiZd4fKiedvY1rQyx3nfZldeHf1iNsTTCs4JQ+kMFrrCoM9DGo1XC6lbJyy5LtzLKNH75S2e0by3YzZMQfd0l4D4FfpjjrClNKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=Dnu4my3I; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5959187c5a9so820192e87.1
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 05:53:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1764251580; x=1764856380; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=pN64heDHbxqZ2OKQxyJVBsdd0gJZEzFf6zoPDx6GqoA=;
        b=Dnu4my3Ic1+uyfUIZlX9r952UDUx4Un5aKBPAnOVnWX73cFuzv4Tkz8I9uXsjRJwDy
         MifpyoIwNOgbL1pELe3kXR/zFqhGUIl3TqjztPcB48bz1ldm4CK7cW0DbdNTve9VIq7P
         SmrjS9T50H7epBqEQbscoqdLnpPNqiU0laDWV91fA/BfQd7nM0zQKlPMhi9wOxRuytPs
         pW7vG1oxg9wvtBLXoFuCIc3VDceGbrtGz4hgzfYdTCUe5bBoRDor1kb65LH9mSQsiJ5V
         XdzxXXZdjPjLFSGngOt53q+/dEXCODNSz3+fNLs1aR99Vz2500fGNy4qAKLDTWsENyVa
         /eWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764251580; x=1764856380;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pN64heDHbxqZ2OKQxyJVBsdd0gJZEzFf6zoPDx6GqoA=;
        b=SMkgpiPilBZ6TWaAmSEjwtdpvAQHz1rzkpKMYqfU48Cxw1T1v/XNAl7o702k6/yi+N
         GEVYgY7ahbEfXVZ9/ssrGkrV/IDnZOt/vYcGnfj/5CNzeOHjRj9Ca398LiGlUb1tc8lG
         3EXFzr9jGXT+SLlcf6lmhoapBqiz8t9ypmI3O3e85BnIuwN2nfNRqXDZLV0lblhB8dNY
         zNphi6uiX4Ilkt40Da4BVFOJ9I+fukjVtUF4WUw6czetBeW0KBYhKY1Lg1+8adYe9Tlf
         IfbGS20QeoJIgaU3v+M77SXzw+TPQe52d9veMlouDhCdqenRrwkS7SeNer+mXXKmBmnj
         7ptA==
X-Forwarded-Encrypted: i=1; AJvYcCXZMHAimcU41stM1CzlLGvKXGH+onxB3phQcYT0V4SkBYf8wlTuqzMCPfYW6mY9sHLevMQdBMp5JxHQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyJIkDobiibU8Cr6H2dfyYv2uVbUVfMfj4NPx0wAw5Fzf43Xddl
	YSLpnb45rLKl975r4G+Whhbr4nhsqCqSYXlxbXFbzOwWeNf75rLc1QQIKa3M20XIxq+Mb0wI3lX
	+egPBxmC6/k28fH6aHmIlSBceHdsqqA0hiHcvNeTXsg==
X-Gm-Gg: ASbGncuU2tKLbM7E8EchKuQWl0kCipvtmq+Booz1bEMVGSkTafY3kdSbsAAaC5AT71k
	iXO3sJ0fTSaC+c4diFF8EpUiwAJphQjFvIxCV/FHr4kZd+eKlfCNl6mattQ1nZJZvjsi3L5bWqU
	gHOPgBjD1NbnJu6ssRUR/p9T4LhKk6nGwt/7vOBilIBDF+dSfpVFcd9v031SFP/ljbBNQgKW/NX
	KSxAj3LngUBdstl3F2yFg3m4XjJPWjOIEyTn9n08j5VswVoNVl0XF70KBHIGdxUT9BmKCf5p7Hk
	MPZqzVT9nmgRRbtQmzf2GFJxBBo=
X-Google-Smtp-Source: AGHT+IG6PL+Jiezoh/uDW8dnWLihyDKxT0NJj0K3mdDXkbk6oKkhSmfyJZwok91yAbizDOVups9BJ+4+9Gf5UTlIkv4=
X-Received: by 2002:a05:6512:2351:b0:594:93b8:88b6 with SMTP id
 2adb3069b0e04-596a3eed692mr7226030e87.38.1764251580020; Thu, 27 Nov 2025
 05:53:00 -0800 (PST)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 27 Nov 2025 07:52:58 -0600
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 27 Nov 2025 07:52:58 -0600
From: Bartosz Golaszewski <brgl@bgdev.pl>
In-Reply-To: <20251125-pci-m2-e-v2-4-32826de07cc5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251125-pci-m2-e-v2-0-32826de07cc5@oss.qualcomm.com> <20251125-pci-m2-e-v2-4-32826de07cc5@oss.qualcomm.com>
Date: Thu, 27 Nov 2025 07:52:58 -0600
X-Gm-Features: AWmQ_bmPoMOTBlwPqpCqq0qp_ZAAK68AQ2h724JshuQcjnDCyPKjaA9BdddHSek
Message-ID: <CAMRc=MeOfpFME0LL+WDSM3ZVUOiqTCHQN-E3=PZ_qTMLWDKaKQ@mail.gmail.com>
Subject: Re: [PATCH v2 04/10] serdev: Add an API to find the serdev controller
 associated with the devicetree node
To: manivannan.sadhasivam@oss.qualcomm.com
Cc: Manivannan Sadhasivam via B4 Relay <devnull+manivannan.sadhasivam.oss.qualcomm.com@kernel.org>, 
	linux-serial@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, platform-driver-x86@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-bluetooth@vger.kernel.org, 
	linux-pm@vger.kernel.org, Stephan Gerhold <stephan.gerhold@linaro.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Rob Herring <robh@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nicolas Schier <nicolas.schier@linux.dev>, 
	Hans de Goede <hansg@kernel.org>, =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>, 
	Mark Pearson <mpearson-lenovo@squebb.ca>, "Derek J. Clark" <derekjohn.clark@gmail.com>, 
	Manivannan Sadhasivam <mani@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marcel Holtmann <marcel@holtmann.org>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="UTF-8"

On Tue, 25 Nov 2025 15:45:08 +0100, Manivannan Sadhasivam via B4 Relay
<devnull+manivannan.sadhasivam.oss.qualcomm.com@kernel.org> said:
> From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
>
> Add of_find_serdev_controller_by_node() API to find the serdev controller
> device associated with the devicetree node.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> ---
>  drivers/tty/serdev/core.c | 16 ++++++++++++++++
>  include/linux/serdev.h    |  9 +++++++++
>  2 files changed, 25 insertions(+)
>
> diff --git a/drivers/tty/serdev/core.c b/drivers/tty/serdev/core.c
> index 76b89dd0720f..f90095cb778f 100644
> --- a/drivers/tty/serdev/core.c
> +++ b/drivers/tty/serdev/core.c
> @@ -530,6 +530,22 @@ struct serdev_controller *serdev_controller_alloc(struct device *host,
>  }
>  EXPORT_SYMBOL_GPL(serdev_controller_alloc);
>
> +/**
> + * of_find_serdev_controller_by_node() - Find the serdev controller associated
> + *					 with the devicetree node
> + * @node:	Devicetree node
> + *
> + * Return: Pointer to the serdev controller associated with the node. NULL if
> + * the controller is not found.
> + */
> +struct serdev_controller *of_find_serdev_controller_by_node(struct device_node *node)
> +{
> +	struct device *dev = bus_find_device_by_of_node(&serdev_bus_type, node);
> +
> +	return (dev && dev->type == &serdev_ctrl_type) ? to_serdev_controller(dev) : NULL;
> +}
> +EXPORT_SYMBOL_GPL(of_find_serdev_controller_by_node);
> +
>  static int of_serdev_register_devices(struct serdev_controller *ctrl)
>  {
>  	struct device_node *node;
> diff --git a/include/linux/serdev.h b/include/linux/serdev.h
> index ffc6eb13f44b..fa235c92592a 100644
> --- a/include/linux/serdev.h
> +++ b/include/linux/serdev.h
> @@ -337,4 +337,13 @@ static inline bool serdev_acpi_get_uart_resource(struct acpi_resource *ares,
>  }
>  #endif /* CONFIG_ACPI */
>
> +#ifdef CONFIG_OF

You can make it independent from OF if you base the code on fwnode like:

struct serdev_controller find_serdev_controller_by_fwnode(struct
fwnode_handle *fwnode);
{
	struct device *dev = bus_find_device_by_fwnode(&serdev_bus_type, node);

	(...)
}

Users can always convert OF nodes to firmware nodes.

Bart

> +struct serdev_controller *of_find_serdev_controller_by_node(struct device_node *node);
> +#else
> +struct serdev_controller *of_find_serdev_controller_by_node(struct device_node *node)
> +{
> +	return NULL;
> +}
> +#endif /* CONFIG_OF */
> +
>  #endif /*_LINUX_SERDEV_H */
>
> --
> 2.48.1
>
>

