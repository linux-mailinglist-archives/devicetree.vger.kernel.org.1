Return-Path: <devicetree+bounces-271913-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJJkCciXqmmIUAEAu9opvQ
	(envelope-from <devicetree+bounces-271913-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:00:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7133221D8CA
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:00:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 84ED63010838
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 09:00:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 777C83264E1;
	Fri,  6 Mar 2026 09:00:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from cstnet.cn (smtp25.cstnet.cn [159.226.251.25])
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BA5273D8F;
	Fri,  6 Mar 2026 09:00:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.226.251.25
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772787645; cv=none; b=kmbf7F/EXl+2IerXAOX+B1JNN6Bc8iy6iCRKNl8nPtd2nUh0TH2QMqDfAy1A9/jmgYdnVoQoqF/K2zqgzpf9YE2u7Lj2pqfPKjdwJmWm9vXeT7qvy20cbk2K4lQAeCNqo1zkM9G8Xri75pAK+OmjX7MxKr8HT8T44vHwONmhWEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772787645; c=relaxed/simple;
	bh=r5WbhW7BWGrMH/5ijE23YqHk4pSOchr8zr8N1ZQkDME=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Qc58mJ0wbbQn4gJLSQqhvDULzw28i/UmNY/PI9auNLibEch68arkJ0haF/lw67RyZSoJ7Kk6G0WMjoCU5pn3m2tNm+j+LkWXycZjs74qeaTD+OoIeWvYwhVoQl9EL7S7SEDp6o4ZRu0dDi3/pY4Y5kBCd4Y6rS+jDWWrthrmbLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=isrc.iscas.ac.cn; spf=pass smtp.mailfrom=isrc.iscas.ac.cn; arc=none smtp.client-ip=159.226.251.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=isrc.iscas.ac.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=isrc.iscas.ac.cn
Received: from duge-virtual-machine (unknown [183.192.221.67])
	by APP-05 (Coremail) with SMTP id zQCowADXaQ2ol6ppQLO+CQ--.47488S2;
	Fri, 06 Mar 2026 17:00:26 +0800 (CST)
Date: Fri, 6 Mar 2026 17:00:23 +0800
From: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: krzk@kernel.org, adrian.hunter@intel.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, pjw@kernel.org,
	palmer@dabbelt.com, aou@eecs.berkeley.edu,
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	gaohan@iscas.ac.cn, me@ziyao.cc
Subject: Re: [PATCH v2 2/3] mmc: sdhci-dwcmshc: Add Canaan K230 DWCMSHC
 controller support
Message-ID: <aaqXpzEPeKfSYF41@duge-virtual-machine>
References: <20260226115923.75670-1-jiayu.riscv@isrc.iscas.ac.cn>
 <20260226115923.75670-3-jiayu.riscv@isrc.iscas.ac.cn>
 <CAPDyKFrxJ0oWuMWoUEYGO0t-WOYU+G7p5eFw8cUY7xyPaREB5Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPDyKFrxJ0oWuMWoUEYGO0t-WOYU+G7p5eFw8cUY7xyPaREB5Q@mail.gmail.com>
X-CM-TRANSID:zQCowADXaQ2ol6ppQLO+CQ--.47488S2
X-Coremail-Antispam: 1UD129KBjvJXoW7KFW7GF1kAw1kJw4rXrWUJwb_yoW8KF1fpa
	yDXrnIkrWUJF4Sgwnxuw1Duas0qw4Sk3sxtFy3Gw1xZrZ2kF1jqry8Ka4093ZaqrWrGF1j
	vr1jqr95urnIyaDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvvb7Iv0xC_KF4lb4IE77IF4wAFF20E14v26r4j6ryUM7CY07I2
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
	IFyTuYvjxU2VbyDUUUU
X-CM-SenderInfo: 5mld534oul2uny6l223fol2u1dvotugofq/
X-Rspamd-Queue-Id: 7133221D8CA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[iscas.ac.cn];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271913-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jiayu.riscv@isrc.iscas.ac.cn,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.870];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,iscas.ac.cn:email]
X-Rspamd-Action: no action

On Thu, Mar 05, 2026 at 12:48:29PM +0100, Ulf Hansson wrote:
> On Thu, 26 Feb 2026 at 12:59, Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn> wrote:
> >
> > Add SDHCI controller driver for Canaan k230 SoC. Implement custom
> > sdhci_ops for set_clock, phy init, init and reset.
> >
> > Signed-off-by: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
> > ---
> >  drivers/mmc/host/sdhci-of-dwcmshc.c | 288 ++++++++++++++++++++++++++++
> >  1 file changed, 288 insertions(+)
> >
> > diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> > index 2b75a36c096b..21c77e908d77 100644
> > --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> > +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
...
> >  struct dwcmshc_pltfm_data {
> > +       const void *match_data;
> 
> This makes sense to me!
> 
> Although, I realized that dwcmshc_rk35xx_init() could also move its
> assignment of "devtype" into this match_data.
> 
> Can you please create a follow-up patch to fixup this and to avoid
> storing this type of data in two different ways?
> 
...
> > +static int dwcmshc_k230_init(struct device *dev, struct sdhci_host *host,
> > +                            struct dwcmshc_priv *dwc_priv)
> > +{
> > +       static const char * const clk_ids[] = {"block", "timer", "axi"};
> > +       const struct dwcmshc_k230_match_data *match_data;
> > +       const struct dwcmshc_pltfm_data *pltfm_data;
> > +       struct device_node *usb_phy_node;
> > +       struct k230_priv *k230_priv;
> > +       u32 data;
> > +       int ret;
> > +
> > +       pltfm_data = device_get_match_data(dev);
> > +
> > +       if (!pltfm_data || !pltfm_data->match_data) {
> > +               dev_err(dev, "No vendor data found for K230\n");
> > +               return -EINVAL;
> > +       }
> > +       match_data = pltfm_data->match_data;
> 
> I don't think this should be specific to dwcmshc_k230_init().
> 
> Instead I suggest adding a "const void *match_data" to the "struct
> dwcmshc_priv" - and copy the pointer in the common dwcmshc_probe()
> instead. In this way, all variants will be able to use it.

Your suggestions make perfect sense. I'll prepare a new version to add
the "const void *match_data" to "struct dwcmshc_priv", assign it in
"dwcmshc_probe()", and adjust the K230 init accordingly.

I'll also migrate the rk35xx devtype assignment to match_data for
consistency. Once ready, I'll post the link as a reply to this k230 mmc
series.

Best regards,
Jiayu Du

> 
> Kind regards
> Uffe


