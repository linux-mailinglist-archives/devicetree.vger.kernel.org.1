Return-Path: <devicetree+bounces-236101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 788F1C3FD3A
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 12:57:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 01F47189393E
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 11:58:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3347B31AF37;
	Fri,  7 Nov 2025 11:57:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ee+M2woi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A64F1277CA4
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 11:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762516663; cv=none; b=eMloF84KqzuJLMF5JxcL+yH4GsF/2f8GiVwK2f3/KZwxG8JNUqu0l8+g+2JUm6BRVsXdd8luiX/7cUnmr8UGyFc/S/YLIF3qmjABbdAAD0KcPBVjTNG91cR4P4fvEBONAxvLxQH+QKLLSTxL9ZGdoPegaHzJ6pJyG7wShllr3yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762516663; c=relaxed/simple;
	bh=V6i41dL8eu8FQb/kAEXtgcYlRbNtBOZAKd/lJ0lMtnw=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=Pi2CRrBPqKWSeX7Uu0JoLEJsGzkp2yCCqG2gv4zLCBLF587LUA3b37jywjgGciJq4/0Z/AjEMuKsmd4eZGPE69MJxTmXyh8db83mJHYtmHYEOSuKM/QjukiC76Lo1a4ozMyjYyZfy3U6sCIVDdHdljD+npZMs+/6d9xH+94PLW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ee+M2woi; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-27d3540a43fso5914725ad.3
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 03:57:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762516661; x=1763121461; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=monGLLl72k03rW+XBHxv2n4ze7FfAMEbwcdE5Jp88/k=;
        b=ee+M2woiouXgrySHJuE6/DQeBcQ4FGGGWqltl2spK44D5S7xUcyF642+G2UMP8Zip/
         wiQBsSj3B1WinR2KLfl6aDrVNMMbMsBg25UCp7HCc1Sa1Yn4IuCj2ptJgtMAZJtuIXFj
         FAPSaGjQwnsl7u3KFQnayPfYcUs9xzwVepq0lLLqpOqlgTZN+Np2aopTrkiE4CCAXGNv
         2E4IEywS1W4nQ34jGqZBarIe9DR1bMzU4SOnywIKuphaf2+b1puO5SFg8+VFyVy2FY19
         GZqiwOhkG1Fp9jztch8ruIJE1brEbH6exnHg1myv52XiuUkmWdxRX6olY9OCa4cJ4LSh
         4QrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762516661; x=1763121461;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=monGLLl72k03rW+XBHxv2n4ze7FfAMEbwcdE5Jp88/k=;
        b=GFa3kbFUbqCFbaIk3qhMHOG2aBFeXFSDWKl813KViI2IOyH7jYD9MyiuN7p4z6/jPv
         cYVWLlSZb6Fiq5QEy1j/1RqROHriKTWL9utl+UV8are4i2EBZp3l5J5SQyO69Vq5TUjC
         IYJArla5yo7FsJBJxZBzZO4TonLqc3zOlK2pBScbNS9OD7RBVH7JNOH6DNjDpe2mBofR
         isJLOh2ujO9TlQInN5VrWgnHAPf/GN4/3+Jrlk9480fY+6aze72jcUgg3Icu5+d+ElMw
         pKok2fVtmub4jOFmw1uxI7dBwxtd3u6kvycq7KYM8j5d3dwK7ov/xC+g1E8a1zSXx+/v
         THrA==
X-Forwarded-Encrypted: i=1; AJvYcCXFrHBMLTygtPY9n/ad3HXO01p6xOEV6pM5/s/aaUiEdOjTNGpQOLxT3NsxO+XDAxf/yUZFDqhPsTqr@vger.kernel.org
X-Gm-Message-State: AOJu0YzH6ezaG4DJVZWOnM5JvczatveaUu8Bq4NQRaNAz5eTpOoEFz9Y
	qFxcybC7VEAxgBkW1cbTF2tdvagLffHEmg96Egdu58jGlholNOndxNVO
X-Gm-Gg: ASbGncvlzWp/IwfglIem7bNDy/R2IyV2iNkfcRQOAFJ2D+PpI+Nki93uxe5Gw+DylYY
	YtvItRGS1szukO2MFCKCuN7ZlT5BFCWXzeLn1IcrAl7jaP2EAnkYEGsYXv/15fJqWTIx4ybX/+p
	SC/Bfl6WbKOuimmgZwUSVc2gBp+bx4K7F78Yd5LIIitt2lU4ICHgM1Yj/YCiitbXXPlqwyrFxXw
	kyKs4qeaiG9gf+QTauNFmcW3j25PhbZN6qImuQtRGMR8f4QSLkPHbmc9lUKUhx2yUUrUmh5uXOj
	yltPnp1I6Io6/WYirb8+L/PIQ/rZDHoVSwXDQidf+mSLHjOVopwf7FzeeUBAlJ4XPW5l2TE7U/1
	mHkJSa8L+7FhzzTsn10z8+vKEWzPVBQrPauLnFErbzkni01G82FQ40YkM5/bUaaFTzy6VOvMo0v
	+mGWELZ/10KbEkqCkEEUVuoJ+za6Uw0Lp8
