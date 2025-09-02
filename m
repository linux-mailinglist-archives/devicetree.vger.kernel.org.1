Return-Path: <devicetree+bounces-211733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE41B40606
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 16:05:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A3D9A563BEA
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 13:59:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 226AE3093BF;
	Tue,  2 Sep 2025 13:57:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F77330749B
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 13:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756821460; cv=none; b=O0zBMAVa7L58I4m3VMaHu1fBy8UhCv2VokRiJj8lTDbJ8sccMWPkR2L0pRdbR5ccgYpHah/QHb+8ZLDLKGDhJkcUQDXZ+SA62hCwhE+3nCPm9M94T5mpEWVz1HJEIg+RkiFQSdOG4ScbOjwy8qZX5DltkV9siwXr4uELUoXGODQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756821460; c=relaxed/simple;
	bh=PwIBU30rSOaggNqu2RZwMY7KtdFqk3ZhKd/vz3o/l8c=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=F+cm+HQpqKpkV45ItCOpBlOngZcszMWDbYQj86eTxttcs6gpp3s64F6CXS+csjA5OlokaToLT178dlhOG/9XUbOcJz4wqHWF+UKhba1wy5jZmU4+j0WX0Refj+0sdRyCyElQGmZCxfvq35mk013HK+I7VJpN+p6MKfYILSHIaU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1utRVS-0007q2-Gg; Tue, 02 Sep 2025 15:57:06 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1utRVO-003P16-30;
	Tue, 02 Sep 2025 15:57:02 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1utRVO-000Rg9-2b;
	Tue, 02 Sep 2025 15:57:02 +0200
Message-ID: <705de60088f72c1ed575d92e8c4f4b90989385c5.camel@pengutronix.de>
Subject: Re: [PATCH 1/4] dt-bindings: reset: thead,th1520-reset: Add
 controllers for more subsys
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Krzysztof Kozlowski <krzk@kernel.org>, Yao Zi <ziyao@disroot.org>
Cc: Drew Fustini <fustini@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei
 <wefu@redhat.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Paul Walmsley
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
 <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, Michal Wilczynski
 <m.wilczynski@samsung.com>, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Icenowy Zheng
 <uwu@icenowy.me>, Han Gao <rabenda.cn@gmail.com>, Han Gao
 <gaohan@iscas.ac.cn>
Date: Tue, 02 Sep 2025 15:57:02 +0200
In-Reply-To: <75cafd7e-02a5-41d1-9daf-24bef20dab82@kernel.org>
References: <20250901042320.22865-1-ziyao@disroot.org>
	 <20250901042320.22865-2-ziyao@disroot.org>
	 <20250902-peach-jackal-of-judgment-8aee13@kuoka> <aLazFzq2l7s66IqS@pie>
	 <75cafd7e-02a5-41d1-9daf-24bef20dab82@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Di, 2025-09-02 at 15:44 +0200, Krzysztof Kozlowski wrote:
> On 02/09/2025 11:04, Yao Zi wrote:
> > On Tue, Sep 02, 2025 at 10:27:53AM +0200, Krzysztof Kozlowski wrote:
> > > On Mon, Sep 01, 2025 at 04:23:17AM +0000, Yao Zi wrote:
> > > > +/* VO Subsystem */
> > > >  #define TH1520_RESET_ID_GPU		0
> > > >  #define TH1520_RESET_ID_GPU_CLKGEN	1
> > > > -#define TH1520_RESET_ID_NPU		2
> > > > -#define TH1520_RESET_ID_WDT0		3
> > > > -#define TH1520_RESET_ID_WDT1		4
> > >=20
> > > This is ABI break and deserves explanation and its own patchset.
> >=20
> > The registers in control of TH1520_RESET_ID_{NPU,WDT0,WDT1} don't belon=
g
> > to the VO reset controller (documented as "thead,th1520-reset"), and
> > thus cannot be implemented by it. They're in fact AP subsystem resets,
> > which gets supported in Linux with this series.
> >=20
> > Is it okay for you to separate a patch to delete these wrong IDs and ad=
d
> > them back for the AP reset controller latter? Anyway, I should have
> > provided more information about these three resets. Thanks for catching
> > this.
>=20
> So feels like separate patch dropping these resets with above explanation=
.

They happen to be reintroduced with exactly the same values, just for
the AP subsystem reset controller:

+/* AP Subsystem */
+#define TH1520_RESET_ID_BROM			0
+#define TH1520_RESET_ID_C910_TOP		1
+#define TH1520_RESET_ID_NPU			2
+#define TH1520_RESET_ID_WDT0			3
+#define TH1520_RESET_ID_WDT1			4
[...]
+/* VO Subsystem */
 #define TH1520_RESET_ID_GPU		0
 #define TH1520_RESET_ID_GPU_CLKGEN	1
-#define TH1520_RESET_ID_NPU		2
-#define TH1520_RESET_ID_WDT0		3
-#define TH1520_RESET_ID_WDT1		4

regards
Philipp

