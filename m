Return-Path: <devicetree+bounces-142248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C30A3A249EF
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 16:36:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A2BE61887352
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 15:36:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB95F1C54BB;
	Sat,  1 Feb 2025 15:36:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WdlqMDsn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579571C2324
	for <devicetree@vger.kernel.org>; Sat,  1 Feb 2025 15:35:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738424160; cv=none; b=BEh0rbfsF6E8Gs8P9X965Z/1TUAFMOwv4+m7gxQjFixRumfljH8SnNLzquca9Swjy6dKK/zD0E2cz+GVckL1eiPNSz2TMbyqSsHXaf5ZQC9yr4p47hQgc20+lcQvKDshS9RcSsG9dFhTjZz7kipxx0NcBhkdyMIwLhDC1yA/pdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738424160; c=relaxed/simple;
	bh=zdc+MNv+j9zAnb2Y2FpDgGxuLasNGKL5Lamfb9DXLyo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ggpnnSHnpWU0mb4p+v0PMKueJmQsqmqJfi7hXBuoYdyetST8mYFnmD9zMyQ+uUg2t9XgeWEAw6h16egmJ6iqv2a5nWf/jiTu+5h+mkRUpqSgqrv7Bp8aEAn4L3yZZYo+LwqA60AWQOBR7h8HLJgA4b5Lu5cH5bbSBi2RlcRwpS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WdlqMDsn; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2164b662090so60116595ad.1
        for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 07:35:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738424157; x=1739028957; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NgK4G7cVRPxNbsx8fhvydaH8JOFZ6CJwy0WoHgTVDx8=;
        b=WdlqMDsn3+6qfS3MR6gez899T57GARhTDPJ7WarJEMDMuP+7fNHSHrMSbK0PsZf92f
         5S/rA2zVIdXTEgP73Z2AlVtN6Qj9fyAyDbKmeWsKxLiVlINqYm2zg/y6v8qjLyB5ohoa
         qtQx0y/WtpzDUzPF+W5XpoV5VQLlmBojVFPQBcYh2g5F8S3tac/i4g4qoGqelvAmmIKU
         GkDcJPZirXqGEir6N4S+m0ieMs/UKh7JGBCXhUotabX/ePF2DADaZQcaala2FPgkQGG5
         TzbKwerZfEmDDoYmn50T+t/M3hVK/mTzgEKwg50QhDs5PKMLf3a1EzMNER5RJW2GY1hz
         VVKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738424157; x=1739028957;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NgK4G7cVRPxNbsx8fhvydaH8JOFZ6CJwy0WoHgTVDx8=;
        b=UQWOwCL5BrN/ez8WJfYoX3dP0twLda6BJTTdvDx+tHHwMzjp408VnR4q+sLrkCPDvy
         pQpbGl9hBSDcQEww6oMFU4wkKfvwwnHd6yNjDj5mbnRwkY+qAAbYuyDdh/iaAMPrD1y6
         ygOGa0eVLf3dYzbOcqMmxCcTelfzXd5Yx/C5B+SL3qM87ww5GEXMHAbMfI9ATUSZHcjl
         Ds+uwGklBptWTkLEW65oXjbKL7z4HnwqpecMt3Uo24RwxUAphvnXBj9XVfLJvlHuR2Bu
         ICDwi8Qfwixpkg6L/4pPGpRQVmoZx5siyhQYwjnEL8pXj0xJdTAZjzbutdHJ6p6vKpWJ
         8RfA==
X-Forwarded-Encrypted: i=1; AJvYcCUOSj7jRP2Ds3RMOU1hUuaDB/Rv4CwEfqmlJFGbyJk906dJ8DjuZcHmu+s6sfo2ssIfOBXh9KAbPrHG@vger.kernel.org
X-Gm-Message-State: AOJu0YxOmwwZDT0JUz5IUu4JtWIZaKYOdjBclgr4zpU0e3PT3hgJD1QF
	mHnzN4XI2aBnJrhqTfZRmOtH0G+RWgVXflRcT/Lj5OV2Ds/mPzkWCHCOCjGkwQ==
X-Gm-Gg: ASbGnct8sD9RIduaeGPfC/mVtyltze/MjAgsWx4H+CZfqVq/MtnI/gnV1YuuI4AcTm9
	0rJGA9T26xdGjTOdWgGqTf3nre80AyuxazGBo1RK9dUOlH7Io4mLyC+fpeBPwsohKdhUF7YdwPs
	atx674odyEkz5GMt+jdwsQiX28KG9aC+3pBei+sdhLP1UAlMc+Im3vwPudJg/mNxpRL31mhWfrh
	uNcmEIjt3jF/lpZ+WjPhCohGYmamtu/6kAvAkHHHPFrZlLDPVaABD0hx3CJIooKv/LSJAJDJE4p
	grGtl4aJVCktjVqba342UwCzfj8=
X-Google-Smtp-Source: AGHT+IGzlTHcr2GwqKspBtJB7T7HsAuTwQj90njS9oPWBHSKjkl6folIH9PdSTDNGx/ngMu4/vXRyg==
X-Received: by 2002:a05:6300:710f:b0:1ed:a565:f80e with SMTP id adf61e73a8af0-1eda566b50cmr5077054637.14.1738424157428;
        Sat, 01 Feb 2025 07:35:57 -0800 (PST)
Received: from thinkpad ([120.56.202.249])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-acec047944csm4891617a12.54.2025.02.01.07.35.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Feb 2025 07:35:56 -0800 (PST)
Date: Sat, 1 Feb 2025 21:05:49 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v6 7/7] arm64: dts: rockchip: Add UFS support for RK3576
 SoC
Message-ID: <20250201153549.dusrfjrxxrizmcfa@thinkpad>
References: <1737428427-32393-1-git-send-email-shawn.lin@rock-chips.com>
 <1737428427-32393-8-git-send-email-shawn.lin@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1737428427-32393-8-git-send-email-shawn.lin@rock-chips.com>

On Tue, Jan 21, 2025 at 11:00:27AM +0800, Shawn Lin wrote:
> Add ufshc node to rk3576.dtsi, so the board using UFS could
> enable it.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Small nit below.

> 
> ---
> 
> Changes in v6:
> - remove comments suggested by Mani
> 
> Changes in v5: None
> Changes in v4: None
> Changes in v3: None
> Changes in v2: None
> 
>  arch/arm64/boot/dts/rockchip/rk3576.dtsi | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> index 4dde954..bb786bd 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> @@ -1221,6 +1221,30 @@
>  			};
>  		};
>  
> +		ufshc: ufshc@2a2d0000 {
> +			compatible = "rockchip,rk3576-ufshc";
> +			reg = <0x0 0x2a2d0000 0 0x10000>,
> +			      <0x0 0x2b040000 0 0x10000>,
> +			      <0x0 0x2601f000 0 0x1000>,
> +			      <0x0 0x2603c000 0 0x1000>,
> +			      <0x0 0x2a2e0000 0 0x10000>;

Use 0x0 for consistency.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

