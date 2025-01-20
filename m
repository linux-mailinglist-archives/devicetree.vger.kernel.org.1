Return-Path: <devicetree+bounces-139739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 636B2A16C18
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 13:12:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1A07A1881E5B
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 12:12:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEF451DF992;
	Mon, 20 Jan 2025 12:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgL0gfc9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95AD41B87EE;
	Mon, 20 Jan 2025 12:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737375115; cv=none; b=s716QmW/F8vmd1PdEbwlAN97d4i5S47jc3Hl5WZpBS7f2Ey15M59thNJwvD1au59NMlRAlOp+KQjfK5qgaqINoV2k6jzo6TZNDuxbTzJ8BJU2FQG7TKiVj+fg6xhmGruUnTdv2RLJkoU2JpuVr6FrDSHIR7PJRdjcWxvYkj7L+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737375115; c=relaxed/simple;
	bh=2d5KQE0gBmmuHj8ZO3Kd2vSJ/xLvCvZoaI8AOHlA3Ws=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XwiH7T6K7VCMJfxzJCYz7QhTa2/BAm/gAVNk9F19lgUZfRMkPNpJrQ6aF16nCbUxNT+4iKDdUQmOoHK6djHbUydscq6GVuZ8iHSzFg7Niqbli4NRkNLI3S8x8W8W8AoZpii8BanX6FJAA+YDhQOFAuBNHDs5I3zJn7wstlNNVo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgL0gfc9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1E7AC4CEDD;
	Mon, 20 Jan 2025 12:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737375114;
	bh=2d5KQE0gBmmuHj8ZO3Kd2vSJ/xLvCvZoaI8AOHlA3Ws=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jgL0gfc9N9yniX9QiOKt3qqokRUTwKrqnaBFn36y43l2uLe/+WknsBZiFpXESFKx6
	 RLbz0jxgkm1ZEvzbRkdXg0E95FylA4niYVF51ggQAmxNOSPmqA6iUbHIA/VucrRd/O
	 MUlNIady22xqK7gInl7lWhxIRaYMKRrcK1spXKb2EsY9b1Uq8fza2Gyvv4/DD6bf9Y
	 97zjNrsrPZthRD8eMe3jpfZmAUPomlc06rTIcu16FQ4H+4Ii5CFWRNs3Lu9akuyDVT
	 xqErv6/nSFc9oFRT4tTJ7K7IZTJ/J60p4exFlp8hOdFnAlxBJ/FL4WRZDHYbiJKZav
	 gYioot4NmuY+w==
Message-ID: <1f7a3d91-3b5b-4706-8857-7bb71beecb3a@kernel.org>
Date: Mon, 20 Jan 2025 14:11:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: k3-j722s-evm: Fix USB2.0_MUX_SEL to
 select Type-C
To: Hrushikesh Salunke <h-salunke@ti.com>, nm@ti.com, vigneshr@ti.com,
 kristo@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 r-gunasekaran@ti.com, s-vadapalli@ti.com
Cc: srk@ti.com, danishanwar@ti.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250116125726.2549489-1-h-salunke@ti.com>
Content-Language: en-US
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20250116125726.2549489-1-h-salunke@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 16/01/2025 14:57, Hrushikesh Salunke wrote:
> J722S SOC has two usb controllers USB0 and USB1. USB0 is brought out on
> the EVM as a stacked USB connector which has one Type-A and one Type-C
> port. These Type-A and Type-C ports are connected to MUX so only
> one of them can be enabled at a time.
> 
> Commit under Fixes, tries to enable the USB0 instance of USB to
> interface with the Type-C port via the USB hub, by configuring the
> USB2.0_MUX_SEL to GPIO_ACTIVE_HIGH. But it is observed on J722S-EVM
> that Type-A port is enabled instead of Type-C port.
> 
> Fix this by setting USB2.0_MUX_SEL to GPIO_ACTIVE_LOW to enable Type-C
> port.
> 
> Fixes: 485705df5d5f ("arm64: dts: ti: k3-j722s: Enable PCIe and USB support on J722S-EVM")
> Signed-off-by: Hrushikesh Salunke <h-salunke@ti.com>

Reviewed-by: Roger Quadros <rogerq@kernel.org>


