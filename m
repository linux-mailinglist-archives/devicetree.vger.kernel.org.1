Return-Path: <devicetree+bounces-259652-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJBeA17Wd2mFlwEAu9opvQ
	(envelope-from <devicetree+bounces-259652-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 22:02:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEF48D728
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 22:02:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DF52C3018C3D
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 21:02:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C24282DD60E;
	Mon, 26 Jan 2026 21:02:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="beouqXbq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A0DB2DC76E;
	Mon, 26 Jan 2026 21:02:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769461334; cv=none; b=lG/BO+DAXEifiVSe9nXSRkTl/wR0UN7fJWCiEob6fwgCVCSIGkGbgwxy2lkeNFNs8QwrvumXXx+s0/b9GjulrhdgUFocW4zfjNpIhVcK7tKWeq8ef3KnjJgcFEfL14pva5+r5LFQ05YJuHVeXXx1GgUhY8jtgVudVGboVeTnbUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769461334; c=relaxed/simple;
	bh=8x6wyS08s6WfKoSIfXc3hX2kI5c4SIOdRV/egsvzezI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jsyp0UwLtiw0RLpQ8SvW36cAFjW4gI3C0JZrI8H/1u/Yn/Op7iDu2jSRCYP8izLp0u2IioF4M7Bw8lRlD4zYwN4ffGkOXxI2M1fx1ltHASTCxj+8RxtiYB37O3PSgork0Cega/yRtJiLdzDCNIdzC1wd0VUkR4f/sR5A0TV399U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=beouqXbq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBE4AC116C6;
	Mon, 26 Jan 2026 21:02:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769461334;
	bh=8x6wyS08s6WfKoSIfXc3hX2kI5c4SIOdRV/egsvzezI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=beouqXbqqaaSYOiOO4C2eJud+5DY4aYi67w/HRJeIdAuIvSmqCrPjUJFnH+ozatp0
	 dkJjynhcSsTKoNNldvyCDDxBTzutcdmmr/wl3ERJcimd545zgnUdubtYKsMtcnlNLD
	 WUbcimJ9tO+nbypOUzeBs9wnEd02igdIxaQHJEZjObZONszOMAeAYb1dfh0UTQPobf
	 KM2IVcX2JUoufoXmUmbZ7Es60YsFLE1PV/mCgRxPYtgidMQaecEV2USAQJjrTDcvvE
	 PXu1G2fL76nDSNkDRX/TgGnD/jHw7vtS1iYWVYY5Ko0uFO+Uw9EVHPZ3lwEivb/jtA
	 jY/kQX7n9V7jw==
Date: Mon, 26 Jan 2026 13:02:12 -0800
From: Drew Fustini <fustini@kernel.org>
To: yunhui cui <cuiyunhui@bytedance.com>
Cc: Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Radim =?utf-8?B?S3LEjW3DocWZ?= <rkrcmar@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Adrien Ricciardi <aricciardi@baylibre.com>,
	Nicolas Pitre <npitre@baylibre.com>,
	Kornel =?utf-8?Q?Dul=C4=99ba?= <mindal@semihalf.com>,
	Atish Patra <atish.patra@linux.dev>,
	Atish Kumar Patra <atishp@rivosinc.com>,
	Vasudevan Srinivasan <vasu@rivosinc.com>,
	Ved Shanbhogue <ved@rivosinc.com>,
	Chen Pei <cp0613@linux.alibaba.com>,
	Liu Zhiwei <zhiwei_liu@linux.alibaba.com>,
	Weiwei Li <liwei1518@gmail.com>, guo.wenjia23@zte.com.cn,
	liu.qingtao2@zte.com.cn, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Reinette Chatre <reinette.chatre@intel.com>,
	Tony Luck <tony.luck@intel.com>, Babu Moger <babu.moger@amd.com>,
	Peter Newman <peternewman@google.com>,
	Fenghua Yu <fenghua.yu@intel.com>,
	James Morse <james.morse@arm.com>, Ben Horgan <ben.horgan@arm.com>,
	Dave Martin <Dave.Martin@arm.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	x86@kernel.org
Subject: Re: [External] [PATCH RFC 08/19] RISC-V: QoS: add resctrl interface
 for CBQRI controllers
Message-ID: <aXfWVPg7YTToDKcQ@x1>
References: <20260119-ssqosid-cbqri-v1-0-aa2a75153832@kernel.org>
 <20260119-ssqosid-cbqri-v1-8-aa2a75153832@kernel.org>
 <CAEEQ3w=fnq5Rsv0A49LSOqVS8hYQExSOSRQ6C8e8v5k4jBWOow@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAEEQ3w=fnq5Rsv0A49LSOqVS8hYQExSOSRQ6C8e8v5k4jBWOow@mail.gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259652-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,ventanamicro.com,sifive.com,baylibre.com,semihalf.com,linux.dev,rivosinc.com,linux.alibaba.com,gmail.com,zte.com.cn,intel.com,amd.com,google.com,arm.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,baylibre.com:email]
