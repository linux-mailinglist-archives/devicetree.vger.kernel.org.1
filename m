Return-Path: <devicetree+bounces-115555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 75CD19AFFE2
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 12:19:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A75001C24F16
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 10:19:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F9531D967F;
	Fri, 25 Oct 2024 10:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="EAOM7n7W";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="HsLLxgTy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA3F71DAC99
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 10:19:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729851558; cv=none; b=Q4zqE3WVOLX9P6kEs9ej5NOuYwGFIL7kgejw11Wf6x9cuUll4qS0ZcqLMCPGzzD1zNyQjIz0xYib9rEn0fyH+0IoIwh01qK5B3ZXgDGNUuxai+RNGbU6ROuCJpjuTNxbfnO41OYzKU0ua+xO+TbPhekrMF5Yw55OKpLN602Hm4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729851558; c=relaxed/simple;
	bh=wztGz+7mTnjQfQckDlenureqkG6+xK61b49dTcDj3sY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=R8o8IpKIwvGL87fJ49DIb73PxcuTn1OckE76SJLGCW1emaXSq3Q/pV1G8K2eo/6xKepxShE7x8QR4/H+HkHkRrK0XQ7teyFeqe93R3VQltFdsqgvpEWHFuR85ds5z+ABmcw3ASYo63PC02S7mEqA6Fiv35aIuscK2f9Mw4+70DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=EAOM7n7W; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=HsLLxgTy reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1729851554; x=1761387554;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=1itM/kyCdE0gs81rWSjrF3aXRgyfQNm1Tl9jiHBKESM=;
  b=EAOM7n7W/ElkuQv9nl8vZ/g2cP/H8wk3bSa+E4aWdnxIX/hFlcI493wt
   ekFEkVzphLaXoihW9VTybU19avU5yu4RMzixC2AnhWpMlDMBWfzisn/1B
   werEmF1kGdKbbqa4s2F9G83zNdElHxlUzdE9tgn51MfllqKoyRmGzHONp
   isFsVnMK9vX38fnszppl8U7zy2hQOmGAhcfK5xgl8OKyXr3WFaOO9IYzz
   ZW5L9qhTmU7ZvkcQKTkz4C9fKyTWafTmWpl7SBAFcHfDO9pHCxGCF9Nyk
   HgKaRisQQKNf/zuDf287EQaEMd5AEXnPU0iPRy9BlPccs/fxtWspa2ABX
   g==;
X-CSE-ConnectionGUID: 2eIj9DeVQVqdqX0utdSxuQ==
X-CSE-MsgGUID: dwE/WrBaSKeaQH2e20x1LQ==
X-IronPort-AV: E=Sophos;i="6.11,231,1725314400"; 
   d="scan'208";a="39672877"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 25 Oct 2024 12:19:12 +0200
X-CheckPoint: {671B70A0-21-69FF9A8E-EE9CEDAF}
X-MAIL-CPID: F2B36C0168125F39CE454E81CF2DD6CA_0
X-Control-Analysis: str=0001.0A682F24.671B70A0.00C9,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id CA7441643AB;
	Fri, 25 Oct 2024 12:19:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1729851548;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=1itM/kyCdE0gs81rWSjrF3aXRgyfQNm1Tl9jiHBKESM=;
	b=HsLLxgTy3ki3jI0JfhPZ/z4sFsoX7ufdNg5Q2Cns+eqf1SF0M8emb6jQ5sfc7GNoQT8YKL
	lHKMWYdXqsHMPKMvrNu9zzfvMojX7THjWUGZBSLLX/WasP0rIyGCaaQJC0iyGDUXe6e/rQ
	3VHBGzY4dBOL2XOo/OkS5pyP4ERUIJI0qtpc57QJCyYpaEQssP39/OaYtf3gYBw3jhO8X9
	fa0GWxo264PZxVut2WnsFGKW/sFLPFQH2PChRrM7kUKMnoB/HzFpKxiX33bnIeZy1WbJfz
	IKMRJOU9YNFsqMK3tJUSV1DmzZl5mMEjpjbwPcYj71FA4+nbwk2h1wlIFwLzSQ==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev, Fabio Estevam <festevam@denx.de>, Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: soc: imx: fsl, imx-anatop: Fix the i.MX7 irq number
Date: Fri, 25 Oct 2024 12:19:07 +0200
Message-ID: <5991537.MhkbZ0Pkbq@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20241025004159.1571782-1-festevam@gmail.com>
References: <20241025004159.1571782-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Last-TLS-Session-Version: TLSv1.3

Hi Fabio,

thanks for the patch.

Am Freitag, 25. Oktober 2024, 02:41:58 CEST schrieb Fabio Estevam:
> From: Fabio Estevam <festevam@denx.de>
>=20
> Unlike the other i.MX devices, i.MX7 has only two anatop interrupts.
>=20
> Add logic that contemplates such case to fix the following
> dt-schema warning:
>=20
> anatop@30360000: interrupts: [[0, 49, 4], [0, 51, 4]] is too short
>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>

> ---
>  .../bindings/soc/imx/fsl,imx-anatop.yaml       | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx-anatop.yam=
l b/Documentation/devicetree/bindings/soc/imx/fsl,imx-anatop.yaml
> index c4ae4f28422b..ae708a658d52 100644
> --- a/Documentation/devicetree/bindings/soc/imx/fsl,imx-anatop.yaml
> +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx-anatop.yaml
> @@ -36,6 +36,7 @@ properties:
>        - description: Temperature sensor event
>        - description: Brown-out event on either of the support regulators
>        - description: Brown-out event on either the core, gpu or soc regu=
lators
> +    minItems: 2
> =20
>    tempmon:
>      type: object
> @@ -52,6 +53,23 @@ required:
>    - compatible
>    - reg
> =20
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,imx7d-anatop
> +    then:
> +      properties:
> +        interrupts:
> +          maxItems: 2
> +    else:
> +      properties:
> +        interrupts:
> +          minItems: 3
> +          maxItems: 3
> +
>  additionalProperties: false
> =20
>  examples:
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



