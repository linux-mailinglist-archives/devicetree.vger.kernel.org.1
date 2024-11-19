Return-Path: <devicetree+bounces-122654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE869D1CE0
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 02:02:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 373D91F221E0
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 01:02:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAC7228DD0;
	Tue, 19 Nov 2024 01:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="21OLLctN"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4460288DB
	for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 01:02:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731978131; cv=none; b=gzRPEP+vyG37YOHBAkH1uPqIZSYwBsbgeSbphIKvuAbip5jyaQ+r0hUzEbQvLA+NiU3Pa+Uo74thUo15gQRVJzf4aP2xiYZZUNsd3Wx0p1QzVPc3nC1l4aBY7tjthAJtFwmxMJ8qR1FT9vz9JLUoDJfBuGky5j3R6kV2dmvCsas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731978131; c=relaxed/simple;
	bh=kAv5NhqantdDk08ZDN5/5gFGPoKGisLpbt3E50GSP8c=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:References:
	 In-Reply-To:Content-Type; b=nyotZ6SThO4n/TMcIv4q/O3O50g3zusN3BASJWXeO/pZLzfi3u1+54D6oFumgl99q75VfqXQkgXLN20thZMV9fBCNHvWk+MpwvcQttr5BCWKz/RsaVHA79rTOBlfMBWveqljDiimEsoqVFEEqgxtXXnbIyRIYlrBr64a1S1bAtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=21OLLctN; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 62A2E2C035A;
	Tue, 19 Nov 2024 14:02:00 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1731978120;
	bh=nf0djNgBT2agldSCVj8orm4iStf2r+qGYtpC6iXd04Q=;
	h=Date:From:Subject:To:References:In-Reply-To:From;
	b=21OLLctNJKG8N8wK0diywjoSE1XqK1oFD6mNl5H6zD0f9+/8bkJCBvfM+7ZpBJMuP
	 PpE3ifAyqv0SL3pXHBHVhSTXpLqCVbEyLL6Lua/scEzJJ4CuQ7GUCkeFN36DLxnihW
	 C9PAZxugbtXQuOy9jiCp7jfT2dsAgOjqUpfcZUI6z7yYpNxIXpw6as8BYTfQ4IqcNM
	 QasTSR2VwuWO897UhIgDRBkal/rMurVWiPjglBeYe7mXPEy239sg5tJWzGjhLFcunO
	 I/LFqdzg1mqDJryfG8EqczgN4alqN2jry+pqw2XtUzuBT20And8ikUI6Yuqd4uG8Ie
	 XyPMr8aqHHgSA==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B673be3880000>; Tue, 19 Nov 2024 14:02:00 +1300
