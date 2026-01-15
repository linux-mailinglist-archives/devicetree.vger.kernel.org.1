Return-Path: <devicetree+bounces-255698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 76522D25CE3
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 17:41:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 12EA1301FC3A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 16:40:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB07C3BC4CC;
	Thu, 15 Jan 2026 16:40:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from cstnet.cn (smtp84.cstnet.cn [159.226.251.84])
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B34D3B960F;
	Thu, 15 Jan 2026 16:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.226.251.84
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768495212; cv=none; b=sJ+cVu3IO1uraG0T7F5uqEsKDDxTF3ou5xSFpHo6iRvS9XcINsVIOMudzJoZOK8umZrt5yIh1pIXy2cmMg7DX8Yo3fUPbjefZDDn1YW5xYsRES4OTsh9n/jj6QVi3xRq3jJ2KIu4/vWvPjd7ES9WS5zOzOybgr9dFIzYUwDIESY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768495212; c=relaxed/simple;
	bh=Dr0NTpmmI1h/kppDvMZkCAb48nBMFZ9JKK5eBzWrJZM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YFD1/SivFWLdLk/gKGX/q2UogLzw6rL0lVXTbuGF1BjlCpTHtWJbHTdmGgsx4KkdJjhppvPlY4uHrZiYcmISoYT/UnBBPNA0ddjPNgHq2AlnkXPWDFvJIZj4jtpgj4Wc3wrdAq3fdd7vE9PCSfTt00+cqH/pjYuoD44iuPq2b/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=isrc.iscas.ac.cn; spf=pass smtp.mailfrom=isrc.iscas.ac.cn; arc=none smtp.client-ip=159.226.251.84
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=isrc.iscas.ac.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=isrc.iscas.ac.cn
Received: from duge-virtual-machine (unknown [183.192.221.134])
	by APP-05 (Coremail) with SMTP id zQCowADHWQ1aGGlpltIZBQ--.29159S2;
	Fri, 16 Jan 2026 00:39:56 +0800 (CST)
Date: Fri, 16 Jan 2026 00:39:54 +0800
From: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
To: Conor Dooley <conor@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, robh@kernel.org,
	krzk+dt@kernel.org, pjw@kernel.org, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, alex@ghiti.fr, cyy@cyyself.name,
	dlemoal@kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	gaohan@iscas.ac.cn
Subject: Re: [PATCH v3 1/2] dt-bindings: riscv: canaan: add 100ask K230
 boards compatible strings
Message-ID: <aWkYWlODTKVw4bH9@duge-virtual-machine>
References: <20260115060801.16819-1-jiayu.riscv@isrc.iscas.ac.cn>
 <20260115060801.16819-2-jiayu.riscv@isrc.iscas.ac.cn>
 <20260115-muscular-oxpecker-of-typhoon-bbe46f@quoll>
 <aWjTl2g11WNc3gvT@duge-virtual-machine>
 <20260115-vending-statistic-9db5bd1829ec@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260115-vending-statistic-9db5bd1829ec@spud>
X-CM-TRANSID:zQCowADHWQ1aGGlpltIZBQ--.29159S2
X-Coremail-Antispam: 1UD129KBjvdXoWrKFyxCr17Zr45Zw1fJr13urg_yoWfAFgEgr
	Wvkwn2kw4DJryDA3Z5trZ3JrZFgwnrt345X3s5Xwn8X3s8Ga4vy34kWrn3t3W5tF47Gryx
	ur13XF4UG3sIgjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUbsxYjsxI4VWkCwAYFVCjjxCrM7AC8VAFwI0_Gr0_Xr1l1xkIjI8I
	6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AEw4v_Jr0_Jr4l8cAvFVAK0II2c7xJM2
	8CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2IY67AKxVWUJVWUCwA2z4x0Y4vE2Ix0
	cI8IcVCY1x0267AKxVW8JVWxJwA2z4x0Y4vEx4A2jsIE14v26r1j6r4UM28EF7xvwVC2z2
	80aVCY1x0267AKxVW8JVW8Jr1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IE
	w4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMc
	vjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvEwIxGrwACI402YVCY1x02628vn2kIc2xKxwCY
	1x0262kKe7AKxVWUtVW8ZwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8Jw
	C20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAF
	wI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjx
	v20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2
	jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0x
	ZFpf9x07j0fOwUUUUU=
X-CM-SenderInfo: 5mld534oul2uny6l223fol2u1dvotugofq/

On Thu, Jan 15, 2026 at 03:27:28PM +0000, Conor Dooley wrote:
> On Thu, Jan 15, 2026 at 07:46:31PM +0800, Jiayu Du wrote:
> > On Thu, Jan 15, 2026 at 10:30:35AM +0100, Krzysztof Kozlowski wrote:
> > > On Thu, Jan 15, 2026 at 02:08:00PM +0800, Jiayu Du wrote:
> > > > K230 CANMV DSHANPI is a development board produced by 100ASK.
> > > > 
> > > > Add compatible string for the board and its SoM.
> > > > 
> > > > Signed-off-by: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
> > > > ---
> > > >
> > > 
> > > <form letter>
> > > This is a friendly reminder during the review process.
> > > 
> > > It looks like you received a tag and forgot to add it.
> > 
> > I will add the Acked-by/Reviewed-by/Tested-by tags in v4 version.
> 
> I'll go fetch them, unless you have to send a v4 for some other reason.
I don't need to send v4 anymore. Then I want to confirm if both patches
of this series are in good condition, or did you only fetch patch 1?

Regards,
Jiayu Du


