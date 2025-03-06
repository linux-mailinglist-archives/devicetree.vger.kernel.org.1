Return-Path: <devicetree+bounces-154643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D63FEA54157
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 04:45:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 214547A6E47
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 03:44:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D07011993BD;
	Thu,  6 Mar 2025 03:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MrjwQWM0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A9317C98
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 03:45:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741232708; cv=none; b=KzpncilVNRreH7mF+sN0JgvMaNYvH43EUDz1xE97SMBVjaoBc/vabWiggp+i3pgueYh/rMVvhmyBqCSCstS631gVPg3+P8jkns+VtKeTn5gM5eQpjH9gJdBxZh/Sty6LrBuY3bsS4hfx8qrDJ2QmJcc5ulFPYsG+erx1I2h+6XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741232708; c=relaxed/simple;
	bh=s8ihgNf+/lTzOH0KKqwJ/Y6ngXzFB3uo/jmic8WGk6c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T7W6s3CVmqXZWx2afp4dc7k5ZhzbJPYRbtXu+wpnO5qPWEqudwx1k1wBRvTe3Mxu2ISUXl/rnYakvDJOe0z1sxU1gofpNH1C7VUqb/WRyb6qRVhI7QxxWDP/pGePpz0jUiDkgfIRU0/GL2uP/WJkbSYapqz/Ktfd9Z3O5A9Ftb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MrjwQWM0; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-223594b3c6dso2262825ad.2
        for <devicetree@vger.kernel.org>; Wed, 05 Mar 2025 19:45:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741232706; x=1741837506; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RR/3Sh2yGD8FYmZXDeG1gkp5RyyAVqAwHMabcS8vVWU=;
        b=MrjwQWM0VX3Jkcruam4NVPBR16WsJoRYMa0CjdvL4UYun9QCTk2m4aqQPSRkj1+n2P
         /knF4wCdb4mOK83r9Fap7jwKcjg+5V/qC0UZsSotPj78tcLSPRQ/e2SxzWdzqnz3YciC
         lJhC/6+cEErpTC5tI3Cyx4X77zvJn16VB1dxDvnDECDLneeKc9gWwiP8KXNbkEzx07HO
         i1BZ151IiHp15Kgmig0jY3ms1nXCJuYhfClKv3X5e7tnetOGJgviimem3UWco5JNIq/q
         xRow5enu1vkgQRboZC2/8yhRipERSf+iy3fLz1FA2U6Guyd0tRFSO4GSeBxjzdOSHs/e
         7aww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741232706; x=1741837506;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RR/3Sh2yGD8FYmZXDeG1gkp5RyyAVqAwHMabcS8vVWU=;
        b=DIiOaoZqtmZCsfP3M3sWkIoWsJdom8MAaWNGPDJ9cE6/dGxBKrfbZX4zxk12HoB0hS
         Z9gm21l7RdNFGOV+x5RXEEPOjDnchPjL+RejaxBs5d9KS6LQWJ+ejSUmZo5pmHnFrJfn
         5B1DIMn6rq9cfpWZCcffkbl+yZhRl2xaKKF56YBJ8yL7KPt2DcCucoKPKoAH63b05Jzf
         l0/aFpP0UXaB7Di3ERcp6yv75gWj+t3LnmjQnGHWiaa8BFl6qjHPdYeSqPVqPeaSF/oF
         OYvOcMrt1bzlgsZmwUaog/MD9I6tP+C3fQNp0niQDMNnYrZSWLrcYTBLN4Xqb5NAr8Vi
         tvMw==
X-Forwarded-Encrypted: i=1; AJvYcCUYf4U/ph6E1BtthuZh/I1iiIp41YBWbD1mb+vJkhl4xHDPmm3psH67mZnzmua6GnsZQqKQ83uZ4rgr@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/WlesHNknxjkyctVVAzIqiHfe5Fji1bMSNgZOEZx17bcOOFvm
	WLV5l1YYIjU2CK2vDDEwXUMMAqqn1dF4FacANrd61EtT1TQ7eFg3MGxFaT+k+A==
