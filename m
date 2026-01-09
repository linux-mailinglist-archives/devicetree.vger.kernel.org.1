Return-Path: <devicetree+bounces-253051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFA2D06C4E
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 02:49:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 33D6A3013EFA
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 01:49:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 935272248B0;
	Fri,  9 Jan 2026 01:49:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from cstnet.cn (smtp21.cstnet.cn [159.226.251.21])
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3D7221D00A;
	Fri,  9 Jan 2026 01:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.226.251.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767923386; cv=none; b=l2a3hrXitnP7Fes+XtmmByem9QHB/uUYNh1PteK3Cu3VUnwW+gki8FKWD1pYiIjz8UE+vKiqDxyiOGoMuDebhbY+MQBd2AEQjw4+TRWdqGg7U82awcLmy61yv2yCO7vnfI0IFmUsQXiKn8o3nVGoIfz5QR/7e2nqX2gmTcLzccw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767923386; c=relaxed/simple;
	bh=0+lPX6k6xEHJMJ6MnM8KhQ2Ow531OP1DLOQ+I9hYgt0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P2HgcMlrnviEGhfeKmhlmmCMjid6x0bhffQfrCOPSQN0ZzI7XtYloKNQDf1HdlDzZ/dwSJ7k0vPROCc6Ip8zZ1TGIgXxHiQH3YDX1R8/vm1AS2VoiblRAY6GGX4kU4DeHV+EDvFfYHW7in1bP9mq5+TJMrjpom6LezwyHGxIKTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=isrc.iscas.ac.cn; spf=pass smtp.mailfrom=isrc.iscas.ac.cn; arc=none smtp.client-ip=159.226.251.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=isrc.iscas.ac.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=isrc.iscas.ac.cn
Received: from duge-virtual-machine (unknown [220.196.194.160])
	by APP-01 (Coremail) with SMTP id qwCowADXQ2+lXmBpWvPgAw--.7260S2;
	Fri, 09 Jan 2026 09:49:27 +0800 (CST)
Date: Fri, 9 Jan 2026 09:49:24 +0800
From: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
To: Rob Herring <robh@kernel.org>
Cc: conor@kernel.org, krzk+dt@kernel.org, pjw@kernel.org,
	palmer@dabbelt.com, aou@eecs.berkeley.edu,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, alex@ghiti.fr, cyy@cyyself.name,
	kingxukai@zohomail.com, TroyMitchell988@gmail.com,
	gaohan@iscas.ac.cn, me@ziyao.cc
Subject: Re: [PATCH v2 2/2] riscv: dts: canaan: Add initial dshanpi board DT
 files
Message-ID: <aWBepFEpO45Ocowb@duge-virtual-machine>
References: <20260104070911.219588-1-jiayu.riscv@isrc.iscas.ac.cn>
 <20260104070911.219588-3-jiayu.riscv@isrc.iscas.ac.cn>
 <20260106182754.GA2506656-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260106182754.GA2506656-robh@kernel.org>
X-CM-TRANSID:qwCowADXQ2+lXmBpWvPgAw--.7260S2
X-Coremail-Antispam: 1UD129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UjIYCTnIWjp_UUUYH7k0a2IF6w4xM7kC6x804xWl14x267AK
	xVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0rVWUuVWrJwAFIxvE14AKwVWUJVWUGw
	A2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK021l84ACjcxK6xIIjxv20xvE14v26r1j
	6r1xM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j6F4UM28EF7xvwVC2z280aVAFwI0_Jr
	0_Gr1l84ACjcxK6I8E87Iv6xkF7I0E14v26r4j6r4UJwAS0I0E0xvYzxvE52x082IY62kv
	0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUJVWUGwAv7VC2z2
	80aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcVAKI48JM4IIrI8v6xkF
	7I0E8cxan2IY04v7MxkIecxEwVAFwVWkMxAIw28IcxkI7VAKI48JMxAqzxv26xkF7I0En4
	kS14v26r1q6r43MxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4l
	x2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrw
	CI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI
	42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z2
	80aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7IU8VnmtUUUUU==
X-CM-SenderInfo: 5mld534oul2uny6l223fol2u1dvotugofq/

On Tue, Jan 06, 2026 at 12:27:54PM -0600, Rob Herring wrote:
> On Sun, Jan 04, 2026 at 03:09:11PM +0800, Jiayu Du wrote:
> > +	model = "100ask CanMV-K230-Module-dshanpi";
> > +	compatible = "100ask,canmv-k230-module-dshanpi",
> > +		     "canaan,kendryte-k230";
> 
> These get overwritten, but aren't really valid on their own. Drop.
> 
...
> > +	timerx_pulse_in: clock-50m {
> 
> clock-50000000
> 
Thanks for your review. I will fix it in the v2.


