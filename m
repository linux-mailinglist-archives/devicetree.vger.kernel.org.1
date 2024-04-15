Return-Path: <devicetree+bounces-59205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A298A4664
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 02:50:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D2EB9B208AA
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 00:50:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F20221859;
	Mon, 15 Apr 2024 00:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="lDwmQvsS"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8FC3639
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 00:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713142222; cv=none; b=gj8xPp99IdOEcHj0NV61BnhnXGfdP+U2WOjk1UsqPEPJQK2wzlyja3TGW2hhvkGR7hR1VlJoEs+X6A9+8syZ6q4n9Hn/bXCckH7nWfT49H8Fzbun3qZZj1WZv0+KAAfEYZMXju1krEhjAMMZQdhzr1qOp/20/FBBJEh1K02oJi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713142222; c=relaxed/simple;
	bh=qSrUeZlVIpukc5YBw55iXrqroqNgd7CX/id+/7dojhI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=lPI8EbpY0gCuhxbxjLa5HuNlAGH2VRwT56Mmdr5dek5yc+kmFQgQ48fqB+NC6kPa3bTmqggaABLDDvaoEV3FHgk+skqVa6nUrBsro1jpDj1mj49PwVPiJek+jBO9WZr4xWUnP39yorq+szdmrB11Y98HpkQWqIeY78oTgt9EtjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=lDwmQvsS; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
Received: from [192.168.68.112] (ppp14-2-127-66.adl-apt-pir-bras32.tpg.internode.on.net [14.2.127.66])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 527DC20178;
	Mon, 15 Apr 2024 08:50:17 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1713142218;
	bh=8Yn8Ev22sgChTJKYaeg8JhOdlPOhLg3KXa+zzQErxAA=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=lDwmQvsSFihUxM6dIz0/vxd9h/QEzBF9Nog5B1v0O6tq4qINSWIOjmRiyntU1xkDE
	 tCW8EiZGaVZNJ0rYKlzF9+E0kes0Vr8x2jL68yCtxrI97RYejHJOlhjJYV44xLVZuM
	 cUWwAKgFqziV+vjHeRFG8iNVuQvuCiCXsmjftX+jVMJMCzPjUUKRI3SEV/xVJMI+Y8
	 KhDdh8vNfqclp0OCQUKFuC2IMmgBydaT/3mB+RiANFJCLrlJnqf1KvlrinPWm8txOC
	 obCja/04z9dnDO5/Mas2rhn1BzgVSpZGm3EmNKxPnHIp9+uN0cTIEGdGUl4JNvx1sG
	 TCNEQkKFrhp6A==
Message-ID: <95510c550a31305ae192640ce54ed86544e79f12.camel@codeconstruct.com.au>
Subject: Re: [PATCH 1/3] dt-bindings: fsi: Document the IBM SBEFIFO engine
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Eddie James <eajames@linux.ibm.com>, linux-aspeed@lists.ozlabs.org
Cc: joel@jms.id.au, devicetree@vger.kernel.org, linux-fsi@lists.ozlabs.org, 
	robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, jk@ozlabs.org, 
	alistair@popple.id.au, lakshmiy@us.ibm.com
Date: Mon, 15 Apr 2024 10:20:16 +0930
In-Reply-To: <20240412144358.204129-2-eajames@linux.ibm.com>
References: <20240412144358.204129-1-eajames@linux.ibm.com>
	 <20240412144358.204129-2-eajames@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Fri, 2024-04-12 at 09:43 -0500, Eddie James wrote:
> The SBEFIFO engine provides an interface to the POWER processor
> Self Boto Engine (SBE).
>=20
> Signed-off-by: Eddie James <eajames@linux.ibm.com>
> ---
>  .../devicetree/bindings/fsi/ibm,sbefifo.yaml  | 39 +++++++++++++++++++
>  1 file changed, 39 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/fsi/ibm,sbefifo.yam=
l
>=20
> diff --git a/Documentation/devicetree/bindings/fsi/ibm,sbefifo.yaml b/Doc=
umentation/devicetree/bindings/fsi/ibm,sbefifo.yaml
> new file mode 100644
> index 000000000000..d70012e42d79
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/fsi/ibm,sbefifo.yaml
> @@ -0,0 +1,39 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/fsi/ibm,sbefifo.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: IBM FSI-attached SBEFIFO engine
> +
> +maintainers:
> +  - Eddie James <eajames@linux.ibm.com>
> +
> +description: |
> +  This binding describes an FSI CFAM engine called the SBEFIFO. Therefor=
e this
> +  node will always be a child of an FSI CFAM node; see fsi.txt for detai=
ls on
> +  FSI slave and CFAM nodes. This SBEFIFO engine provides an interface to=
 the
> +  POWER processor Self Boot Engine (SBE).
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ibm,p9-sbefifo
> +      - ibm,ody-sbefifo

Bit of a nitpick, but: Is there any argument against using
`ibm,odyssey-sbefifo`? Feels less cryptic.

Andrew

