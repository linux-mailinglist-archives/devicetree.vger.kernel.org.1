Return-Path: <devicetree+bounces-231163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A6AC0B081
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 19:45:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8ABF83B586A
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 18:45:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C9132FDC54;
	Sun, 26 Oct 2025 18:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b="Xu7AezbX"
X-Original-To: devicetree@vger.kernel.org
Received: from out-178.mta1.migadu.com (out-178.mta1.migadu.com [95.215.58.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405EB2FDC52
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 18:45:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761504304; cv=none; b=SB2K1vd/g+hhpXTyo0Wxy9unXEiXez/dfdncC26lJ2/BSN7I0pEUaFS8mRLXGaG6Nh58/Jj8Bj78QnrsRLPe439tbtxVzwL/hXeHKyfyT/YI5QQLaCinmkLLHPgG4b+VeEG2RsTZbM98euD5MkbkArTOcK+hMSKLCzbNWYFGBh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761504304; c=relaxed/simple;
	bh=+y8KHncls3OAOqDaFkj5gilK4idEaoPHp5VamyBZOns=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=aKM/KKgvwhvtIZl6MDmc/Ky+FfEuPp8NSo7d1aUR52HtIrzlPU2KT1BAApG+4VTYacQKzxOP/yC+nt3b2ox5meoowA7dMkTpic3DnmTrwe19MUlC8mKlHVcbhF+ef7QXed0rGRSDrRyBpCReLFfG3p5vJHupJ5kRAi+g2iMXR5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=Xu7AezbX; arc=none smtp.client-ip=95.215.58.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow-tech.com
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1761504290;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6XoP33HamohJnYpgEMOOVXkOdMXK2Wj7iOxwWmiRyjA=;
	b=Xu7AezbXj9uqu7+8ZLk5xs1budthm6Tf5t9XogPUBoroeIZZR1h/G+9rdfNJ8Xig4w28K7
	gPD0TnSaKwr90otHjpM6vEpYkhJy1vI8qx6gkVfrEgpiJc4LItyLMgZkP2tcRHROsqLx8u
	LY95EHxK2aJnHc7Fqr36DzEspOnO3QV+cY0tVkC+DWK/NNXHUSpfAVm5cemsgu1JGp67Zb
	dgfEN2OBKCNW6Afk3pK0kcTOiI5KOtrjS7waaQnZWHYHQrdVZchK2EA5Q8I4ZlzUR4yPG1
	ltUHntWkA8gv38x4oGWo5AwdxHnBCt4CR4iVOeIhpsnyvHjUhcz5vkz08vJRbQ==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 26 Oct 2025 19:44:34 +0100
Message-Id: <DDSH5G4FVB5F.BK0F7WNGG6S@cknow-tech.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Dragan Simic" <dsimic@manjaro.org>, "Diederik de Haas"
 <diederik@cknow-tech.com>
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko
 Stuebner" <heiko@sntech.de>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "Johan Jonker" <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix vccio4-supply on
 rk3566-pinetab2
References: <20251026172608.108956-1-diederik@cknow-tech.com>
 <e2caefd1-9668-0404-598f-98b26375525c@manjaro.org>
In-Reply-To: <e2caefd1-9668-0404-598f-98b26375525c@manjaro.org>
X-Migadu-Flow: FLOW_OUT

Hi,

On Sun Oct 26, 2025 at 6:36 PM CET, Dragan Simic wrote:
> On Sunday, October 26, 2025 18:25 CET, Diederik de Haas <diederik@cknow-t=
ech.com> wrote:
>> Page 13 of the PineTab2 v2 schematic dd 20230417 shows VCCIO4's power
>> source is VCCIO_WL. Page 19 shows that VCCIO_WL is connected to
>> VCCA1V8_PMU, so fix the PineTab2 dtsi to reflect that.
>>=20
>> Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
>
> Thanks for this patch.  As already discussed in private, this is
> correct and safe to do, because both supplies are designated as
> always-on, so please feel free to include:
>
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>

Thanks :-)

> Though, I think this cleanup should also be propagated into the
> stable kernels.  Right now this patch doesn't actually introduce
> any functional changes, but maybe in the future there will be
> some related driver or DT changes or improvements that may end up
> relying on DT correction such as this one.

Fair point. Dunno if b4 picks this up automatically ...

Fixes: 1b7e19448f8f ("arm64: dts: rockchip: Add devicetree for Pine64 PineT=
ab2")

Cheers,
  Diederik

>> ---
>>  arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>=20
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi b/arch/ar=
m64/boot/dts/rockchip/rk3566-pinetab2.dtsi
>> index d0e38412d56a..08bf40de17ea 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
>> @@ -789,7 +789,7 @@ &pmu_io_domains {
>>  	vccio1-supply =3D <&vccio_acodec>;
>>  	vccio2-supply =3D <&vcc_1v8>;
>>  	vccio3-supply =3D <&vccio_sd>;
>> -	vccio4-supply =3D <&vcc_1v8>;
>> +	vccio4-supply =3D <&vcca1v8_pmu>;
>>  	vccio5-supply =3D <&vcc_1v8>;
>>  	vccio6-supply =3D <&vcc1v8_dvp>;
>>  	vccio7-supply =3D <&vcc_3v3>;


