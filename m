Return-Path: <devicetree+bounces-177916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 90745AB99DE
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 12:14:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F066A18904FA
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 10:13:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F9FF2367B4;
	Fri, 16 May 2025 10:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="rbzOS7wb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F23F0238C12
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 10:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747390327; cv=none; b=ReWgtOJf1ot5ObD0YK6ZichIoFe9Ba82xWT9ZqiSJb6HpE6yBn1fn7qRIAMDLiKckaNU9NQ2fnUPRea6zvdyFai00IiheXGTvHEwDzqIvSuEtyVmIi60kHzW0oqz9ZDMDonongdH01NYUCCdpQFNAUDB+qNg38Eh2D6irRAk8fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747390327; c=relaxed/simple;
	bh=d0FRiALmlRh4658ew0IPbF0DGfgYfxPaSLkl+tyPeew=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UwqXRUhuKeW8Kif0Z7fCGAbbt3thbAW8J3jbxsiGgIk5p2ZopteCSTAiE/KRyfcnf+6tQvDs2dAtT/5g48TWvQaP2oWSEh5VhSU+P55MJewrGZ9txtzI4eP8LgKAelOHas3Ft+D3WP/Z/pejDeZYmWlmCDVnnv0Aq4fTuV5/M4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=rbzOS7wb; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-b0b2d1f2845so1353205a12.3
        for <devicetree@vger.kernel.org>; Fri, 16 May 2025 03:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1747390325; x=1747995125; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BYgEmFkLzngjrAp+Ezttc9ZzVi7JvNzJScbPscBcw1k=;
        b=rbzOS7wbk5Ych4xZn6gv0/UGWSFYIOnJ2ocfeIDwMvLwdzCG9ARs0NVRnrMOldjDlD
         dk0JT3bsOYhLG96lFPRM5th/Ncg7SndhMXQgTlhC4JhOMpKQNyvtJmjQyq6oqKUeo4IL
         +jjRAJvtaGPEkziRdIDtquVtDcW9E3ow3oZXI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747390325; x=1747995125;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BYgEmFkLzngjrAp+Ezttc9ZzVi7JvNzJScbPscBcw1k=;
        b=DzU9r2rffZhMiXCBgB1R4TWFUGPOLbdhzVo5mnvzTKfVkNDzlqQK+1qSe7pHod/POs
         gEgc8HbeBpn0ZU2gF8ymrAJtJfUL0yp4hq8FHNQ6Mv9/u4VEWyb8p3s7UtrXiop1CWOP
         gbyTeq7DhBnjuZzrkC4SqaBQ/PVfTJ+V/PV3vFro5pkUm2EFOrnk/n/1vjxACn0VHs+Z
         hKSIYZgMy6Kcqcwp9Oqs19YJKykdavT8bcvNrC7BGxHaccQyvDsebjxxpzj9xaNBjm6G
         ikVECSEeHHGu7lKqX+K621Uf5ba6wgWX8hLVhIQ4Wga63Vqt+w4X2WQVWyMoahx9CRAC
         jeUQ==
X-Forwarded-Encrypted: i=1; AJvYcCUHnd4S2BL6hDAAYEScU+4H4hGM193+KTu54ZAk6kpiO5iPuXUh5vmeaZq5xvQUav6L3MuUaO1EB+m5@vger.kernel.org
X-Gm-Message-State: AOJu0Yxhwu4IaExQDlraF1oXgF764w4R7wKsBaDANxU6xNNfhSg0NULq
	riVZzuNzoU7fpzD0aN4k2719VBdF6f9DYNwRHdXA68r7JKaJsYNZdbcBRu9QYe+n/n7Qarqoc9A
	eC/qIUNfvflMzoCqRjdzmRpYTUSDgwoYUWxKcxJz/zw==