Received: from [10.33.22.30] (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 4CDEF13EDD7;
	Tue, 19 Nov 2024 14:02:00 +1300 (NZDT)
Message-ID: <a10d5a2c-ab7a-450e-8392-ab2d3877d58c@alliedtelesis.co.nz>
Date: Tue, 19 Nov 2024 14:02:00 +1300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: add realtek,rtl8380m-serdes
To: Markus Stockhausen <markus.stockhausen@gmx.de>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20241017162400.3881609-1-markus.stockhausen@gmx.de>
 <20241017162400.3881609-2-markus.stockhausen@gmx.de>
Content-Language: en-US
In-Reply-To: <20241017162400.3881609-2-markus.stockhausen@gmx.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-SEG-SpamProfiler-Analysis: v=2.4 cv=Gam0nhXL c=1 sm=1 tr=0 ts=673be388 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=IkcTkHD0fZMA:10 a=VlfZXiiP6vEA:10 a=62ntRvTiAAAA:8 a=gEfo2CItAAAA:8 a=oOM_Qn3OneXYDMm14GEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=pToNdpNmrtiFLRE6bQ9Z:22 a=sptkURWiP4Gy88Gu7hUp:22
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

Hi Markus,

On 18/10/24 05:23, Markus Stockhausen wrote:
> Add bindings for the SerDes of the Realtek Otto platform. These are
> MIPS based network Switch SoCs with up to 52 ports divided into four
> different model lines.
>
> Signed-off-by: Markus Stockhausen<markus.stockhausen@gmx.de>
> ---
>
> Changes in v5
>
>   - drop nodename
>   - drop items from compatible
>
> Changes in v4
>
>   - fixed addresses in example
>   - missing firmware-name denotes "skip firmware" instead empty string
>   - fixed reg porperty
>
> Changes in v3
>
>   - renamed to realtek,rtl8380m-serdes.yaml
>   - removed parameter controlled-ports
>   - verified with make dt_binding_check
>   - recipient list according to get_maintainers
>
> Changes in v2:
>
>   - new subject
>   - removed patch command sequences
>   - renamed parameter controlled-ports to realtek,controlled-ports
> ---
>   .../bindings/phy/realtek,rtl8380m-serdes.yaml | 59 +++++++++++++++++++
>   1 file changed, 59 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
>
> diff --git a/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
> new file mode 100644
> index 000000000000..13b11c011153
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id:http://scanmail.trustwave.com/?c=20988&d=s7qR5_yfAKsmGFhxaX2pyywaUF-Iy48veN3B0KHSTQ&u=http%3a%2f%2fdevicetree%2eorg%2fschemas%2fphy%2frealtek%2crtl8380m-serdes%2eyaml%23
> +$schema:http://scanmail.trustwave.com/?c=20988&d=s7qR5_yfAKsmGFhxaX2pyywaUF-Iy48veNvAgPvQQg&u=http%3a%2f%2fdevicetree%2eorg%2fmeta-schemas%2fcore%2eyaml%23
> +
> +title: Realtek Otto SerDes controller
> +
> +maintainers:
> +  - Markus Stockhausen<markus.stockhausen@gmx.de>
> +
> +description:
> +  The MIPS based Realtek Switch SoCs of the Realtek RTL838x, RTL839x, RTL930x
> +  and RTL931x series have multiple SerDes built in. They are linked to single,
> +  quad or octa PHYs like the RTL8218B, RTL8218D or RTL8214FC and are one of
> +  the integral part of the up-to-52-port switch architecture. Although these
> +  SerDes controllers have common basics they are designed differently in the
> +  SoC families.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - realtek,rtl8380m-serdes
> +      - realtek,rtl8392m-serdes
> +      - realtek,rtl9302b-serdes

Could you add the following RTL9300 variants

- realtek,rtl9301-serdes
- realtek,rtl9302c-serdes - realtek,rtl9303-serdes

They all have subtly different serdes capabilities do it wouldn't be 
right to try and use one of the other compatibles.

> +      - realtek,rtl9311-serdes
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 4
> +    description:
> +      The first number defines the SerDes to use. The second number a linked
> +      SerDes. E.g. if a octa 1G PHY is attached to two QSGMII SerDes. The third
> +      number is the first switch port this SerDes is working for, the fourth
> +      number is the last switch port the SerDes is working for.
> +
> +  firmware-name:
> +    maxItems: 1
> +    description:
> +      If present, name (or relative path) of the file within the firmware
> +      search path containing the firmware image to patch the SerDes.
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    serdes: phy@1b0003b0 {
> +      compatible = "realtek,rtl9302b-serdes";
> +      reg = <0x1b0003b0 0x8>;
> +      firmware-name = "zyxel-xgs1210-12-serdes.fw";
> +      #phy-cells = <4>;
> +    };

FYI some of my RTL9300 changes are now in linux-next. In particular 
5ec37be43fe7 ("mips: dts: realtek: Add syscon-reboot node") and 
c25e73d45d53 ("dt-bindings: mfd: Add Realtek RTL9300 switch 
peripherals"). I don't think it'd change this binding but eventually I'd 
like to add these serdes as children of the realtek,rtl9302c-switch.



