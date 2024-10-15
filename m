Return-Path: <devicetree+bounces-111270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0194799DF8F
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 09:46:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ADFD21F23E13
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 07:46:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C61FA1C9EDF;
	Tue, 15 Oct 2024 07:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="nZxl2E8+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306551C2327
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 07:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728978362; cv=none; b=i1uTwt/wqIx3iSW6rEYTGaWPRZFpJ1CiiOStA5A9OF9ubMSvZPcdAzKvHdP3T0pb1DAdGZFqX6RZEFk2VI+u3rZbg8gxlqgr4q4E+blyoySE9cY47xqrvozC0TUPuvjWwgcaKOmZweptHYRPIs2woXL+qoRZDP5VtSiayk0z9I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728978362; c=relaxed/simple;
	bh=vlXtBKVnXfGbKLkE/qDj9i17mSuFZ64HL3fM0HBPdDI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eF9QvfReUsebfg5eRgAU9yHYxlJ16yiyOQULAGUxHiCFxV5S9EEO1Yay6OIdzHTq9NZQyRycYR8rXyXbul9HxFtsvq/P7Vg2j1lV+ecwHTx3mqW39m+NYDlVvIF4qOBx2CFFTwzdi83OfeAo7hJyLO3DbigUkigMkBwMxX6hQBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=nZxl2E8+; arc=none smtp.client-ip=209.85.166.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-3a3b28ac9a1so1030385ab.1
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 00:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1728978360; x=1729583160; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=12pFpxnrbGxJEph57/6mELybsu5UzTUq2TEGUPb5hXs=;
        b=nZxl2E8+7by3W9/NiYWssbklyl3ELkKGdZQIcGZAXIu0/7nxv86eTDQVfZ60NlAKBa
         wdPTU9vEw+qqkcoLAcjVnV/idedBH34jAz0ul/80fAGcamq9/0YaCmfXOtPzWoWWyTXW
         FFShkaH8IEf5Ud7AH+PJdHD5oWQ70I0tCjlR4X1oFTtspr8bZKURNCDsDQMAhIEhUWhw
         /hu1gcNeFF+3fOBkzO4fN0dMhedj6z0PhchBOggXdljREcqSDNumyz3L1OPgcggajgKR
         SwwulawtfETUh/a6CP7WhSN1rF/G1o2bm7it6pT+M7M6E3ftM20DWYAePHzfIlFhbYiQ
         zsiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728978360; x=1729583160;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=12pFpxnrbGxJEph57/6mELybsu5UzTUq2TEGUPb5hXs=;
        b=Bz4Z+PH3BaEaf+hsgMzp++fqmqcu1jg0A/xxdc84QiM+8kx9C6IwvcBNx7ll7rSH17
         d+jXhIgA/2gdQtraAUu5GjH0H6K13JTe6SmhJGRip81mlwV1QWeJNL1dx/8GtCny/r6B
         e8qCEmqbRQEVUp1MxyUS8Li7Gduz0PSHIftMXXwKDjx6d43HNUbZNSgKHjVWVNuTs//B
         HQBCoGeTGRSfCmoFo+OT3+hQBoYTuYRnRRJsPAe9NJDYkYwP1CUYTwnnJCMJoWfhhwi9
         GNWFGtbqRv+hVgMyOofSLB9DL1q+csoZVi40YNCDZqR4btxpuD8Dj+XmuEfNX29Pq1AN
         0HiA==
X-Forwarded-Encrypted: i=1; AJvYcCU6JRY/fTzlyHo7VcLzrghtKP1YzYJ7w4a2GsQ54l/DyI1IkMNA4gC1Dr4n97xmk6+qbLV/xep/3SMx@vger.kernel.org
X-Gm-Message-State: AOJu0YxnqldVRY/tnwOrz5rzLXpIxpwQUK4Q4UC/F/pur1SDWDKX32Ra
	10SfGd+lDhW0ZS85irHuu1TIZvJ/ZfFx+Djtd/FbjCk/0mj91Yu83zinrNcSkQ==
X-Google-Smtp-Source: AGHT+IGwCERemshlQ9IHB/+9DCefPlRwOjvwDRvaGMX9XFXY+6vxh/QCc+0dTnMQeEqWO5nbKdZGUg==
X-Received: by 2002:a05:6e02:b44:b0:3a0:9f85:d768 with SMTP id e9e14a558f8ab-3a3bdd346femr12060435ab.11.1728978360066;
        Tue, 15 Oct 2024 00:46:00 -0700 (PDT)
Received: from google.com (62.166.143.34.bc.googleusercontent.com. [34.143.166.62])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20d17fa48cfsm6533885ad.78.2024.10.15.00.45.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 00:45:59 -0700 (PDT)
Date: Tue, 15 Oct 2024 07:45:50 +0000
From: Pranjal Shrivastava <praan@google.com>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joy Zou <joy.zou@nxp.com>,
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Peng Fan <peng.fan@nxp.com>, Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [PATCH RFC 0/2] iommu/arm-smmu-v3: bypass streamid zero on i.MX95
Message-ID: <Zw4drtlAGy-LW7Ov@google.com>
References: <20241015-smmuv3-v1-0-e4b9ed1b5501@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241015-smmuv3-v1-0-e4b9ed1b5501@nxp.com>

Hi Peng,

On Tue, Oct 15, 2024 at 11:14:41AM +0800, Peng Fan (OSS) wrote:
> i.MX95 eDMA3 connects to DSU ACP, supporting dma coherent memory to
> memory operations. However TBU is in the path between eDMA3 and ACP,
> need to bypass the default SID 0 to make eDMA3 work properly.
> 
> I was also thinking to introduce "bypass-sids = <0xA 0xB 0xC ...>" to
> make this reusable for others, but not sure. I could switch to
> "bypass-sids" if you prefer.

Any reason why you can't use the sysfs to change the iommu domain type?
i.e. by using the /sys/kernel/iommu_groups/<iommu_group_number>/type
AFAIK, the arm-smmu-v3 driver allocates one iommu_group per device.

> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> Peng Fan (2):
>       dt-bindings: iommu: arm,smmu-v3: introduce nxp,imx95-bypass-sid-zero
>       iommu/arm-smmu-v3: Bypass SID0 for NXP i.MX95
> 
>  .../devicetree/bindings/iommu/arm,smmu-v3.yaml        |  4 ++++
>  drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c           | 19 ++++++++++++++++---
>  drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.h           |  1 +
>  3 files changed, 21 insertions(+), 3 deletions(-)
> ---
> base-commit: d61a00525464bfc5fe92c6ad713350988e492b88
> change-id: 20241014-smmuv3-120b24bc4659
> 
> Best regards,
> -- 
> Peng Fan <peng.fan@nxp.com>
> 
> 

Thanks,
Pranjal

