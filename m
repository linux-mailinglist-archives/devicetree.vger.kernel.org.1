Return-Path: <devicetree+bounces-162491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5969A78948
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 09:58:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B28416F898
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 07:58:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67AB7233732;
	Wed,  2 Apr 2025 07:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t4hzO+GY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7FF233722
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 07:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743580673; cv=none; b=vD/Xi2As5XXqcgF6g6/KEFS/5MwYrkyc6STQU1j9TZb3USB0DImwMpWNjMYPwPnDTCOC0470n+wduyq6hiOfddcTY/YeNuHmEc4IxxtYuF4hzPrNvodR+InH+WgWdnf/lKX2CocNPvpGH8ijJHSVWg7OZbog+t8sibpE7doxAII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743580673; c=relaxed/simple;
	bh=R8qBaOqxCr4dyXpWM04sX/GCqchZ6RKNVr5LsTtixVQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QHpDTQ6Ouq+FLDo0XPoA+Ve9Jf8c78l5lpSBSk2WRSqKA7H8feGn237E9USGt4QvSoQs6f3/fqtoK9e94ib3STyFq4ecuH6TMzG4e+67+tUjOdzgUBx+cvVyV0hingD5hAAus2OpbPJpE9nfWNFRkqfzklSVoRR9GfSKL4sNCPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t4hzO+GY; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2241053582dso110671285ad.1
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 00:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743580671; x=1744185471; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dRSyCnFP0grZIfNQwckuEKAPhgRGKFDaBXM6ybS+yQY=;
        b=t4hzO+GYXoh0PpTM8q8nImq9wzJoofnjFSnBjfABxN0E/paZ0WUUxTzzRXyxqooWLr
         11Y6kyVU6iRt+/zIVbHrwqE2gWH0JrGeQQYRHS8hQQ+lLCt8HUKWDA285n0IaTBAJJsR
         4OCaAKbqB1Kozkxl+C+k8OlsnKhkSr5Y3a3wJOImrcnhjZ8o5HdfMPWR3CoLKX0h2svr
         2zXaP4OPfM93GQAetiwoWcQouXyPtLqdjNVfyu1ZQdCEq/S/w5DO9GmqZpgP9jlIGU/c
         HCGkD4W4dzmgE1xgzjg0qY4B/C1mC576Y92wptYNCk6vTED0ytfOhi27BQ0L5djVbogF
         L2Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743580671; x=1744185471;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dRSyCnFP0grZIfNQwckuEKAPhgRGKFDaBXM6ybS+yQY=;
        b=Xi0/t87X79FZDZwWC8FL1xCb5eE+zx7KkisgWT+eFq5ockIUkSG4qjuezjEI+bw0Nx
         kPEpLIpUGzCQfwg2EJnCDeod1hhSqfut7TuXlWjaOFUiXoMctA5KJ5HTdVFivfpXGk31
         rTLRDHFy/UgoVdxBpT72k3EEjxTIilnZow2PGFDUGizvhTZNUaVB6E/8pBk6CoHWPWGB
         EaAwPurpBO03UPwFZ8pr6ZuSTwehwHNTLl2GrP+0tF4OcjNz3NZsPt6kHa4WIWQQzLKL
         QfNH80PhKs16l2+aXaw+F4+EgHgeTVJTkGv15LqaeMb9CG1Wv7RMCwSD/EnNV8SV9+W7
         BYsg==
X-Forwarded-Encrypted: i=1; AJvYcCVPkZG+bwlavJmrlWCa7E6Qdu8M2ZSgrIZVHp6H/ZvSxIqNZSTpzXAb8FbGgznLhHwFN2gTHdfvWNzb@vger.kernel.org
X-Gm-Message-State: AOJu0YyKcKEzhOshmJwSWfBbZrydlDUqfrKnuIpr79zQhlDcqeP/97jJ
	53WL4HYGj99Hi1DgVXC0CTW4JhFXSyWYCFGf5/lTUGqZH6xWOKCWx5C5leTmWw==
X-Gm-Gg: ASbGncviclKf8sW/TFCRhtMMSNOBVi0eW+098eBUFkEMf8y8FNXToTuqzLGAoVSMded
	yS5Gi3J6vw57Y1VJo79V2NaXEBtNM3sEr/ECTjv5vcRSBRNGvn2iagNiRdnLR1l54BdOnXcZr7r
	pVESyV1vIcCRVp+kaAmxks7QoWV+ayKucncCePOUXhUcGT4UWHXL4YP/ia3Ye5MWs5ArkkY2upw
	L0B3PLilW1B9dVKoCGtlyBIQsy5GSE+hTHv2CMpJAnaCY7R0zCMnLkcrwRlQBTkM/rubQbVDVbO
	iapSMQhaHSyeb8XEydmdmsMC+axmV9rC/flCfcAHc4fi14q+FJajRJJ5
