Return-Path: <devicetree+bounces-208456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CA5B32827
	for <lists+devicetree@lfdr.de>; Sat, 23 Aug 2025 12:14:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7F0C01B62696
	for <lists+devicetree@lfdr.de>; Sat, 23 Aug 2025 10:14:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1E8B244670;
	Sat, 23 Aug 2025 10:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="qZ2mfZxl"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514CB21930A
	for <devicetree@vger.kernel.org>; Sat, 23 Aug 2025 10:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755944042; cv=none; b=BlVIVQ9GR6gaJY1lNtm0Mdw2zF8gboEY/XDrt4cjsu/SmpE4tPPT8mbeOMSjh6L+VaAfvkGHq9DkyQJb84192c/oEPICa8Z32SnmPbPzw+6lz1Pl7E/VSIZj0EglUNht5bO4b6IHqsE2/lrKOrXWsgVepmxDXPTMAT/coHz7Jbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755944042; c=relaxed/simple;
	bh=YNJerp8gGwn9w8snONcQXKLQmew4f9EERAWetb2IHcQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:From:In-Reply-To:
	 Content-Type:References; b=qdI5Xo7F1GRHtLj1Z55TYhkiGQlBP7NaAp7AB3IQM7Qzk0WY84x+9sOsydb8x/jiO4kekQUU4lhfge5kUsJZs95sbNmx/y6Q05J9XaUzActxI8TeIvB9aXpbUBDVzSczGJPgFXQv+QA7g3XHhLeuIrANYEGLAXYP9t8NoXvgfLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=qZ2mfZxl; arc=none smtp.client-ip=210.118.77.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20250823101350euoutp0114ad4b7510a00003dd4e1077a0e0313a~eXcrLSdos1280612806euoutp01z
	for <devicetree@vger.kernel.org>; Sat, 23 Aug 2025 10:13:50 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20250823101350euoutp0114ad4b7510a00003dd4e1077a0e0313a~eXcrLSdos1280612806euoutp01z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1755944030;
	bh=qltGmFZ1SyA2K1lCnBKFEXirABeylZVSgPO87C54S8o=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=qZ2mfZxlunMbEi21nVsR9wiuo5tfKAO2P/WFOeySBnWBUqPcAYK55g6Wa5BjbCLrP
	 Wzjygko6mkq8k+FqkkUhts9cB+cjvlccwGwZySQKMPLg0Gz6O52uxUtY9AXxv9m7LU
	 +kR1gXVLqKEA3kIhX+lr8uxgKT99kY9NoMt693Xk=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20250823101349eucas1p12d4a24393d204c8b65adaf2cebbc9b9c~eXcqRcCWE2895128951eucas1p10;
	Sat, 23 Aug 2025 10:13:49 +0000 (GMT)
Received: from [192.168.1.44] (unknown [106.210.136.40]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250823101348eusmtip1788ff78e85d2824cf82721f8c28a7d70~eXcpHT5a71950219502eusmtip1X;
	Sat, 23 Aug 2025 10:13:48 +0000 (GMT)
Message-ID: <3aa6f79e-2ebf-4aff-a23c-7e79929a85f9@samsung.com>
Date: Sat, 23 Aug 2025 12:13:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 7/7] riscv: dts: thead: Add PWM fan and thermal
 control
To: Drew Fustini <fustini@kernel.org>
Cc: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, Miguel Ojeda
	<ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng
	<boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
	=?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Andreas
	Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor
	Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Guo Ren
	<guoren@kernel.org>, Fu Wei <wefu@redhat.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer
	Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Alexandre
	Ghiti <alex@ghiti.fr>, Marek Szyprowski <m.szyprowski@samsung.com>, Benno
	Lossin <lossin@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
	Daniel Almeida <daniel.almeida@collabora.com>, linux-kernel@vger.kernel.org,
	linux-pwm@vger.kernel.org, rust-for-linux@vger.kernel.org,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
Content-Language: en-US
From: Michal Wilczynski <m.wilczynski@samsung.com>
In-Reply-To: <aKjXzyyYd9QneIKf@x1>
Content-Transfer-Encoding: 7bit
X-CMS-MailID: 20250823101349eucas1p12d4a24393d204c8b65adaf2cebbc9b9c
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20250820083548eucas1p2a40775d53dfd9f8608671cc20003fd7d
X-EPHeader: CA
X-CMS-RootMailID: 20250820083548eucas1p2a40775d53dfd9f8608671cc20003fd7d
References: <20250820-rust-next-pwm-working-fan-for-sending-v14-0-df2191621429@samsung.com>
	<CGME20250820083548eucas1p2a40775d53dfd9f8608671cc20003fd7d@eucas1p2.samsung.com>
	<20250820-rust-next-pwm-working-fan-for-sending-v14-7-df2191621429@samsung.com>
	<aKjXzyyYd9QneIKf@x1>



On 8/22/25 22:49, Drew Fustini wrote:
> On Wed, Aug 20, 2025 at 10:35:42AM +0200, Michal Wilczynski wrote:
>> Add Device Tree nodes to enable a PWM controlled fan and it's associated
>> thermal management for the Lichee Pi 4A board.
>>
>> This enables temperature-controlled active cooling for the Lichee Pi 4A
>> board based on SoC temperature.
>>
>> Reviewed-by: Drew Fustini <fustini@kernel.org>
>> Tested-by: Drew Fustini <fustini@kernel.org>
>> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
>> ---
>>  arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts | 67 +++++++++++++++++++++++
>>  1 file changed, 67 insertions(+)
> 
> Do you think it makes sense to coordinate this with the "Initial thermal
> management for Lichee Pi 4A board" series [1] from Icenowy?

Hi,
It seems to me like using the HW PWM is just a better solution for
driving the fans. However as pointed in the discussion currently Rust
requires LLVM, so people compiling with gcc will not be able to compile
the driver for some time until the gcc support becomes better.

I think there is a way to express in Device Tree the fallback logic -
if Rust not available then use SW PWM. So I guess the pragmatic way to
go is to merge SW PWM temporary fix first, and later when gcc becomes
better at compiling Rust patch it up to use HW PWM instead.

> 
> Thanks,
> Drew
> 
> [1] https://lore.kernel.org/linux-riscv/20250816093209.2600355-1-uwu@icenowy.me/
> 

Best regards,
-- 
Michal Wilczynski <m.wilczynski@samsung.com>

