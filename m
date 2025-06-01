Return-Path: <devicetree+bounces-182031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F38AC9DF4
	for <lists+devicetree@lfdr.de>; Sun,  1 Jun 2025 09:10:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C882618985E1
	for <lists+devicetree@lfdr.de>; Sun,  1 Jun 2025 07:10:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9979F199FB0;
	Sun,  1 Jun 2025 07:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VMj4kdWx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1198F1891AA
	for <devicetree@vger.kernel.org>; Sun,  1 Jun 2025 07:09:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748761801; cv=none; b=UV07IpXb8kXB/wM/ls3oD/rS8KwflGxA6C7aHKXzCsU125vHgojuxrgxd5NmozElgbG9Me5+fAmdcQ+LkkNNuCEI0z0Fb2oFZ+9BNT0w5sTM2aAs4sl7IGMV7n9+ChPzaZWslbqMRH4GfQGyQAAC0meRKRLHlWoLkD9TiI/5DfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748761801; c=relaxed/simple;
	bh=BniQGKHAkLgDLs2FRxY0HczHo95+U/WuBwu2R5kKruU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uCoHbD4ZuFWZwCs4uGvLN+UDPsmoNkE8OZF9zDYuhmpdy23IXnq53IRqEANrxeK2z9t2sQDVqKF74QUC8Qsm4HZj55975fpHgESHOSJUYqmm6eZ4AivDTG5SF1HqGnLxqCN8yFavMYz0CJATq2/krPWsUeSoydgjuCXoB2Tmiy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VMj4kdWx; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-23228b9d684so36994145ad.1
        for <devicetree@vger.kernel.org>; Sun, 01 Jun 2025 00:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748761798; x=1749366598; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Vx64ENds9yNKxmsf1fRcMvm79dh+K1dbdQlS0bVKK0Y=;
        b=VMj4kdWx9y4g1LAPRyWPA36Cni5v9Y2d+fm/dwEjbLK936N0BfG85lwxWIYm3R3uLe
         AitAket0Bl/RDG6snGcwNFW+y5ayNv0X6TDFJZhtefgp0Co8hgzY4JkR3iS8nv0heo2V
         v2mmHpaztpkrF6bRZjRPZrmHOZ1ehrP8wBH037kBqM/MrrQcZzpYmF8rh+m2Yk3K+Tjd
         sK0gVDd8An7AJybdt52hsDN7I7asu68drErcQe11RMRw5s2kSR93T48izY5MUsiYOFJk
         FVXly+9pCqNZtH5M9JeCdJ4dEMGFb4sFxywlzJPlGY3pdl5R4P/JizVq7UfdRQ3xIIXs
         6+nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748761798; x=1749366598;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vx64ENds9yNKxmsf1fRcMvm79dh+K1dbdQlS0bVKK0Y=;
        b=RhwR7Ltaghkj9nhJDhQNTGR0VRMCmr/p4A4kEfWXR+zsf4B1YWZOg7qsfQ6+LW/Alp
         Nc0l0wHCK+cR/4YFQJNsYK0ARSpUzphjusMLZyavrdMSVlYZX89npn9TFQ9GTapTI8UA
         4nQ2OE+MZJDJQ67ExnHd30RnRpaIGqcGfqi7lr3Z2mkiRy2952RTUgIQ5AIRftVEID+J
         fVaCAson7eHYmRDic/SNs91Cqf/unyhywkKATf/Dk5rtdHOc+yDnSz1YrfZal4UrdGMZ
         gEynD/rVxkt6Rt9d5+VdZlX4cbLMGJ5aCs7WIMt1fl6wy3JwkbfQ/5F0xw7g2kHleVgV
         pboQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLmaxh/XEOHEGKmgTnjEhLupudAAYxYO73iD2/eXk7xNsGU6yFTPPkuznjHBt6SQQj+fcZKsaZs3dZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwY7mOOT6HsKC3IdMZth7XRpv9emMLI6MO5FeDnCV/02MVOMu0T
	o+s7j3rnZAa5LrP9s33TuYOUPQkoyLxjkiOkCBgK/N4P/OObaaz/ufRLVnGovhzIoA==
