Return-Path: <devicetree+bounces-23264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4F680A908
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 17:33:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 653E6B20B12
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 16:33:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF94F1E507;
	Fri,  8 Dec 2023 16:33:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AA1F1986;
	Fri,  8 Dec 2023 08:33:37 -0800 (PST)
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6d9e9b72ecfso513501a34.3;
        Fri, 08 Dec 2023 08:33:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702053216; x=1702658016;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9GKuWGx0JJFRVK4jl2gAQwDPO2YGwHUxaXRf8Tzo4vI=;
        b=RmxJ/cCTzJYadFzbKUbf2k2pakS7hocVV+iTCmXH2HpPHb9uaYyUUgWF3TzmSsukcl
         nMVhM/waBvizuntcL7AzJ5YlrlEYI5BlxedozrA8UcAwMckPmCQunCfEUkDW6i0KbArB
         VvvXcVwgTJ6V2SD2f6TwzzWFhUKdMuWTLjehDtLDhMfmOCxzgjLCnsxpZhdd8HXwWgoN
         OB/cpy/9K21A4MmZZMALljyY0PxbgG1dAeNAU8ozLJs964KuWG13VZ3ZgwkuGoBZQvh0
         jAmnrqS/KB2YSQIkobRmzxEN6vO2OF83PT6KYHvIM+uJdkbV35bC/7/xG61sA/0Ak2/j
         bP/g==
X-Gm-Message-State: AOJu0YwPXw62mdLveNPAHZ5x0tWrj8yC13OWSB8kBbTk5m122itJy0NK
	JXPwBkpuSzut1CJX4Tt1Hw==
X-Google-Smtp-Source: AGHT+IGJgyPhFszyyuv/ahTq9jCGY/uMbNvjsmemLXOK2SmMafrlPlw/OCBI/pVSJYLPRtpk1/ZBmQ==
X-Received: by 2002:a05:6830:1e75:b0:6bc:8930:a1d4 with SMTP id m21-20020a0568301e7500b006bc8930a1d4mr300120otr.15.1702053216777;
        Fri, 08 Dec 2023 08:33:36 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id i2-20020a9d68c2000000b006d3161e612dsm346476oto.30.2023.12.08.08.33.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 08:33:36 -0800 (PST)
Received: (nullmailer pid 1696654 invoked by uid 1000);
	Fri, 08 Dec 2023 16:33:35 -0000
Date: Fri, 8 Dec 2023 10:33:35 -0600
From: Rob Herring <robh@kernel.org>
To: Sui Jingfeng <sui.jingfeng@linux.dev>
Cc: Keith Zhao <keith.zhao@starfivetech.com>, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu, tzimmermann@suse.de, paul.walmsley@sifive.com, mripard@kernel.org, xingyu.wu@starfivetech.com, jack.zhu@starfivetech.com, palmer@dabbelt.com, krzysztof.kozlowski+dt@linaro.org, william.qiu@starfivetech.com, shengyang.chen@starfivetech.com, changhuang.liang@starfivetech.com
Subject: Re: [v3 1/6] dt-bindings: display: Add yamls for JH7110 display
 system
Message-ID: <20231208163335.GB1659919-robh@kernel.org>
References: <20231204123315.28456-1-keith.zhao@starfivetech.com>
 <20231204123315.28456-2-keith.zhao@starfivetech.com>
 <46ad8c2b-5be2-4cfd-b771-a8d95a5b5d8f@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <46ad8c2b-5be2-4cfd-b771-a8d95a5b5d8f@linux.dev>

On Wed, Dec 06, 2023 at 08:50:29PM +0800, Sui Jingfeng wrote:
> Hi,
> 
> 
> On 2023/12/4 20:33, Keith Zhao wrote:
> > StarFive SoCs JH7110 display system:
> > dc controller, hdmi controller,
> > encoder, vout syscon.

[...]

> > +description:
> > +  The StarFive JH7110 SoC uses the HDMI signal transmiter based on innosilicon IP
> 
> 'transmiter' -> 'transmitter'


Thank you for reviewing, but please trim your replies especially when it 
is only 1 line reply in the middle of 100s of lines.

Rob

