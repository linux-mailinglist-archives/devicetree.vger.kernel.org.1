Return-Path: <devicetree+bounces-126099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3E19E070C
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 16:29:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 72E4FB28251
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 13:40:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 344431FF61D;
	Mon,  2 Dec 2024 13:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="heF/Yf61"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2452487A7
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 13:39:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733146800; cv=none; b=n8P4ifMpYzy44w10beUsPmetDA2Gy4/86+Q6no2jU7iteAU12cj/sKDNtxgIElQxQuFKXYlt3PNV7Ffa1tPvwDMM/zyZ37YCcwOWAgcGMUH+F0gce6DX7ZgTJ4C2/F88bCAbd14uz/0E8frv4G75URzem0H/2kbCqQenj/IAs/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733146800; c=relaxed/simple;
	bh=2MD7iyWXHkBZcmWFDvPEWRexWtDu6BcZYXptYqvoY1I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jdBVE815462d0AzhAyTaWhw3egHu+GjDyJgPgF7gZSh8Hl+4l5PIL+eUNnOsQamSeyIdHkoUdapo2Iw437J5vOig4GW3Yexbt0gDcHqhAvUF8EtxBNe57Iwjo5B4GXPIJNs97n4qdKMp5UEvA/7XYgI379yvhE9soUeVI1ZKpUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=heF/Yf61; arc=none smtp.client-ip=209.85.160.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-46686a258f7so41492851cf.1
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 05:39:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733146797; x=1733751597; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Go2QJK5N99/ZxaNUR6SVaJEPwnwYySGUbHfGQS2DIBg=;
        b=heF/Yf619swcUBXgbu2PxkATlaV4XMmTpGs4LCrzyNalcfQNU9TYDgkVZMFkJgaBE9
         ytRRG62ea8Cm71VYWAh/NMR4r9EHUMucQeGcZbmcxcRpUBdnKFZSAkQkiioMLbARQ9oh
         F5O3OmRp8tqwDOJlo5s5coDj+KtFn0jW8cOaiukxy2eeuLC23rghtOpfBtq8LCMfDhuS
         kY1xPVdmay+e92pCJkZf/8ZzNaVtOv3knMYkfc2AypuKt9Omzlm0v/kbVJFhjR1W4OzF
         Wp2pnhqB8OyHYbMOSvcnfEWeLG4yzUY5DhW5+fy2FB9DaQ9EfMAzWyCrqtbBpf0hleSM
         N8RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733146797; x=1733751597;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Go2QJK5N99/ZxaNUR6SVaJEPwnwYySGUbHfGQS2DIBg=;
        b=oPLzM8K+avnEyeDPN0ZPxdDe70e2F9s4rw2JX+UxPaiBfYelZfXS1lVUmWiH5EZLt1
         f/ZQySU60Q0duLStWXC+NUO0rYfvVnVmq5RWbGXhPJCO+6Vm27nZBuKhbtEtMLnOyC49
         cBenOppshK7yq3KWCkK+9NhhhO4kebhgsZXgfSftP8sn+DX3a1jK1vrg9GejLePjHeUi
         FRxtfps14qBzD04eOPGi8dr51WLGPpYGlRCQdxML3JqIlC9sTlIYlBe4ZsRNoJZ48pib
         7QtvQdk2oC/5IoHrjZBItRORVmU0alBlt/mvdG0s1BUUGIClo8Ycp8sBV8RgllHtoRVh
         pHXA==
X-Forwarded-Encrypted: i=1; AJvYcCWIv5dIGI6omSVMIeGYwDhbSCrXoc56XYsms41dL/fQqTsdi0kHwdsQzfrEnScpVCS31MzW8B+GnNUj@vger.kernel.org
X-Gm-Message-State: AOJu0YzabsKHvmYdDVsdSbfhQlOjziu537Br0FOkeayuSLDexp/i/0cW
	3GUItGphH8LiV/n2i0q3SC/Nijph87O2S3ODvrEVMvkpQnfKOcR9ADbp9+ihqxXj6fndmwx4ByP
	6dFzklokD8OQBvPp+pKI/DWUlfiY=
X-Gm-Gg: ASbGncvp58sQbgNMJHvhzj8+RQq21ZNGi3BWqegHufCjUKjBWHqSKS4S1n2bJi4T0P4
	kDk+DWAP8LNCsxf0ayWK2dWn6DzoyU6yW6VNAhjUiAVO3ashILbK1/mFDRAgwEto=
X-Google-Smtp-Source: AGHT+IGstlLcCFJpHkRAg42eh7KZl/i+CKsEuiJDlDZHxAkhc8lIxzYPj+BnGrQsbzRQn9lJ/eMVvML+J2MFUgQodDM=
X-Received: by 2002:ac8:59cc:0:b0:466:96ef:de06 with SMTP id
 d75a77b69052e-466b3646872mr373457801cf.34.1733146797554; Mon, 02 Dec 2024
 05:39:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241130004057.7432-1-naoki@radxa.com> <20241130004057.7432-6-naoki@radxa.com>
In-Reply-To: <20241130004057.7432-6-naoki@radxa.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 2 Dec 2024 17:39:46 +0400
Message-ID: <CABjd4YwV+cthjL4uYkpnwxzTzEUWsWEyoOZCkt+Un2iB=GMgxA@mail.gmail.com>
Subject: Re: [PATCH 5/6] arm64: dts: rockchip: fix pwm-fan node for Radxa ROCK 5B
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, 
	devicetree@vger.kernel.org, sebastian.reichel@collabora.com, 
	linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Naoki,

On Mon, Dec 2, 2024 at 5:35=E2=80=AFPM FUKAUMI Naoki <naoki@radxa.com> wrot=
e:
>
> fix properties to match with vendor kernel.
>
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64=
/boot/dts/rockchip/rk3588-rock-5b.dts
> index 7c8359fe712a..6a02febaefb7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -64,10 +64,10 @@ led-0 {
>
>         fan: pwm-fan {
>                 compatible =3D "pwm-fan";
> -               cooling-levels =3D <0 120 150 180 210 240 255>;
> -               fan-supply =3D <&vcc5v0_sys>;
> -               pwms =3D <&pwm1 0 50000 0>;
>                 #cooling-cells =3D <2>;
> +               cooling-levels =3D <0 64 128 192 255>;

Could you please share your testing setup for this part? In my
experience using Radxa 4010 fan, it didn't spin up reliably below 120,
so the value of 64 looks not helpful here.

Best regards,
Alexey

