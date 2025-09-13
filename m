Return-Path: <devicetree+bounces-216768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AFFB5607B
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 13:29:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C5BF27A5487
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 11:28:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAEE22EC571;
	Sat, 13 Sep 2025 11:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nfyd7Ffg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0552E7180
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 11:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757762980; cv=none; b=uGk+X7iOSj2MDmyf3wQ5lttkhV/pcqWrafVaaBXKZzSW570mn5Fcca1n5sh/LjKRw2Y1CTyQ3AX30i15tLq8sLnzwl5gWvoXEWdCxnaDc3inSZQdI0oN+02AN71zMibcbLLYXZi8ICyFHEeCBzipFt3UryFfst7RDglcN+OvPIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757762980; c=relaxed/simple;
	bh=TYXbLO+kOKJUzkyQuk0TWYQxWbv9RVNrgbRkhz69Gko=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YsLOkOfiY8Zs4khHb/epweoGThxXgN42+qT5Yrv4orwc4ULAAE7Um1s2oy2hXHKHz/8e41kbuhxVi6rMsXz9gMoWMINcVdhtjHo8ZvMW6iwCfQAskLkPzwlxkENRLN4CR4xP1NvlIxOwjb6L1weTt54ESRpqgNlh/3pGkZKD7t4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nfyd7Ffg; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b07d01fd4fbso187583866b.0
        for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 04:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757762977; x=1758367777; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dMMoSzCc5h3tOZ4YYR+aO/iNO1TdT3TVeZmWGA5I9nI=;
        b=nfyd7Ffg1nUmto4aL14FZ2/3q8E4WGdJT9FHeCnIVfkwJergzzv+ZlabR+KAxFV/Po
         PMJkhKy7aNzYYQYApXn8LMwjxlq7BrAf5bWEnDa/nNjbDMIRy2j5aQmCZLdLAUlQ/k55
         MDlTyk/CkEsNmp0E+LDdVXJIt1GbErMbeN5egVyoIhlAVQVKj9J7x/OEWG2hQ03DQkJn
         Bk1EMj+DZBYBSNCpFgwFR3nzDuSxTE9NZ7jIynxZVBASARfgJoXX/XeElEDCQRu9KpdJ
         y34rVnVMwQkUZPe5KJMOiswKpKLbR2EGHe1P253ZsL225/YwhReeeBt8ey6zwzCpQnRv
         9ezQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757762977; x=1758367777;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dMMoSzCc5h3tOZ4YYR+aO/iNO1TdT3TVeZmWGA5I9nI=;
        b=YLf/3yE1lTWYWSilIpZGLVkI0dONn1Fo5ZCMtobMEm0Hx473pJ6QOyGA68uWPukz8Q
         zScqlwzBS3itUORALJO+60lnFUX8AYE+acH5+ErchAhXOermOQexVQvc05jX1apl1+wP
         w0XllWGhTxiu8H15c8zSfirbUWAJsQWktkadWnx09NcAxSqWctoci9T5+DPI7ddjEXlt
         3PkZa9S7V6cFGfujlwZqScUUxynUy3rT+2UlOa4rY2aIcsXbDru+cWbfMM2KP/9FSdOk
         QG6BPoBu6pV05XjfU7zve1r/siz5gbfuocqHBvKUrCTzfB6ATOEQTzAoQCpy1xpSqQUI
         5v/Q==
X-Forwarded-Encrypted: i=1; AJvYcCU8fiP9JdYzF03JEQjFbTKF9TdFc8fMcQhAEzyflPrGe88bK2hwkUwX4a6A/QOMpoagnky2udOAGPb/@vger.kernel.org
X-Gm-Message-State: AOJu0YyQq2JNw6Uou7Zv4SutaBLLn5UWY4LFyvurCIm3npDIc3K02lj2
	8ijv43Mqt15dlSRKQzJNmDKxNuJ3J2mjssVcwb9wWPXKi8QON4VDWGqiUnSj4w==
X-Gm-Gg: ASbGncuyqKh6C2JWaDxnFT5LMNNxqeSGBQrwAmladUadi2b1Gsa+NYsckoKus/k5Y9/
	O6h5cvYavXiyYbF950yJI6kxkJbxnCRz0Ukk2EwB4kNPSqj+ycUjNJNn0tvQwrtkpcN2xA9FhVy
	wFAaWP6twyDhVNcTx2CwMxPQ9YPbX8Ey3w14GbMrLCC/cK+PzsmN9XXBAZSERa114VY5KMjVBTu
	DB4zB7TYcG7ry0cfDTZCuz/8nj+0yjo4VTqKRJk1PvOQiB6/9M/mfgZt9MmCxREwDMVwb+Dpjwu
	sdH096Qp7CSkLykOJwN6cJk5d0qJgpAl1FnvtPiZibBW1FbnYy0/VLVv4wtKeCuRZsi383QdPQX
	PWQGFDfvoPb+s0WdWLIGTr8P6vEqilgNiuyPyEUG90lf/UjHqvWjzTbA=
X-Google-Smtp-Source: AGHT+IHjrg9HhMV8KoVTmQL6sNcOl2lLDDIPwEcS0bg0jeSuB02uw0MNZjGq45peF5NvlyJozkp5Pg==
X-Received: by 2002:a17:907:968a:b0:b04:a289:7b with SMTP id a640c23a62f3a-b07c347f8cemr599471366b.4.1757762977003;
        Sat, 13 Sep 2025 04:29:37 -0700 (PDT)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07de03d93csm167035166b.12.2025.09.13.04.29.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Sep 2025 04:29:36 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej@kernel.org>,
 Samuel Holland <samuel@sholland.org>,
 Andre Przywara <andre.przywara@arm.com>, Chen-Yu Tsai <wens@kernel.org>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH] arm64: dts: sun55i: a523: Assign standard clock rates to PRCM bus
 clocks
Date: Sat, 13 Sep 2025 13:29:34 +0200
Message-ID: <12739001.O9o76ZdvQC@jernej-laptop>
In-Reply-To: <20250913101600.3932762-1-wens@kernel.org>
References: <20250913101600.3932762-1-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne sobota, 13. september 2025 ob 12:16:00 Srednjeevropski poletni =C4=8Das=
 je Chen-Yu Tsai napisal(a):
> From: Chen-Yu Tsai <wens@csie.org>
>=20
> At least in the initial version of U-boot support landed upstream, the
> PRCM bus clocks were not configured, and left at their reset default 24
> MHz clock rate. This is quite slow for the peripherals on them.
>=20
> The recommended rates from the manual are:
>=20
> - AHBS: 200 MHz
> - APBS0: 100 MHz
> - APBS1: 24 MHz
>=20
> Since 24 MHz is the hardware default, just assign rates for the first two.

I think it's better to be explicit than assume. However, this is fine too.

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

>=20
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi b/arch/arm64/=
boot/dts/allwinner/sun55i-a523.dtsi
> index 3aad1b909501..5cd6ddae86c8 100644
> --- a/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi
> @@ -767,6 +767,8 @@ r_ccu: clock-controller@7010000 {
>  				      "pll-audio";
>  			#clock-cells =3D <1>;
>  			#reset-cells =3D <1>;
> +			assigned-clocks =3D <&r_ccu CLK_R_AHB>, <&r_ccu CLK_R_APB0>;
> +			assigned-clock-rates =3D <200000000>, <100000000>;
>  		};
> =20
>  		nmi_intc: interrupt-controller@7010320 {
>=20





