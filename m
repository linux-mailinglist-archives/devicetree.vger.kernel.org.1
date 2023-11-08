Return-Path: <devicetree+bounces-14653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0147E5D51
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 19:35:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1D217B20DBC
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 18:35:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 403B130358;
	Wed,  8 Nov 2023 18:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ag/sekfg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC4330341
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 18:35:04 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82AA3210D
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 10:35:03 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4079ed65582so53613865e9.1
        for <devicetree@vger.kernel.org>; Wed, 08 Nov 2023 10:35:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699468502; x=1700073302; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=n9ZiV2Esj98CTfgH59OBDcgahkXqDMdEC5lhTkmlSa0=;
        b=Ag/sekfgYdN+QO2qNzC+r6BzqCMo9dzcsxvOu4xJN0ribyHewu9zogJx6FWNSomfI9
         4Sjlt/qA4mplNZMnvot6/g+6cmnze23j+AP62wX8o67Qahuu0IX9K7PX266zjkQY/wRe
         hNpOh576uhk6o2F1atbxeeQelw6dBU2ObOSQ9yQGCGBdBys3mjvoiuXA1WEspYXM7dqL
         8or59NUpDHRURUG6WDvo92ajLicd3w5fF4NJHO6NtHIf4rNDQeB2t6EQLDVDKgiNAp4S
         f8GgfhkHm4K6E2W6wIdOxZzpJIJC9NgohDiD7zD6auJ87yEubapy07YfOPudCdJ85XuR
         nD9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699468502; x=1700073302;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n9ZiV2Esj98CTfgH59OBDcgahkXqDMdEC5lhTkmlSa0=;
        b=LTg6+HVr0bLpEA3k/ZPNEyV2dHvb7aNA+/3DkNAd6ilyFcUHFTehrVNoTgR3lEw746
         0PCUtdqAk9GgMvSBnNWZXGPVrhJVj2x18ruAfWAbayQBmZXWwt60Cr5G1TplpdynnoX9
         vyE3B6j4oEAXlrxeN8sOE7vIMlyJJzzGYoMJIQG+zCbjlqeUZ4Ujcw2xUhPpqRQNB4V3
         mBdZiDMJ4OKnryrnTyrw05NRAR3G/u/GsBVdR3CSBfLbI8ASA1SQ0Eg9B89uBf6q939I
         uOU41ek3q8ds35kNEnXaG/rCQoOtsQaf4uJtTBt5sQxXH2KBkib+q6cwjVvWTngRxJ8Z
         OvPg==
X-Gm-Message-State: AOJu0YxChCwxUl2GP8vgTT52FI63xlTw6TCN5tZ3wCx2umWFc4VqPnT5
	HNT4fxRS4JPF72FFvEK+D/t62A==
X-Google-Smtp-Source: AGHT+IEerzRoblFu8LqWqAyQVzl32Dow78v7sZDoe2sPpmQgBWRRfSrEcftCpyNmsXV1yimnvtHQ6A==
X-Received: by 2002:a05:600c:190e:b0:405:1c19:b747 with SMTP id j14-20020a05600c190e00b004051c19b747mr2262734wmq.15.1699468501866;
        Wed, 08 Nov 2023 10:35:01 -0800 (PST)
Received: from salami.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id g4-20020a05600c310400b004068e09a70bsm20156528wmo.31.2023.11.08.10.34.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Nov 2023 10:35:00 -0800 (PST)
Message-ID: <d6664edcccd81edc5caa54e8da43b5c571a3ea76.camel@linaro.org>
Subject: Re: [PATCH RFC 00/17] Solve iommu probe races around iommu_fwspec
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Zhenhua Huang <quic_zhenhuah@quicinc.com>, 
 acpica-devel@lists.linuxfoundation.org, Alyssa Rosenzweig
 <alyssa@rosenzweig.io>,  Albert Ou <aou@eecs.berkeley.edu>,
 asahi@lists.linux.dev, Lu Baolu <baolu.lu@linux.intel.com>,  Catalin
 Marinas <catalin.marinas@arm.com>, Dexuan Cui <decui@microsoft.com>,
 devicetree@vger.kernel.org, David Woodhouse <dwmw2@infradead.org>, Frank
 Rowand <frowand.list@gmail.com>, Hanjun Guo <guohanjun@huawei.com>, Haiyang
 Zhang <haiyangz@microsoft.com>, Christoph Hellwig <hch@lst.de>,
 iommu@lists.linux.dev, Jean-Philippe Brucker <jean-philippe@linaro.org>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Joerg Roedel <joro@8bytes.org>, "K.
 Y. Srinivasan" <kys@microsoft.com>,  Len Brown <lenb@kernel.org>,
 linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-hyperv@vger.kernel.org, linux-mips@vger.kernel.org, 
 linux-riscv@lists.infradead.org, linux-snps-arc@lists.infradead.org, 
 linux-tegra@vger.kernel.org, Russell King <linux@armlinux.org.uk>, Lorenzo
 Pieralisi <lpieralisi@kernel.org>, Marek Szyprowski
 <m.szyprowski@samsung.com>, Hector Martin <marcan@marcan.st>, Palmer
 Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Robert Moore
 <robert.moore@intel.com>, Rob Herring <robh+dt@kernel.org>, Robin Murphy
 <robin.murphy@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, Suravee
 Suthikulpanit <suravee.suthikulpanit@amd.com>, Sven Peter
 <sven@svenpeter.dev>, Thierry Reding <thierry.reding@gmail.com>, Thomas
 Bogendoerfer <tsbogend@alpha.franken.de>,  Krishna Reddy
 <vdumpa@nvidia.com>, Vineet Gupta <vgupta@kernel.org>, 
 virtualization@lists.linux-foundation.org, Wei Liu <wei.liu@kernel.org>,
 Will Deacon <will@kernel.org>
Date: Wed, 08 Nov 2023 18:34:58 +0000
In-Reply-To: <0-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>
References: <0-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.1-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Jason,

On Fri, 2023-11-03 at 13:44 -0300, Jason Gunthorpe wrote:
> This is a more complete solution that the first attempt here:
> https://lore.kernel.org/r/1698825902-10685-1-git-send-email-quic_zhenhuah=
@quicinc.com
>=20
> I haven't been able to test this on any HW that touches these paths, so i=
f
> some people with HW can help get it in shape it can become non-RFC.

Thank you for this series.

Please note that we're also observing this issue on 6.1.
I think this series is a good candidate for a back port (slightly complicat=
ed by
the fact that various refactors have happened since).

For me, it's working fine so far on master, and I've also done my own back =
port
to 6.1 and am currently testing both. An official back port once finalised
could be useful, though :-)


Cheers,
Andre'