X-Gm-Gg: ASbGncunchYIQ5MgOHjEENDLsgS7CRz8nZzS/ZO/u2IIA006/bC9MFvEkc1pknQw9Wb
	jJjct5XfqVcRMYcTrns2pTyEvQIHlpT7Zvc6I90HWqQuWZyap4pxm7bULVqcSlIo2Ek+5uTxGIE
	2qmOMBJ2up0ZQ5/NTeQEtXoF9TqMXOBVIi2xP1R4h4QcBrZNCxyAEaT+uYdYXBPogTSh4ew+kG6
	wqdfvRcTFPc+tShF8W+ZReq1xdyrCsJn0DhxzNrm+QOH/uj+qxWbVf1MBai68H6QzeXnF1S7ams
	pDhzupJ3qqSvHU1Lq1JfSRZPcLPDD/0dkT+FSRhJsjqkfcBlSqsjFLEusDvsVos=
X-Google-Smtp-Source: AGHT+IFeYi8cJujL8lmRCRg0ji+GV01N7Bx5JV9UOdvwJpxWWnAeTgjUtUNQwBUxCPsrEyGjoG+KDA==
X-Received: by 2002:a17:902:d4c8:b0:235:799:eca5 with SMTP id d9443c01a7336-2353961b5bemr123129935ad.44.1748761798352;
        Sun, 01 Jun 2025 00:09:58 -0700 (PDT)
Received: from thinkpad ([120.56.205.120])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23506bc884dsm51805195ad.21.2025.06.01.00.09.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jun 2025 00:09:58 -0700 (PDT)
Date: Sun, 1 Jun 2025 12:39:47 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com, quic_mrana@quicinc.com
Subject: Re: [PATCH v3 0/3] PCI: qcom: Move PERST# GPIO & phy retrieval from
 controller to PCIe bridge node
Message-ID: <7vw5pftnbiixxkokaebidfnjfs3nk6xoa7yaxxwmsssilfqnua@5qlbhqsiuojv>
References: <20250419-perst-v3-0-1afec3c4ea62@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250419-perst-v3-0-1afec3c4ea62@oss.qualcomm.com>

On Sat, Apr 19, 2025 at 10:49:23AM +0530, Krishna Chaitanya Chundru wrote:
> The main intention of this series is to move wake# to the root port node.
> After this series we will come up with a patch which registers for wake IRQ
> from the pcieport driver. The wake IRQ is needed for the endpoint to wakeup
> the host from D3cold. The driver change for wake IRQ is posted here[1].
> 
> There are many places we agreed to move the wake and perst gpio's
> and phy etc to the pcie root port node instead of bridge node[2] as the
> these properties are root port specific and does not belongs to
> bridge node.
> 
> So move the phy, phy-names, wake-gpio's in the root port.
> There is already reset-gpio defined for PERST# in pci-bus-common.yaml,
> start using that property instead of perst-gpio.
> 
> For backward compatibility, don't remove any existing properties in the
> bridge node.
> 
> There are some other properties like num-lanes, max-link-speed which
> needs to be moved to the root port nodes, but in this series we are
> excluding them for now as this requires more changes in dwc layer and
> can complicate the things.
> 
> Once this series gets merged all other platforms also will be updated
> to use this new way.
> 
> Note:- The driver change needs to be merged first before dts changes.
> Krzysztof Wilczyński or Mani can you provide the immutable branch with
> these PCIe changes.
> 

Since there could be other patches for Qcom driver in the PCI tree, I don't
prefer immutable branch. Let's first merge the driver and binding patches
through PCI tree and you can submit the dts changes for rest of the platforms
for the next cycle.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

