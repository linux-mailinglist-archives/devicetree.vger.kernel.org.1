Return-Path: <devicetree+bounces-282021-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KITrJoy/yGmDqAUAu9opvQ
	(envelope-from <devicetree+bounces-282021-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 07:58:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0DD350DDF
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 07:58:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B15103004685
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 05:58:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DE3A28FFFB;
	Sun, 29 Mar 2026 05:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxWl03Or"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5896F23183B;
	Sun, 29 Mar 2026 05:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774763911; cv=none; b=IEyN1HgdUL+KsHfrhgrJsoyIS2KIkKJPfGwZwDnVaXtkiRElJTonGIh1JTnpBTV/W00s2p2pqAn4ltWBByi97EVZoXRu/C1lR3yN5mN6LI3mR/Dt4eSJkTPkzZw3p/NY3LxPloxyipOUQ1rMNImY7Blm9zT8bXVSZLUvlgNn5yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774763911; c=relaxed/simple;
	bh=fojIAIARbeeLN70cfaOpPb/P7/PMERluDOhkJ8dJ6w0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XZmDFzeDMpJMuT1hao4XeveunuIUnZxAgzP06LDWiQ2kSpjVURpt05VoVtzZYsl0ovSV2GEsXhGDeabfsng780LWa4sqtvPYA1r4PbcRNC46W3OhQQxCUv21aQkRIWdGCwvWrO/M1QXxFqHIG+WjGOYuE/Suv+x5URSaE1RCbFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxWl03Or; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93A4DC116C6;
	Sun, 29 Mar 2026 05:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774763910;
	bh=fojIAIARbeeLN70cfaOpPb/P7/PMERluDOhkJ8dJ6w0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mxWl03Or51MD1rhCsEdjSAbEyQJ+RvZd9u5Lr4bX5ZjcFTqeJ7HLg/xrp1Vrzow22
	 2DOKkIqRJfEJXP2khwOlOR1ctiTddn12CMawF3Ji1kMZOPBERe3ex0wy6D8AkiF0lC
	 ++DPORHpPV5N9JXoDDK/Y0GdIlUT6hUvbY4U58kPZ0PhaZXhTFBUHIM/TkgI/xILYy
	 XgcQPIljE7w1THLhvykw+D2Tuy9jqEpBnL6y9L1KWL7ywgUJeWWUqUT/FNzJ6N6Z7B
	 7Q7VfWHGmvz/8JvAAK/fHsJkFOB8opMhjQF1G1o1fK+1g+9y4d1EmWHSuC36m1ACmj
	 dMUd5kEZvZyOg==
Date: Sat, 28 Mar 2026 22:58:28 -0700
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
	liu.qingtao2@zte.com.cn,
	Reinette Chatre <reinette.chatre@intel.com>,
	Tony Luck <tony.luck@intel.com>, Babu Moger <babu.moger@amd.com>,
	Peter Newman <peternewman@google.com>,
	Fenghua Yu <fenghua.yu@intel.com>,
	James Morse <james.morse@arm.com>, Ben Horgan <ben.horgan@arm.com>,
	Dave Martin <Dave.Martin@arm.com>, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, x86@kernel.org,
	Rob Herring <robh@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Len Brown <lenb@kernel.org>, Robert Moore <robert.moore@intel.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	linux-acpi@vger.kernel.org, acpica-devel@lists.linux.dev,
	devicetree@vger.kernel.org
Subject: Re: [External] [PATCH RFC v2 06/17] RISC-V: QoS: define CBQRI
 resctrl resources and domains
Message-ID: <aci_hDY4JB9zNTci@gen8>
References: <20260128-ssqosid-cbqri-v2-0-dca586b091b9@kernel.org>
 <20260128-ssqosid-cbqri-v2-6-dca586b091b9@kernel.org>
 <CAEEQ3wmuAnHU1VBFDwbCBFb8j63ZcizJ3jEC2SiVWnoMPc4=SA@mail.gmail.com>
 <acOFef6f9og1hft2@gen8>
 <CAEEQ3w=zV1k+uea5D9tnO=O5X5LQUpyNVZi8V8TOANxXJQbg=w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAEEQ3w=zV1k+uea5D9tnO=O5X5LQUpyNVZi8V8TOANxXJQbg=w@mail.gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-282021-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[41];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,ventanamicro.com,sifive.com,baylibre.com,semihalf.com,linux.dev,rivosinc.com,linux.alibaba.com,gmail.com,zte.com.cn,intel.com,amd.com,google.com,arm.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9F0DD350DDF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 26, 2026 at 04:32:47PM +0800, yunhui cui wrote:
> Hi Drew，
> 
> On Wed, Mar 25, 2026 at 2:49 PM Drew Fustini <fustini@kernel.org> wrote:
> >
> > On Wed, Mar 25, 2026 at 10:31:39AM +0800, yunhui cui wrote:
> > > Hi Drew,
> > >
> > > On Thu, Jan 29, 2026 at 4:28 AM Drew Fustini <fustini@kernel.org> wrote:
> > > >
> > > > Define data structures to encapsulate the resctrl resource
> > > > and domain structures.
> > > >
> > > > Co-developed-by: Adrien Ricciardi <aricciardi@baylibre.com>
> > > > Signed-off-by: Adrien Ricciardi <aricciardi@baylibre.com>
> > > > [fustini: rebased current upstream]
> > > > Signed-off-by: Drew Fustini <fustini@kernel.org>
> > > > ---
> > > >  arch/riscv/kernel/qos/internal.h | 27 +++++++++++++++++++++++++++
> > > >  1 file changed, 27 insertions(+)
> > > >
> > > > diff --git a/arch/riscv/kernel/qos/internal.h b/arch/riscv/kernel/qos/internal.h
> > > > index ff2c7eff50be..c0402dd06cfa 100644
> > > > --- a/arch/riscv/kernel/qos/internal.h
> > > > +++ b/arch/riscv/kernel/qos/internal.h
> > > > @@ -65,6 +65,11 @@
> > > >  #define CBQRI_BC_ALLOC_CTL_OP_READ_LIMIT   2
> > > >  #define CBQRI_BC_ALLOC_CTL_STATUS_SUCCESS  1
> > > >
> > > > +int qos_resctrl_setup(void);
> > > > +void qos_resctrl_exit(void);
> > > > +int qos_resctrl_online_cpu(unsigned int cpu);
> > > > +int qos_resctrl_offline_cpu(unsigned int cpu);
> > > > +
> > > >  /* Capacity Controller hardware capabilities */
> > > >  struct riscv_cbqri_capacity_caps {
> > > >         u16 ncblks; /* number of capacity blocks */
> > > > @@ -125,4 +130,26 @@ struct cbqri_controller {
> > > >         bool mon_capable;
> > > >  };
> > > >
> > > > +struct cbqri_resctrl_res {
> > > > +       struct rdt_resource     resctrl_res;
> > > > +       struct cbqri_controller controller;
> > > > +       u32 max_rcid;
> > > > +       u32 max_mcid;
> > > > +};
> > > > +
> > > > +struct cbqri_resctrl_dom {
> > > > +       struct rdt_domain_hdr       resctrl_dom_hdr;
> > > > +       struct rdt_ctrl_domain  resctrl_ctrl_dom;
> > > > +       struct rdt_mon_domain   resctrl_mon_dom;
> > > > +       u64 cbm;
> > > > +       u64 rbwb;
> > > > +       u64 *ctrl_val;
> > > > +       struct cbqri_controller *hw_ctrl;
> > > > +};
> > > > +
> > >
> > > Can we trim down some fields? For example:
> > >  struct cbqri_resctrl_res {
> > >         struct rdt_resource     resctrl_res;
> > > -       struct cbqri_controller controller;
> > >         u32 max_rcid;
> > >         u32 max_mcid;
> > >  };
> > >
> > >  struct cbqri_resctrl_dom {
> > > -       struct rdt_domain_hdr       resctrl_dom_hdr;
> > >         struct rdt_ctrl_domain  resctrl_ctrl_dom;
> > >         struct rdt_mon_domain   resctrl_mon_dom;
> > > -       u64 cbm;
> > > -       u64 rbwb;
> > >         u64 *ctrl_val;
> > >         struct cbqri_controller *hw_ctrl;
> > >  };
> >
> > Can you explain why you don't think these are needed??
> 
> The functionality works well without those fields, feel free to try.

Thanks for pointing this out. I have removed them.

> Btw, when do you plan to send the next revision?

The current branch is based on 6.19 so I need to rebase. I have
addressesd most of the feedback so far except for tracking default
closid/rmid for a cpu. I am thinking I should send a new version as it
has been a long time and describe the open items that I have not solved
yet.

Thanks,
Drew

