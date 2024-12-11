Return-Path: <devicetree+bounces-130018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3F09ED96A
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 23:15:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F3181886C8D
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 22:15:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36A491F0E5F;
	Wed, 11 Dec 2024 22:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="ULa7wd4N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CEF91F0E50
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 22:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733955306; cv=none; b=uMOGhsWckNLTdrCs8sYn3qEbWZnjWs25tGYBFtk2SKiUjgE2ooGZDorXCpGFKOZbOc/z2VDq8Uer4juzAKp6Vi8yb9mDeHsbV6d/4F4okk7bLbNfpvZ5RfUfm9vdh68plzvnsbX2qyx+Gm3i4UTIHZvR5gI2qhnir5uyqTxFhCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733955306; c=relaxed/simple;
	bh=oB07gn9pqpSgUy9iB+7ERltxmhD9+hy9AfchbX0xjA8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CRxDy8TDNFgnhOXb2vp41f0iLPv68xquzExTC+2FCZ5YD4P4s9vYDpz0lHoh5ISTj/zDIxrrb9oZw6K/2oTTo2Vkem/vt01KohoWmjPG8YXmRVtsM8rL2SWvVMK0JXyJFL6OiY91deIkA/00CUZDU+t0xfp6r/DDm4GHTrSeZl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=ULa7wd4N; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-7fbd9be84bdso8801a12.1
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 14:15:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1733955304; x=1734560104; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=L3bvWRkboCH041Q0f62pL6WYiocCI+DadvD/PAjyygU=;
        b=ULa7wd4Nq1wUGxlkkbPXrHx9F+YOGkgJoVFGKp7WocwO8S7jflVKqqsGaJzfY3ZMqI
         rs156QLObNvvla+/Uf9nr3P4TVwvAH3YECX7w/msvUCZAe0h/HusXQc5G8NB5AuNzxlM
         Lg84IWevj1ZjmEW717HbMjFyj3/3azq3NfgDYfC7nsCVu/g3iAB83Z16I6KOrywjjK3F
         UkC5HmylPxRABmcFHWSRwyiJn7qBX3zsjICIGIVtVyO7NbwqeE+BCy6IoSnMAinheWEe
         coYIpJfA4gKARBqETvAFfUCIGJK12XZdrXJB79wB7x4ETZzKxOkAvI+/jiykCs/74PT1
         BZbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733955304; x=1734560104;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L3bvWRkboCH041Q0f62pL6WYiocCI+DadvD/PAjyygU=;
        b=LWBNleKzQSfe+iNW4kcdgq6L+Kyw0O+6nsIfkdjkg8/x/n7ls41Cckh7xUMn0aXzpl
         TqydhEN0c+6L5DAZ8pwurGqOKLCKZPhp+q7mUtukFkhg/VXcHgpFYHWyTHKNL49FmxLU
         qPVokXPTM0B+aPKKjVqjO/hCs/f+RpgKsHtoPyZ652a+3xaKdfJ5nOHXQsWIQlHd5vPl
         YgaIyQEJBj0V4/qr0GlDcZNcxEPasplonQxhSLxUEWC+8GquL8Q89iq/c+FxNj1ZoN1g
         E35hHsuaQCu7aGtE9LolGfUWADSGlJasT0F3b81T3P2xL50NYjExkFY7tn7y1Lep4PoS
         SzMA==
X-Forwarded-Encrypted: i=1; AJvYcCUgsDJMtbcFzVMel3b8+rLNCMXj7WpwxTMG2R00mOjOfaqHr3Fv1YQxG4Wtx+7WcN0Wyz3s0/UKEPrT@vger.kernel.org
X-Gm-Message-State: AOJu0YxTNXmXh1Ytqjk/qz3PbIc3zgm4ZNrPjgYeRoZAydC8WLrr7T9N
	SVpwLNOLoeh+Bn5zxkW5VGzhH8NXu8Rz3l5D1gwg6qVwQGGs5klNQnha5s+dKlg=
