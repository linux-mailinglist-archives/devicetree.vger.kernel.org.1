Return-Path: <devicetree+bounces-76306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B71690A253
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 04:11:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C54E21F220A0
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 02:11:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0408E15EFC9;
	Mon, 17 Jun 2024 02:11:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="fP4MeZ97"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-251-27.mail.qq.com (out203-205-251-27.mail.qq.com [203.205.251.27])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A39EF29D19
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 02:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.251.27
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718590267; cv=none; b=CXzz4sAVyDID2n9SkppXeE11SE/UtbODfIsQwVk0ZqBCw3nK9EW+NfiNvaCrwsh1O1tPqMQrNo1n+jFdxf9tn/8phMqbAtnTideSX8QlYtcJyaiI2JFP5AT7j1dYdUqBLjIwH/f+cAH28XEGdUXJE57JVrB4sFFViucTMLHEAqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718590267; c=relaxed/simple;
	bh=O1zewZMS+fE+DYGdhq4qlwEF14ZN3nbANyuajyvJhHg=;
	h=Message-ID:Content-Type:Mime-Version:Subject:From:In-Reply-To:
	 Date:Cc:References:To; b=qypneadmbY4QmO4ufKuvaLnJEZ5jI8ME6uUo4vivSXxbH4GWGaENSzeoaI8fCgt52tCu63TWfVrRXMv39l4JEQ9qobG/DxZO/8PYabpNCzVAZu/av74s5kXW7mLJCKxIgbkwxHV7CVSIM/MEx8LO/qdpX/3Jg8PucJuISP0BI+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name; spf=none smtp.mailfrom=cyyself.name; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=fP4MeZ97; arc=none smtp.client-ip=203.205.251.27
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cyyself.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1718590247; bh=n/b25ufWw2FEN1PbS/h2Gmizcmt1dbuO+3UPvLJwndc=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To;
	b=fP4MeZ97kB27xyqAj6GziWZOg6hlM/kgo+kbaaMEXYqBnrPJz/D3cp9gifzm6fpLl
	 OIGJIoLtCqlT5NoyaNzAjG3Hva9tv17xb26TGwN6WbH2nGQBYh0XpU+A/pA6ySNwrh
	 1PApu9/t0+s30SoxIefub+ZVYMRErmg1/lsmmG6M=
Received: from smtpclient.apple ([2409:8929:843:88d1:dc81:b668:28ec:a360])
	by newxmesmtplogicsvrszb9-1.qq.com (NewEsmtp) with SMTP
	id 2AB86CF4; Mon, 17 Jun 2024 10:10:43 +0800
X-QQ-mid: xmsmtpt1718590243t4q3vx31k
Message-ID: <tencent_6863DCC298D59097467C3E0641106D0D4707@qq.com>
X-QQ-XMAILINFO: NJ/+omVLhVgaGQOj3C9BAUFbWT0vbHZiwKhfTH3iTJpJF2/X0N+UqfrcazIqWQ
	 rpkqCcxpvCdCT7+w3b/f43Jch3pKUm5k7IE4fT/0gSkBj6jAYhWMrNEaydu0YiFKYZ8bEHXNTAkv
	 /iTyNOok9umfGcHP+8MLyVchbxR+jWfaS+pd3wcCuLgsS0joBrnWviJyMxP32H3vUVzFw4GX23+c
	 dyR/BQ2/UrlBsihDcqSZjFRoB+cBikG39chYBL3+8vIRX7pU5B6bD5qnsuN9UlZo7HHzoQcq3dRl
	 FBZ1j3zYotVTdc6t66MPzw01U8/pjMbwv1eQGS0vdE2WWKka9M7OGOKBhL3e1D9H2fisaBE81BAK
	 gHmfmQ77eoQvb73FOwKvFhs9NwwdTbMIHjaKh7HEdmUTJ6PzXcQuf1erhT8lIuxnOyxhPkZSHq/r
	 +/grkH90VGA/AumbnTndz55xDZyAjWpNtpH+aGJ3OTRXsP+z6N5am5Jz72ndPGGQGwpBT0sOfHJa
	 9REY2W1eqxufLtlCllioejHoDyRAy+VrkFQ+cZw6judnHO56Zmc52EaFBoMXEY+l55nxxJixqN37
	 3OIN6IBfySNrTn92rAUTgcQnUce5hSN/k628mPeyMHoAmcfSdV+TEjP/GzWtQ2un6wMdVZUknlGD
	 gEvROFOVhK7QkvS9hNh9HoWHIAmSOdui9ntn+OeJgRsBBBSnpndJSLsIKjRfYb5E46ZZ9WavEUCR
	 tEFO6Iw3oQ0nTup4W5sCGUiTCOWwR3tQaVCt2stVPVdlp/W3rtc4tBZ5ULCVNX6wOyM25Gi4Dyi5
	 wRHH48MLb0+SUlwOf4ZWnavP3liYQ5GwaOm12JJTKstJogAvqgFMHGQWkMeTtslVzmh2/PAdE/Ik
	 Y4O0Xgxw8NMuyPaBKdlzYDans9spx8jqVSMN4Ib8t8utqQIEX/PMcgxhyc6Tn5Bjl69VgxwW9ViJ
	 uZpVk638x0bTHR5T2vYucE8UA768wAgPQs7iPdPGI=
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
Content-Type: text/plain;
	charset=us-ascii
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.600.62\))
Subject: Re: [PATCH v1 7/9] riscv: dts: add initial SpacemiT K1 SoC device
 tree
From: Yangyu Chen <cyy@cyyself.name>
In-Reply-To: <20240616225314.GA3988639@ofsar>
Date: Mon, 17 Jun 2024 10:10:33 +0800
Cc: linux-riscv@lists.infradead.org,
 Conor Dooley <conor+dt@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Samuel Holland <samuel.holland@sifive.com>,
 Anup Patel <anup.patel@wdc.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
X-OQ-MSGID: <F59EA1B1-9DC3-40D5-AA9F-0AD72D31CC03@cyyself.name>
References: <tencent_BC64B7B1876F5D10479BD19112F73F262505@qq.com>
 <tencent_701082E2DAE48E2FB857316321778D737C08@qq.com>
 <20240616225314.GA3988639@ofsar>
To: Yixun Lan <dlan@gentoo.org>
X-Mailer: Apple Mail (2.3774.600.62)



> On Jun 17, 2024, at 06:53, Yixun Lan <dlan@gentoo.org> wrote:
> 
> On 01:20 Mon 17 Jun     , Yangyu Chen wrote:
>> Banana Pi BPI-F3 motherboard is powered by SpacemiT K1[1].
>> 
> .. snip
>> + uart0: serial@d4017000 {
>> + compatible = "intel,xscale-uart";
> are you sure the uart IP is fully compatible with xscale?
> otherwise I'd suggest to introduce a vendor specific one..
> 

Sounds like a good idea. I will add it soon.

>> + reg = <0x0 0xd4017000 0x0 0x100>;
>> + interrupts = <42>;
>> + clock-frequency = <14000000>;
>> + reg-shift = <2>;
>> + reg-io-width = <4>;
>> + status = "disabled";
>> + };
>> + };
>> +};
> it's better to also add other uart nodes, I feel it's more complete
> 

I should test it before adding them. However, if I remember correctly,
there is only one UART on BPI-F3.

> -- 
> Yixun Lan (dlan)
> Gentoo Linux Developer
> GPG Key ID AABEFD55


