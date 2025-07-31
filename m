Return-Path: <devicetree+bounces-201022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DB8B17018
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 13:05:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A85AD1AA632C
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 11:05:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC6912BE65B;
	Thu, 31 Jul 2025 11:05:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k3dTG93c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2ABE1F8753
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 11:05:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753959918; cv=none; b=TmBaFEopF2wFA9GQHNgrZ51sUNb4rCNiTIVfOWgpSUaMOyvwYrc1uNc+ZBY6Ym7CxO7ji9eWeIUCnus2QPKsLZAeZ7b+3Pjhcu4+7uISwUhI37dQsy6r6XUkWjgxUm6IoQ/iJvOvewJp/b0IGRCM5ka5ZoU5zZAYNZC3w9GNQ0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753959918; c=relaxed/simple;
	bh=VEKn7bCKtQ4DC3+ZJIGn7pT8WXFtiTvd9gJWSwXEX6s=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=cUnqMn+wQP7XsUz12/WaWmnLGIA8Oj8FnRQXDJt1slVa4M0GDfVfr/uu3+8VtjAnplzyE0f+X8fJs2O8XW4akMzwlZbwKKOIoOv3QuQCUlMpxC1zji/FtcLEA1k89nIkySyfPdvJIi/h7mYigVYoB+KDwje5i1qRX9z3Xh+v/Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=k3dTG93c; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4589968e001so4610425e9.0
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 04:05:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753959915; x=1754564715; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VEKn7bCKtQ4DC3+ZJIGn7pT8WXFtiTvd9gJWSwXEX6s=;
        b=k3dTG93cfpQCJ5FG+CzzzVV4ZTcYXfgxNk879hQpvYIo0C3Hb/3newGQDkI8W+Pb8t
         NHSv2dtP+QJR80KZm8Bz4BbpKJTAaaCeMuTJJG0t9511fYE3sXKegonxwnQAvizhePb/
         dJkh+CBNgoC4SWR2Qr6Ifg8MSzMKJDaPjA1tWlRO0zLfJkjPHVFvWmmV2KMWxhOus+FB
         Tn2MzNJm/eEpiZ6lXW5CgrY/iolx9PKhpN5n0/kiibuwd55Fsf9OjlAXGfmL3kLVbrE/
         tlPtKARqnCK89+85vD/1jP+16vF2BmgQqqTgxgHeYR85R04KqhzI5+oFfyCKDezX2Cvj
         WfnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753959915; x=1754564715;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VEKn7bCKtQ4DC3+ZJIGn7pT8WXFtiTvd9gJWSwXEX6s=;
        b=ut48Qb5be+1kmvGHPih1cVXwWZJ2jlrCLZK59IShb0yw7IZJYsbQXQ76fmPkC3uU59
         HxA46i9TaV5MD7SSTrOcFGCHYfP1/ssv0p7FrR4VwEncmSquL+g6UMg5+Bge1ZaM3htg
         MbQUkU/4rDojtelFHkgrtaNcjyAxb2dEh9S3ZPPiYcyRQqPIH9I3ik3awtW8FuyoUPoA
         onUEjdHYU6AVbYA9UW3v6Mlemuts26Eqx5kMv+ppYWEbqw/kCPtP7eQxur0ZsdYK7/1i
         oRM1txFOWwX3FRDXUe9NDiBze3JQCP7GeJZ8ahjBaNPgvDAne4sIM7yfWwvR0xKBIydy
         xH8Q==
X-Forwarded-Encrypted: i=1; AJvYcCX6qbQ0C8VhrVR56gZ2d7G9zH/SKTHXl0JYtnMSCfzn3uZWsHb8JUg01THXBXdHaFJ5BD3yMcR2lgC7@vger.kernel.org
X-Gm-Message-State: AOJu0YwX87UW6V5s4txWTlPWLkg0E1RXddqZ2KsRYYeFyJsn0BSj2Czd
	PHbw46pfyZ5GdE5LoqeZB0bJ1afZx3nfn+tvUD9UitKS4Oqy8IFro8X66pC99wYB3LQ=
X-Gm-Gg: ASbGnctoHp9+pHUNq1nsoKsGCkyP9cQNZeKaxgTpqEmNJJx6sF/rOjIjLahxZaAXK5K
	9XTUPeAgy4TgNNWDUWH74HjFLXVBlYsit9vPrFcd5dEIhuAoMX6pqD6RkZcFM2kpW6SoVdBJH3A
	fKAzbKmToVIraQ5gbuF7E3EypE1yNXw2WhEO4duzxFmZgAfQiXF3JXqP27YvjFDzyZTPWdLDWdb
	3PbP/7/k4+OqOSRcnPAGkziLoazdcRbW8G50vEAMtMEgZnCC5U1sTN0BDv5SKt2RtEtlgaVAT4u
	XV3ktH/8uWZX+6qD6PtyKNXp+cBOeMBYbwng1E2KMYiEoTSUm0sbfjyE4rlA0O99DV3nLPRbUj4
	rOc0s7uhHND02q4iy3bBC9VqcIw==
