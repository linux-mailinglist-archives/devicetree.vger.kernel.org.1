Return-Path: <devicetree+bounces-148443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 048FBA3C07A
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 14:49:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D96061891224
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 13:49:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3F3F1EB5F4;
	Wed, 19 Feb 2025 13:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="nEzbjkMW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A971E47D6
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 13:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739972949; cv=none; b=sM1HuDtEnwBymHOv4REvuWfej3LfetCWBwWp2+iF8bVrNqXUQV8E/sxO5ArjoOIc/NUuthjNpLC4sS+11Vrx3ehubtAilw7qporqss6CO0erq/+l1w9V+cvup6ptHn77gg40QyBQ4pcAt86quqpfBA1yyulAfgUPE2E6WkvQ6pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739972949; c=relaxed/simple;
	bh=BUI9OqmTcDikEdPpFqYBtUMWk3tIemL4LfC4CrBlhCs=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GKH0T3p/XNLodXL/1z/5cqJ8+rb+vhvhf1KNQaLLKIGWhkaQFi26YRwft99h9LxRXlJ1qW3//e42Hfe38emVQDTs9Ia3JW97Cbyax8MDHZ7e/TkMvSQITnFZ2TJfITp/TlQJg0+lUPN46TQn2WKyPhjOqBrb4v2gBmTD94cxq0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=nEzbjkMW; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 532C03F2C5
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 13:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1739972946;
	bh=vZ2L/MpVD9pi+KEJm9yQ5LlxRKJxVGZ45ty3yuLt/90=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=nEzbjkMWCJnyEWQBKILuTnDW97lTVU/aBTXW2aqzx3rC5S734Yb6BkrGSCEQuuZ+X
	 zcvHcndsb92buXpnQB7mKmbKhO7MMKe4YKoj6vSpuDuVCenqqJjW5/Hszp0KpG3My6
	 yG0encPaaPDwQXpT4rtKh2/pvuV3+KyWhjSoULAkdXr3FdEoPIzZchwmPz7GfcJBvD
	 YUMf27tiqfqpYwvL5j+e8Vb14ZwoUst7apMN01wa4vgW3HnIrhUHK1g5iMOtQoTq3v
	 2iCjpoTSHi0ATFRyvLkpEJJoTBH1DsDUUhioxb6dfbRfpLvJtKVQgGPXYDfaT0FjqF
	 UbylJ7ch0ayQw==
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-5fc476501cdso5181193eaf.3
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 05:49:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739972945; x=1740577745;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vZ2L/MpVD9pi+KEJm9yQ5LlxRKJxVGZ45ty3yuLt/90=;
        b=VFJ3KSCMJN4djH6L3Z/RoZJBuy4Dsl5K3Xiai6NiC73tNQT1SoYOYlfC+rz+qCn96f
         R06OvQ6RQKSMQjRhJ2shgROIkVz/+hMO46bf02LZKGmDAJ2SII1hR9EjXtuBzMPEJVyh
         J+3F/sbHWqeqDHedQMrB393iwrgzQ+Y+ArJITDrItLwQN5uhJFXn/sfzX1ycgxgppOrZ
         MjugbjaZk/5M9arnF+ACn/M+ipvPmJDzJyP52JLS04FhlDjTSku63ijZSC8gWWir4tKT
         ShxqIVbmB/argcq6ha39ghswp+iAAtEW7QHOZ2euTjyMBelOqglbn3drjrE3f7au8uzr
         4iLA==
X-Forwarded-Encrypted: i=1; AJvYcCXx+Ag9b/RD8KK/Ktm27Wa+s9AsrNUrVQd4I8Gu2ehtxR99rG/mLP/yV+3qTQF13tPcCzxNVKxOoAPb@vger.kernel.org
X-Gm-Message-State: AOJu0YwfGl/Pl/NMs4ct2KO6C/Aal/Pr4OhZZJcBzGcY4veoCBgeMWgC
	DrASbzHHxiZBkvfS+M6yE4usaWF7HqRn1mCS9SLOqGZtobwso0R9RgKtp2Ickg6hvFNrMEa01AK
	gqZPguqFl2IR68rpszhrIci46RoEL62taPqsmQRHQB0P2yg5IPOrYPqds1XY7oLBCJKE+nJh2ZE
	WWyrEzSeDbQ1QG/NcI8FQW/uBrydUqLCTFfQqtlq3kk0KpCP+JFMkp01hpNA==
X-Gm-Gg: ASbGncvqQ//Lduv+ljs76HEcK+R33SOVmyRqs6xDTfqE2v1Ifydkio/zaW+5pqITTqK
	XAFh/WEIvwVybWDsXlksRuodQbohuKhg+ujIF8T0Hgt2nCZd6C6Kqq4at21Rfs1T95KFhEBCURu
	umclQTJlC4NmBmsU4=
X-Received: by 2002:a54:470b:0:b0:3f3:fd67:2608 with SMTP id 5614622812f47-3f3fd672befmr5957008b6e.29.1739972945142;
        Wed, 19 Feb 2025 05:49:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGemB5vEg69QJBbksFxTXFeiKLyjYXC6wA0L7MlZFlY9odqxeB6ktR9vGlUGBZLGLU/XQ5O+HGNQ5YSDDhmNxY=
X-Received: by 2002:a54:470b:0:b0:3f3:fd67:2608 with SMTP id
 5614622812f47-3f3fd672befmr5956995b6e.29.1739972944890; Wed, 19 Feb 2025
 05:49:04 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 19 Feb 2025 05:49:04 -0800
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 19 Feb 2025 05:49:04 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20250102183746.411526-2-e@freeshell.de>
References: <20250102183746.411526-1-e@freeshell.de> <20250102183746.411526-2-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 19 Feb 2025 05:49:04 -0800
X-Gm-Features: AWEUYZkTX4lQFT8guSxek473k_5pfX61Dv6EsoPJnhEMc3gblikrRm7DyM9abC4
Message-ID: <CAJM55Z-g4nQXcHe94KUj78W5N1PfSbRo03uPs31_8gH41z4aww@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] riscv: dts: starfive: jh7110: pciephy0 USB 3.0
 configuration registers
To: E Shattow <e@freeshell.de>, Conor Dooley <conor@kernel.org>, 
	Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

E Shattow wrote:
> StarFive JH7110 contains a Cadence USB2.0+USB3.0 controller IP block that
> may exclusively use pciephy0 for USB3.0 connectivity. Add the register
> offsets for the driver to enable/disable USB3.0 on pciephy0.
>
> Signed-off-by: E Shattow <e@freeshell.de>

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

Thanks!

> ---
>  arch/riscv/boot/dts/starfive/jh7110.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> index 0d8339357bad..75ff07303e8b 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> @@ -611,6 +611,8 @@ usbphy0: phy@10200000 {
>  		pciephy0: phy@10210000 {
>  			compatible = "starfive,jh7110-pcie-phy";
>  			reg = <0x0 0x10210000 0x0 0x10000>;
> +			starfive,sys-syscon = <&sys_syscon 0x18>;
> +			starfive,stg-syscon = <&stg_syscon 0x148 0x1f4>;
>  			#phy-cells = <0>;
>  		};
>
> --
> 2.45.2
>

