Return-Path: <devicetree+bounces-139600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 66171A1657E
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 03:44:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D4203AA32A
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 02:43:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A2F429415;
	Mon, 20 Jan 2025 02:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jQAGc4g6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2BA742A9D;
	Mon, 20 Jan 2025 02:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737340992; cv=none; b=eGacpH6GYQjvfz5c9f0tEBIJP62sO9M3nmtwvjktYeFOyDkMehqpn2RmENcmHAhaw47mEdpHgRdvcjW7O+yDoPxiFSXVAaHPips0WkkmpdEV/i5OI2ZaXJ4kMFxc/mSFYMBtsCTL0cIMC41+dOetXsV2kkj6k5TE8fsb4xpRzKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737340992; c=relaxed/simple;
	bh=kXI9kStWNheCR1tdHTESF9724jAyHJ/fLTTmBmXhWcQ=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=acQD5X3Ka2E5y1ZvPEAgjvtBz+QV+k9uqVRaem+3DJIYymaZjlbYdnFucIOT7+DI4ucSIeIrD4hadx+jApNGhbbEmXbs1R3HJMY6KQ5J2Z2P8mvUfR/PSTynUSToyZ8T8okj6TlhDWjPc1RHAJ4KW6qw2a0zfepupGrnoBAc0UU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jQAGc4g6; arc=none smtp.client-ip=209.85.222.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-7b6f7d7e128so493844285a.1;
        Sun, 19 Jan 2025 18:43:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737340989; x=1737945789; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=e0b8eTjATUzdztbVZiM4oxXleen+QhZpOZdDInckSBU=;
        b=jQAGc4g62BZiIJwzfeKu+W2MR4GfW4Bw5v3aQjefWMMuAgi+3yBD7p5LbVcTqH1dnP
         1wpnTYjz1Ze1lRg8qz6x26JRgJqE3DTLIZeiS15boNk+Z/ptaxHosG7l2l/4gEgCEj6G
         fqAAyiP2PXnS2TMpTgBXZHSYzoMneO63wOUwipnZztsHogK8MFMtTCdOaVkNJNE2298J
         8M+uQQ3H6yCFwnjjfGA8UKKTYMSAeb+XNifSbGjE6uQa4uZOQ7t9Z4o0LlFLNzNzXJ15
         EQft9ifnCmAURZDm+Z3sWyUkzEUpfvubR+BCCYQiHHugeiqkgCWPeYliEWSFYBNAviJq
         rQkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737340989; x=1737945789;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e0b8eTjATUzdztbVZiM4oxXleen+QhZpOZdDInckSBU=;
        b=ODvKR1Ot1Jk0tItHlVUQX1r1EanJN3kc1G6r4u8C5jiU+UHHgU2xtKYYWioLjq7Ynp
         7FN0is5O5nuHqSnoozlrOfX4BwsI+7kzA8Ttw9ZKVL5ble+K/PGumBRdf1PxRVJoL8kL
         vaSLc6aWiptAJwh6RR7P2RibdcmKE+UiFHFF+N+h3bGhKqF+2xWZMu2DIyStVlDkf1ts
         hODxaAyhkMMUhkX2l+LGDpmKTs+I6F44tafDqlgJ/3/bEMY6c0DacqaRkYy1svDPpfe5
         YmNzCX/rXLhkleSKTCNlQKYIrVM32HREqRmkIYQEozkWDOoHzgDyN+isgRB+p1/y7sjG
         l3sg==
X-Forwarded-Encrypted: i=1; AJvYcCUmlih8wmAuJVcn/0hUrISk9PRwnkLts7lf+0gueq4JazDIAAP1Z+48UHM15ZpcdUTFf3oMF+Nyu0aePiom@vger.kernel.org, AJvYcCWnV+Raw1dOjAYZqMfScYLRhjyIeeLEOobCSLcJQ2Wo5XQ5EJlZPX0Ojjo/6H4g3iyKljvNLwK+JvbX@vger.kernel.org
X-Gm-Message-State: AOJu0YwvSKxePh/adrtYtSgZF7xs0tdHiD5nb6KmpknQN+LIPjzKAvHl
	vxTi/35IEqfCzNyVn9l2o4vM9TBjtK7A6fBBeQMHm06jZzI4TVoR
X-Gm-Gg: ASbGncsXrSTK8AlM+beC/ha9nypCUsuzW7bl+agurRyVDUyUIKG8/5ufrgTevnwPUPN
	yVHtSuTz9zQzF4lfnSM/n41GH5BI509jEepht5a0EQcr0p5tN+QbuvHHCnjOO37dNLxOEYkGLOF
	4jZwio8IILSTEW9d46BamDFFygRNifcycjW3KJiON1Cg+j2HnbsjwYskiOIING1uqzknGp1hT6+
	Fz5bmM5pGCFMCT9qa7kQmlxxaNF2vGXcQLoJtZH7isJQA==
