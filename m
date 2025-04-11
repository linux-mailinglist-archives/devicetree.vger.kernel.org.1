Return-Path: <devicetree+bounces-165784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0196A856E9
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 10:45:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D03A3B458F
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 08:45:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE495298990;
	Fri, 11 Apr 2025 08:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="enpRr1dU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC5C32980A4
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 08:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744361092; cv=none; b=epobpUEwHI44Jrkhf5h3FdcKH2AwiLeftnFWU59H4lmCT2R4qrkm1FoPQGxodWtuRq4L6qI5V93gBI/S6a5JMbPjs3QEe4hmIIS85KYSIcMMVTSge5TyI1c1hgzAKzuP22H6w55Tb4myevrfINgWQd9bwL+aFCxtR/lMnsyM+xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744361092; c=relaxed/simple;
	bh=9cLwMw68mIgHIxF1qVqrql4c16I3edCul3SDUKeu+G8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q1GOmBcLVPQkXvs4M4eWXSkj65KUBTTFo2mBUElXm0tibLsRhPiTWJom9Rj4/gUPeJx4ucijKF+t9m+UL6wVYCQZ6h0L3x4HJ1Qm8Q/kJiqgxfo6voigJryCBe7Tuw80IS0rJ2606Sr+ddF5CJnfHNwzf/vCBrB4ERqsXuMp580=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=enpRr1dU; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-39bf44be22fso980804f8f.0
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 01:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1744361089; x=1744965889; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=zMGgS5fCEfGgSPkzbjBwVuqib9p8e2egk8zRG8FlzXk=;
        b=enpRr1dUTuun/9ZTgkrViHTDeX58ABGjjTdR6fKYTeW0XY5NmsSDdVNp8Jgg1SjFcM
         3rRWUwLvCxRLzvMztd9DsTx2hqXQrTc+9qnLmoeCIJsW8sGQSwgTQk81fGfwpdCEHjEH
         M4SfRM2yIzF6U/ofPbJrF1paaTYLrW1EHAVgoPTvHyNXewEcrXFFvZHwIIrhULTp3219
         ZImL9ImHKkIevjySCnPr7sFurQvq6jckgCdXqvuDFy5UIojlFTflQotv3APpDXrJKvfR
         hsMx5pkklmN5mlmDyoZSbMCLB+CkwKEv1SWmn3wUOx5E0XNsW0hAyQv28Fe1DSOjufK6
         il7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744361089; x=1744965889;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zMGgS5fCEfGgSPkzbjBwVuqib9p8e2egk8zRG8FlzXk=;
        b=bDjiDP3A8qURd8Y5F5Cy0PrBqh/oDcwD9eHGybRSOcjYthutYwV19RdtR4QfLFS8fd
         brmz/rbg1R7pc+kcra0BkDAMs/7lTiPPwPdjvs1hmw3JFoiEvf/PtWNfmaAk0S0SONA3
         0OgoOgIhtftZnv4T7S04Td0MAwYHmuxbkI5t3o3dLRnUqgNfDnizFdcm+zrtgeR5rel1
         BFzIE0ZQ1uULzsbqN5GJqMt2uk2CBQoHnulOon8XtauvzXejL9+qbDqri3iUIJiJZ22o
         tNecVRLEhAy55XvZCt2EJ6PJ5KJmlq46MG3WPDV+BIuW5tQCUPePT/iddSdepqpbUU+A
         NY3Q==
X-Forwarded-Encrypted: i=1; AJvYcCV/enh9SDwiJ6bQ/9VjbcogIUhCjc+RJPOGCu0D2lfmvdc3TikjN0lTz1BRPdncsoPx5gRso90KhJ95@vger.kernel.org
X-Gm-Message-State: AOJu0YwAO9RpMfFQG9KklmWrhXD2qsoAcLOJhk/tNtH8dpqBzmDCOxTI
	8GQLmMQGkALfzv6OuUpEA8JVvC08Ls1PVC6fv2EuK0eNouBI5JyfxMy7ryTaBZM=
X-Gm-Gg: ASbGncv0p0oCR2jsqJezQ3a1GrGXxb8Kkf7ISkx1jr0baOWj1PY+faYjMsptFIJI3+8
	ZgBZzewqHYkZ/AkhgBypfcp6kbdJ6JvZDurmlGle2o20ByO75z8FlAvELziPLY4+/GzxTsyOJJp
	P2QBKerwZSkxC4viCWCGda7Fw1AcnTjekbOApsfdxJCoDrExE5/Pw7umdMIkdTGnPjJAIj6XLmZ
	VLjsVyP9iRF0hIkL6Ue4yYMOy6y0qkpfKWYVElHVfIUqjJR7h/70lJNUE5F3apDWaYB61XHW7IP
	pxjbECNg/UHLtOT6Ni6W959PycWbouPWdIopmw==