X-Gm-Gg: ASbGncts7NfcwG6/ThdubC5vRh4z9SctA7DpcoZomSWJi/qv1FSg5Xj2XvaVsdEqapE
	fBhjuMMFb/+VI3lZPtg3fbIpqmUdLXYMcjNOSCmEpCBqiiqo3uTiqVXw1M/3+IVIQCNQW902LBS
	p9XK72GcQoGf7cEIrtLSEAwCJNM9CjkC8=
X-Google-Smtp-Source: AGHT+IEahdby4WlhFBrzP3TTtfzK9CfL8PPGgJOtXddvjGzliwZ++ZJsevn/WphCoiZBknrEiweCADHFA4Ad2+v0G9U=
X-Received: by 2002:a17:902:f691:b0:223:5945:ffd5 with SMTP id
 d9443c01a7336-231d452d9e8mr35792465ad.32.1747390325218; Fri, 16 May 2025
 03:12:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250514070545.1868850-1-dario.binacchi@amarulasolutions.com>
 <20250514070545.1868850-2-dario.binacchi@amarulasolutions.com> <20250516040520.GC28759@nxa18884-linux>
In-Reply-To: <20250516040520.GC28759@nxa18884-linux>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Fri, 16 May 2025 12:11:54 +0200
X-Gm-Features: AX0GCFvTTvkYmZgAupUSG_j3MamO3A5m7OZvwC9De3vE2YHP6-H68MG8tQS5hHE
Message-ID: <CAOf5uwmM=+QoaJH8vsUKL-fDab_Fmhxd1d-622pRi-hK=EXk4g@mail.gmail.com>
Subject: Re: [PATCH 2/3] ARM: dts: imx6ulz-bsh-smm-m2: Enable uart2
To: Peng Fan <peng.fan@oss.nxp.com>
Cc: Dario Binacchi <dario.binacchi@amarulasolutions.com>, linux-kernel@vger.kernel.org, 
	linux-amarula@amarulasolutions.com, 
	Wolfgang Birkner <wolfgang.birkner@bshg.com>, Conor Dooley <conor+dt@kernel.org>, 
	Fabio Estevam <festevam@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi


On Fri, May 16, 2025 at 4:56=E2=80=AFAM Peng Fan <peng.fan@oss.nxp.com> wro=
te:
>
> On Wed, May 14, 2025 at 09:05:34AM +0200, Dario Binacchi wrote:
> >From: Wolfgang Birkner <wolfgang.birkner@bshg.com>
> >
> >uart2 is used as wake up source.
> >
> >Signed-off-by: Wolfgang Birkner <wolfgang.birkner@bshg.com>
> >Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> >---
> >
> > arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts | 4 ++++
> > 1 file changed, 4 insertions(+)
> >
> >diff --git a/arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts b/arch/arm=
/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts
> >index 5c32d1e3675c..fff21f28c552 100644
> >--- a/arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts
> >+++ b/arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts
> >@@ -37,6 +37,10 @@ &snvs_poweroff {
> >       status =3D "okay";
> > };
> >
> >+&uart2 {
> >+      status =3D "okay";
> >+};
>
> No need pinctrl settings?
>

We found out that in imx6ulz, if we don't enable wakeup on uart2 (or
other uarts that do not conflict on pinout) we are not able to wake up
from uart4, which is the console.
According to the TRM and the code everything look fine but the real
result it's we stuck in suspend

Here is how we are able to resume.

uart2
echo enabled > wakeup
uart4
echo enabled > wakeup

Michael

> Regards,
> Peng
>
> >+
> > &uart3 {
> >       pinctrl-names =3D "default";
> >       pinctrl-0 =3D <&pinctrl_uart3>;
> >--
> >2.43.0
> >
> >base-commit: e9565e23cd89d4d5cd4388f8742130be1d6f182d
> >branch: bsh-202505-imx6ulz_smm_m2
>
>


--=20
Michael Nazzareno Trimarchi
Co-Founder & Chief Executive Officer
M. +39 347 913 2170
michael@amarulasolutions.com
__________________________________

Amarula Solutions BV
Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
T. +31 (0)85 111 9172
info@amarulasolutions.com
www.amarulasolutions.com

