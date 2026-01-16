Return-Path: <devicetree+bounces-255840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2878AD2A8D0
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 04:10:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 86CCF301B480
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 03:10:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D88C33396E0;
	Fri, 16 Jan 2026 03:10:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from cstnet.cn (smtp21.cstnet.cn [159.226.251.21])
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D913258EE9;
	Fri, 16 Jan 2026 03:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.226.251.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768533010; cv=none; b=dO55ACHXgm3lf8zbE2tORYFk2r1muH6cLkiwfhusfpVMK2mDMaOeJCwtcVC+5Ykdqk7WOTgxvVU5/+E/yVju47N3oO/7JO0/XmqZ+s3EYxGt+MLy+QONSKHINe71dv3hkuMvhR9K1r+z8xacyct9bqB5xNYGd9bqoWVITtLxqUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768533010; c=relaxed/simple;
	bh=/pfqMPaIACf+979NNFHaF7LFDLJmILPN9vq4GTAbtiU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NUQPfh2HkwNkCQdtk4JgUMhLR3Gn4LLtcMsaXEIkXqlXJcHaBk2cRP06L4n1bjqeFBaXeysPwLyIqk5TyRhPU2N2LvNT7xPdikcn1Fd5skbyVJvT+4hycHYaXiUIUvpKzDgUg/dl5kruSZ/dL6kGTp3QWyDGe73UfFBke7oFcnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=isrc.iscas.ac.cn; spf=pass smtp.mailfrom=isrc.iscas.ac.cn; arc=none smtp.client-ip=159.226.251.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=isrc.iscas.ac.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=isrc.iscas.ac.cn
Received: from duge-virtual-machine (unknown [223.160.206.223])
	by APP-01 (Coremail) with SMTP id qwCowACHMW3_q2lpraDWBA--.3624S2;
	Fri, 16 Jan 2026 11:09:53 +0800 (CST)
Date: Fri, 16 Jan 2026 11:09:51 +0800
From: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
To: Conor Dooley <conor@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, pjw@kernel.org, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, alex@ghiti.fr, cyy@cyyself.name,
	dlemoal@kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	gaohan@iscas.ac.cn
Subject: Re: [PATCH v3 0/2] Initial support for 100ask CanMV-K230 DshanPi
Message-ID: <aWmr/xEuUhcH0gKk@duge-virtual-machine>
References: <20260115060801.16819-1-jiayu.riscv@isrc.iscas.ac.cn>
 <20260115-proud-radish-c835a76d0446@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260115-proud-radish-c835a76d0446@spud>
X-CM-TRANSID:qwCowACHMW3_q2lpraDWBA--.3624S2
X-Coremail-Antispam: 1UD129KBjvJXoW7Aw4kAF47Aw4rAF48XrWUurg_yoW5JFyxpr
	WY9Fs8GFsrKr4xZFsakr40gF1Yvws5Jw1rWw13tr9rJrs8ZFy0kFnag3y5uFyDXr4xCw10
	va1Y9ry8KrWUZaDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvvb7Iv0xC_Kw4lb4IE77IF4wAFF20E14v26r4j6ryUM7CY07I2
	0VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rw
	A2F7IY1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Jr0_JF4l84ACjcxK6xII
	jxv20xvEc7CjxVAFwI0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVWUJVW8JwA2z4x0Y4vEx4
	A2jsIEc7CjxVAFwI0_Gr0_Gr1UM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI
	64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8Jw
	Am72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IY64vIr41lFIxGxcIEc7CjxVA2Y2ka0xkIwI1l
	c7CjxVAaw2AFwI0_Jw0_GFyl42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr
	1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE
	14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0I7
	IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E
	87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIevJa73Uj
	IFyTuYvjxUqiFxDUUUU
X-CM-SenderInfo: 5mld534oul2uny6l223fol2u1dvotugofq/

On Thu, Jan 15, 2026 at 07:23:17PM +0000, Conor Dooley wrote:
> On Thu, Jan 15, 2026 at 02:07:59PM +0800, Jiayu Du wrote:
> > This series adds initial support for the 100ask CanMV-K230 DshanPi
> > board based on Canaan K230 RISC-V SoC. There is a module on this
> > development board.
> > 
> > The board and module are documented, the basic board/module devicetrees
> > are added.
> > 
> > This series is based on the K230 clock series[1] and the patch 3 of the
> > k230 pinctrl series[2].
> > 
> > Link:  https://lore.kernel.org/all/20251127-b4-k230-clk-v9-0-3aa09e17faf5@zohomail.com/ [1]
> > Link:  https://lore.kernel.org/all/20240926-k230-pinctrl-v2-3-a9a36fba4b34@163.com/ [2]
> 
> Right, I've grabbed patch 3 from [2] and put it on my k230-basic branch.
> Do you intend sending a new clock driver series soon? Last time I looked
> (about a month ago) you had some changes proposed about critical clocks.
> I'd like to try get this stuff merged but obviously it depends on that
> clock set. I'll happy send Stephen a PR to smooth things along if the
> drivers are ready, but it looks like you need to send another version?
> 
> Cheers,
> Conor.

I'm not working with Xukai Wang, the developer of the clock series.
I merely discovered the critical clocks during the test and raised
this issue. Regarding the new version of the clock series, you need
to contact Xukai Wang.

I am currently only working on the USB and sd/mmc series of k230.

Best Regards,
Jiayu Du.
> > 
> > Changes in v3:
> > - Delet the model and compatible of the root node in the dtsi file.
> > - Use clock-50000000 as the node name.
> > - Link to v2: https://lore.kernel.org/all/20260104070911.219588-1-jiayu.riscv@isrc.iscas.ac.cn/
> > 
> > Changes in v2:
> > - Add a minus sign before items.
> > - Link to v1: https://lore.kernel.org/all/20251229061318.16756-1-jiayu.riscv@isrc.iscas.ac.cn/
> > 
> > Jiayu Du (2):
> >   dt-bindings: riscv: canaan: add 100ask K230 boards compatible strings
> >   riscv: dts: canaan: Add initial dshanpi board DT files
> > 
> >  .../devicetree/bindings/riscv/canaan.yaml     |  5 ++
> >  arch/riscv/boot/dts/canaan/Makefile           |  1 +
> >  .../boot/dts/canaan/k230-canmv-dshanpi.dts    | 82 +++++++++++++++++++
> >  .../dts/canaan/k230-canmv-module-dshanpi.dtsi | 26 ++++++
> >  4 files changed, 114 insertions(+)
> >  create mode 100644 arch/riscv/boot/dts/canaan/k230-canmv-dshanpi.dts
> >  create mode 100644 arch/riscv/boot/dts/canaan/k230-canmv-module-dshanpi.dtsi
> > 
> > -- 
> > 2.52.0
> > 



