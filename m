Return-Path: <devicetree+bounces-255569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1DCD244EE
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 12:50:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B7296303367F
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:46:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A5423806B7;
	Thu, 15 Jan 2026 11:46:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from cstnet.cn (smtp84.cstnet.cn [159.226.251.84])
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278C1313286;
	Thu, 15 Jan 2026 11:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.226.251.84
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768477616; cv=none; b=D5SgZIYa6nlllDuBkkh8j1fymBgX+iGvbzayqs2nukhmFxct2XB44VekBwTWlAcGnZdu6NPEsmD8Yh6NAz2HBAYC46go8oEhgqpSlrkG33ssu6hQvzJc8VE47b/uXR0b03zNVGH5DXPKmZLpq8PH6FwO26X6ZCNgYskoMAHREZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768477616; c=relaxed/simple;
	bh=E7QFYvt8daJAjktCDv/9exTvR6AXgYKNSaHJj1uum+s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kdq6VFmHCkvhRJTUEv3DFpMJ4nfzPshTbUi3zJeZpVshe/3VOTBRcdjqN6Mxs+8mhXw4L19HRdF8pFVrwHC5Rh7jj7fAEOwPQcs2ybeZsJRnRLWwC3eHY3k1oOn35CN78jnpcC6LGS123n/tQDcZCevrnR0F1In7tue1afBiKrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=isrc.iscas.ac.cn; spf=pass smtp.mailfrom=isrc.iscas.ac.cn; arc=none smtp.client-ip=159.226.251.84
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=isrc.iscas.ac.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=isrc.iscas.ac.cn
Received: from duge-virtual-machine (unknown [183.192.221.134])
	by APP-05 (Coremail) with SMTP id zQCowABX7RCX02hpxWEVBQ--.47924S2;
	Thu, 15 Jan 2026 19:46:32 +0800 (CST)
Date: Thu, 15 Jan 2026 19:46:31 +0800
From: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: conor@kernel.org, robh@kernel.org, krzk+dt@kernel.org, pjw@kernel.org,
	palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
	cyy@cyyself.name, dlemoal@kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	gaohan@iscas.ac.cn
Subject: Re: [PATCH v3 1/2] dt-bindings: riscv: canaan: add 100ask K230
 boards compatible strings
Message-ID: <aWjTl2g11WNc3gvT@duge-virtual-machine>
References: <20260115060801.16819-1-jiayu.riscv@isrc.iscas.ac.cn>
 <20260115060801.16819-2-jiayu.riscv@isrc.iscas.ac.cn>
 <20260115-muscular-oxpecker-of-typhoon-bbe46f@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260115-muscular-oxpecker-of-typhoon-bbe46f@quoll>
X-CM-TRANSID:zQCowABX7RCX02hpxWEVBQ--.47924S2
X-Coremail-Antispam: 1UD129KBjvJXoW7Aw15Kr4fCr18XFy7Gr4UJwb_yoW8Gr17pw
	nrCw4qkFWktrn0ka97Kw1SqF1FvFW3t39xJryUKryDZa90gwnFqF90qr1j93srXw1rXa1U
	AFs8AryrJr45ZFJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvlb7Iv0xC_Kw4lb4IE77IF4wAFF20E14v26r4j6ryUM7CY07I2
	0VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rw
	A2F7IY1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Jr0_JF4l84ACjcxK6xII
	jxv20xvEc7CjxVAFwI0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW8JVWxJwA2z4x0Y4vEx4
	A2jsIEc7CjxVAFwI0_Gr1j6F4UJwAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC
	0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUGVWUXwAv7VC2z280aVAFwI0_Jr0_Gr
	1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcVAKI48JM4IIrI8v6xkF7I0E8cxan2IY04v7
	MxkF7I0En4kS14v26r1q6r43MxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r
	4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF
	67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2I
	x0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2
	z280aVAFwI0_Gr0_Cr1lIxAIcVC2z280aVCY1x0267AKxVW8Jr0_Cr1UYxBIdaVFxhVjvj
	DU0xZFpf9x07b0SoAUUUUU=
X-CM-SenderInfo: 5mld534oul2uny6l223fol2u1dvotugofq/

On Thu, Jan 15, 2026 at 10:30:35AM +0100, Krzysztof Kozlowski wrote:
> On Thu, Jan 15, 2026 at 02:08:00PM +0800, Jiayu Du wrote:
> > K230 CANMV DSHANPI is a development board produced by 100ASK.
> > 
> > Add compatible string for the board and its SoM.
> > 
> > Signed-off-by: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
> > ---
> >
> 
> <form letter>
> This is a friendly reminder during the review process.
> 
> It looks like you received a tag and forgot to add it.

I will add the Acked-by/Reviewed-by/Tested-by tags in v4 version.

Regards,
Jiayu Du

> If you do not know the process, here is a short explanation:
> Please add Acked-by/Reviewed-by/Tested-by tags when posting new
> versions of patchset, under or above your Signed-off-by tag, unless
> patch changed significantly (e.g. new properties added to the DT
> bindings). Tag is "received", when provided in a message replied to you
> on the mailing list. Tools like b4 can help here. However, there's no
> need to repost patches *only* to add the tags. The upstream maintainer
> will do that for tags received on the version they apply.
> 
> Please read:
> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577
> 
> If a tag was not added on purpose, please state why and what changed.
> </form letter>
> 
> Best regards,
> Krzysztof
> 


