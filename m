Return-Path: <devicetree+bounces-271197-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cLuzKrNyqGl6ugAAu9opvQ
	(envelope-from <devicetree+bounces-271197-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 18:58:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D14D20580F
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 18:58:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0D2F73016732
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 17:58:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE3403CF690;
	Wed,  4 Mar 2026 17:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WJvhtmrl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E556036604C
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 17:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772647087; cv=none; b=WQt0Afp/GBitIGR+BgsT5hlaL4ExkQG3N0Xv4un98yknzR/17EN+FWNY5JhdAo6n7HfPE571oSMjG1fe6W9KtrX7Q0LwcPYbmUp1s/wB39dgEu7gL93q6dEM7xGbSvFzdL52/Wu0zr580y/ItpMVdJ3n/OWUKUC3sCBDVWt69YA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772647087; c=relaxed/simple;
	bh=kD2QH8t4ii2+KFV/KGuDMZq9ZU8V8+zutfjGr5AYUE8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rzLJVrzt/dqp6wVifM7MlFTDlX+wUS9eCwmWonC6l5FpAOisIhsZ1jInAPNbC6uHh2Y6xJZ7LPjzof7bi3MrZP5+NO+ekKQh8QiazPOZV6CJbkSEyCYA1c+HnDyrTF6G6ql7gWvSGESz/ZfPjguXg4T30p6TtPwQ41Qd433O+/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WJvhtmrl; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-48375f10628so48100945e9.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 09:58:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772647082; x=1773251882; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2rq5hYgf0faXia9cxwlRkLJL71Mpw7xbT+1o0WoNrPw=;
        b=WJvhtmrl5SkRmPvSF8lnvcT6UdZQQozqzpcMb5ABlNEtpyFEMxtGKq6DBrKyfL65ue
         Hcir2qfaeRimVuET92ab2r+1vPYm32/NaZRUtyBBnLpMpcf2n1iWZFhvXyzQYy5CB8X8
         KDnqJXnQcgmfVB1eJMcFhv+kGMSV5PydYBBcuPDrO87rFJkTy9vcxK+125E+5buGSr5S
         Lp88uZIzp18+o8lHZdnrsXbGReDZica7zskF2FDjRuRCeBzUpCBsVIb1I0hIT2c7XCHc
         YdNe/bZxUV3NvNtRSy7WsmvplKO7vGFXD/kaUFzWMWXuRYbQegAnsDndi5YnN5eW0ZxU
         J7vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772647082; x=1773251882;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2rq5hYgf0faXia9cxwlRkLJL71Mpw7xbT+1o0WoNrPw=;
        b=MGuYXCEMef9eNhWXaTrn7FxIUz+zp2e5J1HGWo00vmDkqM106PhlE+wMq2ruMifcYu
         CC5LKsaTfcE37VFqhs3NWWnmWYAMyKAbxu6iSyqbek4ws2MkKt0OL0jqJsujl2aqQhko
         12JyhAJzNSLdNTfLphxajRlr/YfXH+unTVNMCyNljzXl4kyuGDPqlqCux6kpsjDqmQ6O
         CM8cnKiYea709bbvBbbjPh+3q6wx1nOfMeg1GHNQz3EiaWh9rzQyzloRu6jsFGIP4D11
         I3MZRk/MZbOkVY923XLYbJWSqUKZNHgVXsJYQ7ZbFw1Q4uiijzKOdYfdc/JD7DLCU5Fw
         u9Vg==
X-Forwarded-Encrypted: i=1; AJvYcCVFyQKZ9xnsH1CVhOHbF6j18Wa2TI9l9/cLULWQ++fHcZaxaisWjYd/1hidYR5POkIA1/QNQWulhctj@vger.kernel.org
X-Gm-Message-State: AOJu0YxoiYSeGHXUumaRwcmcU2X/dmYhMgbLlIbjTbOUhQnw/Z9rl0LN
	ERhjrQAa2F9E8ArzzUally2L2syr3Xb76Sh9tzgqXcI0P/ZwM/wFniOS
X-Gm-Gg: ATEYQzzVnjKuIapez3jggoQEN+nWgJi6m9A4M1117uUyQO500RNGgGdqylxEjDbYEzU
	4p0Bsk5dUiTspY027xF9rIPm9EhqbbmojF6GtV4Tjs8B6OX/yCUWBZbjnzMIgYbg6vr28WFMGix
	RuRnR+sYR3iSsbd/eNqJJh26FCRdzD5QhtDXX9APw8nVf3dzbihLgUSVElPgiPOjXiYEq5jqHm7
	m/aMD9tGBou6SPby420GSUJh644smqikAE4HzhypdoDGsCfJ1BV5a9LAqzo/UasmFFvF3QEMsW7
	wn0UxYpjKHO5Trcp2Ga8HSP5qA4m+MdKPdq8jo4lbNNHJLVPSkLt3pg2yD2/CdrwOGs7kSPGszB
	esHzyXNL818burCs5q/KMaNPtONfiVElvESq3xRwwSks0emDqzVhE8aka5rNebZLVtfjosxD3kC
	n3MPNzUkK7BSJDo8Uly0+UiNsRhvUKe100rt1HRpWwD5uy7TpAvVGTwxNhPAKRNbywRmzbjA==
X-Received: by 2002:a05:600c:c163:b0:480:4a4f:c36f with SMTP id 5b1f17b1804b1-485198749b6mr51102325e9.21.1772647082156;
        Wed, 04 Mar 2026 09:58:02 -0800 (PST)
Received: from anton.local (bba-217-164-166-37.alshamil.net.ae. [217.164.166.37])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851acf9c31sm13254295e9.12.2026.03.04.09.57.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 09:58:01 -0800 (PST)
Date: Wed, 4 Mar 2026 21:57:56 +0400
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v4 6/6] riscv: dts: sophgo: dts nodes for i2s tdm modules
Message-ID: <aahuz5KJLL_rAZTH@anton.local>
Mail-Followup-To: Inochi Amaoto <inochiama@gmail.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
References: <20260120-cv1800b-i2s-driver-v4-0-6ef787dc6426@gmail.com>
 <20260120-cv1800b-i2s-driver-v4-6-6ef787dc6426@gmail.com>
 <aZ939evsOs6nCd5I@inochi.infowork>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aZ939evsOs6nCd5I@inochi.infowork>
