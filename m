Return-Path: <devicetree+bounces-242285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D8651C88F11
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 10:28:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 593573B2E0E
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 09:28:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B40E315D27;
	Wed, 26 Nov 2025 09:28:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b="DgiBW3yo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8FB62E62D1
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 09:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764149295; cv=none; b=Sw18VbiLwQI99OHGqsnG+o8X31m2r1EwDRwDIc7rTTPvX7JYnGTbRJfJkaaT6a+7ieip3myWRRwzqSgapSuzWZuo9jl/QP1wSpMO75/q+UCGXCUG8RNJLnLWi2/7Kv1ARdXXrLIs0xV7ztP+xKspkCJbp3GSn1dt5uy4SKKnyS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764149295; c=relaxed/simple;
	bh=EQI3YRAOQlsv/50/jtc+m8TveG6L4PJ60t8l+dOtrnQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jad9FMfoYTCD1+B9qYflKxA/n6dylfaLmaP5P2Wgrmw3gYekqf3fxYzufmCrBzjrblcE0+DY4r0ShgudjYmteR/d+nlXr8tYzelatrXPnP97xwC/fNXsBGVpzM2ndUtq7xhzb/Lrmth5xfZE3xzR8++E0FQpm1/CbXu0Vj7VCtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc; spf=pass smtp.mailfrom=arduino.cc; dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b=DgiBW3yo; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arduino.cc
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-591c98ebe90so8271529e87.3
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 01:28:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arduino.cc; s=google; t=1764149291; x=1764754091; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=84kp7mvpy609O4P8atJgqEkhRccxZ+4bKydmYjW/Bdg=;
        b=DgiBW3yoTOZhJCRZUMCwemm2CGfjuTLsdJ8ByLI55mvhp1TNvntfhwR196lZ72yrL+
         BeUOsY8bh8XFUW4oJSmVAtSdo3IM1ChXPuvtSq2cmep6K3a0KJR/jMK6M6pEHvazHA1a
         i85R9SIpY98WLtnnPwfslr7g28+on78YewR28=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764149291; x=1764754091;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=84kp7mvpy609O4P8atJgqEkhRccxZ+4bKydmYjW/Bdg=;
        b=oUSAE/oIz2BEuMxuUaNfukbaFEKI1M9AX5AcyLiViq7AsobGMNnKnJ8VPU0jEnreDP
         9vY0/fTCF+LQD8/ku0WBxTvL7eGWtb6uA/hj2cSbghh2y9I9jTdbc1hnR3q20/ISdZZ1
         lX18c2zXOw9aGxxl3K8tj+w+wZKQebjl+O2lXlW73Bh3iQBcpHRPpzsPRqg1hFKKQjHs
         OHmosKJ9QZAXbAsbFl0sM6/50UJFYUQWmZYmhEqWUnBuiT/98s1xlEH5X/C5N9p3We2j
         vizVWLjbA1To3RSfWPtTtjNbtgl7yfEHVnCZp2NxNUcYrPqaT5VYigiynGJ7UGehkbL0
         pw/A==
X-Forwarded-Encrypted: i=1; AJvYcCVPJLD38Stechage24zLMlUhgHmNdX61MNYzBaE/m+5tS0GecCyPqyzPaIr2+sGpn23XsJPSKI5Ixwt@vger.kernel.org
X-Gm-Message-State: AOJu0YwMVO7wtdtBkR4sDXdRZY1s05xAeKb5CzPW6xaE7k0XQsAl/n77
	m/Ku1t+qtJJosHxX5WFuOnL/K0MVwfJolCrr0u4PXo0wu2tOB1qSYspo8+KC0iZohnMgmaO7UY8
	UOon9caOOCqc9Hz76FsJ4y4EGrgv2NOg9T8+fHi4kpw==