X-Google-Smtp-Source: AGHT+IEzlbEBgFvDc2I1WYI+e0N/2YEc5vy2uJFcQHdCufTOfWQZ8Vjaelsgo3YFEKjff3mKRuYO+w==
X-Received: by 2002:a17:902:f652:b0:216:3c36:69a7 with SMTP id d9443c01a7336-2292f9f7a8emr221580805ad.45.1743580670960;
        Wed, 02 Apr 2025 00:57:50 -0700 (PDT)
Received: from thinkpad ([120.56.205.103])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2291f1dee5dsm101582755ad.189.2025.04.02.00.57.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 00:57:50 -0700 (PDT)
Date: Wed, 2 Apr 2025 13:27:44 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, quic_mrana@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v9 4/5] PCI: Add lane equalization register offsets
Message-ID: <mi7rmrbx5yjzznabjc6kpafskhmxdi4hgx6vaerxzqkp4hdixy@ky4dckgngrnd>
References: <20250328-preset_v6-v9-0-22cfa0490518@oss.qualcomm.com>
 <20250328-preset_v6-v9-4-22cfa0490518@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250328-preset_v6-v9-4-22cfa0490518@oss.qualcomm.com>

On Fri, Mar 28, 2025 at 03:58:32PM +0530, Krishna Chaitanya Chundru wrote:
> As per PCIe spec 6.0.1, add PCIe lane equalization register offset for
> data rates 8.0 GT/s, 32.0 GT/s and 64.0 GT/s.
> 
> Add macro for defining data rate 64.0 GT/s physical layer capability ID.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  include/uapi/linux/pci_regs.h | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/include/uapi/linux/pci_regs.h b/include/uapi/linux/pci_regs.h
> index 3445c4970e4d..0dcd9aba584d 100644
> --- a/include/uapi/linux/pci_regs.h
> +++ b/include/uapi/linux/pci_regs.h
> @@ -749,7 +749,8 @@
>  #define PCI_EXT_CAP_ID_NPEM	0x29	/* Native PCIe Enclosure Management */
>  #define PCI_EXT_CAP_ID_PL_32GT  0x2A    /* Physical Layer 32.0 GT/s */
>  #define PCI_EXT_CAP_ID_DOE	0x2E	/* Data Object Exchange */
> -#define PCI_EXT_CAP_ID_MAX	PCI_EXT_CAP_ID_DOE
> +#define PCI_EXT_CAP_ID_PL_64GT	0x31	/* Physical Layer 64.0 GT/s */
> +#define PCI_EXT_CAP_ID_MAX	PCI_EXT_CAP_ID_PL_64GT
>  
>  #define PCI_EXT_CAP_DSN_SIZEOF	12
>  #define PCI_EXT_CAP_MCAST_ENDPOINT_SIZEOF 40
> @@ -1140,12 +1141,21 @@
>  #define PCI_DLF_CAP		0x04	/* Capabilities Register */
>  #define  PCI_DLF_EXCHANGE_ENABLE	0x80000000  /* Data Link Feature Exchange Enable */
>  
> +/* Secondary PCIe Capability 8.0 GT/s */
> +#define PCI_SECPCI_LE_CTRL	0x0c /* Lane Equalization Control Register */
> +
>  /* Physical Layer 16.0 GT/s */
>  #define PCI_PL_16GT_LE_CTRL	0x20	/* Lane Equalization Control Register */
>  #define  PCI_PL_16GT_LE_CTRL_DSP_TX_PRESET_MASK		0x0000000F
>  #define  PCI_PL_16GT_LE_CTRL_USP_TX_PRESET_MASK		0x000000F0
>  #define  PCI_PL_16GT_LE_CTRL_USP_TX_PRESET_SHIFT	4
>  
> +/* Physical Layer 32.0 GT/s */
> +#define PCI_PL_32GT_LE_CTRL	0x20	/* Lane Equalization Control Register */
> +
> +/* Physical Layer 64.0 GT/s */
> +#define PCI_PL_64GT_LE_CTRL	0x20	/* Lane Equalization Control Register */
> +
>  /* Native PCIe Enclosure Management */
>  #define PCI_NPEM_CAP     0x04 /* NPEM capability register */
>  #define  PCI_NPEM_CAP_CAPABLE     0x00000001 /* NPEM Capable */
> 
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