X-Gm-Gg: ASbGncucvP4fyjZ1iiUc7eeN3FO/QTe1uZcrI9/eh58pYQirNW4Gov8TZnOxxP6DtMu
	8t1OVJEPT6QhlaH5Dp6Oss517YW+uYTUOr8BsCa9z7EPAhtyO8agIIUYvFb2w5WJugYZ74HpQza
	sHuqHhtYTo0bTaXiQPerKkZCPDVETlI583Gz6mB7UFdGuy3FO/qhc3pizdDB0aaxUCROH4alTTG
	G1ugwqwe4c2+PU5faX9Oa5UpISzgL7lLCSJXUcnOR7BGOWMDp20gvF53zz33l7VRGAJamEd2jBs
	jA==
X-Google-Smtp-Source: AGHT+IEb6jrcS620SuawsDm8dcAts71In8z21uu+C1uHb7i7S2+w4kvORWkHg4Zn3dKoRKn7AByUgQ==
X-Received: by 2002:a17:90b:4b01:b0:2ee:863e:9fff with SMTP id 98e67ed59e1d1-2f127fa5c8emr7725668a91.10.1733955303743;
        Wed, 11 Dec 2024 14:15:03 -0800 (PST)
Received: from x1 (75-164-218-15.ptld.qwest.net. [75.164.218.15])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f12d32170dsm1630237a91.46.2024.12.11.14.15.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 14:15:03 -0800 (PST)
Date: Wed, 11 Dec 2024 14:15:01 -0800
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
Message-ID: <Z1oO5ewIOMFco4KI@x1>
References: <20241104100734.1276116-1-m.wilczynski@samsung.com>
 <CGME20241104100801eucas1p27cd0d7b9b5b4500604470664884c42fb@eucas1p2.samsung.com>
 <20241104100734.1276116-4-m.wilczynski@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241104100734.1276116-4-m.wilczynski@samsung.com>

On Mon, Nov 04, 2024 at 11:07:34AM +0100, Michal Wilczynski wrote:
> Add mailbox device tree node. This work is based on the vendor kernel [1].
> 
> Link: https://github.com/revyos/thead-kernel.git [1]
> 
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---
>  arch/riscv/boot/dts/thead/th1520.dtsi | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
> index 6992060e6a54..89de5634d3d3 100644
> --- a/arch/riscv/boot/dts/thead/th1520.dtsi
> +++ b/arch/riscv/boot/dts/thead/th1520.dtsi
> @@ -520,6 +520,22 @@ timer7: timer@ffffc3303c {
>  			status = "disabled";
>  		};
>  
> +		mbox_910t: mailbox@ffffc38000 {
> +			compatible = "thead,th1520-mbox";
> +			reg = <0xff 0xffc38000 0x0 0x6000>,
> +			      <0xff 0xffc40000 0x0 0x6000>,
> +			      <0xff 0xffc4c000 0x0 0x2000>,
> +			      <0xff 0xffc54000 0x0 0x2000>;
> +			reg-names = "local", "remote-icu0", "remote-icu1", "remote-icu2";
> +			clocks = <&clk CLK_MBOX0>, <&clk CLK_MBOX1>, <&clk CLK_MBOX2>,
> +				 <&clk CLK_MBOX3>;
> +			clock-names = "clk-local", "clk-remote-icu0", "clk-remote-icu1",
> +				      "clk-remote-icu2";
> +			interrupt-parent = <&plic>;
> +			interrupts = <28 IRQ_TYPE_LEVEL_HIGH>;
> +			#mbox-cells = <1>;
> +		};
> +
>  		ao_gpio0: gpio@fffff41000 {
>  			compatible = "snps,dw-apb-gpio";
>  			reg = <0xff 0xfff41000 0x0 0x1000>;
> -- 
> 2.34.1
> 

Reviewed-by: Drew Fustini <dfustini@tenstorrent.com>

dt_binding_check and dtbs_check are clean when I apply this patch to
v6.13-rc1. There is trivial conflict due to the gpio node label having
changed. I'll resolve it when I apply the patch to thead-dt-for-next.

Thanks,
Drew

