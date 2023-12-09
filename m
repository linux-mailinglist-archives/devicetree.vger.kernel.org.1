Return-Path: <devicetree+bounces-23441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A477080B4C9
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 15:05:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D05071C209E6
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 14:05:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F89215483;
	Sat,  9 Dec 2023 14:05:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A05DDED;
	Sat,  9 Dec 2023 06:05:02 -0800 (PST)
Received: from i5e860d1d.versanet.de ([94.134.13.29] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rBxws-0003yF-PB; Sat, 09 Dec 2023 15:04:54 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>, Andy Yan <andy.yan@rock-chips.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com
Subject:
 Re: [PATCH v4 15/17] dt-bindings: iommu: rockchip: Add Rockchip RK3588
Date: Sat, 09 Dec 2023 15:04:53 +0100
Message-ID: <2860437.jE0xQCEvom@diego>
In-Reply-To: <bbf4d7a5-a6f5-447a-9f3e-1cd6f2acc7c9@rock-chips.com>
References:
 <20231207075906.651771-1-andyshrk@163.com> <4012684.R56niFO833@diego>
 <bbf4d7a5-a6f5-447a-9f3e-1cd6f2acc7c9@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Andy,

Am Samstag, 9. Dezember 2023, 02:26:25 CET schrieb Andy Yan:
> Hi Heiko:
>=20
> On 12/9/23 00:29, Heiko St=FCbner wrote:
> > Am Donnerstag, 7. Dezember 2023, 09:02:35 CET schrieb Andy Yan:
> >> From: Andy Yan <andy.yan@rock-chips.com>
> >>
> >> Add a Rockchip RK3588 compatible
> >>
> >> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> >=20
> > Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> >=20
> > In the next iteration, please split this out into a separate patch and =
send
> > it to the iommu+dt maintainers.
> >=20
> > Supporting the iommus on rk3588 can be realized separately and the
> > patch needs to go through a separate tree anyway.
>=20
> Okay, I will split this patch out of this vop2 series, does this mean that
> I also need to split out the iommu dt node as a separate patch from curre=
nt
> PATCH16 ?

no :-) .

The vop-iommu can stay together with the vop core node.
As adding the actual vop iommu is very much tied to the vop node.

=46or the iommu-compatible it was different. The compatible just declares
that the iommu acts similar to the one on rk3568, so is related to the iommu
driver itself and should go through the iommu tree.

So all is good here.

Heiko