X-Google-Smtp-Source: AGHT+IFoHpJfi8044k/PmHjoOC5c88Dfik5Rwle26KExchj3zO4AsshsldeCR57sa8hWMk2gPB8R7Q==
X-Received: by 2002:a05:620a:2891:b0:7b6:eba3:2e08 with SMTP id af79cd13be357-7be523da32emr3003491185a.7.1737340989624;
        Sun, 19 Jan 2025 18:43:09 -0800 (PST)
Received: from localhost ([2001:da8:7001:11::cb])
        by smtp.gmail.com with UTF8SMTPSA id af79cd13be357-7be614d98b2sm395108485a.76.2025.01.19.18.43.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jan 2025 18:43:08 -0800 (PST)
Date: Mon, 20 Jan 2025 10:42:22 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Chen Wang <unicornxw@gmail.com>, u.kleine-koenig@baylibre.com, 
	aou@eecs.berkeley.edu, arnd@arndb.de, unicorn_wang@outlook.com, conor+dt@kernel.org, 
	guoren@kernel.org, inochiama@outlook.com, krzk+dt@kernel.org, palmer@dabbelt.com, 
	paul.walmsley@sifive.com, robh@kernel.org, tglx@linutronix.de, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, chao.wei@sophgo.com, 
	xiaoguang.xing@sophgo.com, fengchun.li@sophgo.com, samuel.holland@sifive.com, 
	christophe.jaillet@wanadoo.fr
Subject: Re: [PATCH v3 1/3] dt-bindings: interrupt-controller: Add Sophgo
 SG2042 MSI
Message-ID: <gyf6cdqjnvom3adf3cr7l72e7xevewhrsv4koelpnfm5cd22ge@t4ru6avsihzd>
References: <cover.1736921549.git.unicorn_wang@outlook.com>
 <c9dd12c3ad77b13dcdfbf4accd51e92e6ea2a4a9.1736921549.git.unicorn_wang@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c9dd12c3ad77b13dcdfbf4accd51e92e6ea2a4a9.1736921549.git.unicorn_wang@outlook.com>

On Wed, Jan 15, 2025 at 02:33:23PM +0800, Chen Wang wrote:
> From: Chen Wang <unicorn_wang@outlook.com>
> 
> Add binding for Sophgo SG2042 MSI controller.
> 
> Signed-off-by: Chen Wang <unicorn_wang@outlook.com>
> ---
>  .../sophgo,sg2042-msi.yaml                    | 58 +++++++++++++++++++
>  1 file changed, 58 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/sophgo,sg2042-msi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/sophgo,sg2042-msi.yaml b/Documentation/devicetree/bindings/interrupt-controller/sophgo,sg2042-msi.yaml
> new file mode 100644
> index 000000000000..f641df191787
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interrupt-controller/sophgo,sg2042-msi.yaml
> @@ -0,0 +1,58 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/interrupt-controller/sophgo,sg2042-msi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Sophgo SG2042 MSI Controller
> +
> +maintainers:
> +  - Chen Wang <unicorn_wang@outlook.com>
> +
> +description:
> +  This interrupt controller is in Sophgo SG2042 for transforming interrupts from
> +  PCIe MSI to PLIC interrupts.
> +
> +allOf:
> +  - $ref: /schemas/interrupts.yaml#
> +  - $ref: /schemas/interrupt-controller/msi-controller.yaml#
> +
> +properties:
> +  compatible:
> +    const: sophgo,sg2042-msi
> +
> +  reg:
> +    items:
> +      - description: msi doorbell address
> +      - description: clear register
> +
> +  reg-names:
> +    items:

> +      - const: doorbell
> +      - const: clr

please reverse the items order, the clr addr is more suitable
as the MMIO device address when writing device node. doorbeel
address is just a IO address and can not be seen from CPU.

> +
> +  msi-controller: true
> +
> +  msi-ranges:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - msi-controller
> +  - msi-ranges
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    msi-controller@30000000 {
> +      compatible = "sophgo,sg2042-msi";
> +      reg = <0x30000000 0x4>, <0x30000008 0x4>;
> +      reg-names = "doorbell", "clr";
> +      msi-controller;
> +      msi-ranges = <&plic 64 IRQ_TYPE_LEVEL_HIGH 32>;
> +      interrupt-parent = <&plic>;
> +    };
> -- 
> 2.34.1
> 
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

