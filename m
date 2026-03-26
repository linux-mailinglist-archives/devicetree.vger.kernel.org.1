Return-Path: <devicetree+bounces-281171-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIMIOP8WxWnr6QQAu9opvQ
	(envelope-from <devicetree+bounces-281171-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 12:22:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C125334611
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 12:22:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BE6253058DF9
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 11:13:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 920C038D01F;
	Thu, 26 Mar 2026 11:13:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mxhk.zte.com.cn (mxhk.zte.com.cn [160.30.148.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7EFE3876AB;
	Thu, 26 Mar 2026 11:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.30.148.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774523637; cv=none; b=omC+5VA/9op3FG32FvWUSc2dJd/+3kEWJ52sgR7g0xUApv/Kr18ZkMJh8vhHNz9cidTdeHK0Q2ZAiPzzObRKs6EqaS7X2P30fRmc+c7g7lsaVHY7HLp1169SRe10ZlMSkN1CdprN3UatWHcJDu1riiQm9bv12SyUlwXAcFSXQu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774523637; c=relaxed/simple;
	bh=fvAU+Ju+dI6rjigsBHAd/7B9gtQjb/SPfrAcLIZjUBA=;
	h=Message-Id:In-Reply-To:References:Date:Mime-Version:From:To:Cc:
	 Subject:Content-Type; b=YvX/VJG3yOgyNWy7payGqy7VuUeAU6VmQ0/6YhcAus70nXS0iRlXriHUSLqMbhxGq3sXGTwM2BjVtMz8DTKirNdHSB2WeIWi6uN3j76/6xRLroYcf30lumAwOecNVuTKAyHkfX0Iejv5v4u7FDgm2MxT11oo6vJkynsXFB/3jXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zte.com.cn; spf=pass smtp.mailfrom=zte.com.cn; arc=none smtp.client-ip=160.30.148.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zte.com.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zte.com.cn
Received: from mse-db.zte.com.cn (unknown [10.5.228.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4fhLkS4GSDz8Xs71;
	Thu, 26 Mar 2026 19:13:52 +0800 (CST)
Received: (from root@localhost)
	by mse-db.zte.com.cn id 62QBDn8T007047;
	Thu, 26 Mar 2026 19:13:49 +0800 (+08)
	(envelope-from guo.wenjia23@zte.com.cn)
Message-Id: <202603261113.62QBDn8T007047@mse-db.zte.com.cn>
Received: from njb2app06.zte.com.cn ([10.55.23.119])
	by mse-fl2.zte.com.cn with SMTP id 62QB5kdA005832;
	Thu, 26 Mar 2026 19:05:46 +0800 (+08)
	(envelope-from guo.wenjia23@zte.com.cn)
Received: from mapi (njy2app08[null])
	by mapi (Zmail) with MAPI id mid202;
	Thu, 26 Mar 2026 19:05:48 +0800 (CST)
X-Zmail-TransId: 2b0069c5130c527-f477b
X-Mailer: Zmail v1.0
In-Reply-To: <20260119-ssqosid-cbqri-v1-8-aa2a75153832@kernel.org>
References: 20260119-ssqosid-cbqri-v1-0-aa2a75153832@kernel.org,20260119-ssqosid-cbqri-v1-8-aa2a75153832@kernel.org
Date: Thu, 26 Mar 2026 19:05:48 +0800 (CST)
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
        <guo.wenjia23@zte.com.cn>, <james.morse@arm.com>, <krzk+dt@kernel.org>,
        <lenb@kernel.org>, <linux-acpi@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <liu.qingtao2@zte.com.cn>, <liwei1518@gmail.com>,
        <mindal@semihalf.com>, <npitre@baylibre.com>, <palmer@dabbelt.com>,
        <paul.walmsley@sifive.com>, <peternewman@google.com>, <pjw@kernel.org>,
        <rafael@kernel.org>, <reinette.chatre@intel.com>,
        <rkrcmar@ventanamicro.com>, <robert.moore@intel.com>,
        <robh@kernel.org>, <samuel.holland@sifive.com>,
        <sunilvl@ventanamicro.com>, <tony.luck@intel.com>, <vasu@rivosinc.com>,
        <ved@rivosinc.com>, <x86@kernel.org>, <zhiwei_liu@linux.alibaba.com>
Subject: =?UTF-8?B?UmU6IFtQQVRDSCBSRkMgMDgvMTldIFJJU0MtVjogUW9TOiBhZGQgcmVzY3RybCBpbnRlcmZhY2UgZm9yIENCUVJJIGNvbnRyb2xsZXJz?=
Content-Type: text/plain;
	charset="UTF-8"
X-MAIL:mse-db.zte.com.cn 62QBDn8T007047
X-MSS: AUDITRELEASE@mse-db.zte.com.cn
X-TLS: YES
X-SPF-DOMAIN: zte.com.cn
X-ENVELOPE-SENDER: guo.wenjia23@zte.com.cn
X-SPF: None
X-SOURCE-IP: 10.5.228.131 unknown Thu, 26 Mar 2026 19:13:52 +0800
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 69C514F0.001/4fhLkS4GSDz8Xs71
X-Spamd-Result: default: False [3.19 / 15.00];
	SUBJ_EXCESS_BASE64(1.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	R_BAD_CTE_7BIT(1.05)[unknown,utf8];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[zte.com.cn : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[arm.com,lists.linux.dev,ghiti.fr,eecs.berkeley.edu,baylibre.com,linux.dev,rivosinc.com,amd.com,kernel.org,linux.alibaba.com,bytedance.com,vger.kernel.org,intel.com,zte.com.cn,lists.infradead.org,gmail.com,semihalf.com,dabbelt.com,sifive.com,google.com,ventanamicro.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-281171-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mse-db.zte.com.cn:mid,baylibre.com:email];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guo.wenjia23@zte.com.cn,devicetree@vger.kernel.org];
	FROM_NO_DN(0.00)[];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[42];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2C125334611
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Drew,

On Thu, Jan 29, 2026 at 4:28 AM Drew Fustini <fustini@kernel.org> wrote:>
> Add interface for CBQRI controller drivers to make use of the resctrl
> filesystem.
>
> Co-developed-by: Adrien Ricciardi <aricciardi@baylibre.com>
> Signed-off-by: Adrien Ricciardi <aricciardi@baylibre.com>
> Signed-off-by: Drew Fustini <fustini@kernel.org>
> ---
>  arch/riscv/kernel/qos/qos_resctrl.c | 1192 +++++++++++++++++++++++++++++++++++
>  1 file changed, 1192 insertions(+)
>
> ...
>
> +
> +int resctrl_arch_update_one(struct rdt_resource *r, struct rdt_ctrl_domain *d,
> +                           u32 closid, enum resctrl_conf_type t, u32 cfg_val)
> +{
> +       struct cbqri_controller *ctrl;
> +       struct cbqri_resctrl_dom *dom;
> +       struct cbqri_config cfg;
> +       int err = 0;
> +
> +       dom = container_of(d, struct cbqri_resctrl_dom, resctrl_ctrl_dom);
> +       ctrl = dom->hw_ctrl;
> +
> +       if (!r->alloc_capable)
> +               return -EINVAL;
> +
> +       switch (r->rid) {
> +       case RDT_RESOURCE_L2:
> +       case RDT_RESOURCE_L3:
> +               cfg.cbm = cfg_val;
> +               err = cbqri_apply_cache_config(dom, closid, t, &cfg);
> +               break;
> +       case RDT_RESOURCE_MBA:
> +               /* covert from percentage to bandwidth blocks */
> +               cfg.rbwb = cfg_val * ctrl->bc.nbwblks / 100;

Should use bc.mrbwb to calculate rbwb? 
I think bc.nbwblks represent the available bw blks in the controller. It should should decrease as they are allocated.

> +               err = cbqri_apply_bw_config(dom, closid, t, &cfg);
> +               break;
> +       default:
> +               return -EINVAL;
> +       }
> +
> +       return err;
> +}
>
> ...
>
> +u32 resctrl_arch_get_config(struct rdt_resource *r, struct rdt_ctrl_domain *d,
> +                           u32 closid, enum resctrl_conf_type type)
> +{
> +       struct cbqri_resctrl_dom *hw_dom;
> +       struct cbqri_controller *ctrl;
> +       int reg_offset;
> +       u32 percent;
> +       u32 rbwb;
> +       u64 reg;
> +       int err;
> +
> +       hw_dom = container_of(d, struct cbqri_resctrl_dom, resctrl_ctrl_dom);
> +
> +       ctrl = hw_dom->hw_ctrl;
> +
> +       if (!r->alloc_capable)
> +               return resctrl_get_default_ctrl(r);
> +
> +       switch (r->rid) {
> +       case RDT_RESOURCE_L2:
> +       case RDT_RESOURCE_L3:
> +               /* Clear cc_block_mask before read limit operation */
> +               cbqri_set_cbm(ctrl, 0);
> +
> +               /* Capacity read limit operation for RCID (closid) */
> +               err = cbqri_cc_alloc_op(ctrl, CBQRI_CC_ALLOC_CTL_OP_READ_LIMIT, type, closid);
> +               if (err < 0) {
> +                       pr_err("%s(): operation failed: err = %d", __func__, err);
> +                       return resctrl_get_default_ctrl(r);
> +               }
> +
> +               /* Read capacity block mask for RCID (closid) */
> +               reg_offset = CBQRI_CC_BLOCK_MASK_OFF;
> +               reg = ioread64(ctrl->base + reg_offset);
> +
> +               /* Update the config value for the closid in this domain */
> +               hw_dom->ctrl_val[closid] = reg;
> +               return hw_dom->ctrl_val[closid];
> +
> +       case RDT_RESOURCE_MBA:
> +               /* Capacity read limit operation for RCID (closid) */
> +               err = cbqri_bc_alloc_op(ctrl, CBQRI_CC_ALLOC_CTL_OP_READ_LIMIT, closid);
> +               if (err < 0) {
> +                       pr_err("%s(): operation failed: err = %d", __func__, err);
> +                       return resctrl_get_default_ctrl(r);
> +               }
> +
> +               hw_dom->ctrl_val[closid] = cbqri_get_rbwb(ctrl);
> +
> +               /* Convert from bandwidth blocks to percent */
> +               rbwb = hw_dom->ctrl_val[closid];
> +               rbwb *= 100;
> +               percent = rbwb / ctrl->bc.nbwblks;
> +               if (rbwb % ctrl->bc.nbwblks)

Same problem.

> +                       percent++;
> +               return percent;
> +
> +       default:
> +               return resctrl_get_default_ctrl(r);
> +       }
> +}


Thank,
Wenjia

