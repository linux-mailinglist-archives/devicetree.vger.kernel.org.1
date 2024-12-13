Return-Path: <devicetree+bounces-130506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E709F03CA
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 05:23:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B77218836A7
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 04:23:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FCC01822E5;
	Fri, 13 Dec 2024 04:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="HwfKNMnM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE260149E00
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 04:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734063811; cv=none; b=GL44orQK+7M1qlhxfflfm/0nHSZeBQSZ6FWcfQU/j5zivYxM7UtA8PSQzs2GJFI3LF/wJ0UmKEpDGy6Jjrkyi62n6/KHff5ylvosn5BArlhBZepFPTSgl74q6fHXRkK7LMkn3Bp9b7eyMx87pi3XmgfQE3K1OBueZQTclvs8BZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734063811; c=relaxed/simple;
	bh=41Wa87e1yvbGfsU8DFkP/vhEvzNEa4miGRYqLGm8xTU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PKrsXsTxLEcVcWmU+lX9RjvS2Ahqyx16L0UoeFBh3nl0mjk8h2TPUlskqqhHVG9lyM3RbaPLJskGRFJQcvAkCLeZY/+BQvrKyabaCV2XzUNf/mICV+npNg0SG9QTepuiaMyE+aO8BEvz9M7QRhUj+SmAAt7f/jFFS/8fpLVn8f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=HwfKNMnM; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-728eedfca37so1432329b3a.2
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 20:23:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1734063808; x=1734668608; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NVpovzDFXwge3Q3+ToA6U1Heg/KQVI3DYGJ0qfmqewk=;
        b=HwfKNMnMhXuLGpnzrX1nBNdA+VTldFz9Pq551ZJVnapLWQkpHzhiQ5qDzQQru3l5qM
         fySnbgujnBlF/mmQv9Tg8U9B94OfmYlc+II4+hIPRdrvcI4Bg6BD57DEdA7A9PIzqRkq
         CXG1WqMVH76VFdRPg5ye8yGfiZma1ycDUHmngw2TlX6xRMkXWBwXTpfMHcRthgtlsaEq
         AZVQahN57jSS6Lgn/ADtvHWeIAjKiOFsgqoyn5U5sgwAq5eR2cPq/MPEQhP+EQsDvk5v
         w2m4eu3HibAwfBjyqywFgxHzjp7noytKF0jl+qwTX7qaRuWW8EuCwH/UgbK26fDVtJQu
         WFAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734063808; x=1734668608;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NVpovzDFXwge3Q3+ToA6U1Heg/KQVI3DYGJ0qfmqewk=;
        b=c0QSow5nbj8x39CB31cde31sssoiSrJLWGW7iOsTe/huE0LYkcfkAesiUl/zmNixyO
         mb8vyUVW7EgBdXFKgrj8RWZJ0iWwx5M9clsRawAVoe6cGsk0Nt9xr/0PgjxdAlskt5Hj
         A83pq10yrJawzB9zmGFgy7kPLv/1jcuqI41426XLb9hOF9WMCbYFLX9hJlh6bixxobKJ
         sVVSEsFmgakWQM57CLiMoo3Ux4ufNNSj4xRliuC1I3INPgKB5tk8WHZe4kBHYRlJjuIX
         euh0WXiUUxSboSVQhaKcotp8P8mc+w6g3NWIOmgPB3oDjWd+c4kB0Fs2WupfIFA08kos
         9efg==
X-Forwarded-Encrypted: i=1; AJvYcCVm6X8+g4SVFG3XfaXU6G2hwV+Ssq4scvDMFX/CA9H0xP3+S2AEKm92yTtNUJfYXKWV23rzZuE1Q0i7@vger.kernel.org
X-Gm-Message-State: AOJu0YyW8Uo8JE0XRwRSQPCwlzKcPtHRzyz9/8fWjTZlpgv1DxquwGvl
	8JbYMRZ2HN/YLRecSwH80X3vUJXFq70lgHqgBxb6YPp2pADiPqgkeyKJiNQgNzc=
X-Gm-Gg: ASbGncvbCdLCrtdpGaduC1JVrDiWAFNag6J4hqFeyYYi/4qCcdR/MyVJ/9r5vw90JoO
	xxu6cdDenRkrPUdHbyYvk7eklzlJxz+dh4/s0Ueju6/F48CF96tcCTk2YTvw4x6lXKpwQTZRR6Z
	ZVm5BFbpqmB4CkKEBieDayFOuqWQiBngT68KTBn5VrhppimUzsjCBaKfLfwHhDxBJOkZKcdxeDs
	1scqu+ivp9bQyC4Xn3YnYLHJ3uBhqq8kVSYq+B7Cvh1oluRaAaOlWlIFbEIoAaT4H0XC2ZjDCNx
	Yrpt
