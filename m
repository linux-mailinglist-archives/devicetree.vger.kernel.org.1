Return-Path: <devicetree+bounces-6189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEC77BA2A4
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 17:43:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 40BF0B2096E
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:43:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49A9F30D0C;
	Thu,  5 Oct 2023 15:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8B92E65A
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 15:43:52 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0BBD39523;
	Thu,  5 Oct 2023 08:43:48 -0700 (PDT)
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qoQVr-0006gu-Jp; Thu, 05 Oct 2023 17:43:43 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588is: Add AV1 decoder node
Date: Thu, 05 Oct 2023 17:43:42 +0200
Message-ID: <8278535.T7Z3S40VBb@phil>
In-Reply-To: <531ea6cc-83b5-4c88-90a3-576e2e38bf80@collabora.com>
References:
 <20231005145420.169594-1-benjamin.gaignard@collabora.com>
 <2298521.ElGaqSPkdT@phil>
 <531ea6cc-83b5-4c88-90a3-576e2e38bf80@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
	T_SPF_HELO_TEMPERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Am Donnerstag, 5. Oktober 2023, 17:39:18 CEST schrieb Benjamin Gaignard:
>=20
> Le 05/10/2023 =E0 17:30, Heiko Stuebner a =E9crit :
> > Am Donnerstag, 5. Oktober 2023, 17:12:10 CEST schrieb Sebastian Reichel:
> >> Hi,
> >>
> >> On Thu, Oct 05, 2023 at 04:54:20PM +0200, Benjamin Gaignard wrote:
> >>> Add node for AV1 video decoder.
> >>>
> >>> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> >>> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> >> No need for my SoB. Instead have this one:
> >>
> >> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> >>
> >> Also worth mentioning, that this Patch needs one small fix in the DT
> >> binding (adding "resets") and one small fix in the driver for out of
> >> the box AV1 support:
> >>
> >> https://lore.kernel.org/all/20231005144934.169356-1-benjamin.gaignard@=
collabora.com/
> >> https://lore.kernel.org/all/20231005145116.169411-1-benjamin.gaignard@=
collabora.com/
> > additionally the node name should be generic.
> > The phandle can of course be av1d but the node
> > name itself needs a change.
>=20
> Does "video-codec-av1@fdc70000" sound good for you ?

Nope ... please go with
	video-codec@fdc...
I.e. see the other Rockchip soc dtsi for reference.


Thanks
Heiko



