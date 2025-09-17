Return-Path: <devicetree+bounces-218423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E57B7FEA9
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 16:22:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F93A54139E
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:14:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD7752E8B86;
	Wed, 17 Sep 2025 14:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b="RbBATuLO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99857291C13
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 14:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758118141; cv=none; b=KVLGyA41Vw6JCROW3NAmkOm+47hi36bur47lvHPwYtxZ9caL01IkOJke3DE+T0biHVZYOn+Be2iFEMn1BLmE+XEnHtRmRRbjD10R/vfbj6RN1rA5V0EZ51tSTdUnc1fPBaXz1ykQi3Kpt5RsfCMCziN3niBmZ/tXbo+f4NHKurE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758118141; c=relaxed/simple;
	bh=y55jVHTsFdR0ohUFnQ8BSywHTKpU8ilitRM6NGPy960=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FdGRgKybnc+5Xjz/+5/88mncIqRUXcmippM8giL2SIaf7blb5c1eFKAa4shUiKCoUYsFEdqF6nPRTZxTG7gVlgvVObc+iifRbmfdV8SRyK/Uh+/u9FNOR558VfTuWDa+Npw1Z0iEgiTAEloKfrjrKIOl7df0WCuVm5yU1+vWK9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ieee.org; spf=pass smtp.mailfrom=ieee.org; dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b=RbBATuLO; arc=none smtp.client-ip=209.85.166.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ieee.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ieee.org
Received: by mail-io1-f44.google.com with SMTP id ca18e2360f4ac-88762f20125so503535439f.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 07:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1758118138; x=1758722938; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BwXs810vPVolctqhE5kX1kHC5K5g0mvG5ftVgYqmopk=;
        b=RbBATuLOQ58sJ2hqNSLuD/4Nr7sHLcauJzrwfJceWGoV60JHpxDKEoltmtB5pfCWo5
         cSrEKXUBbwtuiyN4XHCf1njv7BsVO0reueEzAPb8fI75X74HRSZBSmc1Q+z6h4OSLXHj
         YQKXrkBBqQ7To1PQR7XzmkNS5QSmG0VXll/G8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758118138; x=1758722938;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BwXs810vPVolctqhE5kX1kHC5K5g0mvG5ftVgYqmopk=;
        b=RHWlk2JSzuyqgYa8woch7qcEBGwgHEQAXd8PzlXJXhX+lo2K8PP0GCkUW1LBDzYSpW
         Lc4zYS9Gpc9VpPvoFORJK8ZD1FQlRfOBDuJzcyT31xNyzi/yV36c3kJfczgN33PPqwzM
         FFDMQMNm+SBPMeczr8YautCtmcH6KgqATfJNlOuO4dkluzYTwHWDjKUsELg1WLCjj5QQ
         JaVsfRl9+VPLghnLZuNaOdA/E2+72cQro1abTaNj1/L08j5uug43QYZxOEMT0kH+HSG6
         kNHSqPaRpIi8rDeub6c3GELcPL4+jU3omzjZ0chf0X5VPLALVgPsIZznfz6PNREWVrUO
         +fcQ==
X-Forwarded-Encrypted: i=1; AJvYcCXiQeJsbuOlKFMrJt3jx/FS88PTpxlweZVfTcMOZ5Ug2jj0d+SMCWTy0m5u3/+1trAIN6eL+O1pMh5U@vger.kernel.org
X-Gm-Message-State: AOJu0YzRr/WeQCVdGSR2Mj5Axn+lCY2GvLVWM0mMVMtkzLenSbYMwJoi
	P82r9sq8U7dLzWyvDwOZBA3sFG27Z9N4i6voW9X7S2NtmVGJ1Wu5cu+KxLqF0Rno6w==
