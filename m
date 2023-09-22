Return-Path: <devicetree+bounces-2556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6590D7AB50E
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 17:46:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 7A3291C2096D
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 15:46:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 998254121F;
	Fri, 22 Sep 2023 15:46:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 896F91EA9A
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 15:46:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A3DBC433C7;
	Fri, 22 Sep 2023 15:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695397614;
	bh=MYb97kHVKXhuo3uqkZLINHlkPs+cMUfvW87Cog3BtqA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p1PvUvqHW9+CI4FtQ6dGHCku/bWa1qyERooyTKqO59o1ZwMvYAED2oCnmaZ0eIxaL
	 i79wQiVZWvjq8fA6wKvMnGY6mh0v4VycoH17zCQeLVfay3LedISlD930pRIlJKbeHB
	 HDvkNOHvPD44rgLwEurMpj3I47P/MDXSLnXjEbGeuA72Iid7JBU7osk3VLtavk8gIU
	 6cHPHwg6LqEzIewtQV0hf+rxSS4uNUQf05LcBORAoJdpMrTj304nX+EP8E/jZ0lPeu
	 vn1ztEqC8Ex496xjME12m8O+ZVcvAdISpfNMma8UpwHMceztLJqhCpLEC5dWJSeiBo
	 LQV32PthGxEzQ==
Date: Fri, 22 Sep 2023 16:46:48 +0100
From: Conor Dooley <conor@kernel.org>
To: Moudy Ho <moudy.ho@mediatek.com>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v6 05/16] dt-bindings: media: mediatek: mdp3: add support
 MT8195 RDMA
Message-ID: <20230922-squealing-tipoff-e2fc6117ba7e@spud>
References: <20230922072116.11009-1-moudy.ho@mediatek.com>
 <20230922072116.11009-6-moudy.ho@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="TinQJ3EeZSdfbVkx"
Content-Disposition: inline
In-Reply-To: <20230922072116.11009-6-moudy.ho@mediatek.com>


--TinQJ3EeZSdfbVkx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 22, 2023 at 03:21:05PM +0800, Moudy Ho wrote:
> Support for MT8195 RDMA has been added, allowing for
> the configuration of multiple MDP3 pipes.
> Furthermore, this particular device does not require
> sharing SRAM with RSZ.

I'm sorry if I am going over past arguments, if this is 90% the same as
the 8193 rdma, why the extraction + mostly duplicate file, rather than
covering whatever clocks/mboxes differences with an if/then/else in a
single file?

Thanks,
Conor.

>=20
> Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>
> ---
>  .../media/mediatek,mdp3-rdma-8195.yaml        | 64 +++++++++++++++++++
>  1 file changed, 64 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek,mdp3=
-rdma-8195.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma-8=
195.yaml b/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma-8195.=
yaml
> new file mode 100644
> index 000000000000..f10139aec3c5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma-8195.yaml
> @@ -0,0 +1,64 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/mediatek,mdp3-rdma-8195.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek MT8195 Read Direct Memory Access
> +
> +maintainers:
> +  - Matthias Brugger <matthias.bgg@gmail.com>
> +  - Moudy Ho <moudy.ho@mediatek.com>
> +
> +description: |
> +  MediaTek Read Direct Memory Access(RDMA) component used to do read DMA.
> +  This type of component is configured when there are multiple MDP3 pipe=
lines
> +  that belong to different MMSYS subsystems.
> +  It contains one line buffer to store the sufficient pixel data, and
> +  must be siblings to the central MMSYS_CONFIG node.
> +  For a description of the MMSYS_CONFIG binding, see
> +  Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
> +  for details.
> +
> +allOf:
> +  - $ref: mediatek,mdp3-rdma-common.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: mediatek,mt8195-mdp3-rdma
> +
> +  clocks:
> +    maxItems: 1
> +
> +  mboxes:
> +    maxItems: 5
> +
> +required:
> +  - compatible
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/mt8195-clk.h>
> +    #include <dt-bindings/gce/mt8195-gce.h>
> +    #include <dt-bindings/power/mt8195-power.h>
> +    #include <dt-bindings/memory/mt8195-memory-port.h>
> +
> +    dma-controller@14001000 {
> +        compatible =3D "mediatek,mt8195-mdp3-rdma";
> +        reg =3D <0x14001000 0x1000>;
> +        mediatek,gce-client-reg =3D <&gce1 SUBSYS_1400XXXX 0x1000 0x1000=
>;
> +        mediatek,gce-events =3D <CMDQ_EVENT_VPP0_MDP_RDMA_SOF>,
> +                              <CMDQ_EVENT_VPP0_MDP_RDMA_FRAME_DONE>;
> +        power-domains =3D <&spm MT8195_POWER_DOMAIN_VPPSYS0>;
> +        iommus =3D <&iommu_vpp M4U_PORT_L4_MDP_RDMA>;
> +        clocks =3D <&vppsys0 CLK_VPP0_MDP_RDMA>;
> +        mboxes =3D <&gce1 12 CMDQ_THR_PRIO_1>,
> +                 <&gce1 13 CMDQ_THR_PRIO_1>,
> +                 <&gce1 14 CMDQ_THR_PRIO_1>,
> +                 <&gce1 21 CMDQ_THR_PRIO_1>,
> +                 <&gce1 22 CMDQ_THR_PRIO_1>;
> +        #dma-cells =3D <1>;
> +    };
> --=20
> 2.18.0
>=20

--TinQJ3EeZSdfbVkx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQ225wAKCRB4tDGHoIJi
0uErAP0e5QDVnjiad7eoFZa5AYGjnmFnMgdtVRLzSMqVp/nBAAEA5+VrQJizrTYi
p0CEoEAVK3R1+JddKhYmfChjMnNFJwM=
=y+iv
-----END PGP SIGNATURE-----

--TinQJ3EeZSdfbVkx--

