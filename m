Return-Path: <devicetree+bounces-139890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E34E3A176AC
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 05:49:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CDA6F7A3CD4
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 04:49:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B7B2185955;
	Tue, 21 Jan 2025 04:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tZZi6saO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 844DC145B27
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 04:49:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737434992; cv=none; b=XGAUNp4gVhYEr+ka/qChNkTvPlgF1p0v43WhWd/qAj6hJ6BK12YE7VzRbSm1CDcTVlHzb0+PsdFgZcceAC8dN6T78dsTM9PFSXneGrrFmO7oM1UlHN6gjocxOXSwXJqV4vkAUlbu6wDKep+JDtsljxhmHJDOi54ACih/VeYFFK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737434992; c=relaxed/simple;
	bh=N0tPs7ETfruUGNs2tLxE5jkCWSY6gqmP7OLpp7v/ulk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YgnnOBiliO+Mt7iiC/+aPIwUilu2VnoS+W+sRS5HriMxRjDgajFZDW73vNioMs9UqyB6FBup0fp2sz1dRBygrNtgqebfCjOv0Yeze/JHMNbXMpmiXuxqo62zmwQipAgmh6b0hHdbEL6Km+vrLCujNywui2qmqOTn/Ghgf0cH6gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tZZi6saO; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-216728b1836so87014025ad.0
        for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 20:49:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737434990; x=1738039790; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CjRB5FGtCoUKj/Qn6JPgmzvgrR86ptoUBtvodY+wTzk=;
        b=tZZi6saOaRqCp7Ehyo7IJZ/CqkR++V13v0Sd0/eO6N9tZ6I4RgxCLBtqUQ4ObCuDWh
         tVL+GooSsXQ1ZD4fe0XDca++y1G8w7j64EuPXd1jj4+SOPA29cTjPTuAzyRZVPQneM3M
         E34fYLTMX0VHsB/fJZEUilWbjOz4Z/8wacjCUwGlyi8HLYa6b9e8DKM+oKMm0ToroXlS
         aqqgAEcSK6y9FASbTE8NzdzsJnmsgXqR6IFqyUOZ0JHibmuR2w6Uh1XJmJTweRUfAuZY
         ENeuPFYuGiqbjIsaCQEtOxV5M25gEyODRoFWen1NgnTdHz+zDXm+F6v9Cq1Z9stdpl6/
         xXSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737434990; x=1738039790;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CjRB5FGtCoUKj/Qn6JPgmzvgrR86ptoUBtvodY+wTzk=;
        b=bNjLQnytYogRtMbE1v3fkEx6VTzoS0/aq6P/5tqWcTrlPxae0YXaLwfFi6hBZc3suF
         etLKuZwILWGVZRlSo31KOFU4f+grcCw1d9zH4+4dEDvvAKUXSPy1/vQ3GtFM1q4bdXX2
         imL8hr6/pxNfjxJ2eZQXv5VhxjO4kRBqxqf0hMVXmyDOWydmNC9iikeETkKMiKRf4jeo
         HqL13LmO8VOvBlekbShZicFwfrL8QTvu/P+S8IszkF6hlKgbI6D+NJD+f2R7p7t+/6gF
         bMx8vpPAHdf8dJLM8gSR/wAR/b3zbqTsZzLar6cnOjkvoa9s7sL/e4vPr24BHWpILBRa
         +naw==
X-Forwarded-Encrypted: i=1; AJvYcCWoRTYHaBd3mCAs12eciNKTDo/2zr5vuak7kYDLSjIn3OS8D78sVaRK9CB8SndJDl0t3ff7yIFANrG0@vger.kernel.org
X-Gm-Message-State: AOJu0YxOFc06lwDqK5siEOAfZXXGYepbTIq6phVhVFerty5oj+2USJXS
	7VeqbWVOSuqOQFW+CFJFYqW+pmbKQQZLXNi64xbReC1Q0KFyZWF6sr3Ah365CQ==
X-Gm-Gg: ASbGncsoatA5BQ7Yj3mV5a2AUbqq2+kJmS4+yMtjxLUBDY2wN9RdHpsgmxpDEavh17A
	jiS+iPU40BsRogp9fY7vLambmt2w4nQFC0g29J0nNUvrrSxVPppfwZGyy1lgHyOMyweegaPM4es
	V4Vg+R0VChWWmRf9ezQDCreYatJpnWtTzto8l0ctMY+iBv+GPNlujagsITo0y97RU6tMNtpYXsK
	I94ld3gDSdYh/e692oMEiKt67T9rmDoSgjukiYRW0ULt5wgOp4T5kCspC97Y3kvzepGGaHVwitC
	+D0RYR8=
X-Google-Smtp-Source: AGHT+IF67FzpL0/ep2wKr2SKX0WCmGAGc0SaMaYBS0rHLyEsUVb25qF3JlcE+li6la80AjHfaAh+xA==
X-Received: by 2002:a05:6a21:998a:b0:1e1:b329:3cd with SMTP id adf61e73a8af0-1eb214daa70mr22113794637.20.1737434989787;
        Mon, 20 Jan 2025 20:49:49 -0800 (PST)
Received: from thinkpad ([117.213.102.234])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72dab81737asm8294159b3a.57.2025.01.20.20.49.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2025 20:49:49 -0800 (PST)
Date: Tue, 21 Jan 2025 10:19:41 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Thippeswamy Havalige <thippeswamy.havalige@amd.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, jingoohan1@gmail.com,
	michal.simek@amd.com, bharat.kumar.gogada@amd.com
Subject: Re: [PATCH v7 1/3] dt-bindings: PCI: dwc: Add AMD Versal2 mdb slcr
 support
Message-ID: <20250121044941.coayhpkyrh7zhfnq@thinkpad>
References: <20250119224305.4016221-1-thippeswamy.havalige@amd.com>
 <20250119224305.4016221-2-thippeswamy.havalige@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250119224305.4016221-2-thippeswamy.havalige@amd.com>

On Mon, Jan 20, 2025 at 04:13:03AM +0530, Thippeswamy Havalige wrote:
> Add support for mdb slcr aperture that is only supported for AMD Versal2
> devices.
> 
> Signed-off-by: Thippeswamy Havalige <thippeswamy.havalige@amd.com>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> ---
> Changes in v3:
> -------------
> - Introduced below changes in dwc yaml schema.
> Changes in v5:
> -------------
> - Modify mdb_pcie_slcr as constant.
> Changes in v6:
> -------------
> -Modify slcr constant
> ---
>  Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml b/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
> index 205326fb2d75..fdecfe6ad5f1 100644
> --- a/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
> @@ -113,6 +113,8 @@ properties:
>                enum: [ smu, mpu ]
>              - description: Tegra234 aperture
>                enum: [ ecam ]
> +            - description: AMD MDB PCIe slcr region
> +              const: slcr
>      allOf:
>        - contains:
>            const: dbi
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

