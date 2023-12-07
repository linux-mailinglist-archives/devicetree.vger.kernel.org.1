Return-Path: <devicetree+bounces-22550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FBE8081FD
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 08:32:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C3DD11C21703
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 07:32:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C64F18C31;
	Thu,  7 Dec 2023 07:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="lKRxIdSJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2DBBD5E;
	Wed,  6 Dec 2023 23:31:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1701934320; x=1733470320;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=NvfRzA06H3AcI6WpmXO5M+PBAuH7VC1PGViD7SmhVyU=;
  b=lKRxIdSJLEk/QeuIx+pV1u79AHXtTSdMjrFJIEJCTaDmnr5RO/GK092J
   sUZEcq/K5/klos/dwgGmfcwFUlp5bp/UM66X0V/flwMLJUTzVHKQmn7mb
   QCmpdGuIajW74UWochJLprUrR2zu6/GV/I0exKgp0no/ID9LxrvMWL412
   0QvkTSxwoxVsElSIQR5g7UE8CUhPyNnxd8yZvk+S6nAV/u5bONJ0k0Zfo
   XnF6HAkfJbnaErKbXn6qjWOV2WGXpHLrS6bBXVTRxuUodxYGIxY0W+//D
   y2Mlk3kUtP6JzRKyXDuxiywpq0TEcPloJbpNDGXlD6Ft8DXhOBzHtLmfg
   g==;
X-IronPort-AV: E=Sophos;i="6.04,256,1695679200"; 
   d="scan'208";a="34373751"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 07 Dec 2023 08:31:57 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 7F243280075;
	Thu,  7 Dec 2023 08:31:57 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>, linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com, gregor.herburger@ew.tq-group.com, Gregor Herburger <gregor.herburger@ew.tq-group.com>
Subject: Re: [PATCH 0/2] TQMLX2160A support
Date: Thu, 07 Dec 2023 08:31:56 +0100
Message-ID: <1874330.tdWV9SEqCh@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20231206-for-ml-tqmlx2160a-v1-0-622e41ae4d8e@ew.tq-group.com>
References: <20231206-for-ml-tqmlx2160a-v1-0-622e41ae4d8e@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi,

Am Mittwoch, 6. Dezember 2023, 15:01:00 CET schrieb Gregor Herburger:
> Hi,
>=20
> this series adds initial support for the TQMLX2160A SoM on MBLX2160a
> baseboard. The various supported Serdes Configurations are added with
> overlay files.
>=20
> Patch 1 adds the compatible to dt bindings
> Patch 2 adds the dts files
>=20
> ---
> Gregor Herburger (2):
>       dt-bindings: arm: fsl: Add TQ-Systems LX2160A based boards
>       arm64: dts: freescale: add fsl-lx2160a-mblx2160a board

=46or the whole series:
Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>

>  Documentation/devicetree/bindings/arm/fsl.yaml     |  10 +
>  arch/arm64/boot/dts/freescale/Makefile             |  26 ++
>  .../freescale/fsl-lx2160a-tqmlx2160a-mblx2160a.dts | 338
> +++++++++++++++++++++ .../fsl-lx2160a-tqmlx2160a-mblx2160a_12_x_x.dtso   =
|=20
> 29 ++
>  .../fsl-lx2160a-tqmlx2160a-mblx2160a_14_x_x.dtso   |  17 ++
>  .../fsl-lx2160a-tqmlx2160a-mblx2160a_x_11_x.dtso   |  49 +++
>  .../fsl-lx2160a-tqmlx2160a-mblx2160a_x_7_x.dtso    |  55 ++++
>  .../fsl-lx2160a-tqmlx2160a-mblx2160a_x_8_x.dtso    |  47 +++
>  .../boot/dts/freescale/fsl-lx2160a-tqmlx2160a.dtsi |  97 ++++++
>  9 files changed, 668 insertions(+)
> ---
> base-commit: 8728c14129df7a6e29188a2e737b4774fb200953
> change-id: 20231206-for-ml-tqmlx2160a-68ee235f71cd
>=20
> Best regards,


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