X-Google-Smtp-Source: AGHT+IE1gWRpEWOOFyENRCzyuHkw+v1u7Rpqnlivn3esqNQkA9AcnHNhDDeYbLWGFzJcgO2JHohwSg==
X-Received: by 2002:a05:6a20:6a11:b0:1e1:c748:13c1 with SMTP id adf61e73a8af0-1e1dfdb04dcmr1876388637.27.1734063808159;
        Thu, 12 Dec 2024 20:23:28 -0800 (PST)
Received: from x1 (75-164-218-15.ptld.qwest.net. [75.164.218.15])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7fd313f0ffbsm10396549a12.82.2024.12.12.20.23.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 20:23:27 -0800 (PST)
Date: Thu, 12 Dec 2024 20:23:26 -0800
From: Drew Fustini <dfustini@tenstorrent.com>
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: drew@pdp7.com, guoren@kernel.org, wefu@redhat.com,
	jassisinghbrar@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, m.szyprowski@samsung.com,
	samuel.holland@sifive.com, emil.renner.berthing@canonical.com,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, christophe.jaillet@wanadoo.fr
Subject: Re: [PATCH v6 3/3] riscv: dts: thead: Add mailbox node
Message-ID: <Z1u2vsoCmmcNm82V@x1>
References: <20241104100734.1276116-1-m.wilczynski@samsung.com>
 <CGME20241104100801eucas1p27cd0d7b9b5b4500604470664884c42fb@eucas1p2.samsung.com>
 <20241104100734.1276116-4-m.wilczynski@samsung.com>
 <Z1oO5ewIOMFco4KI@x1>
 <Z1uiWXWo9szbgfx9@x1>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z1uiWXWo9szbgfx9@x1>

On Thu, Dec 12, 2024 at 06:56:25PM -0800, Drew Fustini wrote:
> On Wed, Dec 11, 2024 at 02:15:01PM -0800, Drew Fustini wrote:
> > On Mon, Nov 04, 2024 at 11:07:34AM +0100, Michal Wilczynski wrote:
> > > Add mailbox device tree node. This work is based on the vendor kernel [1].
> > > 
> > > Link: https://github.com/revyos/thead-kernel.git [1]
> > > 
> > > Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> > > ---
> > >  arch/riscv/boot/dts/thead/th1520.dtsi | 16 ++++++++++++++++
> > >  1 file changed, 16 insertions(+)
> > > 
> > > diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
> > > index 6992060e6a54..89de5634d3d3 100644
> > > --- a/arch/riscv/boot/dts/thead/th1520.dtsi
> > > +++ b/arch/riscv/boot/dts/thead/th1520.dtsi
> > > @@ -520,6 +520,22 @@ timer7: timer@ffffc3303c {
> > >  			status = "disabled";
> > >  		};
> > >  
> > > +		mbox_910t: mailbox@ffffc38000 {
> > > +			compatible = "thead,th1520-mbox";
> > > +			reg = <0xff 0xffc38000 0x0 0x6000>,
> > > +			      <0xff 0xffc40000 0x0 0x6000>,
> > > +			      <0xff 0xffc4c000 0x0 0x2000>,
> > > +			      <0xff 0xffc54000 0x0 0x2000>;
> > > +			reg-names = "local", "remote-icu0", "remote-icu1", "remote-icu2";
> > > +			clocks = <&clk CLK_MBOX0>, <&clk CLK_MBOX1>, <&clk CLK_MBOX2>,
> > > +				 <&clk CLK_MBOX3>;
> > > +			clock-names = "clk-local", "clk-remote-icu0", "clk-remote-icu1",
> > > +				      "clk-remote-icu2";
> > > +			interrupt-parent = <&plic>;
> > > +			interrupts = <28 IRQ_TYPE_LEVEL_HIGH>;
> > > +			#mbox-cells = <1>;
> > > +		};
> > > +
> > >  		ao_gpio0: gpio@fffff41000 {
> > >  			compatible = "snps,dw-apb-gpio";
> > >  			reg = <0xff 0xfff41000 0x0 0x1000>;
> > > -- 
> > > 2.34.1
> > > 
> > 
> > Reviewed-by: Drew Fustini <dfustini@tenstorrent.com>
> > 
> > dt_binding_check and dtbs_check are clean when I apply this patch to
> > v6.13-rc1. There is trivial conflict due to the gpio node label having
> > changed. I'll resolve it when I apply the patch to thead-dt-for-next.
> 
> I've applied this patch to thead-dt-for-next [1].
> 
> Thanks,
> Drew
> 
> [1] https://github.com/pdp7/linux/commit/98064af36cbc0c216d0a2d11da5e3746a57ccce7

I forgot my SoB so it is now a new hash [1].

-Drew

[1] https://github.com/pdp7/linux/commit/c95c1362e5bcd90c45987828bbef02236d181ffd