X-Google-Smtp-Source: AGHT+IE9HwRJqdBoFZARSKejgbKlYpB5ZyiUnFyow4d/RQYRPI6i3/YxPI/2/DT5RWcCHGw3YkUedA==
X-Received: by 2002:a05:6000:40d9:b0:39c:1258:2dc9 with SMTP id ffacd0b85a97d-39eaaeca292mr1424739f8f.58.1744361089162;
        Fri, 11 Apr 2025 01:44:49 -0700 (PDT)
Received: from [192.168.2.177] ([81.0.8.231])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f235a5b08sm78726825e9.33.2025.04.11.01.44.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 01:44:48 -0700 (PDT)
Message-ID: <2746c8a3-2d35-44bf-829a-e09c9441c2f9@suse.com>
Date: Fri, 11 Apr 2025 10:44:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/3] pmdomain: mediatek: Bump maximum bus protect data
 array elements
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 robh@kernel.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, ulf.hansson@linaro.org,
 matthias.bgg@gmail.com, fshao@chromium.org, y.oudjana@protonmail.com,
 wenst@chromium.org, lihongbo22@huawei.com, mandyjh.liu@mediatek.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, kernel@collabora.com
References: <20250410143944.475773-1-angelogioacchino.delregno@collabora.com>
 <20250410143944.475773-3-angelogioacchino.delregno@collabora.com>