X-Rspamd-Queue-Id: 3D14D20580F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271197-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,outlook.com,perex.cz,suse.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DBL_PROHIBIT(0.00)[0.62.143.160:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stavinsky@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.992];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,anton.local:mid,0.66.57.32:email]
X-Rspamd-Action: no action

On Thu, Feb 26, 2026 at 06:32:27AM +0400, Inochi Amaoto wrote:

> > +#define DMA_CPU_A53		0
> > +#define DMA_CPU_C906_0	1
> > +#define DMA_CPU_C906_1	2
> > +
> > +#endif // _SOPHGO_CV18XX_DMAMUX
> > diff --git a/arch/riscv/boot/dts/sophgo/cv180x.dtsi b/arch/riscv/boot/dts/sophgo/cv180x.dtsi
> > index 06b0ce5a2db7..ebe5e8113939 100644
> > --- a/arch/riscv/boot/dts/sophgo/cv180x.dtsi
> > +++ b/arch/riscv/boot/dts/sophgo/cv180x.dtsi
> > @@ -8,6 +8,7 @@
> >  #include <dt-bindings/gpio/gpio.h>
> >  #include <dt-bindings/interrupt-controller/irq.h>
> >  #include "cv18xx-reset.h"
> > +#include "cv180x-dmamux.h"
> >  
> >  / {
> >  	#address-cells = <1>;
> > @@ -448,6 +449,60 @@ usb: usb@4340000 {
> >  			status = "disabled";
> >  		};
> >  
> > +		i2s0: i2s@4100000 {
> > +			compatible = "sophgo,cv1800b-i2s";
> > +			reg = <0x04100000 0x1000>;
> > +			clocks = <&clk CLK_APB_I2S0>, <&clk CLK_SDMA_AUD0>;
> > +			clock-names = "i2s", "mclk";
> > +			dmas = <&dmamux DMA_I2S0_RX 1>, <&dmamux DMA_I2S0_TX 1>;
> > +			dma-names = "rx", "tx";
> > +			status = "disabled";
> > +		};
> 
> This magic number 1 is bind to the RISC-V cores, I think we should add a
> macro DMA_CPU_ID into CPU file to route the CPU id to real cores.
> Or, just let the borad dts configure which dma is enabled.

Hi, Inochi. Sorry for delay, I've missed the messages somehow. 
I'm not sure what is the best option TBH. 
If the problem is with the magic number, there are constants for this in your
file:
#define DMA_CPU_A53        0
#define DMA_CPU_C906_0     1
#define DMA_CPU_C906_1     2

So I could use them. 

If the problem with hardcoding the CPU - it is little bit more tricky. 
Ths commit is in the riscv branch so we could not use ID 0 at all.
Unless you want it to be more generic.
From my understanding we could not boot from CPUID 2. (may be i'm wrong
here) If it is correct, it means the whole setup will only work on CPU
1. 

In any case I will follow your suggestion. I agree, leaving this with 
the magic number is not good. 


Second question: 
Do you want me to resubmit this change as A separate patch as the rest
of this patch was applied? 


> 
> Regards,
> Inochi
> 


