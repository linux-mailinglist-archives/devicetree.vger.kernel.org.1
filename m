Return-Path: <devicetree+bounces-249794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CB5CDF386
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 03:02:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD33C3009433
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 02:02:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96C4C1F419A;
	Sat, 27 Dec 2025 02:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.spacemit.com header.i=@linux.spacemit.com header.b="hqD2aF6b"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg154.qq.com (smtpbg154.qq.com [15.184.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32297487BE;
	Sat, 27 Dec 2025 02:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=15.184.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766800924; cv=none; b=dTc672eC+BbV1wGdrfeDYESsBdCRvqBXJ9fRxX3lR18RoYJ8ruicig0rpGlHCWuJ4flYHD54ZNkCHzXsJcfyOga6OUYJupr5Xd54ZjfzI1vEArBLAbs4i6+cL9wjo0w1ZSCsaXaBmWhjUVfyeLWLLvafzQR83n3sLUgE9VKwlUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766800924; c=relaxed/simple;
	bh=5qQE/jGgTswowfQxH/R6THn/S+v/D8nvTlZVqOUq5tg=;
	h=Message-ID:Date:MIME-Version:To:Cc:References:Subject:From:
	 In-Reply-To:Content-Type; b=CHRBDk4IhBgClyKrP3gC72r+YCiNyHyT29rHdrE09h3AY1XjVUmoMI3LUJSCIvfLiQvYY7en8Yp7VKGAP2Xj5MjByy5zMhOf/sPgxo1IvsCAszeUH0eSOrZG5ydk/1TPW7mZFlQkhoj4vbQdB9oOgR186XjaY1mWeTLTOdxGtMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.spacemit.com; spf=none smtp.mailfrom=linux.spacemit.com; dkim=pass (1024-bit key) header.d=linux.spacemit.com header.i=@linux.spacemit.com header.b=hqD2aF6b; arc=none smtp.client-ip=15.184.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.spacemit.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.spacemit.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.spacemit.com;
	s=mxsw2412; t=1766800908;
	bh=p41JuVTqBNxRCHQKjtwk9ihG/E0dETrJ8qiujU9CX/Q=;
	h=Message-ID:Date:MIME-Version:To:Subject:From;
	b=hqD2aF6b03go6drDA+R7qG4KSxoBO3Ry6s1UpTNaW3Gf0JeJnEH1K4uysVwXmVbcs
	 KlZh0AWXCzVuMQUU8dqLQdE4R1dBB5eQvMwKaQp7zFD6AB1vptyawY4nMLnynIPyxU
	 Jkc7RZ85fSl4A3+icd8d3PYWEepimtrZL7SMFXig=
X-QQ-mid: esmtpsz10t1766800904t01fdd883
X-QQ-Originating-IP: XEmEg72aS76MD4WYEtk9iltG/a16lqIcS6dJYB0LFMQ=
Received: from [10.0.90.81] ( [120.237.158.181])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sat, 27 Dec 2025 10:01:42 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 992677309466334211
Message-ID: <F78A665DD30EECAD+3a96ec99-07a5-4077-946a-85cf2241cf9d@linux.spacemit.com>
Date: Sat, 27 Dec 2025 10:01:42 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: huang.ze@linux.dev
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, dlan@gentoo.org,
 huangze@whut.edu.cn, kishon@kernel.org, krzk+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-riscv@lists.infradead.org, robh@kernel.org, spacemit@lists.linux.dev,
 vkoul@kernel.org
References: <20251017-k1-usb2phy-v6-0-7cf9ea2477a1@linux.dev>
Subject: Re: [PATCH v6 0/2] Add USB2.0 PHY support for SpacemiT K1
Content-Language: en-US
From: Junzhong Pan <panjunzhong@linux.spacemit.com>
In-Reply-To: <20251017-k1-usb2phy-v6-0-7cf9ea2477a1@linux.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpsz:linux.spacemit.com:qybglogicsvrgz:qybglogicsvrgz5b-2
X-QQ-XMAILINFO: M5znx2hx04lbmLgcMqC7epNYa7fW5OpzB0ULZAoAYUjsCI64OmaHhzX9
	fzvbf1J7uvvEADqgX2Io/iZuaC5NAwaY+8yPHCxXimq3WWUzJKy6W6RLAxfoj+qu/G6EMG1
	cI/lmU9cIjhCDHsFtTczQof/PQqy0f69IZ2QfamWVKdJFutjys+c9WMrxhFCWiAj8p8/OIa
	0wBonoMOv5qx2Phpgs521qwH/Fsi6q3kpJ2Xxi3mPGoQ1yRfJGbPWqtSf9CtuPbvE7SjLuY
	bZuoBC4C/BA4Z2GK0AlLZls8Syfg5v0h3nafk3sodiWSef7vfrDnhKnDrDr1OZglPNRYVmk
	8Ya33LatBZrqgaURsGdVAJYh42iAM+X2HTLKYvFYaQmhqNOTgQmaX5JnWjJ8hUdN5aO8T99
	xQkY4Z+77LYM+t7gE68gZhID4+RKxsT2GXVLMfk3etLdc+1I9LHayTODQpFqVP+Mz+NWtRJ
	CaSucGRnwBKE7zKrBjK2ZZZhVpE/Ik9P5zpgSzF0oPECTuGYXV6PZEPQG1pRaiwwCZ5+Swr
	9+XvhhhyEuxoKtd051P7v2FQ9IUcw1rrp9NbYjfLtd4oQWnRn+eo2ztIDbeJVn5uAtnjJTl
	I4ovUaDq0WFG5rJorig7CCKoA7ru9rg/hNihGHuE2dJMj3bJ83MxQC50asQaVgNY50MH0xt
	Ub4WgKpvH6lIsSJRna7jFwMReqhb8nodUgnWWA6dllVhDuD+SDTeQkEvkJ8EdfL8IOG5+sN
	fhuflpIR+WvxXABCpytC5B1ziB5xLyDIHiRKvcxUbIT5PCwrcpdgLRzF+rC6G53nUjsJ3PE
	L9NpxOC+mkLGFR4c0i4APieuazE7t4Se2PiVNQD+b8rBtEfn7cpCoGq36FA2ZOkdu8SFosX
	q8CRuaoCDyipI2wdqbxPzJJhIAYiahZL9hFywAuoL0xd4w2KZsoqpx/qUhjQ5ERutp+fB4u
	b5Hac55Y/Jcmt0d0ikx6pZTGLPxrf+s9dPfYqKbd9a4poCGV6adI06j1AedtCZzuCbcG42R
	RYQAb70PN8tovf/2HSo7O/saTZhis=
X-QQ-XMRINFO: MPJ6Tf5t3I/ylTmHUqvI8+Wpn+Gzalws3A==
X-QQ-RECHKSPAM: 0

On Fri, 17 Oct 2025 22:49:51 +0800, Ze Huang wrote:
> This patch series introduces support for the USB2.0 PHY on the SpacemiT
> K1 SoC. The implementation has been tested on the Milk-V Jupiter and
> BananaPi-f3.
> 
> K1 includes three USB ports as follows[1]:
> - A USB2.0 OTG Port
> - A USB2.0 Host Only Port
> - A USB3.0 Port with a USB2.0 DRD interface
> 
> Each of these ports is connected to a USB2.0 PHY responsible for USB2
> transmission.
> 
> This series is based on 6.18-rc1.
> 
> Link: https://developer.spacemit.com/documentation?token=AjHDwrW78igAAEkiHracBI9HnTb#part5 [1]
> 
> Signed-off-by: Ze Huang <huangze@whut.edu.cn>
Tested-by: Junzhong Pan <panjunzhong@linux.spacemit.com>


