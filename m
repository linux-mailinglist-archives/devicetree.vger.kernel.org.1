Return-Path: <devicetree+bounces-260144-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qHhcMtQ3eWkJwAEAu9opvQ
	(envelope-from <devicetree+bounces-260144-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 23:10:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3238B9AEC0
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 23:10:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7B0D530107CF
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 22:10:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E0DC33436D;
	Tue, 27 Jan 2026 22:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asPY2b0P"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 686662FD1DC;
	Tue, 27 Jan 2026 22:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769551824; cv=none; b=OPbfZroYkGaL7U+PCUa0hq3qcBQcNF0jG4TtxO4bh3RRYK9Yudw9+/lLccvmeeHFS+Fhv6DyYiMbjjYnjCVlQcPJpZkfV5lu8pp2Rm2jd/NiflJVLXksMgkleqlUuHMPfxwtgHl/lAQ/+tbnk/85nhf/zfRlswFA5LSEyke0IE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769551824; c=relaxed/simple;
	bh=T1bfZ5aiqTQ/sFSevXZf16ujCOKTGhTUPz9xxVI+OQU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q1auxA5WX/HOw+oFHDr02xSb/z5dUYp1P4qncYzhjXfAp8LNDw3A0RW6rLn2pXtMvbu8vTURRNpYHJYYBHhSzurgDsNP0tPoEmpjzpQcAPRvLaBhIEnX16iov3ZQ/ng5Jlxvk1FK1MfXUSv1K01DkdwB+2SpEibQac5bGMe8WrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=asPY2b0P; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D7BBC116C6;
	Tue, 27 Jan 2026 22:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769551824;
	bh=T1bfZ5aiqTQ/sFSevXZf16ujCOKTGhTUPz9xxVI+OQU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=asPY2b0P6PTxKcgn4M/EQv/eeC1mZP3TX0FYuO7SbRXPsYEaEM/LfHs4TtxZSRKZe
	 xDQLyWtCJUluiWJd+ja/iK5bZTl2zLJCDWSLht/9SVQakZyMl1mzjL55OCIyvlMssf
	 G9aHp9VaACCCCysb3hCy/ctc9+ej1Hby4dxXZwxjJC7leJlxqKdyUfzbfEysYyaZVc
	 Y7UlCk3OUwxepQx1YU1F5cD0nUbQT7TeDR8+0psU/AuSN3tsl4Mf5uyxl/ipycliU+
	 awcN419Rv3urC4pBbrj11ub5xYPS3Zogq9x9jDFIbu8neFnBRsZnPCO4zVuRpF4stI
	 CepEPah88+eXg==
Date: Tue, 27 Jan 2026 14:10:22 -0800
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
Message-ID: <aXk3zq26cU8r/COG@x1>
References: <20260119-ssqosid-cbqri-v1-0-aa2a75153832@kernel.org>
 <20260119-ssqosid-cbqri-v1-8-aa2a75153832@kernel.org>
 <CAEEQ3w=fnq5Rsv0A49LSOqVS8hYQExSOSRQ6C8e8v5k4jBWOow@mail.gmail.com>
 <aXfWVPg7YTToDKcQ@x1>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aXfWVPg7YTToDKcQ@x1>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260144-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre.com:email]
X-Rspamd-Queue-Id: 3238B9AEC0
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 01:02:12PM -0800, Drew Fustini wrote:
> On Mon, Jan 26, 2026 at 09:01:30PM +0800, yunhui cui wrote:
> > Hi Drew,
> > 
> > On Tue, Jan 20, 2026 at 12:15 PM Drew Fustini <fustini@kernel.org> wrote:
> > >
> > > Add interface for CBQRI controller drivers to make use of the resctrl
> > > filesystem.
> > >
> > > Co-developed-by: Adrien Ricciardi <aricciardi@baylibre.com>
> > > Signed-off-by: Adrien Ricciardi <aricciardi@baylibre.com>
> > > Signed-off-by: Drew Fustini <fustini@kernel.org>
> > > ---
> > >  arch/riscv/kernel/qos/qos_resctrl.c | 1191 +++++++++++++++++++++++++++++++++++
> > >  1 file changed, 1191 insertions(+)
> > >
> > > diff --git a/arch/riscv/kernel/qos/qos_resctrl.c b/arch/riscv/kernel/qos/qos_resctrl.c
> > > new file mode 100644
> > > index 000000000000..5e3a65342e9b
> > > --- /dev/null
> > > +++ b/arch/riscv/kernel/qos/qos_resctrl.c
[..]
> > > +       case RDT_RESOURCE_MBA:
> > > +               /* Capacity read limit operation for RCID (closid) */
> > > +               err = cbqri_bc_alloc_op(ctrl, CBQRI_CC_ALLOC_CTL_OP_READ_LIMIT, closid);
> > > +               if (err < 0) {
> > > +                       pr_err("%s(): operation failed: err = %d", __func__, err);
> > > +                       return -EIO;
> > > +               }
> > > +
> > > +               hw_dom->ctrl_val[closid] = cbqri_get_rbwb(ctrl);
> > > +
> > > +               /* Convert from bandwidth blocks to percent */
> > > +               rbwb = hw_dom->ctrl_val[closid];
> > > +               rbwb *= 100;
> > > +               percent = rbwb / ctrl->bc.nbwblks;
> > > +               if (rbwb % ctrl->bc.nbwblks)
> > > +                       percent++;
> > 
> > set: 10, get 11 ?
> 
> The intention was to handle rounding up but I can drop this increment.

Actually, this increment of one is necessary. Without it, the default
value of 80% will be displayed as 79%. And writing a value like 55% will
result in 54%.

# mount -t resctrl resctrl /sys/fs/resctrl
# cd /sys/fs/resctrl
# cat schemata
MB:0=79;1=79;2=79
L2:4=fff;5=fff
L3:3=ffff

# echo 'MB:2=55' > schemata
# cat schemata
MB:0=79;1=79;2=54
L2:4=fff;5=fff
L3:3=ffff

# echo 'MB:2=80' > schemata
# cat schemata
MB:0=79;1=79;2=79
L2:4=fff;5=fff
L3:3=ffff

Thanks,
Drew

