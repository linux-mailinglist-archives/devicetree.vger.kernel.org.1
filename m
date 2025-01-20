Return-Path: <devicetree+bounces-139595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3681A164CD
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 02:22:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C9C811655F5
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 01:22:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88051610D;
	Mon, 20 Jan 2025 01:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="mQKioX/u"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 983F017BBF
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 01:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737336129; cv=none; b=FQwc3RiYzMiiqGy462MayZJK4jaAWh+UJC+ADx1eT/tP//bh8Fsvz9ltCJqKzt+MIO232aXEbTpACBQq0ZW7dBvNv2WAuRzHe9t1khgkKSZu4SCsU5Mwqkjyly+uNq9JUvnuRCs0Q0fjNI4q2FAPwKmWqXZ/LIG+811TJ73KW3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737336129; c=relaxed/simple;
	bh=Nb1cZ52K5GoYoMb2oJRgcCtf7Z5fmBToChetgfhEYJY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gcKNidAoC/Vrg58eG5dHdub+KtwhVX+hm1y+q7ral3oDhD6scasYot7Hc1gwLwLZS2Qta+0BdKlMilyH/lAiEFj7q8K1qeGv6DtNnlVwF0TzGgMljh8zGW9oh4dTCDdC/baTe9SyU+/dGQxw0YiABoWYe+FL2JeoBzlq8ZhiWoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=mQKioX/u; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id BDC0F2C00BF;
	Mon, 20 Jan 2025 14:22:05 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1737336125;
	bh=fSmrH+Bc5+wNdUMSwedjbi/x6w0nObT06suJ15cub3E=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=mQKioX/uGm/nWWKbrOydUsm77NKkJMH/bZU9JnU6ZybTFuNModmJYW+r/tgLVZrJW
	 67fzI1JfPE4wBGqSB1SgRxgTlQl/0URn8pbQpz7mg//xMbJoMuiX3ECAYDZme5imiW
	 jrvbOCbeIdtowti56KxoHHoC9n9FHnx0MGRAZANQSshLrtTuZCDTyvio99zvZkrls6
	 Lc/vZoBKnhR9TPMM7MaLu9opkFN2ovMMRAcZqDsI819DK55OLmieT1Kuk3dfwNCRSN
	 wIxLFZ9HDNeO1S0IWksopzqH0Rz87q0IXZsKykZHYj0kcqkuoonTAfx0CDZ7k7ZVt6
	 B3ob/YX31KwpQ==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B678da53d0000>; Mon, 20 Jan 2025 14:22:05 +1300
Received: from [10.33.22.30] (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 4A77213ED5A;
	Mon, 20 Jan 2025 14:22:05 +1300 (NZDT)
Message-ID: <35ef4628-370b-4155-94c2-58c049d7a48a@alliedtelesis.co.nz>
Date: Mon, 20 Jan 2025 14:22:05 +1300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH 3/9] mips: dts: realtek: Add address to SoC node name
To: Sander Vanheule <sander@svanheule.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 devicetree@vger.kernel.org, linux-mips@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
References: <20250119183424.259353-1-sander@svanheule.net>
 <20250119183424.259353-4-sander@svanheule.net>
Content-Language: en-US
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
In-Reply-To: <20250119183424.259353-4-sander@svanheule.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-SEG-SpamProfiler-Analysis: v=2.4 cv=BNQQr0QG c=1 sm=1 tr=0 ts=678da53d a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=IkcTkHD0fZMA:10 a=VdSt8ZQiCzkA:10 a=jU52IrjdAAAA:8 a=WdaVKt0EYc3p0frHmlgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=udjdHy_fWrGJRxLc5KTh:22
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat


On 20/01/2025 07:34, Sander Vanheule wrote:
> Although not strictly required by the simple-bus binding, add the bus
> offset to the node name to be consistent with other nodes. Also drop the
> node label as it is not referenced anywhere.
>
> Signed-off-by: Sander Vanheule <sander@svanheule.net>

Reviewed-by: Chris Packham <chris.packham@alliedtelesis.co.nz>

> ---
>   arch/mips/boot/dts/realtek/rtl83xx.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/mips/boot/dts/realtek/rtl83xx.dtsi b/arch/mips/boot/dts/realtek/rtl83xx.dtsi
> index 03ddc61f7c9e..1039cb50c7da 100644
> --- a/arch/mips/boot/dts/realtek/rtl83xx.dtsi
> +++ b/arch/mips/boot/dts/realtek/rtl83xx.dtsi
> @@ -16,7 +16,7 @@ cpuintc: cpuintc {
>   		interrupt-controller;
>   	};
>   
> -	soc: soc {
> +	soc@18000000 {
>   		compatible = "simple-bus";
>   		#address-cells = <1>;
>   		#size-cells = <1>;

