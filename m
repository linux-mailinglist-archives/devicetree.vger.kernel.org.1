Return-Path: <devicetree+bounces-223262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB0CBB2818
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 07:14:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C76F6422D08
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 05:13:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACE14263C9E;
	Thu,  2 Oct 2025 05:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="ClH3FXxz"
X-Original-To: devicetree@vger.kernel.org
Received: from out-187.mta1.migadu.com (out-187.mta1.migadu.com [95.215.58.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A259E239072
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 05:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759382037; cv=none; b=NGY4RCPingHgr1NtoGudZEjrY4f9yjPb+6u6wh2lzbBARQYOiDmNOj+tGuInrYFCsSmnyt8cPRi0VpuDTcMqJScl2tccxtNQio9bdhTbeVTkNajw4qBR0kAYilhgryrSl5FezAB8Ff7WfI8HjYHI8LlU9n3tvNm29Gl0UI42CfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759382037; c=relaxed/simple;
	bh=jKenN/Cveg/rZe5NtVOWossJ/WVHrQMS/KcLxOVjpcI=;
	h=MIME-Version:Date:Content-Type:From:Message-ID:Subject:To:Cc:
	 In-Reply-To:References; b=jtvxYOu0xLW2aN/CloFxyimdlGuzSXEi/PX9Px8gURpeB12SUcPHZCfLffLDIbQ60bjtRcbKZFsNaWCAcVvmkQkmwTHFPyRyPpje7CYl0bHxp5Y3GJbEUDN6TRUaiJfs8AAIyyuJv/EjE9esdY6tpSODUm2uzdmClxf3gBbmnBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=ClH3FXxz; arc=none smtp.client-ip=95.215.58.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1759382023;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=l8QdXL9AMhvOHgO98NcWW1QvA2jL1pVVBrnTVkiCP18=;
	b=ClH3FXxzxXu2+WTMhELhP5klkNrUxxsfVzXqrY5fJ3mF3wWyDtPQ0OfqW065oiJGga2lwk
	fYY2b+Teo0lmEsrVayve6848MxeJznCywUOcSpHnaYl9l7tty8rUxBxrvTkaVGm1j6u724
	jUKAIk64aLsXqybitK1fbPPlxB3mDouRJnxjB9LnztCzs+Hg5odgUrobSGzeQgY8ZlP+hO
	EJaxI9o6mSLDZ6lRcvB2uwwhGLynIC2bJWgd5hpUkrqHveUentiDjlhSaWRBrlAfDfj6EY
	oVLfPht2vPrD7c8d0eQxzcV8A7j7CaFw+ZWR35+T6wPNL0Z+qLXRISHhzmiirw==
Date: Thu, 02 Oct 2025 05:13:34 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Paul Sajna" <sajattack@postmarketos.org>
Message-ID: <7543e21dad1f6b3a5b5ab8af74c09415c3d8aff4@postmarketos.org>
TLS-Required: No
Subject: Re: [PATCH v3 04/11] arm64: dts: qcom: sdm845-lg-common: Add leds
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "David Heidelberg" <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, "Amir Dahan"
 <system64fumo@protonmail.com>, "Christopher Brown"
 <crispybrown@gmail.com>
In-Reply-To: <57774099-08f1-4ede-b992-19f220bf8059@oss.qualcomm.com>
References: <20250928-judyln-dts-v3-0-b14cf9e9a928@postmarketos.org>
 <20250928-judyln-dts-v3-4-b14cf9e9a928@postmarketos.org>
 <57774099-08f1-4ede-b992-19f220bf8059@oss.qualcomm.com>
X-Migadu-Flow: FLOW_OUT

October 1, 2025 at 9:01 AM, "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.c=
om mailto:konrad.dybcio@oss.qualcomm.com?to=3D%22Konrad%20Dybcio%22%20%3C=
konrad.dybcio%40oss.qualcomm.com%3E > wrote:


>=20
>=20On 9/29/25 7:05 AM, Paul Sajna wrote:
>=20
>=20>=20
>=20> From: Amir Dahan <system64fumo@protonmail.com>
> >=20=20
>=20>  Add the multicolor status led in the phone's notch
> >=20=20
>=20>  Signed-off-by: Amir Dahan <system64fumo@protonmail.com>
> >  Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> >  ---
> >  arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 28 ++++++++++++++++=
++++++++++
> >  1 file changed, 28 insertions(+)
> >=20=20
>=20>  diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi b/arch=
/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> >  index 4c631df56f262ba9e730f6720abd94d374b14692..2a612922ecf7ce3f8a07=
34cb1a31a8a81efdb4f2 100644
> >  --- a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> >  +++ b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> >  @@ -6,6 +6,7 @@
> >  */
> >=20=20
>=20>  #include <dt-bindings/gpio/gpio.h>
> >  +#include <dt-bindings/leds/common.h>
> >  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> >  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> >=20=20
>=20>  @@ -504,6 +505,33 @@ &pm8998_resin {
> >  status =3D "okay";
> >  };
> >=20=20
>=20>  +&pmi8998_lpg {
> >  + status =3D "okay";
> >=20
>=20Could you read back register 0xd000+0x45 (LED_SRC_SEL) on downstream
> and make sure the value matches upstream?
>=20
>=20A msm8998 kernel fork I have laying around on my computer always seem=
s
> to write '1' in there (which it claims corresponds to VPH_PWR as input)
>=20
>=20Konrad
>

I need more explanation on how to do this please.

