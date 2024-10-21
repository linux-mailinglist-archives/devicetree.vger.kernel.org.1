Return-Path: <devicetree+bounces-113646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4A89A681E
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 14:23:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA71C284B4A
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 12:23:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEB061F8908;
	Mon, 21 Oct 2024 12:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ifSTlP/C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6A801F80DF
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 12:21:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729513314; cv=none; b=X4mHPyzLmA+j3/j77KZd5foi2yZxTudM2cwGh4xZ59cIjatnGhAV6FfDn/x29wQ6htHQ6b35BV2vaQPmcISwCAHkcgtWUBAQne33iPOZz4q5CLF74GxwxoAW3QVrbQ9kEk9jTWQfiVW0ufObpTh/D8mrXa23ylJPPqAbgNozZa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729513314; c=relaxed/simple;
	bh=CNCDdEsWBc0M31ZBvUs92FrFSjCSPlL7t+EE9Xydj5o=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=C3sYTNe8sqNyVqF/GED67NYm2CyQsTaRira2GDygwl2/6NMaokY1qpjVb7MFiqIdFry4Rl1ndaB6qSmMiRrUa0sDOV7mzaye884CBKzYFqsVM9kJ4m3SuP0UkawYLUe0E5Y/ATMiJ8igPfuMA+y9WxF/Q2HoXtaNWeN6Q5sqrG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ifSTlP/C; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4314f38d274so60649305e9.1
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 05:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729513311; x=1730118111; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=DrrbPqJFiY2iO0dRfipxAk8EUQAVQaEPzn3cJpgTtnU=;
        b=ifSTlP/CYui79Mc3MNWLUZZb8Z0yIoF5hTu+ETMx6xWeSqFj7ebnMgBmJcZ2qkCDNr
         hyx32KUdHCO3ISUMhtrhDGEJctJkZG9kKMM1lexmgVLoDgq3XV7t0e4cZBfSJPMdKb5H
         Uaw/Fq2GI7t+5obNTR+N4YG2DLv+rkpd7RCH3tBwznp7YqPfLsD+t/8/i1Y3C06ausoH
         +0StxXFoaLZY/SQFG7rmAxhehLt99xTLntCg3qbow1fLYE9hEiXpH2pSJjzgtRakDDRD
         0E/eJLROebIiUqQofQWcuzrgb+1E3hqje2/r2Kbr7ZURnVeov6LGGGvqU0X8d5jSI73d
         io3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729513311; x=1730118111;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DrrbPqJFiY2iO0dRfipxAk8EUQAVQaEPzn3cJpgTtnU=;
        b=irSCWqyM7aPZ/pBzFUsDf7AQhFHqvnWUilLKLI4rjh9JiCnimIdIxcuuT6ZmDkWMjJ
         XCdCE/YnIR7IoQXB7qIeXol17eole5J0jjQpHW2UONWm3nDTho2Z//zlfmm7nBbBZAZ2
         FF4hGBhJGeo9W8JU2LTYdwPQw3XpWG6ss/zRReIiarBvIlOXSfpmGkM11ZzJxRjNHAYa
         TYTCzbH7IBCn6G5Kc89ckmnM9gzlPDItQyhoDeTlW8U3E3QrX0jGUDcZcYjuOl7vAYj4
         fO5gYbAwwuLWsZ6RvM6U6Tf1YSUr63kRA0cb/dJarSDICj3WLnF8eG+fp1yOiiozOn8o
         8OGw==
X-Forwarded-Encrypted: i=1; AJvYcCUa5kXPOJ5SIhwO8Qxkx28DrSvKT9Gqvkuy+hTXcVdFtYPGzai40kqMEejR1Ch+TZGFgqCIRQTxEHy/@vger.kernel.org
X-Gm-Message-State: AOJu0YzuT7LMUrIWX06+rAhoQbpeeeGRfRw0vF/OUbWjaeoFtmW8yxQw
	4zuAwMUvmTqKLIuA/quVo0vSw0jvQ74RBBS5noSMdzznM9D1QZ7EVmqDsky6+FE=
