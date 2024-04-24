Return-Path: <devicetree+bounces-62431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADE38B125C
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 20:31:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 16D3528F0C3
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 18:31:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10150171092;
	Wed, 24 Apr 2024 18:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYdHsLjf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03A616E879
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 18:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713982972; cv=none; b=qNWXmystwdJYj0sJT8pyxXRmqdQoqrd+xDVibAayVjuyVc41s46rgNVz3PZdgwugk+k93lF19D5ghK2x4oSt+cfHPif3iVBqrun1vxd1lLeWRAuADpxG3W8vyzQA95D77Ob9ivMO6fneGoGCzXUcE1o9YWv+Zz8XSGyWP/qWd1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713982972; c=relaxed/simple;
	bh=tdx7qE7W0QCchrfKikQUZ6WTXxN7Gm+JReVjHzYFk0w=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kbSgUQEI6Qp0o7fDSrK4XP/9pRLvzjT4+Cl2r02YCF2TDln1cVTCGYt/tGYWJc3cdu16XTqYgMMIZVWElWKPNv9ricrYTOslKShcRH5TsHmecKPOOaP61hktDbhEd8nAujfV872yvJ1Ui9grBIob2OkNTXCoxHZkotjGraflwb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYdHsLjf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53F03C113CD;
	Wed, 24 Apr 2024 18:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713982971;
	bh=tdx7qE7W0QCchrfKikQUZ6WTXxN7Gm+JReVjHzYFk0w=;
	h=Date:From:To:List-Id:Cc:Subject:In-Reply-To:References:From;
	b=OYdHsLjfzXY8kyYnJ18KbXX7VgRMYnu71TRQJPGqgfUckGF4wb9+LfZGdRvQWiMDM
	 547Q7RVfPlY11qsJa2vkjL4e4zRm3Gay48LnHJUcOlUalGj3RNlX7tbiwPSOHicyXt
	 y+TuVZ+XcyofFksnNgk8/K7XKYxJSXlDSDg2CbDBU3jBa/BkF/7pY2mmE+qnhrj+U7
	 hyPcr5orDnrddfy5vIwnIvuudfbjHRRgw4GJV0T7LdjZ0bIsnCtIwnJ8NEP5DuPjN/
	 gSCwNVOw7rQNlnoydIsT96Kg11DVD3Zay9MRN81hv1MhUw+DUCFCz4F5K3gQh9hb2X
	 YbsgX8S3fVzSg==
Date: Wed, 24 Apr 2024 20:22:46 +0200
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Andy Shevchenko <andy@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>, arm@kernel.org, Ilpo =?UTF-8?B?SsOkcnZp?=
 =?UTF-8?B?bmVu?= <ilpo.jarvinen@linux.intel.com>, soc@kernel.org, Gregory
 CLEMENT <gregory.clement@bootlin.com>, Hans de Goede <hdegoede@redhat.com>,
 devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v7 1/9] dt-bindings: arm: add cznic,turris-omnia-mcu
 binding
Message-ID: <20240424202246.3a686f19@dellmb>
In-Reply-To: <171398257727.225434.10521944963040550546.robh@kernel.org>
References: <20240424173809.7214-1-kabel@kernel.org>
	<20240424173809.7214-2-kabel@kernel.org>
	<171398257727.225434.10521944963040550546.robh@kernel.org>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.41; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 24 Apr 2024 13:16:18 -0500
Rob Herring <robh@kernel.org> wrote:

> On Wed, 24 Apr 2024 19:38:00 +0200, Marek Beh=C3=BAn wrote:
> > Add binding for cznic,turris-omnia-mcu, the device-tree node
> > representing the system-controller features provided by the MCU on the
> > Turris Omnia router.
> >=20
> > Signed-off-by: Marek Beh=C3=BAn <kabel@kernel.org>
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > ---
> >  .../firmware/cznic,turris-omnia-mcu.yaml      | 86 +++++++++++++++++++
> >  MAINTAINERS                                   |  1 +
> >  2 files changed, 87 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/firmware/cznic,tu=
rris-omnia-mcu.yaml
> >  =20
>=20
> My bot found errors running 'make dt_binding_check' on your patch:
>=20
> yamllint warnings/errors:
>=20
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/f=
irmware/cznic,turris-omnia-mcu.yaml: $id: Cannot determine base path from $=
id, relative path/filename doesn't match actual path or filename
>  	 $id: http://devicetree.org/schemas/arm/cznic,turris-omnia-mcu.yaml
>  	file: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bi=
ndings/firmware/cznic,turris-omnia-mcu.yaml
>=20
> doc reference errors (make refcheckdocs):
>=20
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/202404=
24173809.7214-2-kabel@kernel.org
>=20
> The base for the series is generally the latest rc1. A different dependen=
cy
> should be noted in *this* patch.
>=20
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>=20
> pip3 install dtschema --upgrade
>=20
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your sch=
ema.
>=20

Sigh. I moved the patch bud did not change it in $id...

