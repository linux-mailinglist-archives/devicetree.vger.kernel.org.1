Return-Path: <devicetree+bounces-127137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E77AB9E4860
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 00:01:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C2E61167EE4
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 23:01:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0918194A43;
	Wed,  4 Dec 2024 23:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fY5Oqv6i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D40C18FDD5
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 23:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733353299; cv=none; b=TT4vRAW1S7gv/ikuLnih/Wv+ApC7FPzkPJVSkbkvcySaj6vPbenAKH13UFJ9myMMTIvh8PgtYOZk+QRkvltBXGa0X4qXwHD/a90/KOkqUbU36DRCUO3AcU3WH5KjjJByV4vSi/SVaH2BuAhoo78U6FKKToDrgAtKL+1BvXFaTYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733353299; c=relaxed/simple;
	bh=dZvdIAAIVCb1Gn6fGg1mI/DXu0J+s56rXzMjSqtVB7k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R+icJ2naSBOf4+aJhGwWU9ImfiRADy0IBH2GMAP+bgebwYAe0K6yswSzm4/HpQRpPTtDa5BAUO+eLiFl2za8ug6y+31JOrRiNBQbl+2bEcM+GBzhS4C5L/nHGjHdhHOosc6GXI2UORRGh9nDof4uekiIVgEyB6+nphxoEtYYc/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fY5Oqv6i; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2ffa8df8850so2440471fa.3
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 15:01:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733353296; x=1733958096; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9vaTYGf0bQtIjfkF3yhPnmJiZRJ8Kz7bkXSyKGXSTLE=;
        b=fY5Oqv6iVNGz5a75L+TcLjyw/m0PcoKYfX2u+3vz7J+XJEfIdxt+th9QCWAoAqe2t0
         +MAxCoS2mz0tKnEzfOL5itN7zigHBrKLJMvhtIRqDK05fp5sdWxpQAl8tMAQW/VtOohy
         ScFtWSzw+lPFQk8GIJD+OEqVLuOprqC5Aj0+XTX7fNkdRgFCg5LtGphGyOuokdk9QtON
         jd5THf5Ce5IcMC+knBDKoEWJaGGHW6L4nZFyMJrivM/oWRzMbUjtjPLQd2cLu5DEBusU
         OJoup6a7e0KNG84/wp82ODxa/t/Ro+y/HXtc1IMPx/AzFpZXdXwUA+sUBmQJsEprcs8Z
         REGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733353296; x=1733958096;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9vaTYGf0bQtIjfkF3yhPnmJiZRJ8Kz7bkXSyKGXSTLE=;
        b=Rxeaf/XtuPa6eY5+3DB+pTL+M9YnAwid1yAuyUrCsgtXpb1u76tQE97jG2keBqVrUF
         oqPwgWSudRT+Ybc38aBsfVRqcD+fYbAZ6RULvB1vV5QM5no/YcPY+ZQc0b1CyGhB/IAP
         lPBZvBAv/d4dNkW89Ml8jPPEsbs/LK1wUf8lyZDUErav1+8kPgdLTC8A4pp16/6eEoXi
         5Lytai9gv3SvoadrhlOtSpKdzvUdsJl/B9p4AzlsZIkwQ/TRy3N4lA/XspcopYNGdsTN
         BnOPWYYbycp9DUnyE6m4/7QZpZttfV7Fnd8ezsFyXNLYmbWwMOMqGuEUrSSTSGJhTpt3
         bZXw==
X-Forwarded-Encrypted: i=1; AJvYcCVrH9Jw1yLoT0sWHEFsTCJyh6d6nRmaKnDgN0e51aCMcCajiSomQwTh5FBcyFK1nv+iiSWStEGZFmK1@vger.kernel.org
X-Gm-Message-State: AOJu0YyVc5Dj5op1Pkgr5i5GIihAurrrtcBZieGiF+V9GzA0MV4tXoRk
	pDlWhtpjkLqMrewfok+bEBeC8BFmuvDxl/y6eB7JEBMo1it3348chjkzHWGnOZs=
X-Gm-Gg: ASbGncvHCsGSopXhoNH1x4wM4ie7+VjwA3+j+3ENPPMlZ0KxvUhuv/sCQhYqNlb7++N
	qDIrHgMfJv2amIFygOPlql2vK61tP1XzCWhWq7GAiZsxwRReNSu5t1db9jtj8JHWWkfUWkWaPAB
	TsBi6UbLQwrRrdILWbJai+oY4PWqsEg0WCj8kvJvaCEKD20DDdmoxXX2oSLbJp9RPF4ECo+r35W
	ZlXJVZoiY+QNHt+r2YYwSqR4VIeCytqUbz2fBMqi026vvGg0Iz0QKmtAnrt1GPoPMNJ0GK5hCGd
	o7R2zk/n6yfJZvm5jYANEmGUiwyvLw==
X-Google-Smtp-Source: AGHT+IFTuplv2isdxHj5cnxXRgLfLSYqhiljXH2if0rM2tCYLl4uD9OrVYwTUyo0WS8OVxU2kC/gEw==
X-Received: by 2002:a2e:bd0c:0:b0:2ff:d7e8:b71b with SMTP id 38308e7fff4ca-30009c940a7mr53718381fa.12.1733353296270;
        Wed, 04 Dec 2024 15:01:36 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30020da27f1sm124871fa.37.2024.12.04.15.01.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 15:01:34 -0800 (PST)
Date: Thu, 5 Dec 2024 01:01:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org, 
	robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	p.zabel@pengutronix.de, quic_nsekar@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 2/6] phy: qcom: Introduce PCIe UNIPHY 28LP driver
Message-ID: <f2yfxyuhoiavwziq3nd64mly3qdxif5abt2qp4qvrizqytqrid@fqfb22rpu6ug>
References: <20241204113329.3195627-1-quic_varada@quicinc.com>
 <20241204113329.3195627-3-quic_varada@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241204113329.3195627-3-quic_varada@quicinc.com>

On Wed, Dec 04, 2024 at 05:03:25PM +0530, Varadarajan Narayanan wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Add Qualcomm PCIe UNIPHY 28LP driver support present
> in Qualcomm IPQ5332 SoC and the phy init sequence.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v2: Drop IPQ5018 related code and data
>     Use uniform prefix for struct names
>     Place "}, {", on the same line
>     In qcom_uniphy_pcie_init(), use for-loop instead of while
>     Swap reset and clock disable order in qcom_uniphy_pcie_power_off
>     Add reset assert to qcom_uniphy_pcie_power_on's error path
>     Use macros for usleep duration
>     Inlined qcom_uniphy_pcie_get_resources & use devm_platform_get_and_ioremap_resource
>     Drop 'clock-output-names' from phy_pipe_clk_register
> ---
>  drivers/phy/qualcomm/Kconfig                  |  12 +
>  drivers/phy/qualcomm/Makefile                 |   1 +
>  .../phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c  | 307 ++++++++++++++++++
>  3 files changed, 320 insertions(+)
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

