Return-Path: <devicetree+bounces-8309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC597C79E8
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 00:42:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A02D282C5C
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 22:42:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB5A2EA6;
	Thu, 12 Oct 2023 22:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cC8mqny6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6832B5D7
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 22:42:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36008C433C8;
	Thu, 12 Oct 2023 22:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697150573;
	bh=GSqPhBV+FrcosXCtU51psH8IYdAIdafiT0olNvIBf30=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=cC8mqny6Cmu2OPOCa7JchkNvAmaTWS9mJNFvYmENeTUXoTVQ++pAzH+LY1C93ua4b
	 eLEIQOABBY5g6rY8OoZT7zpdLbgKM4qm9y7lLnGS5RAW/ShvUZkg4w2hRqCqWn9IyK
	 xm9mAqjyTmjO49qtHmwc3nG3dpp3mZxbExn6e6Hy0D5iCmdfxu4LLdgkocJN2AcHAF
	 rD0rdu0PjaDrvilCFwTVsT1r+a1S8MgBFK32mTLtKIs7cAQvg36gyYpnwIaqmbHDdk
	 NGRkCOGwBE7g3mRp4LVMWOTdPkNm5TKIvlSBGpydCYOoW+MG2fk7QGcQjUwc67k1XT
	 kW2s/bZ6dQh7A==
Message-ID: <879d697a9b1a816c75566c111c28ae01.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231011071856.11594-1-tony@atomide.com>
References: <20231011071856.11594-1-tony@atomide.com>
Subject: Re: [PATCH 1/2] clk: ti: Fix missing omap4 mcbsp functional clock and aliases
From: Stephen Boyd <sboyd@kernel.org>
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org, linux-omap@vger.kernel.org, Andreas Kemnade <andreas@kemnade.info>, =?utf-8?q?P=C3=A9ter?= Ujfalusi <peter.ujfalusi@gmail.com>, H. Nikolaus Schaller <hns@goldelico.com>
To: Michael Turquette <mturquette@baylibre.com>, Tero Kristo <kristo@kernel.org>, Tony Lindgren <tony@atomide.com>
Date: Thu, 12 Oct 2023 15:42:51 -0700
User-Agent: alot/0.10

Quoting Tony Lindgren (2023-10-11 00:18:55)
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
> Let's add the clocks and aliases with a single patch to fix the issue.
>=20
> Fixes: 349355ce3a05 ("ARM: OMAP2+: Drop legacy platform data for omap4 mc=
bsp")
> Reported-by: Andreas Kemnade <andreas@kemnade.info>
> Reported-by: P=C3=A9ter Ujfalusi <peter.ujfalusi@gmail.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