X-Rspamd-Queue-Id: EBEF48D728
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 09:01:30PM +0800, yunhui cui wrote:
> Hi Drew,
> 
> On Tue, Jan 20, 2026 at 12:15 PM Drew Fustini <fustini@kernel.org> wrote:
> >
> > Add interface for CBQRI controller drivers to make use of the resctrl
> > filesystem.
> >
> > Co-developed-by: Adrien Ricciardi <aricciardi@baylibre.com>
> > Signed-off-by: Adrien Ricciardi <aricciardi@baylibre.com>
> > Signed-off-by: Drew Fustini <fustini@kernel.org>
> > ---
> >  arch/riscv/kernel/qos/qos_resctrl.c | 1191 +++++++++++++++++++++++++++++++++++
> >  1 file changed, 1191 insertions(+)
> >
> > diff --git a/arch/riscv/kernel/qos/qos_resctrl.c b/arch/riscv/kernel/qos/qos_resctrl.c
> > new file mode 100644
> > index 000000000000..5e3a65342e9b
> > --- /dev/null
> > +++ b/arch/riscv/kernel/qos/qos_resctrl.c
[..]
> > +/* Set capacity block mask (cc_block_mask) */
> > +static void cbqri_set_cbm(struct cbqri_controller *ctrl, u64 cbm)
> > +{
> > +               int reg_offset;
> > +               u64 reg;
> > +
> > +               reg_offset = CBQRI_CC_BLOCK_MASK_OFF;
> > +               reg = ioread64(ctrl->base + reg_offset);
> > +
> > +               reg = cbm;
> > +               iowrite64(reg, ctrl->base + reg_offset);
> > +}
> > +
> 
> too much indentation ？

Thanks, will fix indentation for cbqri_set_cbm, cbqri_set_rbwb, and
cbqri_get_rbwb.

