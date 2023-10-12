Return-Path: <devicetree+bounces-8310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E48127C79E9
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 00:43:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD2921C21096
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 22:43:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B573EA6;
	Thu, 12 Oct 2023 22:43:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ag3/e/i1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F03002B5C9
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 22:43:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6846C433C8;
	Thu, 12 Oct 2023 22:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697150584;
	bh=0a6rO8LS7GNguOIH2kaZQAFoeIRO7T4SaJR4pqdWFR4=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=Ag3/e/i1seOc/si69OmWgjGZkWLYT0OKA7ukJYZndqwXd3PRPGWQ5wYmbnGnU+dsD
	 5XCAWKJKbOy2TZ3gssPb3YyfV/hpROW+Ktj1Z5Uj5s7ZsPcmyKXUGeQLsFF6cPbXcM
	 WA+Vb0L1bFZACy0aK64v7PVNItpn5SrwSGMRVPRzQCXJtVW+CiZkhRrSh71DTh/iZ1
	 7eG0UupSKs+iJxIBMsRn1GqKKhhJwSdfkZ+Iad7DGQDocwteYgeHrrmXKwoxKn8raJ
	 BCagtoTJDvSqCCq/nP81+sQ0f3PnmZrqXdibVSPqPmq1OhHcO51eRW/QNAbta2OoVe
	 TtvQ/2gRU8Dng==
Message-ID: <b037172c0a4796c7f0a9a12d664f7fb2.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231011071856.11594-2-tony@atomide.com>
References: <20231011071856.11594-1-tony@atomide.com> <20231011071856.11594-2-tony@atomide.com>
Subject: Re: [PATCH 2/2] clk: ti: Fix missing omap5 mcbsp functional clock and aliases
From: Stephen Boyd <sboyd@kernel.org>
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org, linux-omap@vger.kernel.org, H . Nikolaus Schaller <hns@goldelico.com>, Andreas Kemnade <andreas@kemnade.info>, =?utf-8?q?P=C3=A9ter?= Ujfalusi <peter.ujfalusi@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>, Tero Kristo <kristo@kernel.org>, Tony Lindgren <tony@atomide.com>
Date: Thu, 12 Oct 2023 15:43:02 -0700
User-Agent: alot/0.10

Quoting Tony Lindgren (2023-10-11 00:18:56)
> We are using a wrong mcbsp functional clock. The interconnect target modu=
le
> driver provided clock for mcbsp is not same as the mcbsp functional clock
> known as the gfclk main_clk. The mcbsp functional clocks for mcbsp should
> have been added before we dropped the legacy platform data.
>=20
> Additionally we are also missing the clock aliases for the clocks used by
> the audio driver if reparenting is needed. This causes audio driver errors
> like "CLKS: could not clk_get() prcm_fck" for mcbsp as reported by Andrea=
s.
> The mcbsp clock aliases too should have been added before we dropped the
> legacy platform data.
>=20
> Let's add the clocks and aliases with a single patch to fix the issue
> similar to omap4. On omap5, there is no mcbsp4 instance on the l4_per
> interconnect.
>=20
> Fixes: b1da0fa21bd1 ("ARM: OMAP2+: Drop legacy platform data for omap5 mc=
bsp")
> Cc: H. Nikolaus Schaller <hns@goldelico.com>
> Reported-by: Andreas Kemnade <andreas@kemnade.info>
> Reported-by: P=C3=A9ter Ujfalusi <peter.ujfalusi@gmail.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

