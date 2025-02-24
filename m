Return-Path: <devicetree+bounces-150157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 37BF5A415C2
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 08:03:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9D9AE188F9BC
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 07:03:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8347620ADFA;
	Mon, 24 Feb 2025 07:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X5SBghwc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA38B18A6D2
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 07:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740380605; cv=none; b=l4KBnORebpophETvuhHIsW4hOsrbGRRwnPUxs68PLOmCdBZxYRlj86lHHwVc7r756AA3JEOsmEzNBt32kB76YsNDI27VP2MtN/P+dEhwQSAy1S2AtUAtVF5dTdwHvE0FRSQHTPTfxfdiGDaxIFiXJqZ/FP2zN03UOPdFiMvyYkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740380605; c=relaxed/simple;
	bh=BP72IDhvGsEnYuOdJ7dJ833ufPm6ln+Q/i5uIQq42aI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DnJKkBCUWybxKAmnR9CPRC1E4nbBbImNX/Ukgmp99zrqcF6QXs6k/wFK5sy3rVWu1JWtt6TFoHwBBH+xj6qwEE4lrak2QPDBel8idftBO5xAqEcrB4nijfwJz26oVY7vzgX90gGrogk854yZSVCxk91N8tMid7uFFDd686zgQkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X5SBghwc; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-220e83d65e5so73266775ad.1
        for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 23:03:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740380603; x=1740985403; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9LqK6pGoCUTPnFXd++QtyjVdr1aa8jEyQEc+rNmPyo0=;
        b=X5SBghwcnooJI+k+XBjDVQSnOyDmSEB4wjP1ZHMmehZp53A/I8eaZATeH7DNOBhsAc
         p0kCd7ZOmYaZgVcGpsjYbYhnyufX/jY+u8OzGWDDlg5cPDTN38YBL6iKWe9tYm8uSJcc
         1LgC7/gjfwdRGJBY/9k53CRb43jM3SpivCHyw/CWoKxLZ3xTSEsE+NQu5y/mEQe0fAxp
         n0YL3FOEX/wLU/Qh6KgsqWCvVjFqMX/hj/dC3qCmoJCnTYE5Ma19pxqnk8LcQ7kqZyNZ
         RwWEj2SBE6syhN5J4fZcn9e7B60iFiTUVDjX9LkrR/bvZmev1lDPGEmihuhEbY0dV4Ob
         bNpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740380603; x=1740985403;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9LqK6pGoCUTPnFXd++QtyjVdr1aa8jEyQEc+rNmPyo0=;
        b=LTGpasdy7ZTTO93eNX+ewImDgS17JyjpwEB88Xxvl9sXo7vkXZ7tEqKUaABAVXkX4Z
         pU/2jaTxMdlmSzroQqlWoOtJLTjxpxsdhVGL8XKvox7L5IvHZVWNhwLqSjOLmKdSD6ld
         jueridYMc/T2MTtZKA3C2FtxE+j2hO/Q/HvYS+7CH2drFbF6UiciyKyFwBxQtxJQ5t5y
         wOPfk7Dbw5cAaL37FrofvNjzoIqqT1mSPRu7k0AoW2DLzQxJK5dkATPa8hMs2n4wUeY1
         hokNbYRIABnYSRrW2+w3ria3ztt6/ItKDHhkbB4qhkP0tsdYna+kezRio0ubMZAE0U3a
         x+TA==
X-Forwarded-Encrypted: i=1; AJvYcCWrCq5w+2dj4mTwRmSp/Ypt2rNdiRgV3QTXg82ZiMchpjun3DBYb+jPk6+cSlhZlsOzhLGRScoQa/+m@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0XVbCvYLDGEAoUUPqTSiyDNKF+3lBnLsb4ZgR4Kp2zrpJG60w
	mTZrTADjKLyPdAPXu8EQxBNYW4KJX+XJmhwQ6RYl/09tf0lTs8EwbULiCB2Utg==
X-Gm-Gg: ASbGnctz2v1oril5PWr/BL5dkggoU4MVnmuMMbXykp7Wkon5gBYVDss9+5NopN709nD
	Q0XvGFlw10npyqOfngndUMflSoR6WUVdOZW6kTfwIrEl+8b1qW4RA6iRAClg4cQXg+ALLqkgubB
	9uADSWB0qRPfgCwW4cAxFcJFJj7mk2btfmUQEV490lKo345Uo7Wn2ro7ThOqodpdMypZZWmCO2Z
	PV3r2BHNv6NkBz+kcckv+xOkDD2UBEJkH2zjvqKIypwTYKar0LW0K/s/JXTuSf+mchtKIcOWzrZ
	J46TwdhMltwvCn7zIzBd3IwyByPghw589aJ3
X-Google-Smtp-Source: AGHT+IEP7Htb/iGYnVPDDZWWGgVAGsXo3OJ5h9PlRYUthe7Ec1+ayfbl4KPIjZXY590AcXncPZ96ZA==
X-Received: by 2002:a05:6a00:1387:b0:730:8768:76d7 with SMTP id d2e1a72fcca58-73426d72ae6mr17250142b3a.17.1740380603162;
        Sun, 23 Feb 2025 23:03:23 -0800 (PST)
Received: from thinkpad ([36.255.17.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73242568aaasm19768611b3a.41.2025.02.23.23.03.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2025 23:03:22 -0800 (PST)
Date: Mon, 24 Feb 2025 12:33:18 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Thippeswamy Havalige <thippeswamy.havalige@amd.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, michal.simek@amd.com,
	bharat.kumar.gogada@amd.com,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: PCI: xilinx-cpm: Add compatible
 string for CPM5NC Versal Net host
Message-ID: <20250224070318.pkva2mdtbxwm7cvz@thinkpad>
References: <20250217072713.635643-1-thippeswamy.havalige@amd.com>
 <20250217072713.635643-2-thippeswamy.havalige@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250217072713.635643-2-thippeswamy.havalige@amd.com>

On Mon, Feb 17, 2025 at 12:57:12PM +0530, Thippeswamy Havalige wrote:
> The Xilinx Versal Net series has Coherency and PCIe Gen5 Module
> Next-Generation compact (CPM5NC) block which supports Root Port
> controller functionality at Gen5 speed.
> 
> Error interrupts are handled CPM5NC specific interrupt line and
> INTx interrupt is not support.
> 
> Signed-off-by: Thippeswamy Havalige <thippeswamy.havalige@amd.com>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> Changes in v2:
> - Update commit message to INTx
> Changes in v3:
> - None
> ---
>  Documentation/devicetree/bindings/pci/xilinx-versal-cpm.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/xilinx-versal-cpm.yaml b/Documentation/devicetree/bindings/pci/xilinx-versal-cpm.yaml
> index b63a759ec2d7..d674a24c8ccc 100644
> --- a/Documentation/devicetree/bindings/pci/xilinx-versal-cpm.yaml
> +++ b/Documentation/devicetree/bindings/pci/xilinx-versal-cpm.yaml
> @@ -18,6 +18,7 @@ properties:
>        - xlnx,versal-cpm-host-1.00
>        - xlnx,versal-cpm5-host
>        - xlnx,versal-cpm5-host1
> +      - xlnx,versal-cpm5nc-host
>  
>    reg:
>      items:
> -- 
> 2.43.0
> 

-- 
மணிவண்ணன் சதாசிவம்

