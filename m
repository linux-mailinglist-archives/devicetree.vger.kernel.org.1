Return-Path: <devicetree+bounces-138349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 737C9A10148
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 08:28:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 33FC23A6E80
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 07:28:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 190531B4159;
	Tue, 14 Jan 2025 07:28:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgsg1.qq.com (smtpbgsg1.qq.com [54.254.200.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E59230995
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 07:28:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.254.200.92
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736839729; cv=none; b=QuppBVHOk3CK3teZFQoNqkCUgg6fwNfPMqLi6a6iACpumQssfpj6JCbpUw/v2xLsUcHtARySIa0ggsauiMYZz+gde+XsijU3gPTOjYIHOpYkbmw7UnvtfZTa42JIC7qELoUAx/vdyqeEoAQOwe6yq7GRJnoea3vhW37iuUbFF4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736839729; c=relaxed/simple;
	bh=Fp5XSrIJ0vBL7f9CdBFuUdgnU+xpQU+zczSp/4En7aI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N+iFUiXrX9zQilCyfVnZdgDyvgwRZe2yrzZ4SBdcSXXIh0BbUk13YKEd0xDUXwGVkmAJGMTA/WCgVPlqzpbTQ3P3l/5D5VGSRXDSM25r5tbXXFO46CRmlqsPWOlz/oQbHg0XDZuBqUPBvwinoKWPLQnzZH4Mc0BffNQCyFsOcA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.starfivetech.com; spf=none smtp.mailfrom=linux.starfivetech.com; arc=none smtp.client-ip=54.254.200.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.starfivetech.com
X-QQ-mid: bizesmtp82t1736839655t8w05rpm
X-QQ-Originating-IP: eGqhrEoWF6jWlA3opE70k2K13n+rCF53FvpGeyK1wHw=
Received: from [192.168.125.117] ( [113.72.147.174])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 14 Jan 2025 15:27:33 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2570354929066496579
Message-ID: <5F5ACE98B916A290+edc923d2-0ee8-4e41-8e69-f6603ef014fa@linux.starfivetech.com>
Date: Tue, 14 Jan 2025 15:27:33 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/5] riscv: dts: starfive: jh7110-common: qspi flash
 setting read-delay 2 cycles max 100MHz
To: E Shattow <e@freeshell.de>, Conor Dooley <conor@kernel.org>,
 Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20250102194530.418127-1-e@freeshell.de>
 <20250102194530.418127-3-e@freeshell.de>
Content-Language: en-US
From: Hal Feng <hal.feng@linux.starfivetech.com>
In-Reply-To: <20250102194530.418127-3-e@freeshell.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:linux.starfivetech.com:qybglogicsvrgz:qybglogicsvrgz5a-1
X-QQ-XMAILINFO: Nw9C1WBu09hPfjoibA9DYZG7811bQgKDg3An/sJdzTrYtmQP40fp8KCc
	SzR2sab/vA49s20HY8ASB23fROgkDrLhZ1FGyTAgOAP9nxX4DUpljLK/5OAc9YuS7pILAag
	KhrF4N9dibiHGSsPH6FY78084p/i6dlHV8Nx3z/4HMM4bwWu4sRBGaquzkDX6RA+AgE8gv3
	u6iT5wuG09lCyMkpbRP6kPH8U6+jmtMmKxUlOtmV6+J61CHVV619/LZErFxnKnc7VyIvZfs
	AHhfn2ckoyaja6HHjvJBdc3Cj8K4RPRPl2x/xb2w/1g675xBqQJ5SXwVZqv1utaj+nQiS+m
	Vm87HpY04EcQc9RwTcOX++w8oNjHNdH8S/IKJYNrMQ1oohTA5j8LfHCjb8Y4MLY3uyTqMGS
	nqNQ2V8T6yhnrr/1Fzdkl7lOszGIqKrz02QCVMfIPjC8B8rTqtA0j9dWzFpo0e62uR2fJgg
	vWizxcz8jUo5PxBX2bkN+/OqXhCofV81TRzB3BBicqezHDHvPN71VpOR/pugq/KgW1uAV1P
	Y5oLCxtDOFYkC8L8+I7UDPR9DmRpDsaO5MhRh1TWKsudlUWlq68qd8YkySjGGkQzdAO77ZF
	ElJx+EEFP3Je4X5wW2o3LMdEZ4Axr1cOScxu0qv0HkJhX5HPJfqK4xcufrtpfi4pANqE2y5
	cMcptJBhzWJBHCGV+bBDUxn7FNLYYL/uFizGXqyDuq13h6HQkUCc8gguN1Z6W1eNsek4taH
	C8fHLw/zYKc/1WXhBjfuQ2WEyI4mxwU3rAeXEuf4YLT63rbsIm+fLKTRRVuqbJ2FEdsYOlL
	a9jvJSmyKz/FrkNIQctFdxMn7caKxi5VgX4Dz5UF9PqW+zLXGi89AoXJxoCrcfizoNdmHkl
	jbf5VUWnHS3cZLDPqf86oiuSrQGZ3t8b+O6eacgj8Jo+YEPPyiX63CJ/2XQcHzzF4nj9099
	OCeCxugkklPILJsAhSb+u3gQQ
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0

On 1/3/2025 3:45 AM, E Shattow wrote:
> Sync qspi flash setting to read-delay=2 and spi-max-frequency 100MHz for
> better compatibility with operating system and downstream boot loader SPL
> secondary program loader.
> 
> Signed-off-by: E Shattow <e@freeshell.de>
> ---
>  arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> index 55c6743100a7..651f9a602226 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> @@ -317,8 +317,8 @@ &qspi {
>  	nor_flash: flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
> -		cdns,read-delay = <5>;
> -		spi-max-frequency = <12000000>;
> +		cdns,read-delay = <2>;
> +		spi-max-frequency = <100000000>;
>  		cdns,tshsl-ns = <1>;
>  		cdns,tsd2d-ns = <1>;
>  		cdns,tchsh-ns = <1>;

Reviewed-by: Hal Feng <hal.feng@starfivetech.com>


