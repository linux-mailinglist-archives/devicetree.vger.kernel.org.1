Return-Path: <devicetree+bounces-159475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A010CA6B0A2
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 23:20:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3AB677B0DF8
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 22:19:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A178C2222B6;
	Thu, 20 Mar 2025 22:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=nxsw.ie header.i=@nxsw.ie header.b="SNQbir0r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-0201.mail-europe.com (mail-0201.mail-europe.com [51.77.79.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5350B665
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 22:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=51.77.79.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742509231; cv=none; b=tXWCB0z9kssGvE3qK2GTec5HP1ncxhJi7SwLqjKvq1in5Jy5o8eXtoqBzUcBlze66ok+NhDq1a8U/jdD3ohGwMjEGKVLLOCMyhymB2CMPXdAKFijujrbf/C8Sn0xWbc+X4wWzR0VtJJZdmv+X0pk7wx9jUtm+H/TaCQ+rPUCi04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742509231; c=relaxed/simple;
	bh=zXWfsQ7w6RPGYtfvywhwGPrHWxal0Yxkm5TUZ/A0Q7Y=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ux1JZ33ckhLOQEuVk8rFstpiofIL/hcypLtgPUAqlsf1cvCvMk8v2MWjDauDZgA//EGzc0Zhai99VJyLyH31CzG9PMHT5VxxMFiGS4gkWEPt8VyTUmL8NjQbhfMJATrhj1AYbbapLSYzSrPb0y9LnY3CFalL8nQStcpbCU1pF7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=nxsw.ie; spf=pass smtp.mailfrom=nxsw.ie; dkim=pass (2048-bit key) header.d=nxsw.ie header.i=@nxsw.ie header.b=SNQbir0r; arc=none smtp.client-ip=51.77.79.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=nxsw.ie
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxsw.ie
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxsw.ie;
	s=protonmail2; t=1742509219; x=1742768419;
	bh=3uBgC8qpb6edc0IEFRvLrRXPcCwLkb9JVdD1lmnVRhk=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=SNQbir0rlqFTkOfQON6BjuSXyDFTybv2lNFUzVSCDUxYeQ4ntElJHhnLcd+aTNZ6u
	 qz90htRQhDLwXQqzYH3JzYl/S8OGnrceuisZ+vEsDHsLBNHFLrup+aGnLBbv6Low4j
	 hSXMEpff+diIOM+p3+T+pxODtxwIyT9Ak8JOMVKwVSIgEyn5Zmx0TVT8htgc3MZPGt
	 ymwOmEpoT6DTwZRY0Xnpv12vAQzww/0cYiDSS5kXpZCNlm8UeLoFbcpGG4t2o26rYx
	 uC1FtMkagsZqvcVuGdxwxbyCYkLX9xrSM82dh37JaLViLYDohp4dxwuBqJZAWIrZep
	 xcaNbutK/PGBQ==
Date: Thu, 20 Mar 2025 22:20:14 +0000
To: Juerg Haefliger <juerg.haefliger@canonical.com>, andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
From: Bryan O'Donoghue <bod.linux@nxsw.ie>
Cc: linux-kernel@vger.kernel.org, jens.glathe@oldschoolsolutions.biz
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100-hp-omnibook-x14: Enable SMB2360 0 and 1
Message-ID: <d1b6657c-9da4-4435-81ae-857c27d18beb@nxsw.ie>
In-Reply-To: <20250319160509.1812805-1-juerg.haefliger@canonical.com>
References: <20250319160509.1812805-1-juerg.haefliger@canonical.com>
Feedback-ID: 136405006:user:proton
X-Pm-Message-ID: 2ed17bbce085e05ce1083d357f40fe78e0e77fef
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 19/03/2025 16:05, Juerg Haefliger wrote:
> Commit d37e2646c8a5 ("arm64: dts: qcom: x1e80100-pmics: Enable all SMB236=
0
> separately") disables all SMB2360s and let the board DTS explicitly enabl=
e
> them. The HP OmniBook DTS is from before this change and is missing the
> explicit enabling. Add that to get all USB root ports.
>=20
> Fixes: 6f18b8d4142c ("arm64: dts: qcom: x1e80100-hp-x14: dt for HP Omnibo=
ok X Laptop 14")
> Cc: stable@vger.kernel.org      # 6.14
> Signed-off-by: Juerg Haefliger <juerg.haefliger@canonical.com>
> ---
>   arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts | 8 ++++++--
>   1 file changed, 6 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts b/arch=
/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
> index cd860a246c45..c4ac0aaa6f65 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
> @@ -1352,18 +1352,22 @@ &remoteproc_cdsp {
>   =09status =3D "okay";
>   };
>=20
> +&smb2360_0 {
> +=09status =3D "okay";
> +};
> +
>   &smb2360_0_eusb2_repeater {
>   =09vdd18-supply =3D <&vreg_l3d_1p8>;
>   =09vdd3-supply =3D <&vreg_l2b_3p0>;
> +};
>=20
> +&smb2360_1 {
>   =09status =3D "okay";
>   };
>=20
>   &smb2360_1_eusb2_repeater {
>   =09vdd18-supply =3D <&vreg_l3d_1p8>;
>   =09vdd3-supply =3D <&vreg_l14b_3p0>;
> -
> -=09status =3D "okay";
>   };
>=20
>   &swr0 {
> --
> 2.43.0
>=20
>=20

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>