> > +static int cbqri_wait_busy_flag(struct cbqri_controller *ctrl, int reg_offset)
> > +{
> > +       unsigned long timeout = jiffies + (HZ / 10); /* Timeout after 100ms */
> 
> hung task ?

Good point, this is too long. I tried 100 us which wasn't long enough
for Qemu on my system but 1,000 us worked okay.

I will change to 1,000 us.

        unsigned long timeout = jiffies + usecs_to_jiffies(1000);

> > +u32 resctrl_arch_get_config(struct rdt_resource *r, struct rdt_ctrl_domain *d,
> > +                           u32 closid, enum resctrl_conf_type type)
> > +{
> > +       struct cbqri_resctrl_dom *hw_dom;
> > +       struct cbqri_controller *ctrl;
> > +       int reg_offset;
> > +       u32 percent;
> > +       u32 rbwb;
> > +       u64 reg;
> > +       int err;
> > +
> > +       hw_dom = container_of(d, struct cbqri_resctrl_dom, resctrl_ctrl_dom);
> > +
> > +       ctrl = hw_dom->hw_ctrl;
> > +
> > +       if (!r->alloc_capable)
> > +               return -EINVAL;
> 
> u32 ?

Good point.  I looked at mpam_resctrl.c and it returns the default value
on error:
https://lore.kernel.org/all/20260112165914.4086692-19-ben.horgan@arm.com/

I will change to 'return resctrl_get_default_ctrl(r)'.

> > +
> > +       switch (r->rid) {
> > +       case RDT_RESOURCE_L2:
> > +       case RDT_RESOURCE_L3:
> > +               /* Clear cc_block_mask before read limit operation */
> > +               cbqri_set_cbm(ctrl, 0);
> > +
> > +               /* Capacity read limit operation for RCID (closid) */
> > +               err = cbqri_cc_alloc_op(ctrl, CBQRI_CC_ALLOC_CTL_OP_READ_LIMIT, type, closid);
> > +               if (err < 0) {
> > +                       pr_err("%s(): operation failed: err = %d", __func__, err);
> > +                       return -EIO;
> 
> u32 ?

Same as above.

> > +               }
> > +
> > +               /* Read capacity block mask for RCID (closid) */
> > +               reg_offset = CBQRI_CC_BLOCK_MASK_OFF;
> > +               reg = ioread64(ctrl->base + reg_offset);
> > +
> > +               /* Update the config value for the closid in this domain */
> > +               hw_dom->ctrl_val[closid] = reg;
> > +               return hw_dom->ctrl_val[closid];
> > +
> > +       case RDT_RESOURCE_MBA:
> > +               /* Capacity read limit operation for RCID (closid) */
> > +               err = cbqri_bc_alloc_op(ctrl, CBQRI_CC_ALLOC_CTL_OP_READ_LIMIT, closid);
> > +               if (err < 0) {
> > +                       pr_err("%s(): operation failed: err = %d", __func__, err);
> > +                       return -EIO;
> > +               }
> > +
> > +               hw_dom->ctrl_val[closid] = cbqri_get_rbwb(ctrl);
> > +
> > +               /* Convert from bandwidth blocks to percent */
> > +               rbwb = hw_dom->ctrl_val[closid];
> > +               rbwb *= 100;
> > +               percent = rbwb / ctrl->bc.nbwblks;
> > +               if (rbwb % ctrl->bc.nbwblks)
> > +                       percent++;
> 
> set: 10, get 11 ?

The intention was to handle rounding up but I can drop this increment.

[..]
> > +static int cbqri_probe_controller(struct cbqri_controller_info *ctrl_info,
> > +                                 struct cbqri_controller *ctrl)
> > +{
> > +       int err = 0, status;
> > +       u64 reg;
> > +
> > +       pr_info("controller info: type=%d addr=0x%lx size=%lu max-rcid=%u max-mcid=%u",
> > +               ctrl_info->type, ctrl_info->addr, ctrl_info->size,
> > +               ctrl_info->rcid_count, ctrl_info->mcid_count);
> > +
> > +       /* max_rmid is used by resctrl_arch_system_num_rmid_idx() */
> > +       max_rmid = ctrl_info->mcid_count;
> > +
> > +       ctrl->ctrl_info = ctrl_info;
> > +
> > +       /* Try to access the memory-mapped CBQRI registers */
> > +       if (!request_mem_region(ctrl_info->addr, ctrl_info->size, "cbqri_controller")) {
> > +               pr_warn("%s(): return %d", __func__, err);
> > +               return err;
> 
> err = 0?

Good point, I will change it to return -EBUSY.

[..]
> > +int qos_resctrl_setup(void)
> > +{
> > +       struct rdt_ctrl_domain *domain, *domain_temp;
> > +       struct cbqri_controller_info *ctrl_info;
> > +       struct cbqri_controller *ctrl;
> > +       struct cbqri_resctrl_res *res;
> > +       static int found_controllers;
> > +       int err = 0;
> > +       int id = 0;
> > +       int i;
> > +
> > +       list_for_each_entry(ctrl_info, &cbqri_controllers, list) {
> > +               err = cbqri_probe_controller(ctrl_info, &controllers[found_controllers]);
> > +               if (err) {
> > +                       pr_warn("%s(): failed (%d)", __func__, err);
> > +                       goto err_unmap_controllers;
> > +               }
> > +
> > +               found_controllers++;
> > +               if (found_controllers > MAX_CONTROLLERS) {
> > +                       pr_warn("%s(): increase MAX_CONTROLLERS value", __func__);
> > +                       break;
> > +               }
> > +       }
> > +
> > +       for (i = 0; i < RDT_NUM_RESOURCES; i++) {
> > +               res = &cbqri_resctrl_resources[i];
> > +               INIT_LIST_HEAD(&res->resctrl_res.ctrl_domains);
> > +               INIT_LIST_HEAD(&res->resctrl_res.mon_domains);
> > +               res->resctrl_res.rid = i;
> > +       }
> > +
> > +       for (i = 0; i < found_controllers; i++) {
> > +               ctrl = &controllers[i];
> 
> controllers[6] ?

This is limitation from the proof-of-concept. I need to refactor this so
that it is dynamically allocated based on the number of controllers
present in the system

Thanks,
Drew