X-Google-Smtp-Source: AGHT+IG2JNYUVu7xIzD0M5+jz0kLb7Hm7r7y9xBYeK5/FwHh5dDyBrOGwBvYmi7VcMJsmKn3/mqWGw==
X-Received: by 2002:a17:903:2284:b0:297:d6c2:d06 with SMTP id d9443c01a7336-297d6c20d85mr8354715ad.20.1762516660819;
        Fri, 07 Nov 2025 03:57:40 -0800 (PST)
Received: from ehlo.thunderbird.net ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29651c9c2a2sm58337585ad.93.2025.11.07.03.57.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Nov 2025 03:57:40 -0800 (PST)
Date: Fri, 07 Nov 2025 19:36:58 +0800
From: Coia Prant <coiaprant@gmail.com>
To: Chukun Pan <amadeus@jmu.edu.cn>
CC: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh@kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v5_3/3=5D_arm64=3A_dts=3A_rockchip=3A?=
 =?US-ASCII?Q?_Add_devicetree_for_the_9Tripod_X3568_v4?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20251107110020.226562-1-amadeus@jmu.edu.cn>
References: <20251103171702.1518730-4-coiaprant@gmail.com> <20251107110020.226562-1-amadeus@jmu.edu.cn>
Message-ID: <6F2972A5-047F-48A5-B409-C3F3E71643AD@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

On November 7, 2025 7:00:20 PM GMT+08:00, Chukun Pan <amadeus@jmu=2Eedu=2Ec=
n> wrote:
>Hi,
>
>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4-camera-demo=
=2Edtso
>> @@ -0,0 +1,84 @@
>> +// SPDX-License-Identifier: (GPL-2=2E0-or-later OR MIT)
>> +
>> +// This is a sample reference, due to lack of hardware can not be test=
ed, at your own risk
>
>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4-video-demo=
=2Edtso
>> @@ -0,0 +1,154 @@
>> +// SPDX-License-Identifier: (GPL-2=2E0-or-later OR MIT)
>> +
>> +// This is a sample reference, due to lack of hardware can not be test=
ed, at your own risk
>
>Why are these demo DT Overlays needed? Are these optional accessories?
>These untested DT Overlays should be removed=2E
>
>> +	vcc3v3_pcie: regulator-vcc3v3-pcie {
>> +		compatible =3D "regulator-gpio";
>
>This should use regulator-fixed=2E
>
>> +		regulator-name =3D "vcc3v3_pcie";
>> +		regulator-min-microvolt =3D <100000>;
>> +		regulator-max-microvolt =3D <3300000>;
>> +		pinctrl-names =3D "default";
>> +		pinctrl-0 =3D <&vcc3v3_pcie_en_pin>;
>
>Is this the name from the schematic?
>
>> +	pinctrl-names =3D "default";
>> +	pinctrl-0 =3D <&gmac0_miim
>> +			&gmac0_tx_bus2
>> +			&gmac0_rx_bus2
>> +			&gmac0_rgmii_clk
>> +			&gmac0_rgmii_bus
>> +			&gmac0_clkinout>;
>
>> +	pinctrl-names =3D "default";
>> +	pinctrl-0 =3D <&gmac1m1_miim
>> +			&gmac1m1_tx_bus2
>> +			&gmac1m1_rx_bus2
>> +			&gmac1m1_rgmii_clk
>> +			&gmac1m1_rgmii_bus
>> +			&gmac1m1_clkinout>;
>
>Align Indentation=2E
>
>> +		codec {
>> +			rockchip,mic-in-differential;
>> +		};
>
>Is it confirmed to be differential signaling?
>
>> +	pmic {
>> +		pmic_int: pmic_int {
>> +			rockchip,pins =3D
>> +				<0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
>
>No line break is needed here=2E
>
>> +/* Required remotectl for IR receiver */
>> +&pwm7 {
>> +	status =3D "disabled";
>> +};
>
>This should be replaced with gpio-ir-receiver=2E
>
>> +&sdmmc2 {
>> +	bus-width =3D <4>;
>> +	disable-wp;
>
>The disable-wp property does not apply to SDIO cards=2E
>
>> +	sd-uhs-sdr12;
>> +	sd-uhs-sdr25;
>> +	sd-uhs-sdr50;
>> +	sd-uhs-sdr104;
>
>Just declare the highest supported speed=2E

PCIe and MIC picked from OEM source codes=2E

PMIC picked from RK3568-EVB=2E

Since parts of the OEM source code are not available in mainline, I refer =
to other boards (e=2Eg=2E RK3568-EVB or RK3568-ROC-PC), but I don't have a =
camera or screen to test, so I mark them as demo=2E

Do I need to release a new set of patches?


Thanks

