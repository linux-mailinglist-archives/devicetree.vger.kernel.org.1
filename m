Return-Path: <devicetree+bounces-282847-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNTdOIqGy2l4IgYAu9opvQ
	(envelope-from <devicetree+bounces-282847-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 10:32:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BA23662C1
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 10:32:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1468E3003483
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 08:20:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1AF83DBD7A;
	Tue, 31 Mar 2026 08:20:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mxhk.zte.com.cn (mxhk.zte.com.cn [160.30.148.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9847B3DC4BA;
	Tue, 31 Mar 2026 08:20:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.30.148.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774945208; cv=none; b=kRN3LdFYQ/2OMNPNSHu9ltTzUT98KP/4gVqNWjavLR05Ye3cVKHsDhmUknk+pCqQ0kF9Br31RbgTQiOmTE+HXaH07gCrVGW3q8bzn5eG7tB+yJexxAmQ4N2C1mYMBYb6VElbMN1C57c9V2xo63VDjdUYXXBVtgBxSZBrEppjS2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774945208; c=relaxed/simple;
	bh=0kSj8hSAZmwl6t8lr7RI1bbR7jDScXffGLYzcYxRRgI=;
	h=Message-Id:In-Reply-To:References:Date:Mime-Version:From:To:Cc:
	 Subject:Content-Type; b=D+SsLe9frTltSDAQ+1auwoNwYJ0kOB7Fl/9nspBqlknUMlKIjRCP+n/ycIEoS9cbCJJnMVwQzy+Lb24QZ3w6iPe8n8igFJdtE/q+QIm2cwlPeZiI6MCceAtR/+FQM3wSJXb9ub9nFke+VB2xR65VgSUmmHSPR3eRhCkRp1u0xs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zte.com.cn; spf=pass smtp.mailfrom=zte.com.cn; arc=none smtp.client-ip=160.30.148.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zte.com.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zte.com.cn
Received: from mse-db.zte.com.cn (unknown [10.5.228.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4flLdX5pdsz8Xs79;
	Tue, 31 Mar 2026 16:20:00 +0800 (CST)
Received: (from root@localhost)
	by mse-db.zte.com.cn id 62V8JvQH035753;
	Tue, 31 Mar 2026 16:19:57 +0800 (+08)
	(envelope-from guo.wenjia23@zte.com.cn)
Message-Id: <202603310819.62V8JvQH035753@mse-db.zte.com.cn>
Received: from njb2app07.zte.com.cn ([10.55.22.95])
	by mse-fl2.zte.com.cn with SMTP id 62V8Ema8051473;
	Tue, 31 Mar 2026 16:14:48 +0800 (+08)
	(envelope-from guo.wenjia23@zte.com.cn)
Received: from mapi (njb2app05[null])
	by mapi (Zmail) with MAPI id mid202;
	Tue, 31 Mar 2026 16:14:50 +0800 (CST)
X-Zmail-TransId: 2afd69cb827ad7e-fe1e5
X-Mailer: Zmail v1.0
In-Reply-To: <actiYi6ACcOrvz9J@gen8>
References: 20260119-ssqosid-cbqri-v1-8-aa2a75153832@kernel.org,202603261113.62QBDn8T007047@mse-db.zte.com.cn,actiYi6ACcOrvz9J@gen8
Date: Tue, 31 Mar 2026 16:14:50 +0800 (CST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
From: <guo.wenjia23@zte.com.cn>
To: <fustini@kernel.org>
Cc: <dave.martin@arm.com>, <acpica-devel@lists.linux.dev>, <alex@ghiti.fr>,
        <aou@eecs.berkeley.edu>, <aricciardi@baylibre.com>,
        <atish.patra@linux.dev>, <atishp@rivosinc.com>, <babu.moger@amd.com>,
        <ben.horgan@arm.com>, <conor+dt@kernel.org>,
        <cp0613@linux.alibaba.com>, <cuiyunhui@bytedance.com>,
        <devicetree@vger.kernel.org>, <fenghua.yu@intel.com>,
        <james.morse@arm.com>, <krzk+dt@kernel.org>, <lenb@kernel.org>,
        <linux-acpi@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-riscv@lists.infradead.org>, <liu.qingtao2@zte.com.cn>,
        <liwei1518@gmail.com>, <mindal@semihalf.com>, <npitre@baylibre.com>,
        <palmer@dabbelt.com>, <paul.walmsley@sifive.com>,
        <peternewman@google.com>, <pjw@kernel.org>, <rafael@kernel.org>,
        <reinette.chatre@intel.com>, <rkrcmar@ventanamicro.com>,
        <robert.moore@intel.com>, <robh@kernel.org>,
        <samuel.holland@sifive.com>, <sunilvl@ventanamicro.com>,
        <tony.luck@intel.com>, <vasu@rivosinc.com>, <ved@rivosinc.com>,
        <x86@kernel.org>, <zhiwei_liu@linux.alibaba.com>
Subject: =?UTF-8?B?UmU6IFtQQVRDSCBSRkMgMDgvMTldIFJJU0MtVjogUW9TOiBhZGQgcmVzY3RybCBpbnRlcmZhY2UgZm9yIENCUVJJIGNvbnRyb2xsZXJz?=
Content-Type: text/plain;
	charset="UTF-8"
X-MAIL:mse-db.zte.com.cn 62V8JvQH035753
X-MSS: AUDITRELEASE@mse-db.zte.com.cn
X-TLS: YES
X-SPF-DOMAIN: zte.com.cn
X-ENVELOPE-SENDER: guo.wenjia23@zte.com.cn
X-SPF: None
X-SOURCE-IP: 10.5.228.131 unknown Tue, 31 Mar 2026 16:20:00 +0800
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 69CB83B0.002/4flLdX5pdsz8Xs79
X-Spamd-Result: default: False [3.19 / 15.00];
	SUBJ_EXCESS_BASE64(1.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	R_BAD_CTE_7BIT(1.05)[unknown,utf8];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[zte.com.cn : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[arm.com,lists.linux.dev,ghiti.fr,eecs.berkeley.edu,baylibre.com,linux.dev,rivosinc.com,amd.com,kernel.org,linux.alibaba.com,bytedance.com,vger.kernel.org,intel.com,lists.infradead.org,zte.com.cn,gmail.com,semihalf.com,dabbelt.com,sifive.com,google.com,ventanamicro.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-282847-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[zte.com.cn:email,mse-db.zte.com.cn:mid,baylibre.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guo.wenjia23@zte.com.cn,devicetree@vger.kernel.org];
	FROM_NO_DN(0.00)[];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-0.977];
	RCPT_COUNT_TWELVE(0.00)[41];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E8BA23662C1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Drew,

> On Thu, Mar 26, 2026 at 07:05:48PM +0800, guo.wenjia23@zte.com.cn wrote:
> > Hi Drew,
> > 
> > On Thu, Jan 29, 2026 at 4:28 AM Drew Fustini <fustini@kernel.org> wrote:>
> > > Add interface for CBQRI controller drivers to make use of the resctrl
> > > filesystem.
> > >
> > > Co-developed-by: Adrien Ricciardi <aricciardi@baylibre.com>
> > > Signed-off-by: Adrien Ricciardi <aricciardi@baylibre.com>
> > > Signed-off-by: Drew Fustini <fustini@kernel.org>
> > > ---
> > >  arch/riscv/kernel/qos/qos_resctrl.c | 1192 +++++++++++++++++++++++++++++++++++
> > >  1 file changed, 1192 insertions(+)
> > >
> > > ...
> > >
> > > +
> > > +int resctrl_arch_update_one(struct rdt_resource *r, struct rdt_ctrl_domain *d,
> > > +                           u32 closid, enum resctrl_conf_type t, u32 cfg_val)
> > > +{
> > > +       struct cbqri_controller *ctrl;
> > > +       struct cbqri_resctrl_dom *dom;
> > > +       struct cbqri_config cfg;
> > > +       int err = 0;
> > > +
> > > +       dom = container_of(d, struct cbqri_resctrl_dom, resctrl_ctrl_dom);
> > > +       ctrl = dom->hw_ctrl;
> > > +
> > > +       if (!r->alloc_capable)
> > > +               return -EINVAL;
> > > +
> > > +       switch (r->rid) {
> > > +       case RDT_RESOURCE_L2:
> > > +       case RDT_RESOURCE_L3:
> > > +               cfg.cbm = cfg_val;
> > > +               err = cbqri_apply_cache_config(dom, closid, t, &cfg);
> > > +               break;
> > > +       case RDT_RESOURCE_MBA:
> > > +               /* covert from percentage to bandwidth blocks */
> > > +               cfg.rbwb = cfg_val * ctrl->bc.nbwblks / 100;
> > 
> > Should use bc.mrbwb to calculate rbwb? 
> > I think bc.nbwblks represent the available bw blks in the controller.
> It should should decrease as they are allocated.
> 
> The resctrl MBA resource is supposed to be the percentage of total
> memory bandwidth. nbwblks is the total number of bandwidth blocks, so I
> think the existing calucation is correct.
> 
> From the example SoC configuration, the number of bandwidth blocks is
> 1024, and mrbwb is meant to be 80% of nbwblks which is 819.
> 
> Setting MB to 80% in schemata would yield: 80 * 1024 / 100 = 819
> 

According to the specification
1. The MRBWB field reports the maximum number of bandwidth blocks that can be reserved.
2. The sum of Rbwb allocated across all rcids must not exceed MRBWB value.

Based on the specification and the example you mentioned, can this be understood as follows:

MRBWB is a fixed value determined by the SoC configuration, representing the effective bandwidth capacity of the bandwidth controller. 
And the MRBWB value itself should remain constant and must not vary after the bandwidth allocations assigned to RCIDs.


Thanks,
Wenjia

