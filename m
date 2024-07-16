Return-Path: <devicetree+bounces-86001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC1D932208
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 10:41:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8DE091C21B54
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 08:41:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2001E1953A3;
	Tue, 16 Jul 2024 08:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Psutq6jX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CC617B4E9
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 08:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721119262; cv=none; b=Z/WZp12GFyaI3eyuewLZcug8qL/UoZd620lHhd65HJfJVCXAJQRb5nSEhrpmkXTzCPI+6ao82XNAm2uhxvwNhbLHS+Y4wC9cSXi3LyWtvQCU3zLJZG/JASfsZusnW55HtvkIs0G/ERBrWFNtIY/7DEJ6fgjv7kPyM9jG7KQ/1bE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721119262; c=relaxed/simple;
	bh=xQ9/x2GqWi4zcKLiTBi4C62v+VnYNcJ/Tm16XoWVmgw=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=ZZ3fY5ovb5nVUTVF9bxuQx44CXCHeVGDAh5wbvn+CFyoKGhV7yOqVGgskNIagqDqjm4nbX1gKV4XzgEdaGzCLI+Ld7Iur2HRpPGWFPHw1wCRY9j4ByGC7WV7I1p/8BCKmwp35K7sLJMEkpfESoYoWGbFu5pM8BQ4swA0zyo9/tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Psutq6jX; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-42795086628so35013855e9.3
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 01:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721119258; x=1721724058; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qGZ95YmptuK5HlceEeqL/CGEkmBT458I94bArLpmhkk=;
        b=Psutq6jXvD5HxYpWGMqFboX0Yjvx6igIhAcLxbbEf1U9Q+bayHP0kcN9nh/hMyX1ip
         0Z1lrL+e4hL+J0L8qe0mBxgXyPoUk2SNmzfT0aMXAn3x7NX2+Tx2QOWkt7Ef0B8Uz6/I
         V4Gq3HVPy0uXGfQSmyw0nTg7cTo/UwxKL3b+O5Q/9OcI2v4dHGysua1tkUszaDfoC7Pu
         566r2+Bj4v1ec0pBQ6JaADVL9AVEYgzKUZXMcBeiVYA+PVZM4kIm0dy94t2nDYZKwwpN
         Sikix6RF8ukSsEqaZx7goIZpP655odvfpgCds5aK93JZm8WFzWPavKCUysm6CY70l8sL
         yV2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721119258; x=1721724058;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qGZ95YmptuK5HlceEeqL/CGEkmBT458I94bArLpmhkk=;
        b=U6Vmr1Ov4Nr5YN44aiuiNr6NAlHp+/Y8A+WVc/nm9mXQ4kbOY+jvZlkmqCyqmtF8Oq
         j9GJetPRDRDPcZiE5J9IoMmQrujRXGfjiSi67QG58xVVid5Kv+DGrMWULDDOKR5N0hQV
         SzdCvvumxRpcBFRHKNwsH5e0HAqLJH/rQTcLR5KaqQ2NlzmlF5ezl773x1SJAdESB/Ip
         VjMmuvFCpxIbR9k3SpyRZ8pq5gdA6NsuzYOL8L8gF91SM2cOD43EdSShwlLcA2rMHpJW
         5HodSVLJUFlsgNcaRbGGjJpa0ZrI9U7TWxyN4ZWaGsaVRPMt20fLP5gsnTNo5Uk5nXcb
         ji/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUzfO5ghbxJ8vcu2aG4gOL09EYUOKHXlme1yDNX27apWCK/MvKoEbdGIcvTUgeXQRelmekbfVNIxp1HK0AXja7LeFBjPvJDgIV6lA==
X-Gm-Message-State: AOJu0YxZmeA/771FQuqLbICIJ9258MNFWCtYloYqHvHOADHdAc0+1be8
	pzpMQghnk7YH2qal54OSxtrMJjYJLN59Q8dotpdqLE7LNS7ivpPGgh4SbZscfak=
