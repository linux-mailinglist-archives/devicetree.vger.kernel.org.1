Return-Path: <devicetree+bounces-216604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCA2B55517
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 18:53:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4BB525C54AD
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 16:53:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51A2C321F4D;
	Fri, 12 Sep 2025 16:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=vinarskis.com header.i=@vinarskis.com header.b="DudG8Bzi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-4317.protonmail.ch (mail-4317.protonmail.ch [185.70.43.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE1DC31AF31
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 16:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757695994; cv=none; b=RbQPUdiB22lFSHaQE546eq9C+Qt5NuF4ZgkI25fdq8I0foiuQBn9gziJKfmg5niwK7SBJS5vZ6aOMLb4l1KiuMaRuM8tHcyCVDB3JAW32349lTIk8nyyuMWzij3bEfdJoBfCHdcFt5251cnZNGOZ9OEH4DYrbKD0gMjAuabVyFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757695994; c=relaxed/simple;
	bh=OJzKMO4M3OZL6xdTQzFPddTwXMHAhwvQ9Md14axgm+c=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UjbtRJ8pCjB2R/cBY2oMm3eV2pjQ5N8cOLfr3pl2Fa+lahAUHPOgIonPidpiSWnU2gLpi0u4O50ketL3WU3AodPHN5VuOXNDqEFmUO3mwc5DbwMJ3jnI9uCfe5gErTm45FzEI/eq91zVuiC2jlN2Jz/lEPy5BKTkQfwlTKgjleM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=vinarskis.com; spf=pass smtp.mailfrom=vinarskis.com; dkim=pass (2048-bit key) header.d=vinarskis.com header.i=@vinarskis.com header.b=DudG8Bzi; arc=none smtp.client-ip=185.70.43.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=vinarskis.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinarskis.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vinarskis.com;
	s=protonmail; t=1757695984; x=1757955184;
	bh=OJzKMO4M3OZL6xdTQzFPddTwXMHAhwvQ9Md14axgm+c=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=DudG8BziyZ8prGUD9z1Cd6mtqkrDrQUHCP9yr3FNhHe6U6rHTMlA1WEpBFzJwWS7O
	 fF3wY0KsOaUq9Le2rWTMBwufLivwfCg82G6eNkUwAvXixLdYO9x9S+R5VOla0BRr8+
	 TbAFhF9nkaMBZrKe0RjgAOHxjoov6OmcT1VC4BDQGPrkdochVqGv5QA0OLV2Pb6m7r
	 fFVJ6nIIivyzpuq0wDvOkLWSjqhZKUYrpxLtegoR/0JiY+XzRiLS43MVD+OKt7duRU
	 F9F6vmIrr4GsVr2TcD+kqPvs1rGQr16Tb+55dApD43pEmwwdSSY501WyUJ6kj/9STx
	 LC2H3jZJlXzrA==
Date: Fri, 12 Sep 2025 16:52:59 +0000
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
From: Aleksandrs Vinarskis <alex@vinarskis.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Jens Glathe <jens.glathe@oldschoolsolutions.biz>
Subject: Re: [PATCH 2/3] arm64: dts: qcom: Rework X1-based Asus Zenbook A14's displays
Message-ID: <X5l7eScrcspQe6JfPyx8VCIZXmCmq-VBlAoNmIuAAmwfp1z-yNAG5GyIEnp4ByyPOEfJHEtewC0uOgrc0GiLlaz433Gheubseb-pXH1ZfUw=@vinarskis.com>
In-Reply-To: <e54daa39-ffb1-4f0e-82c6-42e45efe5044@oss.qualcomm.com>
References: <20250908-zenbook-improvements-v1-0-43ecbbf39c60@vinarskis.com> <20250908-zenbook-improvements-v1-2-43ecbbf39c60@vinarskis.com> <e54daa39-ffb1-4f0e-82c6-42e45efe5044@oss.qualcomm.com>
Feedback-ID: 158356072:user:proton
X-Pm-Message-ID: 14966570c28e2628550240d24913a984a7bcc3dc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable






On Friday, September 12th, 2025 at 12:44, Konrad Dybcio <konrad.dybcio@oss.=
qualcomm.com> wrote:

>=20
>=20
> On 9/8/25 8:45 PM, Aleksandrs Vinarskis wrote:
>=20
> > The laptop comes in two variants:
> >=20
> > * UX3407RA, higher end, FHD+ OLED or WOXGA+ OLED panels
> > * UX3407QA, lower end, FHD+ OLED or FHD+ LCD panels
> >=20
> > Even though all three panels work with "edp-panel", unfortunately the
> > brightness adjustmenet of LCD panel is PWM based, requiring a dedicated
> > device-tree. Convert "x1p42100-asus-zenbook-a14.dts" into ".dtsi" to
> > allow for this split, introduce new LCD variant. Leave current variant
> > without postfix and with the unchanged model name, as some distros
> > (eg. Ubuntu) rely on this for automatic device-tree detection during
> > kernel installation/upgrade.
> >=20
> > As dedicated device-tree is required, update compatibles of OLED
> > variants to correct ones. Keep "edp-panel" as fallback, since it is
> > enough to make the panels work.
> >=20
> > Signed-off-by: Aleksandrs Vinarskis alex@vinarskis.com
> > Co-developed-by: Jens Glathe jens.glathe@oldschoolsolutions.biz
> > Signed-off-by: Jens Glathe jens.glathe@oldschoolsolutions.biz
> > ---
>=20
>=20
> [...]
>=20
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/qcom/x1p42100-asus-zenbook-a14.dtsi
> > @@ -0,0 +1,141 @@
> > +// SPDX-License-Identifier: BSD-3-Clause
> > +/*
> > + * Copyright (c) 2025 Qualcomm Innovation Center, Inc. All rights rese=
rved.
> > + * Copyright (c) 2025 Aleksandrs Vinarskis alex@vinarskis.com
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "x1p42100.dtsi"
> > +#include "x1-asus-zenbook-a14.dtsi"
> > +
> > +/delete-node/ &pmc8380_6;
> > +/delete-node/ &pmc8380_6_thermal;
> > +
> > +/ {
> > + model =3D "ASUS Zenbook A14 (UX3407QA)";
>=20
>=20
> 'model' in .dtsi is 'eeeeh'

Followed example of Thinkpad t14s and CRD, as they set it to
'default' in .dtsi, and overwrite in .dts. Could fix it starting
with Zenbook here, but in this case probably makes sense to also
drop 'model' from higher level 'x1-asus-zenbook-a14.dtsi' as well?

>=20
> [...]
>=20
> > +&remoteproc_adsp {
> > + firmware-name =3D "qcom/x1p42100/ASUSTeK/zenbook-a14/qcadsp8380.mbn",
> > + "qcom/x1p42100/ASUSTeK/zenbook-a14/adsp_dtbs.elf";
> > +
>=20
>=20
> are both of the aforementioned variants' firmwares the same?

Yes, Asus doesn't distinguish BSP packages between options (displays
in this case) but only X1E (UX3407RA) vs X1(P) (UX3407QA).

>=20
> Konrad