X-Gm-Gg: ASbGncsBet2ZAVEwcpY3gD2FsZGFlw50dBl8d8/Gq2lO3ZtdW2dwy7aJQy847iRZnKF
	MBkHPbl+pWBUXUuVjPi3W9mU7WWLDwkLS4N4oA+DYQmOCA/L9gKx2gyAtj2KBVRXcf+6i5X5GYi
	0wdbuI6xJ5FsVx+bhTKoMEyKErbCPtOrBRyW/Ryyo+D3D1sH1JVWb8y5z9JbBRmXrvuGFRU6ItB
	8rUyilzyRO0Q4GENEBXec6AC8PBGJh25tDk+yyvRgJX6UvYz4sI0xL8vnmmElOG1GoQ4NAd
X-Google-Smtp-Source: AGHT+IF1+PB8oM28RkeDHPoge6KuDSLw2KinizbNZu9Z/hmrrITwS55K9mgMQr+6rdi6qM9GjhtyjajgRbxpYywLwKI=
X-Received: by 2002:a05:6512:3d1f:b0:594:2e7e:7897 with SMTP id
 2adb3069b0e04-596a3ecee86mr6911639e87.29.1764149291029; Wed, 26 Nov 2025
 01:28:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251120155825.121483-1-r.mereu.kernel@arduino.cc>
 <20251120155825.121483-7-r.mereu.kernel@arduino.cc> <45329a9f-545b-4425-9667-26bceca67982@oss.qualcomm.com>
In-Reply-To: <45329a9f-545b-4425-9667-26bceca67982@oss.qualcomm.com>
From: Riccardo Mereu Linux Kernel <r.mereu.kernel@arduino.cc>
Date: Wed, 26 Nov 2025 10:27:59 +0100
X-Gm-Features: AWmQ_bnksptY2VS0WbIEjjuom7AG_UPOEx3GG-ifRxT1W7-ppfRbkLP9jL5JiOo
Message-ID: <CAKA1Jha7HuEC-KgGktmuiG-U0ZVbKnmLU4bXTwLg+paoLpQ=kQ@mail.gmail.com>
Subject: Re: [PATCH v3 6/6] arm64: dts: qcom: qrb2210: add dts for Arduino unoq
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, broonie@kernel.org, 
	linux@roeck-us.net, Jonathan.Cameron@huawei.com, wenswang@yeah.net, 
	naresh.solanki@9elements.com, michal.simek@amd.com, nuno.sa@analog.com, 
	chou.cosmo@gmail.com, grantpeltier93@gmail.com, eajames@linux.ibm.com, 
	farouk.bouabid@cherry.de, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-spi@vger.kernel.org, m.facchin@arduino.cc, 
	Riccardo Mereu <r.mereu@arduino.cc>, loic.poulain@oss.qualcomm.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 24, 2025 at 12:44=E2=80=AFPM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 11/20/25 4:58 PM, Riccardo Mereu wrote:
> > From: Riccardo Mereu <r.mereu@arduino.cc>
> >
> > Arduino UnoQ is a single-board computer combining Qualcomm
> > Dragonwing=E2=84=A2 QRB2210 microprocessor with STMicroelectronics STM3=
2U585
> > microcontroller.
> > Support to a simply boot to shell environment includes:
> > - UART, I2C, SPI
> > - onboard LEDS
> > - eMMC
> > - WLAN and BT
> >
> > Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
> > ---
>
> [...]
>
> > +&wifi {
> > +     vdd-0.8-cx-mx-supply =3D <&pm4125_l7>;
> > +     vdd-1.8-xo-supply =3D <&pm4125_l13>;
> > +     vdd-1.3-rfa-supply =3D <&pm4125_l10>;
> > +     vdd-3.3-ch0-supply =3D <&pm4125_l22>;
> > +     qcom,ath10k-calibration-variant =3D "ArduinoImola";
> > +     firmware-name =3D "qcm2290";
>
> I'm not sure about this line but otherwise this lgtm

This should be fine, I'll gently ask Loic (added in CC) to confirm that.

>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>
> Konrad
>

