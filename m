Return-Path: <devicetree+bounces-280221-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qH+PEY2Mw2nJrQQAu9opvQ
	(envelope-from <devicetree+bounces-280221-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 08:19:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A25EA320955
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 08:19:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 51382301C162
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 07:15:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D8F9364EAA;
	Wed, 25 Mar 2026 07:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QY8M2dY9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639A7364047;
	Wed, 25 Mar 2026 07:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774422901; cv=none; b=YWDtNm9WOgmUMO1tlgsn1Naxz4zty34QXr+00/fRMTad9fKrBYmktQ71uyfodrnu5r3aUomTbPEjeFxab3UXAL/BXNTcPn5FYF5Sz4v6GP+7PEqz63IfRLvqLTFklmoGeONWJGoUE/VHxfPXOMerlQx6v8s9xWr1hRAaMaHZNOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774422901; c=relaxed/simple;
	bh=d1MOvz/OLE69hKxRkmCSGoPjCUiu+GDaR8jlcJGuUk4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UuOzpyOJCPwmXkzzuYvkZEPQxM9KDrB+k8lecp7QjaVsFOMsIfanUYNzzcLLhw/G/AsqPuvH1jPZxjEUKJtBCDc+LCR+jyriqVAEe8Z8V+poBXIBklbHs9VcqKxGnUrmkLQVegs53I/yC8bYoRioJ9GghvjtCSD2bNglGvh63ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QY8M2dY9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A4FCC4CEF7;
	Wed, 25 Mar 2026 07:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774422901;
	bh=d1MOvz/OLE69hKxRkmCSGoPjCUiu+GDaR8jlcJGuUk4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QY8M2dY9ccpjKxKPb9fNb6qLJ7f4btwZ+9CQTps+g4qoRY6Nd3nLbbVvKKLWTmCS5
	 LkQyzxD4C90GUSUwGRn/3H3QF6wwOyXePQJGtj3b0xadK1/5BUB6QWKR2H4ash/7HV
	 t0szAMV2HvqmjL7PpXUw043RG/pMMro69mqnWCUIxPPesNIdTnPnBcHcC1yY55U/Yj
	 QYRaDEkgZ9qZUh5e3j1tTUE3iZqsHeQD8c7VNUOMKfF/7xOG9U9kn8E8YPfTsxo28c
	 +uc7OceT/uHS5qc/uOUavODtmsAroGej8+iAjCbqLSenBzujs5vjRNC62MTTE9NM3p
	 N6fwzoaoDCpKQ==
Date: Wed, 25 Mar 2026 00:14:57 -0700
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
Subject: Re: [External] [PATCH RFC v2 14/17] include: acpi: actbl2: Add
 structs for RQSC table
Message-ID: <acOLcRc2TWt2wV5f@gen8>
References: <20260128-ssqosid-cbqri-v2-0-dca586b091b9@kernel.org>
 <20260128-ssqosid-cbqri-v2-14-dca586b091b9@kernel.org>
 <CAEEQ3wnhvV03FYfqBqz8ihyFCcxKS5ztdvCHDF789ubSQAMw1A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAEEQ3wnhvV03FYfqBqz8ihyFCcxKS5ztdvCHDF789ubSQAMw1A@mail.gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-280221-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A25EA320955
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 09:48:37AM +0800, yunhui cui wrote:
> Hi Drew,
> 
> On Thu, Jan 29, 2026 at 4:28 AM Drew Fustini <fustini@kernel.org> wrote:
> >
> > Add structs for the RQSC table which describes the properties of the
> > RISC-V QoS controllers (CBQRI) in the system. The table also describes
> > the topological arrangement of the QoS controllers and resources in the
> > system. The topology is expressed in terms of the location of the
> > resources within the system and the relation between the QoS Controller
> > and the resource it manages.
> >
> > Link: https://github.com/riscv-non-isa/riscv-cbqri/releases/tag/v1.0
> > Link: https://github.com/riscv-non-isa/riscv-rqsc/blob/main/src/chapter2.adoc
> > Signed-off-by: Drew Fustini <fustini@kernel.org>
> > ---
> >  include/acpi/actbl2.h | 92 +++++++++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 92 insertions(+)
> >
> > diff --git a/include/acpi/actbl2.h b/include/acpi/actbl2.h
> > index f726bce3eb84..7367990349ee 100644
> > --- a/include/acpi/actbl2.h
> > +++ b/include/acpi/actbl2.h
> > @@ -53,6 +53,7 @@
> >  #define ACPI_SIG_RGRT           "RGRT" /* Regulatory Graphics Resource Table */
> >  #define ACPI_SIG_RHCT           "RHCT" /* RISC-V Hart Capabilities Table */
> >  #define ACPI_SIG_RIMT           "RIMT" /* RISC-V IO Mapping Table */
> > +#define ACPI_SIG_RQSC           "RQSC" /* RISC-V RISC-V Quality of Service Controller */
> >  #define ACPI_SIG_SBST           "SBST" /* Smart Battery Specification Table */
> >  #define ACPI_SIG_SDEI           "SDEI" /* Software Delegated Exception Interface Table */
> >  #define ACPI_SIG_SDEV           "SDEV" /* Secure Devices table */
> > @@ -3165,6 +3166,97 @@ enum acpi_rgrt_image_type {
> >         ACPI_RGRT_TYPE_RESERVED = 2     /* 2 and greater are reserved */
> >  };
> >
> > +/*******************************************************************************
> > + *
> > + * RQSC - RISC-V Quality of Service Controller
> > + *        Version 1
> > + *
> > + ******************************************************************************/
> > +
> > +struct acpi_table_rqsc_fields_res {
> > +       u8 type;        // 1
> > +       u8 resv;        // 1
> > +       u16 length;     // 2
> > +       u16 flags;      // 2
> > +       u8 resv2;       // 1
> > +       u8 id_type;     // 1
> > +       u64 id1;        // 8
> > +       u32 id2;        // 4
> > +};
> > +
> > +struct acpi_table_rqsc_fields {
> > +       u8 type;        //  1
> > +       u8 resv;        //  1
> > +       u16 length;     //  2
> > +       u32 reg[3];     // 12
> > +       u32 rcid;       //  4
> > +       u32 mcid;       //  4
> 
> The spec appears to specify a length of 2 bytes for this field?

Yes, this was a bug. I have changed rcid and mcid to u16:

https://github.com/tt-fustini/linux/blob/b4/ssqosid-cbqri/include/acpi/actbl2.h

Thanks,
Drew