X-Google-Smtp-Source: AGHT+IE2uAVTLlLGsEyuKRwFnRFU/FdmGqD5jafe8UhDC8Cs0NgSXpOAHHVQxxk7a76FdVpc+nYZfA==
X-Received: by 2002:a05:600c:1d25:b0:456:1560:7c5f with SMTP id 5b1f17b1804b1-4589a700e05mr55899935e9.14.1753959915171;
        Thu, 31 Jul 2025 04:05:15 -0700 (PDT)
Received: from [10.1.1.59] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4589edfcdc3sm23160775e9.12.2025.07.31.04.05.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Jul 2025 04:05:14 -0700 (PDT)
Message-ID: <63d090988d04fa81231c984771a563c55daf1bd9.camel@linaro.org>
Subject: Re: [PATCH v13 07/10] firmware: psci: Implement vendor-specific
 resets as reboot-mode
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>, Shivendra Pratap	
 <shivendra.pratap@oss.qualcomm.com>, Bartosz Golaszewski	
 <bartosz.golaszewski@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
 Sebastian Reichel	 <sre@kernel.org>, Rob Herring <robh@kernel.org>, Sudeep
 Holla	 <sudeep.holla@arm.com>, Souvik Chakravarty
 <Souvik.Chakravarty@arm.com>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Andy Yan	 <andy.yan@rock-chips.com>,
 Mark Rutland <mark.rutland@arm.com>, Lorenzo Pieralisi
 <lpieralisi@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>, Catalin
 Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Florian
 Fainelli	 <florian.fainelli@broadcom.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Mukesh Ojha
	 <mukesh.ojha@oss.qualcomm.com>, Stephen Boyd <swboyd@chromium.org>, 
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, Elliot Berman <quic_eberman@quicinc.com>, 
 Srinivas Kandagatla
	 <srini@kernel.org>
Date: Thu, 31 Jul 2025 12:05:13 +0100
In-Reply-To: <592902f1-549f-47c5-9ef4-b5c7ef2c9a47@app.fastmail.com>
References: 
	<20250727-arm-psci-system_reset2-vendor-reboots-v13-0-6b8d23315898@oss.qualcomm.com>
	 <20250727-arm-psci-system_reset2-vendor-reboots-v13-7-6b8d23315898@oss.qualcomm.com>
	 <b45b157593f1865a402f4098cdeafc298a294c6d.camel@linaro.org>
	 <b92c164f-c6df-a2c0-1416-67652a01b179@oss.qualcomm.com>
	 <34c52c88fd8fcbf68c453c1e94e4cd6294becff1.camel@linaro.org>
	 <592902f1-549f-47c5-9ef4-b5c7ef2c9a47@app.fastmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1+build2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Wed, 2025-07-30 at 19:31 +0200, Arnd Bergmann wrote:
> On Wed, Jul 30, 2025, at 17:23, Andr=C3=A9 Draszik wrote:
> > On Wed, 2025-07-30 at 18:33 +0530, Shivendra Pratap wrote:
> > > On 7/30/2025 2:14 PM, Andr=C3=A9 Draszik wrote:
>=20
> > > 1. For this, both commands will be defined in the psci->reboot-mode D=
T Node with the arguments that
> > > =C2=A0=C2=A0 are defined and supported by the firmware.
> > > 2. Further, such requirement will now be taken care by the underlying=
 firmware that supports
> > > =C2=A0=C2=A0 PSCI vendor-specific reset. When we call into firmware w=
ith vendor specific reset arguments,
> > > =C2=A0=C2=A0 firmware will take care of the defined HW writes and war=
m/cold reset as per the mapping of the
> > > =C2=A0=C2=A0 defined arguments. Firmware and the Linux kernel here ar=
e in agreement for executing the
> > > =C2=A0=C2=A0 vendor-specific resets.
> >=20
> > So that means
> >=20
> > =C2=A0=C2=A0=C2=A0 echo warm > /sys/kernel/reboot/mode
> > =C2=A0=C2=A0=C2=A0 reboot bootloader
> >=20
> > and
> >=20
> > =C2=A0=C2=A0=C2=A0 echo cold > /sys/kernel/reboot/mode
> > =C2=A0=C2=A0=C2=A0 reboot bootloader
> >=20
> > can not be distinguished.
> >=20
> > The firmware can not know whether or not cold or warm reboot was
> > requested in this case by the user.
>=20
> My feeling is that this is fine: the /sys/kernel/reboot/mode
> interface is not really used on anything other than 32-bit
> arm and x86 machines, and the way it is specific as
> cold/warm/hard/soft/gpio is not that useful.

Currently, reboot_mode as such is also used by gs101 and later, we do
distinguish between the reboot_modes (cold/hard and warm/soft), although
generally not via sysfs indeed. And yes, gpio is a strangely specific
one.

I don't have insight into newer SoCs / board designs in that family,
but my understanding is that newer SoCs use PSCI for reboot as well
and I do believe being able to do cold reboot by default and warm
reboot in some cases (crash handling in particular) to still be a
valid use-case.

> I think for the purpose of the new code here, we should talk
> about reboot "commands" instead of "modes" to avoid confusing
> between the global "enum reboot_mode" variable and the
> firmware interface for reboot modes as listed in DT.

+1 It should really have been added as reboot command or reboot target
in the first place.

A.

