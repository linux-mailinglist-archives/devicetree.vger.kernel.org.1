Return-Path: <devicetree+bounces-135842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DE886A027BF
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 15:21:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1E3157A1489
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 14:21:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A04EF1DED6F;
	Mon,  6 Jan 2025 14:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="htyQbFHR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE6B01DED55
	for <devicetree@vger.kernel.org>; Mon,  6 Jan 2025 14:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736173272; cv=none; b=W9ekRgMN9SUmv6IR0xPmCLl8FI1X1nzNA8RwqR2+BAJldOQQI/7dMVSAw15SX+SKGqc7PA6j1ryTiik7233SDHtaX0/DCMMboOsLeVYd4FLMlWQtGDrjN0cCZK5QBrBT5LiCBs4eUf/ojWcxu1v46i3mEd9AUCaqORCdxJuSHHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736173272; c=relaxed/simple;
	bh=gkocBbD/9MpvN7JKLxtV833Am9tKamxaXDw5KYVVQuI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=sls1GrnxLzVz64rlHugXodx18kMHeM9BIS4hkkFXLIZwHJFQbsJUMchmI8BLUiBsUuxetaMxajyNda7YJkPTappv0EDwND0+6VLOLilXb7oLMpkymyXd+Lv32kdtxqH5N5oOhx/z7JIcrKBi2/Ydm/qDlZQkoVB+llDpF8wmWLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=htyQbFHR; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43622267b2eso151447205e9.0
        for <devicetree@vger.kernel.org>; Mon, 06 Jan 2025 06:21:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736173269; x=1736778069; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=evV3vfqPSZenjkxuiuVbkt4Uo538mTCtLcz2OWZzZEw=;
        b=htyQbFHRJ2XNBhNuiNfSYTNqWcfACobYB0ZTyiQaO8yoUt2ma+CBsMp1VAp4SSvn7Y
         B0B3V2MIMUXJiIZn8rFwfpKvdQBmNAZ1RDbjCMPKk0wT2UKlNkkqxICfsCgr+FvD5N9C
         r0yGc4rg4oNpCMBTfdQqDIoBcYO+aGVpA4xsN8A70LdDu1/JQvQF7vaoXOVs/jk8HHz1
         6RNsLym6Z41bZYnlRjVy5KSxaLTMthuupcQpsScuLxlqIGyOeYTeNilbD/T81OChzDJ4
         IEDWZwkx4JAU2LNzBtghGLgvFMBPKMkudGNlFJsJ6Qkbwte0drv1usRjnjB+1vVYgUke
         nR1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736173269; x=1736778069;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=evV3vfqPSZenjkxuiuVbkt4Uo538mTCtLcz2OWZzZEw=;
        b=H+mztAq7JPOkgGxb9TyiAgswDO2Di7rATvNiJu9vk1pGVKnIV7CYUUQRgpHO39OhW0
         z6phlNKrAdRWHc6Vg7dcF46DvC62dzMjWipxvtjAc6DpWJjjUUTFR8tWxIAJoj/Kd4YL
         eFLXHAxFDqh7EnSopIDXWlFs6AD3nNvxoYDf/P4Xt22YUrVuwSnkCuA+GAcn49ONdkb+
         J/mihnqYnfvJKDDNu+eLPImi74W++ozPJmVaSk4RwzaP4UEoQX8pO8c8gmI60zZbr2+I
         IgA2pSqBnQQFRM+Nq88f1bpmwcbr1iwZ/EA509HH/4DRJMhmS/qb9n4U2qFVZTHIAKpr
         g54A==
X-Forwarded-Encrypted: i=1; AJvYcCUWT6BIlIW+ZYIamcGBJccP2+w064bb1YGodaWeb/pDdz9WYi0Oyxo2VhGL9JcXEEt9eTjbBPv6ntDv@vger.kernel.org
X-Gm-Message-State: AOJu0YzBMZNO3tfGa9mKmfi1i9CnsBSNQrfVBPT0f6SB93WU/PYb7c3r
	FPG65AWGa640Zxi+9spzmlfhq+GJN9y1MGkOMznj9yIF0TIzDJgtwOtHx6/F0g0=
X-Gm-Gg: ASbGncujPPjMIGnKOXV57JllQmZS/nyXEqkfWavL0p193YURJkM0NE6J18FF7OqNva5
	eHaPoUOaYCGcT/FFRKp2i/6iUSpW/Fdqfi70hiKrl3rJvJ8t3eijQGVv66/uj9veCdXdGddwJPQ
	DYbNDgYIkp0Ho1zuOZ7eXyyNb7Z639miBUjL7Zr3uyVdcmGDQjSTIQZTWTPYAMVQ3y0qw8BN7SN
	BVe8cziuptpgiQHxHiTVkCw08T2vM61lVDJK4mDr4QXtX9TXO6SdSL7EwybOA==
X-Google-Smtp-Source: AGHT+IGaidTwju8f4iTgTdz1EKQVrkbPeOyWSscY7DkQ0gKgcAzgpgkJvVTjzuCMb4bNihTY/QOv0Q==
X-Received: by 2002:a05:600c:35c1:b0:434:a94f:f8a9 with SMTP id 5b1f17b1804b1-43668b7873emr393116775e9.28.1736173269113;
        Mon, 06 Jan 2025 06:21:09 -0800 (PST)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43656b3b1f6sm609901075e9.31.2025.01.06.06.21.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 06:21:08 -0800 (PST)
Message-ID: <8563b573d3d545bbe11298774202fcbfa4dcb13b.camel@linaro.org>
Subject: Re: [PATCH v2 4/5] arm64: dts: exynos: gs101-oriole: enable Maxim
 max77759 TCPCi
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Peter Griffin
 <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Alim
 Akhtar <alim.akhtar@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Sam Protsenko
 <semen.protsenko@linaro.org>, Will McVicker <willmcvicker@google.com>, Roy
 Luo <royluo@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org
Date: Mon, 06 Jan 2025 14:21:07 +0000
In-Reply-To: <8f75da5d-ef9f-4324-9b8e-bcb1e8741a8f@kernel.org>
References: 
	<20241203-gs101-phy-lanes-orientation-dts-v2-0-1412783a6b01@linaro.org>
	 <20241203-gs101-phy-lanes-orientation-dts-v2-4-1412783a6b01@linaro.org>
	 <8f75da5d-ef9f-4324-9b8e-bcb1e8741a8f@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.1-4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Krzysztof,

On Mon, 2025-01-06 at 14:33 +0100, Krzysztof Kozlowski wrote:
> On 03/12/2024 13:40, Andr=C3=A9 Draszik wrote:
> > =C2=A0
> > =C2=A0&pinctrl_gpio_alive {
> > @@ -142,9 +228,16 @@ &usbdrd31_dwc3 {
> > =C2=A0	role-switch-default-mode =3D "peripheral";
> > =C2=A0	maximum-speed =3D "super-speed-plus";
> > =C2=A0	status =3D "okay";
> > +
> > +	port {
> > +		usbdrd31_dwc3_role_switch: endpoint {
> > +			remote-endpoint =3D <&usbc0_role_sw>;
> > +		};
> > +	};
> > =C2=A0};
> > =C2=A0
> > =C2=A0&usbdrd31_phy {
> > +	orientation-switch;
> This shows now warnings on linux-next.
>=20
> Is this because of unapplied
> https://lore.kernel.org/all/20241206-gs101-phy-lanes-orientation-phy-v4-2=
-f5961268b149@linaro.org/
> ?

Yes, that's the reason

Cheers,
Andre'