Content-Language: en-US, ca-ES, es-ES
From: Matthias Brugger <mbrugger@suse.com>
Autocrypt: addr=mbrugger@suse.com; keydata=
 xsFNBFP1zgUBEAC21D6hk7//0kOmsUrE3eZ55kjc9DmFPKIz6l4NggqwQjBNRHIMh04BbCMY
 fL3eT7ZsYV5nur7zctmJ+vbszoOASXUpfq8M+S5hU2w7sBaVk5rpH9yW8CUWz2+ZpQXPJcFa
 OhLZuSKB1F5JcvLbETRjNzNU7B3TdS2+zkgQQdEyt7Ij2HXGLJ2w+yG2GuR9/iyCJRf10Okq
 gTh//XESJZ8S6KlOWbLXRE+yfkKDXQx2Jr1XuVvM3zPqH5FMg8reRVFsQ+vI0b+OlyekT/Xe
 0Hwvqkev95GG6x7yseJwI+2ydDH6M5O7fPKFW5mzAdDE2g/K9B4e2tYK6/rA7Fq4cqiAw1+u
 EgO44+eFgv082xtBez5WNkGn18vtw0LW3ESmKh19u6kEGoi0WZwslCNaGFrS4M7OH+aOJeqK
 fx5dIv2CEbxc6xnHY7dwkcHikTA4QdbdFeUSuj4YhIZ+0QlDVtS1QEXyvZbZky7ur9rHkZvP
 ZqlUsLJ2nOqsmahMTIQ8Mgx9SLEShWqD4kOF4zNfPJsgEMB49KbS2o9jxbGB+JKupjNddfxZ
 HlH1KF8QwCMZEYaTNogrVazuEJzx6JdRpR3sFda/0x5qjTadwIW6Cl9tkqe2h391dOGX1eOA
 1ntn9O/39KqSrWNGvm+1raHK+Ev1yPtn0Wxn+0oy1tl67TxUjQARAQABzSRNYXR0aGlhcyBC
 cnVnZ2VyIDxtYnJ1Z2dlckBzdXNlLmNvbT7CwXgEEwECACIFAlV6iM0CGwMGCwkIBwMCBhUI
 AgkKCwQWAgMBAh4BAheAAAoJENkUC7JWEwLx6isQAIMGBgJnFWovDS7ClZtjz1LgoY8skcMU
 ghUZY4Z/rwwPqmMPbY8KYDdOFA+kMTEiAHOR+IyOVe2+HlMrXv/qYH4pRoxQKm8H9FbdZXgL
 bG8IPlBu80ZSOwWjVH+tG62KHW4RzssVrgXEFR1ZPTdbfN+9Gtf7kKxcGxWnurRJFzBEZi4s
 RfTSulQKqTxJ/sewOb/0kfGOJYPAt/QN5SUaWa6ILa5QFg8bLAj6bZ81CDStswDt/zJmAWp0
 08NOnhrZaTQdRU7mTMddUph5YVNXEXd3ThOl8PetTyoSCt04PPTDDmyeMgB5C3INLo1AXhEp
 NTdu+okvD56MqCxgMfexXiqYOkEWs/wv4LWC8V8EI3Z+DQ0YuoymI5MFPsW39aPmmBhSiacx
 diC+7cQVQRwBR6Oz/k9oLc+0/15mc+XlbvyYfscGWs6CEeidDQyNKE/yX75KjLUSvOXYV4d4
 UdaNrSoEcK/5XlW5IJNM9yae6ZOL8vZrs5u1+/w7pAlCDAAokz/As0vZ7xWiePrI+kTzuOt5
 psfJOdEoMKQWWFGd/9olX5ZAyh9iXk9TQprGUOaX6sFjDrsTRycmmD9i4PdQTawObEEiAfzx
 1m2MwiDs2nppsRr7qwAjyRhCq2TOAh0EDRNgYaSlbIXX/zp38FpK/9DMbtH14vVvG6FXog75
 HBoOzsFNBF3VOUgBEACbvyZOfLjgfB0hg0rhlAfpTmnFwm1TjkssGZKvgMr/t6v1yGm8nmmD
 MIa4jblx41MSDkUKFhyB80wqrAIB6SRX0h6DOLpQrjjxbV46nxB5ANLqwektI57yenr/O+ZS
 +GIuiSTu1kGEbP5ezmpCYk9dxqDsAyJ+4Rx/zxlKkKGZQHdZ+UlXYOnEXexKifkTDaLne6Zc
 up1EgkTDVmzam4MloyrA/fAjIx2t90gfVkEEkMhZX/nc/naYq1hDQqGN778CiWkqX3qimLqj
 1UsZ6qSl6qsozZxvVuOjlmafiVeXo28lEf9lPrzMG04pS3CFKU4HZsTwgOidBkI5ijbDSimI
 CDJ+luKPy6IjuyIETptbHZ9CmyaLgmtkGaENPqf+5iV4ZbQNFxmYTZSN56Q9ZS6Y3XeNpVm6
 FOFXrlKeFTTlyFlPy9TWcBMDCKsxV5eB5kYvDGGxx26Tec1vlVKxX3kQz8o62KWsfr1kvpeu
 fDzx/rFpoY91XJSKAFNZz99xa7DX6eQYkM2qN9K8HuJ7XXhHTxDbxpi3wsIlFdgzVa5iWhNw
 iFFJdSiEaAeaHu6yXjr39FrkIVoyFPfIJVyK4d1mHe77H47WxFw6FoVbcGTEoTL6e3HDwntn
 OGAU6CLYcaQ4aAz1HTcDrLBzSw/BuCSAXscIuKuyE/ZT+rFbLcLwOQARAQABwsF2BBgBCAAg
 FiEE5rmSGMDywyUcLDoX2RQLslYTAvEFAl3VOUgCGwwACgkQ2RQLslYTAvG11w/+Mcn28jxp
 0WLUdChZQoJBtl1nlkkdrIUojNT2RkT8UfPPMwNlgWBwJOzaSZRXIaWhK1elnRa10IwwHfWM
 GhB7nH0u0gIcSKnSKs1ebzRazI8IQdTfDH3VCQ6YMl+2bpPz4XeWqGVzcLAkamg9jsBWV6/N
 c0l8BNlHT5iH02E43lbDgCOxme2pArETyuuJ4tF36F7ntl1Eq1FE0Ypk5LjB602Gh2N+eOGv
 hnbkECywPmr7Hi5o7yh8bFOM52tKdGG+HM8KCY/sEpFRkDTA28XGNugjDyttOI4UZvURuvO6
 quuvdYW4rgLVgAXgLJdQEvpnUu2j/+LjjOJBQr12ICB8T/waFc/QmUzBFQGVc20SsmAi1H9c
 C4XB87oE4jjc/X1jASy7JCr6u5tbZa+tZjYGPZ1cMApTFLhO4tR/a/9v1Fy3fqWPNs3F4Ra3
 5irgg5jpAecT7DjFUCR/CNP5W6nywKn7MUm/19VSmj9uN484vg8w/XL49iung+Y+ZHCiSUGn
 LV6nybxdRG/jp8ZQdQQixPA9azZDzuTu+NjKtzIA5qtfZfmm8xC+kAwAMZ/ZnfCsKwN0bbnD
 YfO3B5Q131ASmu0kbwY03Mw4PhxDzZNrt4a89Y95dq5YkMtVH2Me1ZP063cFCCYCkvEAK/C8
 PVrr2NoUqi/bxI8fFQJD1jVj8K0=
In-Reply-To: <20250410143944.475773-3-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/04/2025 16:39, AngeloGioacchino Del Regno wrote:
> In preparation for adding support for the MediaTek Dimensity 1200
> MT6893 SoC, bump the maximum elements of the bp_cfg array to 7.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Matthias Brugger <mbrugger@suse.com>

> ---
>   drivers/pmdomain/mediatek/mtk-pm-domains.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pmdomain/mediatek/mtk-pm-domains.h b/drivers/pmdomain/mediatek/mtk-pm-domains.h
> index 2ac96804b985..7085fa2976e9 100644
> --- a/drivers/pmdomain/mediatek/mtk-pm-domains.h
> +++ b/drivers/pmdomain/mediatek/mtk-pm-domains.h
> @@ -44,7 +44,7 @@
>   #define PWR_STATUS_AUDIO		BIT(24)
>   #define PWR_STATUS_USB			BIT(25)
>   
> -#define SPM_MAX_BUS_PROT_DATA		6
> +#define SPM_MAX_BUS_PROT_DATA		7
>   
>   enum scpsys_bus_prot_flags {
>   	BUS_PROT_REG_UPDATE = BIT(1),


