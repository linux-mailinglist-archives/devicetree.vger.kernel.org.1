Return-Path: <devicetree+bounces-143150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A124A284EA
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 08:24:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D0FD13A503B
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 07:24:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D3D62288E9;
	Wed,  5 Feb 2025 07:24:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast1.qq.com (smtpbguseast1.qq.com [54.204.34.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1A922288DE
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 07:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.204.34.129
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738740290; cv=none; b=LpK9RvE3ZKhDP+GKy74IiDqlVV8+MLYgIKpFWLr7VCm3ri3/qTa53PfhMdCO3XOpFkX+jWe6KLS8B+MuK24MPxJ6Bwn8EXxL6GywLY14vM5pVQCmzTCehpGaXVNkvJO14f8VW4HkHyKsaEc1mvDNY5xdlD/n0mQMUGMwCIdCcpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738740290; c=relaxed/simple;
	bh=Lk/11lAIKFzIP8/qA85loJm3Wscdj7M9rdvYTQp75jY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RPKGrJBV1o7t2g9TJqM2zJBoe1JIj8+jxIN2Ccvb630ZySEe+15TYPmcoi4lJlRiF/4pLYbLdyUqq9sO/DrAKNvYQ977dijI4/E7Jgqh51XdFlx3mxr9QAxQmsh9qzY8mBc/LDERa44ir1H/ZWENx+uNA6L0h5s+UZPBjd/htyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.starfivetech.com; spf=none smtp.mailfrom=linux.starfivetech.com; arc=none smtp.client-ip=54.204.34.129
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.starfivetech.com
X-QQ-mid: bizesmtpsz10t1738740211teyq6f
X-QQ-Originating-IP: eYyzO5QSXnnXIwL7uGmtDShdouU8nJoM7QM9YL0sLyQ=
Received: from [192.168.125.117] ( [113.72.145.41])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 05 Feb 2025 15:23:30 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16571871631840008166
Message-ID: <EA1B602AAF2011A6+78e19956-822a-46a5-8f67-c99ee79510d1@linux.starfivetech.com>
Date: Wed, 5 Feb 2025 15:23:29 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] riscv: dts: starfive: jh7110-common: assign 24MHz
 clock-frequency to uart0
To: E Shattow <e@freeshell.de>, Conor Dooley <conor@kernel.org>,
 Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org
References: <20250203013730.269558-1-e@freeshell.de>
 <20250203013730.269558-4-e@freeshell.de>
Content-Language: en-US
From: Hal Feng <hal.feng@linux.starfivetech.com>
In-Reply-To: <20250203013730.269558-4-e@freeshell.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:linux.starfivetech.com:qybglogicsvrgz:qybglogicsvrgz5a-1
X-QQ-XMAILINFO: NhdiEwnVOUqElu8RlIrSrq6wW33PQPQxE+mopJvaL0gDADNO/nTo6RLC
	ymWFITs28FUnujYHeDy0VRt7HgSOMQD1/beGj0HcJ832rVijeJX1MjKB3NpNxaDx6dIhzlZ
	oPGsxUHvkTWxMHGFNa1RS3VHfTWh0a0Q8tyUJ0tLgYTQG7I3M6DGlO+J6qG27wnMqw8+3s4
	taETCjZpnYgyisT1ne15fI3c3wub81mlJm3iiWFn34nniPpZM1knNNMl5+noDSvzz79lJUG
	m76mvOmCixEEwbnQfwTpnUhn9Vf36KC3zSZpX1HxLXuTrdJ1CX6IxsqgOiOOO01FJmtjEr0
	3Ds70ev0DG9swHuuJQfC8AIgz4fdUIklhuhsE/k0k6fbc5OQqGfbpdRjTN8zDYJkHv/eR6A
	EQ9TfgecaLL6+O+5F8VMelgTTBzjb3LN6ULLbpPvfFoQ5FbzwBO4LtQ7ZkSf/74lnL1fABN
	4fxYcT+5bmSLQWDQUhnHhtD7id/eLvzoO0DTTGfs+isCKbYNAsKzmcaEaw9401fwhQj0VjG
	R3eXlE4FqnY/br09u04vPpIvzXckAbDVJt3RUPM3ADTFQDrERwVBh5DIRsbh8gtS/TmHAzt
	3CUZlx1TmdXxlR+OyozyOsAWM0mbfQLiACPmg1oUMuJL/ekBi4HqWukiKKpXzPQ6fbWRLmb
	6hIndQVUq3XWpU+b+/zeo2SUysv2AwJWvewjAl88Pv/UB5q5OtaCy//CBpJYrtVijYuBdfs
	t/MIbi/oKw0Teud/ZLfpMJ0B3bG1V3y4By52dmuU4xcayl+HFoeuOOfkjJkGvwgNVnSIJov
	IifK85KEbA9i4OpVFzk3mCcWEcFvLa4x7rD535VqGhu3d0qTdFkY9Y3i0pHvNHhx/y7+kOX
	5zD27Q87Tw2wSClDD4IDWF0nf5VgwlGhxdTXFjxByPWuOFpqIAZ2CctvohgIxg98qWfj55g
	6mYirkkSS6+Npi+ku/Bqvfi6C6jnLStYfmy8=
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0

On 2/3/2025 9:37 AM, E Shattow wrote:
> Set uart0 clock-frequency for better compatibility with operating system
> and downstream boot loader SPL secondary program loader.
> 
> Signed-off-by: E Shattow <e@freeshell.de>
> ---
>  arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> index 8a59c3001339..6bb13af82147 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> @@ -635,6 +635,7 @@ GPOEN_DISABLE,
>  };
>  
>  &uart0 {
> +	clock-frequency = <24000000>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&uart0_pins>;
>  	status = "okay";

Reviewed-by: Hal Feng <hal.feng@starfivetech.com>

Best regards,
Hal


