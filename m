Return-Path: <devicetree+bounces-71109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9028D5CB5
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 10:29:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E6486B24F71
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 08:29:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D153B145356;
	Fri, 31 May 2024 08:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b="n9Au25O/"
X-Original-To: devicetree@vger.kernel.org
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 710E3144D3C
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 08:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.26.50.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717144150; cv=none; b=D3zSw1eZ0/Qt3WmNtxenWJSOftKIR1Fq7LfOnsFm2CKWD9s77nFdo0pdJ3lttceR+6Cy+ZRuEMlRy1VAnCV9rWyM1Z3vexgqMxnxCSdpZeejQc1wtrt4WGYsCf+50i1tBgmQXDeG6oGe4rWK/XYzCUNCahaqp1cJKlhek1NzIms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717144150; c=relaxed/simple;
	bh=+GaXNE1g5WYzxzy9PMj8K/xZ2cgNio4/vWu4zqYcv08=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=HBxzW5JWfeWHuWWPSqwcJmP0ecnSazjwEhCAxyQ+RSa4F2tq1d6m5fsINhmQRL5oKt3EVqYL250HphFLcZ6Pkh6p3YR6luQ0c8QAGAjZ2WvED4eoIIl0ovmp/OGu5FbG54UgX4wU72ogFIzGiIFquEgcoBtiU0OPW5q4Es2tgBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b=n9Au25O/; arc=none smtp.client-ip=91.26.50.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1717144134; x=1719736134;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=+GaXNE1g5WYzxzy9PMj8K/xZ2cgNio4/vWu4zqYcv08=;
	b=n9Au25O/6crd45ZIIbaY0b1s/BW70sR/0azeAeklOXZNuOOPqw/JhS2QUokn/xvc
	1bOIAYrJ4qm/92NaxgVfV086FQSxuc1o9sMI4zOWwEmDDQQY0xEiUK6R5k2I0pXC
	yTSJEAN731UJm9uZVDHcDkNBZYpcrTj1k+1qhNmBbtc=;
X-AuditID: ac14000a-03251700000021bc-60-66598a467d90
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 34.55.08636.64A89566; Fri, 31 May 2024 10:28:54 +0200 (CEST)
Received: from [172.25.39.28] (172.25.0.11) by Berlix.phytec.de (172.25.0.12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Fri, 31 May
 2024 10:28:53 +0200
Message-ID: <bd062517-4756-4ba3-b937-c3a2db7a9855@phytec.de>
Date: Fri, 31 May 2024 10:28:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] arm64: dts: ti: k3-am64-phycore-som: Add
 serial_flash label
To: Nathan Morrisson <nmorrisson@phytec.com>, <nm@ti.com>, <vigneshr@ti.com>,
	<kristo@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <upstream@lists.phytec.de>
References: <20240528225137.3629698-1-nmorrisson@phytec.com>
 <20240528225137.3629698-2-nmorrisson@phytec.com>
Content-Language: en-US
From: Wadim Egorov <w.egorov@phytec.de>
In-Reply-To: <20240528225137.3629698-2-nmorrisson@phytec.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: Berlix.phytec.de (172.25.0.12) To Berlix.phytec.de
 (172.25.0.12)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMIsWRmVeSWpSXmKPExsWyRpKBR9etKzLNYO11WYs1e88xWcw/co7V
	Yvnn2ewWL2fdY7PY9Pgaq8XlXXPYLN78OMtk8aFxM5vF/z072C2636lb/D/7gd2B22PTqk42
	j81L6j36u1tYPf5cfMfqcfzGdiaPz5vkAtiiuGxSUnMyy1KL9O0SuDLW3jzAWnCBveLK4T1M
	DYzz2boYOTkkBEwkvu98x9jFyMUhJLCESaJj3i0mCOcuo8T5i6tYuxg5OHgFbCQubVcGaWAR
	UJW48GUiM4jNKyAocXLmExYQW1RAXuL+rRnsILawQKTE91czmEHmiAgsZZR4vGoH2FBmgTZG
	iScPD4B1CwnkS+x9uQ2sm1lAXOLWk/lMIDabgLrEnQ3fWEFsTgFbiSV/etghaiwkFr85CGXL
	S2x/OwdqjrzEi0vLWSDekZeYdu41M4QdKrH1y3amCYzCs5AcOwvJullIxs5CMnYBI8sqRqHc
	zOTs1KLMbL2CjMqS1GS9lNRNjKCIE2Hg2sHYN8fjECMTB+MhRgkOZiUR3l/pEWlCvCmJlVWp
	RfnxRaU5qcWHGKU5WJTEeVd3BKcKCaQnlqRmp6YWpBbBZJk4OKUaGAtWFKTtrSjX9vgT3iT4
	N0thhoDr3ZKYgPlTdfqj7Ffvil550f/DuUyRozMKX00NPeTzovWPrL9Q6WQxzacHJC89euKx
	66VwVbVa3tu33I4n3r37y5+WX9h9zolV0yT85yJeu2mcH2fdiJ709Oy6RgvbDXyJ8pHFvd9N
	mOV3CCftMBVJXzPzgBJLcUaioRZzUXEiAKYAZZ+mAgAA



Am 29.05.24 um 00:51 schrieb Nathan Morrisson:
> Label the spi nor as serial_flash. This allows us to disable the
> flash with an overlay common to all am6xx-phycore-som boards.
> 
> Signed-off-by: Nathan Morrisson <nmorrisson@phytec.com>

For all 3 patches,

Reviewed-by: Wadim Egorov <w.egorov@phytec.de>

> ---
> v2: No change
> 
>   arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi b/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
> index 125e507966fb..ca0bbf21f7fe 100644
> --- a/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
> @@ -296,7 +296,7 @@ &ospi0 {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&ospi0_pins_default>;
>   
> -	flash@0 {
> +	serial_flash: flash@0 {
>   		compatible = "jedec,spi-nor";
>   		reg = <0x0>;
>   		spi-tx-bus-width = <8>;

