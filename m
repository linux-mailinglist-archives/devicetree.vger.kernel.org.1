Return-Path: <devicetree+bounces-138369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C359A10208
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 09:29:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4E1FD7A42CB
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 08:29:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB953284A73;
	Tue, 14 Jan 2025 08:29:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgeu1.qq.com (smtpbgeu1.qq.com [52.59.177.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48ABB2253F0
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 08:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=52.59.177.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736843378; cv=none; b=I2K9a5YqH9PD/+QsK/xzYvaKaX+puVjStxWxTlpMkk/0kF3k/J9XugkKMm6y/Y5dAYBoQanj01WDLiT1TwLAON4Y7uXV07Q/7Ef27Yv8mtXHdRa59ID913CRTiDiUcYOS/HqBnRgPCSdr6v4oln/qHcETkt48yys8GWKZvLjHzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736843378; c=relaxed/simple;
	bh=M+TzTTS/I2FT9FjKgNwhajGswlMqhAHfmobdUkh+PSY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bCv/hSt3vX9Vmx3m7N9F75iJru2ZJjpIeRjSBkMLFfsD2aleAwRlODivwSAJEJY4Iqg+mOUkr/raUdoK9ntrgEl8s0VTWX6I0E5Uz/ABH7glAm6k3bGz/cLtS42nDuBeq6tnU/yu7o2bbz3eRWJhdYaKUoZng7On8NeEDL/oGxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.starfivetech.com; spf=none smtp.mailfrom=linux.starfivetech.com; arc=none smtp.client-ip=52.59.177.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.starfivetech.com
X-QQ-mid: bizesmtp91t1736843306tynlkxka
X-QQ-Originating-IP: XFGGCXiBFBARdGKOy5veaGmh3Cnn/ltEdeer3zqsjS0=
Received: from [192.168.125.117] ( [113.72.147.174])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 14 Jan 2025 16:28:25 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16871771307324602257
Message-ID: <FA848EA9F01517AB+db5dae96-9f6b-4800-851c-d1e764703cf8@linux.starfivetech.com>
Date: Tue, 14 Jan 2025 16:28:25 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 4/5] riscv: dts: starfive: jh7110-common: add eeprom
 node to i2c5
Content-Language: en-US
To: E Shattow <e@freeshell.de>, Emil Renner Berthing <kernel@esmil.dk>,
 Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20250102194530.418127-1-e@freeshell.de>
 <20250102194530.418127-5-e@freeshell.de>
From: Hal Feng <hal.feng@linux.starfivetech.com>
In-Reply-To: <20250102194530.418127-5-e@freeshell.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:linux.starfivetech.com:qybglogicsvrgz:qybglogicsvrgz5a-1
X-QQ-XMAILINFO: OE3tIrIEWSq4Pivs8JFmfcsF3un/I6SCv1GPzB6TFdn7Z8TSHcQ0imDV
	LTuTNh/rBgPBPlgznOOYpmK4WqYxYU3+2DhtZRk+dN9FT8xrfG6Qne4/oTlf0BrtURZFmYT
	CQBH6gzkiXf/8Q1p1mw4+LZ5YVsIXsPqnnDrGwspJSCKpb4HNjVZrY8/em4VQZJ+3Lnmw0O
	VsHzT+GgjXy+3zwAy7Y/OoIyBebwFdAiJFFs4FKCdkdeNxwUCT9X/GglERCStVN0I65IVfX
	FA0S74XGvSkfKfj830opsmiHFFjisn+ZUQRQrWyYkkB9cYtBpra7zShhq+JNM4u+ku4AtVE
	XSFdOP4uSFKD6Ky4TREgSKlvFJ2fzg//x+QfdD5fyglzAeENHbeKwng2o579bOf9cNU2Qjb
	8FfwEf7OV0QHV/MF6NEJogDWbxNdSofYD9cLI7f+klpmKCiFpFht4v2q+hrMN6kVLaAHU+H
	HXtdPq50Fgkt6XqFwU0A+J5feLh/6CrT6ruMffEBbXqwxT6hqe56DcCNDEbCgskaC1aYbNL
	lrr8+sPxXK5oVIkuI+vg+WrG7v+0T2hshEmxSU3r/ZUHy8lQNjyiOlMDuE50eaxVayKAH28
	I4wCsI6AtiJ73u+1tRR8ZFmPmRMxWAYe2j+QxR14navTU2+TmZ668auKmJM208unU2g4Xa4
	AdgX2a5KtZ5JVpiq7U3EXq+HRMLt13viMOXJsANZlUigloECUSRvsO9XVgfJLpvarqrDHTW
	PWatG+ICpkMz8E4RAMLj9gdlQ8Ooh2BkM5dC0R4HbCiDEv0VHO2fXcpWc1JPRP7XgB+LcPf
	VP/OIUCgqvPli/h11sbMuhxpTGNoxoACYqDz9gwHfvqtdyyTYNcsE/Ud4CW4bpebsR4V/Xr
	oxOEvTsYVXxlybl41RvM4Yi05f+wkIBznMojM8n2kgqZz80iPGoviHGHCKB7uPx6juWPNa1
	NDl9K4FXtGrmo/VM1qjIrBMnHDpN6Mo4fjkotm0q2dEBdKq+M0An0sgnk
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
X-QQ-RECHKSPAM: 0

On 1/3/2025 3:45 AM, E Shattow wrote:
> StarFive VisionFive2 and similar JH7110 boards have an eeprom compatible
> with Atmel 24c04. Add the node so this may be used with the at24 driver.
> 
> Signed-off-by: E Shattow <e@freeshell.de>
> ---
>  arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> index bf2f0c34ad4e..ad5cb85ebc59 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> @@ -245,6 +245,12 @@ emmc_vdd: aldo4 {
>  			};
>  		};
>  	};
> +
> +	eeprom: eeprom@50 {

The label "eeprom:" can be dropped if no one use it.

> +		compatible = "atmel,24c04";
> +		reg = <0x50>;
> +		pagesize = <16>;
> +	};
>  };
>  
>  &i2c6 {

Reviewed-by: Hal Feng <hal.feng@starfivetech.com>


