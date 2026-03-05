Return-Path: <devicetree+bounces-271312-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uIQENx3IqGnhxAAAu9opvQ
	(envelope-from <devicetree+bounces-271312-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 01:02:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEBA209518
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 01:02:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2A80A3009E3A
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 00:02:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 526C4288D6;
	Thu,  5 Mar 2026 00:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QgVls6dy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCDE39FCE
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 00:02:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772668951; cv=none; b=FsVMhhbnmOVfPK7yS+WOjwJnuTr7q9/uqjAo1syJYTPTX+vOkiSrGRKBe3JFTqjyQ/GkFzDWFAOx07jb2AoOT0slq//9ny7rpcG15MGlqG849cGJEWfn62d4h9nUYoh7nEBSsrvgRPIHV4KMXpA4InbH+ilK0Ehe9xYXcYdxjPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772668951; c=relaxed/simple;
	bh=qrNHVwQacnhh0gn86fmgbUh3DdQ6BkJxXbWGWASTxTo=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RzNT4KzbBxLuyFNa3W9Iajwrzr/2h3TCoU2o8n9Z6xaT6ds6cIN9y1Cqh4VrrL0pWiSKFHpakjY4lrVeeJ+T4A713bR2M1Fe20xhyo/fW9DA0uB7Dsfr9tLAFCm9Eokdzo1Y7nnMVRyD39qNZJGc4t636aE4anNDZXTMnvTHF80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QgVls6dy; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-c7388fb61adso236714a12.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 16:02:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772668949; x=1773273749; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fndfnkiJRWkhuW+xvek/3orGGPPXnFwo/ptLxjPpUVM=;
        b=QgVls6dylvhYzOWqj7jh61nLVyrK3+nzd3XS8Mi7IMyN7vKLYxcY2MnizYWp17A0tt
         7EWDYBXapIzKIocVFrsKfkCi3C1ouPQUvUtHXX6R5bVtgbIhZcnQIW+vvuXyInJ4V8SO
         yo6F09Bbjs1rC/oSKdylyPXhBxu4pefE+y7PEMjP+pxmaXTRwcr7owHYGirracLOYrvt
         57OSZwbwKhy96+loqZF6mEJ6AaN2Ic4tpyxVuIGXS2fO0t1lxb1VDwfrUFCDeQEdjHT4
         HYWKcUrOlR3Sq4gjiYhoH1Zd9PaaI/VqwEsz/StpYZ3nU+OOGFjxk8DH+jl+aam9zjna
         2nuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772668949; x=1773273749;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fndfnkiJRWkhuW+xvek/3orGGPPXnFwo/ptLxjPpUVM=;
        b=LLeeFSurLYLmquLROyBRRJV7pFz+s77AIqcdchtIVJOGy82BwgpDzlBKyGPNg2KT/2
         u1eAvhoLyVl95zqofxV+9KcYux2CdRMdBTbnMWbH/Kerov6FrDGUzm/Jsjue4j+9Y22C
         ruom7pa+JPIx/J9Cxspl2/hpIfgFtu55wVEgzu0LIGFKL3vbPBpz5vv4WlEepD8eW57e
         rCbC7s5c2cgUNLQSR5BzIrpfhZDr4W415hLBuWqfmQZLVtg9LiyB62Qkrd0ZLttRuTHx
         /WPTK5mNthr1lpgbiWKX6Jv/fFbGkLJW2JjbwTm91R63XRTx314ZlUQKkH28P76XNiKU
         TN3A==
X-Forwarded-Encrypted: i=1; AJvYcCVBFectiY3snsEueSiIaJbdgLwSX/MKh+4jajuQeErpRJfyeyjpZBpCuPzYM9/acRwvXi7ipOamn8wT@vger.kernel.org
X-Gm-Message-State: AOJu0Ywzg23nsLmenkNy2NojornD5gPaV20OIqoIYqFVDU7QCSh1/XvE
	gt1Cj6Iq/zeBQ9XxIxonFTVbQFRAsEb9lNU1RIpqWgQosgJ0/lPQEtWo
X-Gm-Gg: ATEYQzxvSrwJyLvwoQkFE/FQSn6vjryRAfGgPNmJEj4uyNeSxEgnoxdY5R6P1A5gCBj
	eewkCetlnWpfYU1aPT2kr/Ppt+2yhg/cDiwC3QLbcr/6ZjMT4h9ECEeeN27I6HtRzhKsrvJTADp
	Pp47wlrREXvOPx5dSvW2OSqEs/RbFJrjRizYvDNQjVGyvxxCZ1LCIwkLqVYv0VqRPrYKBpdQ1wr
	6RgsUa+WoYTrf6LOPPrphrEym4hK8z2CED4UyJOcK2eRwaqXkb96A50qjKyrhQC646A9/klcl/V
	9wzc9WXZgUkr5mDjvnytP3HE3s06RhPwIV31CUPSTqfZTFZMD490wrGLvRk2V6WOU1ugjPmdaeE
	YbnjvDa+H4BsxxdTertir25GNqNx2RiDnYekUVVjVdBvvYuY+GyGtAfFBZR4QH6X0IjkBoCND2r
	wClsGQpq8Pnj1JaoaaW09IPHM=
X-Received: by 2002:a17:90b:1a91:b0:359:7c55:c160 with SMTP id 98e67ed59e1d1-359a69da7d6mr3299580a91.13.1772668949367;
        Wed, 04 Mar 2026 16:02:29 -0800 (PST)
Received: from localhost ([2001:19f0:8001:1b2d:5400:5ff:fefa:a95d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359aa1ff041sm1177382a91.3.2026.03.04.16.02.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 16:02:28 -0800 (PST)
Date: Thu, 5 Mar 2026 08:01:58 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v4 6/6] riscv: dts: sophgo: dts nodes for i2s tdm modules
Message-ID: <aajGmn3KsZGsZlhz@inochi.infowork>
References: <20260120-cv1800b-i2s-driver-v4-0-6ef787dc6426@gmail.com>
 <20260120-cv1800b-i2s-driver-v4-6-6ef787dc6426@gmail.com>
 <aZ939evsOs6nCd5I@inochi.infowork>
 <aahuz5KJLL_rAZTH@anton.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aahuz5KJLL_rAZTH@anton.local>
X-Rspamd-Queue-Id: DAEBA209518
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271312-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,outlook.com,perex.cz,suse.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DBL_PROHIBIT(0.00)[0.66.57.32:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,0.62.143.160:email]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 09:57:56PM +0400, Anton D. Stavinskii wrote:
> On Thu, Feb 26, 2026 at 06:32:27AM +0400, Inochi Amaoto wrote:
> 
> > > +#define DMA_CPU_A53		0
> > > +#define DMA_CPU_C906_0	1
> > > +#define DMA_CPU_C906_1	2
> > > +
> > > +#endif // _SOPHGO_CV18XX_DMAMUX
> > > diff --git a/arch/riscv/boot/dts/sophgo/cv180x.dtsi b/arch/riscv/boot/dts/sophgo/cv180x.dtsi
> > > index 06b0ce5a2db7..ebe5e8113939 100644
> > > --- a/arch/riscv/boot/dts/sophgo/cv180x.dtsi
> > > +++ b/arch/riscv/boot/dts/sophgo/cv180x.dtsi
> > > @@ -8,6 +8,7 @@
> > >  #include <dt-bindings/gpio/gpio.h>
> > >  #include <dt-bindings/interrupt-controller/irq.h>
> > >  #include "cv18xx-reset.h"
> > > +#include "cv180x-dmamux.h"
> > >  
> > >  / {
> > >  	#address-cells = <1>;
> > > @@ -448,6 +449,60 @@ usb: usb@4340000 {
> > >  			status = "disabled";
> > >  		};
> > >  
> > > +		i2s0: i2s@4100000 {
> > > +			compatible = "sophgo,cv1800b-i2s";
> > > +			reg = <0x04100000 0x1000>;
> > > +			clocks = <&clk CLK_APB_I2S0>, <&clk CLK_SDMA_AUD0>;
> > > +			clock-names = "i2s", "mclk";
> > > +			dmas = <&dmamux DMA_I2S0_RX 1>, <&dmamux DMA_I2S0_TX 1>;
> > > +			dma-names = "rx", "tx";
> > > +			status = "disabled";
> > > +		};
> > 
> > This magic number 1 is bind to the RISC-V cores, I think we should add a
> > macro DMA_CPU_ID into CPU file to route the CPU id to real cores.
> > Or, just let the borad dts configure which dma is enabled.
> 
> Hi, Inochi. Sorry for delay, I've missed the messages somehow. 
> I'm not sure what is the best option TBH. 
> If the problem is with the magic number, there are constants for this in your
> file:
> #define DMA_CPU_A53        0
> #define DMA_CPU_C906_0     1
> #define DMA_CPU_C906_1     2
> 
> So I could use them. 
> 
> If the problem with hardcoding the CPU - it is little bit more tricky. 
> Ths commit is in the riscv branch so we could not use ID 0 at all.
> Unless you want it to be more generic.
> From my understanding we could not boot from CPUID 2. (may be i'm wrong
> here) If it is correct, it means the whole setup will only work on CPU
> 1. 
> 

Yes, that's true, the only boot cores are 0 (A53) or 1 (C906_0).
And You only need to take care of these two cores. And the ARM
DTS you can just find it in the arch/arm64/boot/dts/sophgo.

Or, just let the board determine the DMA required, as the DMA
channel is shared across many devices. So it may be better to
not allocate them without enabling the device.

> In any case I will follow your suggestion. I agree, leaving this with 
> the magic number is not good. 
> 
> 
> Second question: 
> Do you want me to resubmit this change as A separate patch as the rest
> of this patch was applied? 
> 
> 

A separate patch or a new version with this single patch are both
fine to me. But you are always required to add the changelog and
link to the old versions. Otherwise, others are lost the information
about this.

Regards,
INochi