X-Gm-Gg: ASbGncvEcxdHiTfsk6QSpZe8YDk4cTX4JCIIzdZNRi5rfe+0dqVnqTpQs/NHhaLEFe7
	QV9GvZZYi91imBSCBlOv+UQlNYrAIAAhmyufXeBNcWthGPg+Am6gSlIdy5NNZM/wOqukSpq+Lzl
	rA6OrjC3gspuC7e8vcfwtWdLK1zSIVGFDEUNDqUoS0gFWTm5BpUGDMxJdMXHn6hVOZWs0rOLEeP
	mQ4Lou+4IASGFYYYq78fegjV1WNyVRT1Y4sF39XQ4M1LdtZqaazDrsLiC0UYHOt8fYH92bILfeo
	O85DfP2sHa/gWO1P4tzr7QGWfh95YS98MrXRFz/DCv3K3MrZS3aZXFE=
X-Google-Smtp-Source: AGHT+IGKJttGqJWItASqbCKDIt2tzUlENZ2HliebcQ18gZfjLIkLG4+OaRrcXjLUk9Kxrd+AX1YZIg==
X-Received: by 2002:a05:6a00:338d:b0:736:755b:8311 with SMTP id d2e1a72fcca58-73682c89e14mr8508343b3a.16.1741232706353;
        Wed, 05 Mar 2025 19:45:06 -0800 (PST)
Received: from thinkpad ([120.56.193.59])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73698206c6dsm243250b3a.9.2025.03.05.19.45.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Mar 2025 19:45:05 -0800 (PST)
Date: Thu, 6 Mar 2025 09:14:59 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	quic_mrana@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v7 3/4] PCI: dwc: Improve handling of PCIe lane
 configuration
Message-ID: <20250306034459.uc4qlnsnxijotplo@thinkpad>
References: <20250225-preset_v6-v7-0-a593f3ef3951@oss.qualcomm.com>
 <20250225-preset_v6-v7-3-a593f3ef3951@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250225-preset_v6-v7-3-a593f3ef3951@oss.qualcomm.com>

On Tue, Feb 25, 2025 at 05:15:06PM +0530, Krishna Chaitanya Chundru wrote:
> Currently even if the number of lanes hardware supports is equal to
> the number lanes provided in the devicetree, the driver is trying to
> configure again the maximum number of lanes which is not needed.
> 
> Update number of lanes only when it is not equal to hardware capability.
> 

'Update max link width only...'

> And also if the num-lanes property is not present in the devicetree
> update the num_lanes with the maximum hardware supports.

'...update 'pci->num_lanes' with the hardware supported maximum link width using
the newly introduced dw_pcie_link_get_max_link_width() API.'

> 
> Introduce dw_pcie_link_get_max_link_width() to get the maximum lane
> width the hardware supports.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  drivers/pci/controller/dwc/pcie-designware-host.c |  3 +++
>  drivers/pci/controller/dwc/pcie-designware.c      | 11 ++++++++++-
>  drivers/pci/controller/dwc/pcie-designware.h      |  1 +
>  3 files changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index ffaded8f2df7..dd56cc02f4ef 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -504,6 +504,9 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
>  
>  	dw_pcie_iatu_detect(pci);
>  
> +	if (pci->num_lanes < 1)
> +		pci->num_lanes = dw_pcie_link_get_max_link_width(pci);
> +
>  	/*
>  	 * Allocate the resource for MSG TLP before programming the iATU
>  	 * outbound window in dw_pcie_setup_rc(). Since the allocation depends
> diff --git a/drivers/pci/controller/dwc/pcie-designware.c b/drivers/pci/controller/dwc/pcie-designware.c
> index 145e7f579072..9fc5916867b6 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.c
> +++ b/drivers/pci/controller/dwc/pcie-designware.c
> @@ -737,12 +737,21 @@ static void dw_pcie_link_set_max_speed(struct dw_pcie *pci)
>  
>  }
>  
> +int dw_pcie_link_get_max_link_width(struct dw_pcie *pci)
> +{
> +	u8 cap = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
> +	u32 lnkcap = dw_pcie_readl_dbi(pci, cap + PCI_EXP_LNKCAP);
> +
> +	return FIELD_GET(PCI_EXP_LNKCAP_MLW, lnkcap);
> +}
> +
>  static void dw_pcie_link_set_max_link_width(struct dw_pcie *pci, u32 num_lanes)
>  {
> +	int max_lanes = dw_pcie_link_get_max_link_width(pci);
>  	u32 lnkcap, lwsc, plc;
>  	u8 cap;
>  
> -	if (!num_lanes)
> +	if (max_lanes == num_lanes)

This gives the assumption that the link width in PCIE_PORT_LINK_CONTROL and
PCIE_LINK_WIDTH_SPEED_CONTROL registers are same as MLW. Is it really true as
per the DWC spec?

- Mani

-- 
மணிவண்ணன் சதாசிவம்