X-Gm-Gg: ASbGncsBNlRGbE1owTER3n6GqeBDCesP1fo/yYfNlMVUD1ff+NI0QBnAg7FaprErnuP
	/7UwYttFk38XyZXPNHAKz/CY1MbbYyKDqNblIV0BXFu2tM6BsCvzO7dwTIagftUNeYZEwA4OGjj
	kVSDFSEfJ6wbjtpjQC4446+53Ic8OGWk+ANLjwGCsnr6Hr7or4WPVi/F1K0JCpZwYdJFagB1zh1
	yjply53gBHucp6tsw3ert5fcVQBkSIJ7rgql3z6NS+G5RVFue+/kQrCNAZJM94ro1xKvwrOgeyN
	1P/c8S7nCge6b5mtjO7nEpcxHj/aCSKMYLPXmA3cT4cJkf+bdXaXTx8OnFcEa9nmhvcoBQ1YN9R
	BRi2I/U8FkMqKIvWJPMiACJcdfh5oWTFaXWgrlpfI1ahyTDq8gPz3Tw2eIW1NV+I=
X-Google-Smtp-Source: AGHT+IF/fBkdFTD3FTvzdS8tc8bIkj0IKqMAIt/hH+T2GkDeQwHL7JRVqgSvOipa21x1SDVuYYQNaA==
X-Received: by 2002:a05:6602:3412:b0:890:1f62:492c with SMTP id ca18e2360f4ac-89d1bfab247mr324144039f.8.1758118137550;
        Wed, 17 Sep 2025 07:08:57 -0700 (PDT)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.googlemail.com with ESMTPSA id ca18e2360f4ac-88f2fabe0bcsm648019239f.25.2025.09.17.07.08.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 07:08:56 -0700 (PDT)
Message-ID: <99168e94-9f32-458d-ae3a-55d0dcee3dc7@ieee.org>
Date: Wed, 17 Sep 2025 09:08:54 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: i2c: spacemit: extend and validate all
 properties
To: Yixun Lan <dlan@gentoo.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 Troy Mitchell <troymitchell988@gmail.com>, Alex Elder <elder@riscstar.com>
Cc: linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20250917-01-k1-i2c-schema-v1-1-bd276b366d9c@gentoo.org>
Content-Language: en-US
From: Alex Elder <elder@ieee.org>
In-Reply-To: <20250917-01-k1-i2c-schema-v1-1-bd276b366d9c@gentoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/16/25 10:38 PM, Yixun Lan wrote:
> Extend the K1 I2C properties by including generic i2c-controller schema.
> and this will enable it to do the DT validation check later.
> 
> Signed-off-by: Yixun Lan <dlan@gentoo.org>

Tested-by: Alex Elder <elder@riscstar.com>

> ---
> arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dtb: i2c@d401d800: Unevaluated properties are not allowed ('#address-cells', '#size-cells', 'pmic@41' were unexpected)
> 
> Link: https://lore.kernel.org/all/20250825172057.163883-6-elder@riscstar.com/ [1]
> ---
>   Documentation/devicetree/bindings/i2c/spacemit,k1-i2c.yaml | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/spacemit,k1-i2c.yaml b/Documentation/devicetree/bindings/i2c/spacemit,k1-i2c.yaml
> index 3d6aefb0d0f185ba64e414ac7f5b96cd18659fd3..226c600deae142413277117e25baae09f0918381 100644
> --- a/Documentation/devicetree/bindings/i2c/spacemit,k1-i2c.yaml
> +++ b/Documentation/devicetree/bindings/i2c/spacemit,k1-i2c.yaml
> @@ -9,6 +9,9 @@ title: I2C controller embedded in SpacemiT's K1 SoC
>   maintainers:
>     - Troy Mitchell <troymitchell988@gmail.com>
>   
> +allOf:
> +  - $ref: /schemas/i2c/i2c-controller.yaml#
> +
>   properties:
>     compatible:
>       const: spacemit,k1-i2c
> 
> ---
> base-commit: 8f5ae30d69d7543eee0d70083daf4de8fe15d585
> change-id: 20250917-01-k1-i2c-schema-faf6715d7b88
> 
> Best regards,