X-Google-Smtp-Source: AGHT+IFJ3ZZ66ZwgXY6S7JWiWlM0Gkw+rArroSfqSWDk1RItR9IE3Osm2Pe1IjmAFkBqHB+A2+qrJA==
X-Received: by 2002:a05:600c:4f96:b0:426:6379:3b56 with SMTP id 5b1f17b1804b1-427ba62e3a7mr11223485e9.15.1721119257970;
        Tue, 16 Jul 2024 01:40:57 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:f5ba:a94c:e43a:d197? ([2a01:e0a:982:cbb0:f5ba:a94c:e43a:d197])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3680db04581sm8405607f8f.97.2024.07.16.01.40.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jul 2024 01:40:57 -0700 (PDT)
Message-ID: <5f0a751a-f1b9-4cb5-af31-624c08833b10@linaro.org>
Date: Tue, 16 Jul 2024 10:40:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 13/14] PCI: qcom: Simulate PCIe hotplug using 'global'
 interrupt
To: manivannan.sadhasivam@linaro.org,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20240715-pci-qcom-hotplug-v1-0-5f3765cc873a@linaro.org>
 <20240715-pci-qcom-hotplug-v1-13-5f3765cc873a@linaro.org>
Content-Language: en-US, fr
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
In-Reply-To: <20240715-pci-qcom-hotplug-v1-13-5f3765cc873a@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/07/2024 19:33, Manivannan Sadhasivam via B4 Relay wrote:
> From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> Historically, Qcom PCIe RC controllers lack standard hotplug support. So
> when an endpoint is attached to the SoC, users have to rescan the bus
> manually to enumerate the device. But this can be avoided by simulating the
> PCIe hotplug using Qcom specific way.
> 
> Qcom PCIe RC controllers are capable of generating the 'global' SPI
> interrupt to the host CPUs. The device driver can use this event to
> identify events such as PCIe link specific events, safety events etc...
> 
> One such event is the PCIe Link up event generated when an endpoint is
> detected on the bus and the Link is 'up'. This event can be used to
> simulate the PCIe hotplug in the Qcom SoCs.
> 
> So add support for capturing the PCIe Link up event using the 'global'
> interrupt in the driver. Once the Link up event is received, the bus
> underneath the host bridge is scanned to enumerate PCIe endpoint devices,
> thus simulating hotplug.
> 
> All of the Qcom SoCs have only one rootport per controller instance. So
> only a single 'Link up' event is generated for the PCIe controller.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>   drivers/pci/controller/dwc/pcie-qcom.c | 55 ++++++++++++++++++++++++++++++++++
>   1 file changed, 55 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 0180edf3310e..38ed411d2052 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -50,6 +50,9 @@
>   #define PARF_AXI_MSTR_WR_ADDR_HALT_V2		0x1a8
>   #define PARF_Q2A_FLUSH				0x1ac
>   #define PARF_LTSSM				0x1b0
> +#define PARF_INT_ALL_STATUS			0x224
> +#define PARF_INT_ALL_CLEAR			0x228
> +#define PARF_INT_ALL_MASK			0x22c
>   #define PARF_SID_OFFSET				0x234
>   #define PARF_BDF_TRANSLATE_CFG			0x24c
>   #define PARF_SLV_ADDR_SPACE_SIZE		0x358
> @@ -121,6 +124,9 @@
>   /* PARF_LTSSM register fields */
>   #define LTSSM_EN				BIT(8)
>   
> +/* PARF_INT_ALL_{STATUS/CLEAR/MASK} register fields */
> +#define PARF_INT_ALL_LINK_UP			BIT(13)
> +
>   /* PARF_NO_SNOOP_OVERIDE register fields */
>   #define WR_NO_SNOOP_OVERIDE_EN			BIT(1)
>   #define RD_NO_SNOOP_OVERIDE_EN			BIT(3)
> @@ -260,6 +266,7 @@ struct qcom_pcie {
>   	struct icc_path *icc_cpu;
>   	const struct qcom_pcie_cfg *cfg;
>   	struct dentry *debugfs;
> +	int global_irq;

I think you can drop this, the irq number is no more needed after probe

>   	bool suspended;
>   };
>   
> @@ -1488,6 +1495,29 @@ static void qcom_pcie_init_debugfs(struct qcom_pcie *pcie)
>   				    qcom_pcie_link_transition_count);
>   }
>   
> +static irqreturn_t qcom_pcie_global_irq_thread(int irq, void *data)
> +{
> +	struct qcom_pcie *pcie = data;
> +	struct dw_pcie_rp *pp = &pcie->pci->pp;
> +	struct device *dev = pcie->pci->dev;
> +	u32 status = readl_relaxed(pcie->parf + PARF_INT_ALL_STATUS);
> +
> +	writel_relaxed(status, pcie->parf + PARF_INT_ALL_CLEAR);
> +
> +	if (FIELD_GET(PARF_INT_ALL_LINK_UP, status)) {
> +		dev_dbg(dev, "Received Link up event. Starting enumeration!\n");
> +		/* Rescan the bus to enumerate endpoint devices */
> +		pci_lock_rescan_remove();
> +		pci_rescan_bus(pp->bridge->bus);
> +		pci_unlock_rescan_remove();
> +	} else {
> +		dev_err(dev, "Received unknown event. INT_STATUS: 0x%08x\n",
> +			status);

Can this happen ? perhaps dev_warn_once instead ?

> +	}
> +
> +	return IRQ_HANDLED;
> +}
> +
>   static int qcom_pcie_probe(struct platform_device *pdev)
>   {
>   	const struct qcom_pcie_cfg *pcie_cfg;
> @@ -1498,6 +1528,7 @@ static int qcom_pcie_probe(struct platform_device *pdev)
>   	struct dw_pcie_rp *pp;
>   	struct resource *res;
>   	struct dw_pcie *pci;
> +	char *name;
>   	int ret;
>   
>   	pcie_cfg = of_device_get_match_data(dev);
> @@ -1617,6 +1648,28 @@ static int qcom_pcie_probe(struct platform_device *pdev)
>   		goto err_phy_exit;
>   	}
>   
> +	name = devm_kasprintf(dev, GFP_KERNEL, "qcom_pcie_global_irq%d",
> +			      pci_domain_nr(pp->bridge->bus));
> +	if (!name) {
> +		ret = -ENOMEM;
> +		goto err_host_deinit;
> +	}
> +
> +	pcie->global_irq = platform_get_irq_byname_optional(pdev, "global");
> +	if (pcie->global_irq > 0) {
> +		ret = devm_request_threaded_irq(&pdev->dev, pcie->global_irq,
> +						NULL,
> +						qcom_pcie_global_irq_thread,
> +						IRQF_ONESHOT, name, pcie);
> +		if (ret) {
> +			dev_err_probe(&pdev->dev, ret,
> +				      "Failed to request Global IRQ\n");
> +			goto err_host_deinit;
> +		}
> +
> +		writel_relaxed(PARF_INT_ALL_LINK_UP, pcie->parf + PARF_INT_ALL_MASK);

Is this available on all PCIe RC core versions ?
perhaps this should be moved into a callback of ops_1_9_0 for now ?

> +	}
> +
>   	qcom_pcie_icc_opp_update(pcie);
>   
>   	if (pcie->mhi)
> @@ -1624,6 +1677,8 @@ static int qcom_pcie_probe(struct platform_device *pdev)
>   
>   	return 0;
>   
> +err_host_deinit:
> +	dw_pcie_host_deinit(pp);
>   err_phy_exit:
>   	phy_exit(pcie->phy);
>   err_pm_runtime_put:
> 


