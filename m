Return-Path: <devicetree+bounces-88327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BF593D2F9
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 14:29:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B3DD41C225ED
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 12:29:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93ADD17B42D;
	Fri, 26 Jul 2024 12:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="b8jpo+An"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B154E57E
	for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 12:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721996986; cv=none; b=rR2/Hzh9HRMjK9IYh6nqUedxj+O7wl5o0goO2HmSAUFEFqsvq/cBsQ3l7LSMvUUetPLLav5qy31R2huO+XfvZFfc0GSCkrRaJn0CGjO0Wa18CF0Ov2qTFxxnw2YwBu6dq4d3Gcr2O2IbUBVJiySy1+/FUp8pI/LnqbxFSPjbYJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721996986; c=relaxed/simple;
	bh=v4qjjUpu5k/Fegvrs8GbMmn+a0qL30i9outYfIDOKNg=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ph91fe6dfkGH1H52gbTyBEKAk5R10YPJCB/LxMZ9Jj3LXd5LtA+NCC7S20Ya0hVbh6I4pwi+ZA1vjgJ4QhBGu7xWrGxV96Xwnkl7vKQNaMccUh0/QtwBBD35NPqXJl4tiell5E+dh546KedP6iui4WgCaIVYuE+yFCH6Xh37W7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=b8jpo+An; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 8B6CA3F59C
	for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 12:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1721996981;
	bh=9LmZmw6NCs8eTK1rP6m6Jdcuf3clCtsx7hFAo9ghIiY=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=b8jpo+AntFyVkPdK3i0bWPGc6Cc99tnRets83/As9EQO2hY07wNiJCiXhcu+4Lp9f
	 M0vZaVeUJnLfIdsjSnUb0coKcgjZBIbeEMebFaDUFjtoiVULzt82dpdYJrsRlTI7HI
	 pY/5k5h5bc6Y3YV59dTwsD5h1vnf+FXjVSfobTNctkJGBYXD7lY1cFo6vzoMjVWav7
	 FrAnCDHuaAkfL+Ctr1feQRr+7xmsZH3nqej1m+N3kDxhMKB+csfG9fPNkjwwOWFJ4z
	 6af2FhXZrOHDcbQM6RDYznZk52xGKZammWc07gZ1tOON1EUrqqubTM472Hpv9tXnKc
	 ym+M13WK+BRLw==
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7a1d690cef9so113372585a.0
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 05:29:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721996980; x=1722601780;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9LmZmw6NCs8eTK1rP6m6Jdcuf3clCtsx7hFAo9ghIiY=;
        b=g//TwUcN7cWHqHzrPwk2JigYSbhZvDWuNLjQ1O8uY6ssG4vj190VwdOdxQZqMnu4yD
         Aej/jMbW7iS1tDRAATqXujMI4Zzv0I/dhKfv/t/HH1dVx/jLZx/5j5/HXbdOkA8AI/pU
         EBkUDmNfhB2VsWSq+8JfRzPhVvch0seRsWk0xR6Kg2vuQZQmk8gx5Z0vBo8f6fi6//Ss
         Ce5bresQw1+WoFNeZvxJQCf3rtevie6C19WUshzcUajsAbbG3eBZw2tVM1SweLH/Mzf7
         AfBto+KSU8mBIILlK9Ag8hkQYr4PhTUyqf4VYEeRVldJ1/1Q/6jz9eLSklzSlFNk+0sF
         +i2Q==
X-Forwarded-Encrypted: i=1; AJvYcCV/4V1zNcx9ggDekJzXcGH3N3eV4BdUfd0aU3K4l0NrrWaay6jchNIHZR3I4OGpdAq16L9ry79YlSpg6H8B6KczYucH6nePIsSEmg==
X-Gm-Message-State: AOJu0YyMWI0DR+CJEx9DqfgdfeqbwpaFn9PsTXKALSraRR4iPSl6ddoY
	SYQlc7Sx+KGLbsEHcoU++2XlskGXKJlODUmjtCJ+IJErzyepXXIX5Z/o3PJh8KMcZxLGF3Uo6KC
	JMKRY/zt7997Wi7wRFMMaNd2iFm9DN6QwroArplkYkUEyBaGE/NXW5TDKTut3QYrn0sGz66i3jY
	vixmhWaXabGHdafumtaatzxmwDqy+EpG4U4f2Oon8A1ybCWVE0aA==
X-Received: by 2002:a05:620a:4484:b0:7a1:df6f:3632 with SMTP id af79cd13be357-7a1df6f4c34mr312157685a.32.1721996980422;
        Fri, 26 Jul 2024 05:29:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGV1mtLr9ByO8GYPcPzKfiGrDWu4OQDQV5IWb3V25ZQO93w1m0w8xqeuro6Hm7vzdR2YevzoHOr3qHn42Z+DA0=
X-Received: by 2002:a05:620a:4484:b0:7a1:df6f:3632 with SMTP id
 af79cd13be357-7a1df6f4c34mr312153485a.32.1721996980036; Fri, 26 Jul 2024
 05:29:40 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 26 Jul 2024 08:29:39 -0400
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240716-majesty-antler-d9bedc7fd0af@wendy>
References: <20240716-majesty-antler-d9bedc7fd0af@wendy>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 26 Jul 2024 08:29:39 -0400
Message-ID: <CAJM55Z9FAH-uiNmXDELM0gkYjHue+g8JQgOryxOCv4OXJ9f5EA@mail.gmail.com>
Subject: Re: [PATCH v1] riscv: dts: starfive: remove non-existant spi device
 from jh7110-common.dtsi
To: Conor Dooley <conor.dooley@microchip.com>, linux-riscv@lists.infradead.org
Cc: conor@kernel.org, Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	William Qiu <william.qiu@starfivetech.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Conor Dooley wrote:
> There is no rohm,dh2228fv on any of supported JH7110 boards - in fact
> the dh2228fv almost certainly does not exist as it is not a valid Rohm
> part number. Likely a typo by Maxime when adding the device originally,
> and should have been bh2228fv, but these boards do not have a bh2228fv
> either! Remove it from jh7110-common.dtsi - pretending to have a device
> so that the spidev driver will be bound by Linux is not acceptable.

Hi Conor,

This patch is correct, but as you mention the fake device was most likely added
in order to use spidev from userspace with random devices added on the exposed
pins. In case someone actually makes use of this wouldn't this be a regression?
What is the right way to support this?

/Emil

>
> Fixes: 74fb20c8f05d ("riscv: dts: starfive: Add spi node and pins configuration")
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> CC: Emil Renner Berthing <kernel@esmil.dk>
> CC: Conor Dooley <conor@kernel.org>
> CC: Rob Herring <robh@kernel.org>
> CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
> CC: Paul Walmsley <paul.walmsley@sifive.com>
> CC: Palmer Dabbelt <palmer@dabbelt.com>
> CC: Albert Ou <aou@eecs.berkeley.edu>
> CC: William Qiu <william.qiu@starfivetech.com>
> CC: linux-riscv@lists.infradead.org
> CC: devicetree@vger.kernel.org
> CC: linux-kernel@vger.kernel.org
> ---
>  arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 6 ------
>  1 file changed, 6 deletions(-)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> index 8ff6ea64f048..395436ec0f97 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> @@ -346,12 +346,6 @@ &spi0 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&spi0_pins>;
>  	status = "okay";
> -
> -	spi_dev0: spi@0 {
> -		compatible = "rohm,dh2228fv";
> -		reg = <0>;
> -		spi-max-frequency = <10000000>;
> -	};
>  };
>
>  &sysgpio {
> --
> 2.43.2
>

