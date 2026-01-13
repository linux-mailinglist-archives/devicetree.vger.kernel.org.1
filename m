Return-Path: <devicetree+bounces-254555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C3AF3D1953C
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:13:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9334D3043D63
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 14:07:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF0753921CC;
	Tue, 13 Jan 2026 14:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9pxqFoa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BE5038F954
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 14:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768313223; cv=none; b=B10Sbtffpm5GnZ1qfV032hKZ3eCXPp2KElF3b3qYv0fmr//MZPVY/j1NHERME7jylW/i+sLbK6z2o2h0LT8TRfCsmO80npXPip6o/oW+7ss4LK4XHN0Bx4okShoJR1m5EHE+J5j+qwAlqtKwhxFtCwwNHlwYaw+Z0Tq/GVIeauI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768313223; c=relaxed/simple;
	bh=bZWhID1hFc+yqAfF+7TERRJ/swRqYMjctDxKDsmKcGI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mVARRROH5enZUA1GveFvJXaXH5lYjRIgItaE/E8wLXK2J1I8+PT+Ky9UllFRcAL8svBNuVeiv3faBcNpJuFNSprqFl20aG9IpEu1Npn2dx4oh1sPIwrb5W9hXcSibvNa4Mp3MoaioBE0Z0TZujsz2QbgHFYHCosIBmeF+Xxpgnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9pxqFoa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C396C19425
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 14:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768313223;
	bh=bZWhID1hFc+yqAfF+7TERRJ/swRqYMjctDxKDsmKcGI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=B9pxqFoatcidmU3JNOAlTkKN8cV0ebGhnD/riSd5e5wt+v7z0AViowfRd9lsNpScR
	 PlY6sfTGQtsBqlwBHegX70/PJiPZxYt19Wy+Rmmgo+sKZmP7MsREqlJU1IIQdE+UNL
	 E1+RaDwUPXuwhLXM12c9Hq5azi8SphD7KXsgyiALp4ytNMhM3eE+YCw2LWN0WBJ4rm
	 zIjE3bo8FgyHF2NG37LDyZ9TxqKUSvaOy3XHyE5Yfw7MDHcUjVTpcRcT3hpAK9o3O4
	 p0ygri8/q/YBn0/rxGhDsqGHFTXytn8M6e+agUOaoYfLsvR5kq3JKipJqlJR1khVKg
	 IcLi9JuZtFDRg==
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-64dfb22c7e4so11313339a12.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 06:07:03 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUFH9AuEo6F10dQZMQlNNMiZNsURwv9GSc3stTut4Qf2SB7CdXzAnGHz/iI+PfUWdPMrLXr3P6yQttE@vger.kernel.org
X-Gm-Message-State: AOJu0YyBRNqxWJ/dLpe8yB8AUXKIx3C6TD++KUjz1w0XeDciPG8ywPs1
	8iDT8cCWGfK7yDysD9LKgokA4xWFmWyEC9z/zTPPKg5t8rhZmVml+RQEzCMWmeFisbJhRWv6c7G
	IqBuJWPtwj6o0IjVTljYa2NxtVpROew==
X-Received: by 2002:a05:6402:326:b0:641:88ff:10ad with SMTP id
 4fb4d7f45d1cf-652e58769e9mr1919789a12.14.1768313221923; Tue, 13 Jan 2026
 06:07:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260112151725.2308971-1-mukesh.ojha@oss.qualcomm.com>
 <433fc01b-0e59-49bf-afdc-a23e815cc563@oss.qualcomm.com> <cca646c3-5e74-47cf-9dfa-49a888db0414@oss.qualcomm.com>
 <20260113130428.n2kuo2d2tkoosws2@hu-mojha-hyd.qualcomm.com>
In-Reply-To: <20260113130428.n2kuo2d2tkoosws2@hu-mojha-hyd.qualcomm.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 13 Jan 2026 08:06:50 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK+Z5M0B7MwNiPgFXLhh66-rETqTc3rZSARtu+Xik_Jsg@mail.gmail.com>
X-Gm-Features: AZwV_Qi88_hesI4wMQmApR3KR0IIPmwab42JWbABtJbyjV9PH2HrL6O7YBsQ4tI
Message-ID: <CAL_JsqK+Z5M0B7MwNiPgFXLhh66-rETqTc3rZSARtu+Xik_Jsg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sm8750: Enable download mode register write
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org, 
	konradybcio@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 13, 2026 at 7:04=E2=80=AFAM Mukesh Ojha
<mukesh.ojha@oss.qualcomm.com> wrote:
>
> On Tue, Jan 13, 2026 at 10:20:58AM +0100, Konrad Dybcio wrote:
> > On 1/13/26 10:16 AM, Konrad Dybcio wrote:
> > > On 1/12/26 4:17 PM, Mukesh Ojha wrote:
> > >> Enable download mode setting for sm8750 which can help collect
> > >> ramdump for this SoC.
> > >>
> > >> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> > >> ---
> > >
> > > Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >
> > Actually no, we have a mess to undo..
> >
> > There's already this node:
> >
> > tcsrcc: clock-controller@f204008 {
> >         compatible =3D "qcom,sm8750-tcsr", "syscon";
> >         reg =3D <0x0 0x0f204008 0x0 0x3004>;
> >
> >         clocks =3D <&rpmhcc RPMH_CXO_CLK>;
> >
> >         #clock-cells =3D <1>;
> >         #reset-cells =3D <1>;
> > };
> >
> > That's located at the rear end of TLMM (someone had a funny idea to
> > move registers around when designing this specific SoC)
> >
> > Problem is, those registers aren't actually "TCSRCC", not even "TCSR"
> > Physically, they belong to the TLMM register window (which starts at
> > the base it promises under the TLMM node today and is 0xf0_0000-long.
> >
> > What we should have done for a fairer representation is make TLMM a
> > clock provider on this specific platform
> >
> > qcom,sm8750-tcsr binds the tcsrcc driver, so we can't describe the
> > actual TCSR (as in this patch).. we'll have to break something..
> >
>
> +               syscon: syscon@1fc0000 {
> +                       compatible =3D "syscon";
> +                       reg =3D <0 0x01fc0000 0 0x30000>;
> +               };
>
>
> What about above ?

What does validation say?

Rob