X-Google-Smtp-Source: AGHT+IEh4ATUI62CAEjTzBBALaQCV/tzBZGHEJShxC/vcLj1FngclFlVQR/NbhKEuk2BR427i6/pJA==
X-Received: by 2002:a05:600c:45c3:b0:42c:ba83:3f00 with SMTP id 5b1f17b1804b1-4316161ef16mr127505355e9.1.1729513310903;
        Mon, 21 Oct 2024 05:21:50 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:3908:dea6:2ddd:be97? ([2a01:e0a:982:cbb0:3908:dea6:2ddd:be97])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4316f5cc921sm55374295e9.46.2024.10.21.05.21.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Oct 2024 05:21:50 -0700 (PDT)
Message-ID: <90ed498c-5d38-4aa4-8eac-6fee71a4387b@linaro.org>
Date: Mon, 21 Oct 2024 14:21:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 5/6] phy: qualcomm: qmp-pcie: define several new
 registers
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241021-sar2130p-phys-v2-0-d883acf170f7@linaro.org>
 <20241021-sar2130p-phys-v2-5-d883acf170f7@linaro.org>
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20241021-sar2130p-phys-v2-5-d883acf170f7@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 21/10/2024 12:33, Dmitry Baryshkov wrote:
> Define several registers to be used by PCIe QMP PHYs on v6 platforms.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h     | 3 +++
>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h          | 2 ++
>   drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h | 1 +
>   3 files changed, 6 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
> index 0ca79333d94261610f7274968c96362dcfb1f354..45397cb3c0c6fd2cd989ddc600510589792a3b1a 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
> @@ -14,4 +14,7 @@
>   #define QPHY_PCIE_V6_PCS_PCIE_ENDPOINT_REFCLK_DRIVE	0x20
>   #define QPHY_PCIE_V6_PCS_PCIE_OSC_DTCT_ACTIONS		0x94
>   
> +#define QPHY_PCIE_V6_PCS_LANE1_INSIG_SW_CTRL2		0x024
> +#define QPHY_PCIE_V6_PCS_LANE1_INSIG_MX_CTRL2		0x028
> +
>   #endif
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
> index 08299d2b78f096fa5f9388a4d54ddfa85667b18c..aa5afb921f12c07e0648f69433a2e6e2fb756c07 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
> @@ -17,6 +17,8 @@
>   #define QPHY_V6_PCS_LOCK_DETECT_CONFIG3		0x0cc
>   #define QPHY_V6_PCS_LOCK_DETECT_CONFIG6		0x0d8
>   #define QPHY_V6_PCS_REFGEN_REQ_CONFIG1		0x0dc
> +#define QPHY_V6_PCS_G12S1_TXDEEMPH_M6DB		0x168
> +#define QPHY_V6_PCS_G3S2_PRE_GAIN		0x170
>   #define QPHY_V6_PCS_RX_SIGDET_LVL		0x188
>   #define QPHY_V6_PCS_RCVR_DTCT_DLY_P1U2_L	0x190
>   #define QPHY_V6_PCS_RCVR_DTCT_DLY_P1U2_H	0x194
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h
> index 23ffcfae9efab4a9e081414f9b3bbd0079d34f18..f47fdc9cecda8c4fe46c83e6449d68c033cd7fe2 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h
> @@ -6,6 +6,7 @@
>   #ifndef QCOM_PHY_QMP_QSERDES_TXRX_USB_V6_H_
>   #define QCOM_PHY_QMP_QSERDES_TXRX_USB_V6_H_
>   
> +#define QSERDES_V6_TX_BIST_MODE_LANENO				0x00
>   #define QSERDES_V6_TX_CLKBUF_ENABLE				0x08
>   #define QSERDES_V6_TX_TX_EMP_POST1_LVL				0x0c
>   #define QSERDES_V6_TX_TX_DRV_LVL				0x14
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

