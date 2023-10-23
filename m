Return-Path: <devicetree+bounces-10879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CE67D3041
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 12:43:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C87F281591
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 10:43:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 623C16FDF;
	Mon, 23 Oct 2023 10:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="q51W7A9T"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C8B14A8A
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 10:43:21 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DAACD79;
	Mon, 23 Oct 2023 03:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1698057799; x=1729593799;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=s8/SX7U8yPav80tb/Tl9Z7BX1cRN8fNUO+aVcBI2Cs0=;
  b=q51W7A9TSqdmLCs2RJUBJBaB4s4gBToP5R23CtihN2q/pd9zS9zFROme
   ALSwjL7mncKt8EWJFlUIM/UC+TdLcctEytsQT8Duv7LZnOR7QfxdhV6Zq
   TKv6XAVVQdgjVyCAit9fDOOYCax5c34WXie+GX9srnQaqacum/1T5YjFs
   zWawc+CFM5AVMyREbXz1SR8aEb2RdAI7TBMjan56LM6yNNBqWyufCFx96
   dWS7xNRryBPowLpE/jZP1gi661RNREylCE06gDWd4kPYzoL4NQlaS6ipC
   KALdiOt+Pw4KTbYkt95hbnuDP3QtMP0Q7oxxEzQN7PJHJyw2r7BQAQDG0
   w==;
X-IronPort-AV: E=Sophos;i="6.03,244,1694728800"; 
   d="scan'208";a="33599171"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 23 Oct 2023 12:43:17 +0200
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 06F7B28007F;
	Mon, 23 Oct 2023 12:43:17 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org, linux-pm@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com
Subject: Re: [PATCH 4/5] clk: imx: clk-fracn-gppll: Add 477.4MHz config for video pll
Date: Mon, 23 Oct 2023 12:43:19 +0200
Message-ID: <10361180.nUPlyArG6x@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20231020142055.xnxbumcg2o6cfpfl@pengutronix.de>
References: <20231020130019.665853-1-alexander.stein@ew.tq-group.com> <20231020130019.665853-5-alexander.stein@ew.tq-group.com> <20231020142055.xnxbumcg2o6cfpfl@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Marco,

Am Freitag, 20. Oktober 2023, 16:20:55 CEST schrieb Marco Felsch:
> Hi Alexander,
>=20
> On 23-10-20, Alexander Stein wrote:
> > Add the 477.4MHz frequency support that will be used by video subsystem
> > on imx93.
>=20
> albeit the change is fine, could we consider adding support to calc the
> params dynamically?

Agreed, I would prefer that as well: But unfortunately I will not be able t=
o=20
add dynamic calculation right now.

Best regards,
Alexander
=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



