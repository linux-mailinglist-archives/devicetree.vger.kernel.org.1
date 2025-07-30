Return-Path: <devicetree+bounces-200842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC23B163AC
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 17:25:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5D4BF18830DF
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 15:25:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B8A02DD61E;
	Wed, 30 Jul 2025 15:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SKIiqjIx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2389E2DCF7E
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 15:23:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753888989; cv=none; b=s/T0WqfOJSYJJvriLT8atzjfWRDppH2v2UL9xixvKw63plJ63HSH1kKDWzKtwL3Z0Q8xMwSecvkl+klSbgQg9Iu/xffAFVFLU+PiCASxfXZvN1huvOtQvfsWRrTtpI1L5+doaDeyIN0xGaxymwdVb1iIntAhY8Jruvma4MvItRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753888989; c=relaxed/simple;
	bh=5uCO3VcPHbaG0omgsmS3KTn/iuvdyq8luYto/xpm7jY=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=K25uhr2VeQfTL0glZGahUDamMKWiuXyT47+criMPHl9XnCFFyNjJNSR0Ka4V7Xkye4uwICGkb6SpzlZ5lbJQZ2YuRlXHSlQRcWDp5N70jSPv9xXDlSmE1gmzRqhOQZ7GqVBQwTxlEv2O6YWOqcugkOB8rOapuTuYpL+s/wrlybg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SKIiqjIx; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-45896cf24ebso6499615e9.1
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 08:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753888985; x=1754493785; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FSknzHorPhjTcfMcQKnv2MntcJIq2S43GpXuQPmNQgw=;
        b=SKIiqjIxwAUeJqJsFSBsaipPhLxeiwJwMxbarTgfG5rS5eVavbqx3LE4GYS+UhvPx3
         3sbc4itq6ulj+ZMcEcP1NrMIrr81XI4QTphlZc4I3trLHjEtFQrXzjD5/3JDLfZPvcbB
         /8bBbzVb6D8J4YxxK5XA99bJP0myLMS0RytxbWRDIC8z375jcIN/BoZ5aGrre7z0TkfW
         Lq0KDMLWIvAK6vPOMxGmFb41mU1m8N4cqhWnHkb924Q7IeXzB8WlgHcrGNXMrn43lKDA
         i8fsuvuUUQL3zMisHiAQ5XmAIblu3uz+Sbc0KPEa6B/ZGkCFxMiNtxup5kl+YaqkotIZ
         ymJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753888985; x=1754493785;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FSknzHorPhjTcfMcQKnv2MntcJIq2S43GpXuQPmNQgw=;
        b=iJ1JWWoQzrC3jYu2Zh5Z+2f/oiNpsknq25oDhDoNivifFVU4AlzfBBxGevS7XbbYfZ
         Z94IGeWrMWQ9YjRo9mQwf8VrCZviQXsFQou63RhvpCMIs4yX/GmcgQSaZ7l+8U6W85af
         N3DWPIo5BqAuoV0Js0YyhqcWUiWpQAxsvxWHMy6YOQsiH3ZMjs7GJbXS9RMlmKy2M4Cd
         4V5kb3U7++LZaBHPwzJdsp/REFbZ2r74ynA4IwhOgAEpEHAM7mdbpHnGm3tHW1b0DpOD
         hpm6Nf9a7XauuB8Pun0NvyZbLYF7zG/yvQGwVtmG/ze7mT55TSWh27RuYRGtauxAtZbq
         RfiA==
X-Forwarded-Encrypted: i=1; AJvYcCW7WecC1z8C6ikvRIdnpzVv8j1B1cEwUpve3bsgM+QAYIcjJpolqGH9gIwNXabd3/XbULDFnQO92tqF@vger.kernel.org
X-Gm-Message-State: AOJu0Yx21tcfBhdNJC/XrHtemecierypS+BjiZKc37Yc+rfgQcqxd+4b
	o6cSrF7sj1Ff2ETHaUTvfQOmZ1sKqheojrIvNcC8sQNHgqQma7dlWDt9+z/H24mH5M4=
X-Gm-Gg: ASbGncsP7aOqb7Ifey3oRjCYPNEKGJv1Yb8iigiu4KzNjp/ovmFciHKQbqib4ydPpxL
	chNxClGo/MivFMXjhDqMwMzqYxNmXXdU5Ge362Na0isjAd4boc8To+3p/8s12h/or9At33FdJeu
	TihRrvrLsolxw0IBe42OJ3+vkGcwLgo0NKnh0jNgxix5TkXZ4df2WMV/7nfLVcjKKsELMOBh0Et
	h9Ge4iCb/rRdVXoMl+Fqxba08bKEsypCbeG4bPSi/fsZDKr3psMQT96yOr8+ouq56jOwdGLrDt3
	9pT0cpcyFOrwoRf02BHHC84gLPnLlMvMuQ8kBmOl8YMblY+eF9BBj4KGPw1tu8F3t7MRt3o+rps
	mJ8MwbFaPhGXBVUYih48TRt6F0w==
X-Google-Smtp-Source: AGHT+IFEfOPvUxFnjCIjvRgwT6HHnAVyMp877oB2unpoFPu/47jZPsMcKO0v1YP6b2RitUCQhVHLMQ==
X-Received: by 2002:a05:600c:4fcb:b0:456:a1b:e906 with SMTP id 5b1f17b1804b1-45892bdecacmr31613595e9.33.1753888985256;
        Wed, 30 Jul 2025 08:23:05 -0700 (PDT)
Received: from [10.1.1.59] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4589539e491sm32694905e9.26.2025.07.30.08.23.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 08:23:04 -0700 (PDT)
Message-ID: <34c52c88fd8fcbf68c453c1e94e4cd6294becff1.camel@linaro.org>
Subject: Re: [PATCH v13 07/10] firmware: psci: Implement vendor-specific
 resets as reboot-mode
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>, Bartosz
 Golaszewski	 <bartosz.golaszewski@linaro.org>, Bjorn Andersson
 <andersson@kernel.org>,  Sebastian Reichel	 <sre@kernel.org>, Rob Herring
 <robh@kernel.org>, Sudeep Holla	 <sudeep.holla@arm.com>, Souvik Chakravarty
 <Souvik.Chakravarty@arm.com>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Andy Yan	 <andy.yan@rock-chips.com>,
 Mark Rutland <mark.rutland@arm.com>, Lorenzo Pieralisi
 <lpieralisi@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio
 <konradybcio@kernel.org>, 	cros-qcom-dts-watchers@chromium.org, Vinod Koul
 <vkoul@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will@kernel.org>, Florian Fainelli	 <florian.fainelli@broadcom.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Mukesh Ojha
	 <mukesh.ojha@oss.qualcomm.com>, Stephen Boyd <swboyd@chromium.org>, 
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, Elliot Berman <quic_eberman@quicinc.com>, 
 Srinivas Kandagatla
	 <srini@kernel.org>
Date: Wed, 30 Jul 2025 16:23:02 +0100
In-Reply-To: <b92c164f-c6df-a2c0-1416-67652a01b179@oss.qualcomm.com>
References: 
	<20250727-arm-psci-system_reset2-vendor-reboots-v13-0-6b8d23315898@oss.qualcomm.com>
	 <20250727-arm-psci-system_reset2-vendor-reboots-v13-7-6b8d23315898@oss.qualcomm.com>
	 <b45b157593f1865a402f4098cdeafc298a294c6d.camel@linaro.org>
	 <b92c164f-c6df-a2c0-1416-67652a01b179@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1+build2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Wed, 2025-07-30 at 18:33 +0530, Shivendra Pratap wrote:
>=20
>=20
> On 7/30/2025 2:14 PM, Andr=C3=A9 Draszik wrote:
> > On Sun, 2025-07-27 at 21:54 +0530, Shivendra Pratap wrote:
> > > SoC vendors have different types of resets which are controlled
> > > through various hardware registers. For instance, Qualcomm SoC
> > > may have a requirement that reboot with =E2=80=9Cbootloader=E2=80=9D =
command
> > > should reboot the device to bootloader flashing mode and reboot
> > > with =E2=80=9Cedl=E2=80=9D should reboot the device into Emergency fl=
ashing mode.
> > > Setting up such reboots on Qualcomm devices can be inconsistent
> > > across SoC platforms and may require setting different HW
> > > registers, where some of these registers may not be accessible to
> > > HLOS. These knobs evolve over product generations and require
> > > more drivers. PSCI spec defines, SYSTEM_RESET2, vendor-specific
> > > reset which can help align this requirement. Add support for PSCI
> > > SYSTEM_RESET2, vendor-specific resets and align the implementation
> > > to allow user-space initiated reboots to trigger these resets.
> > >=20
> > > Introduce a late_initcall to register PSCI vendor-specific resets
> > > as reboot modes. Implement a reboot-mode write function that sets
> > > reset_type and cookie values during the reboot notifier callback.
> > > Introduce a firmware-based call for SYSTEM_RESET2 vendor-specific
> > > reset in the psci_sys_reset path, using reset_type and cookie if
> > > supported by secure firmware.
> > >=20
> > > By using the above implementation, userspace will be able to issue
> > > such resets using the reboot() system call with the "*arg"
> > > parameter as a string based command. The commands can be defined
> > > in PSCI device tree node as =E2=80=9Creset-types=E2=80=9D and are bas=
ed on the
> > > reboot-mode based commands.
> > >=20
> > > Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
> > > ---
> > > =C2=A0drivers/firmware/psci/Kconfig |=C2=A0 2 ++
> > > =C2=A0drivers/firmware/psci/psci.c=C2=A0 | 57 +++++++++++++++++++++++=
+++++++++++++++++++-
> > > =C2=A02 files changed, 58 insertions(+), 1 deletion(-)
> > >=20
> > > diff --git a/drivers/firmware/psci/Kconfig b/drivers/firmware/psci/Kc=
onfig
> > > index 97944168b5e66aea1e38a7eb2d4ced8348fce64b..93ff7b071a0c364a37669=
9733e6bc5654d56a17f 100644
> > > --- a/drivers/firmware/psci/Kconfig
> > > +++ b/drivers/firmware/psci/Kconfig
> > > @@ -1,6 +1,8 @@
> > > =C2=A0# SPDX-License-Identifier: GPL-2.0-only
> > > =C2=A0config ARM_PSCI_FW
> > > =C2=A0	bool
> > > +	select POWER_RESET
> > > +	select REBOOT_MODE
> > > =C2=A0
> > > =C2=A0config ARM_PSCI_CHECKER
> > > =C2=A0	bool "ARM PSCI checker"
> > > diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psc=
i.c
> > > index 38ca190d4a22d6e7e0f06420e8478a2b0ec2fe6f..e14bcdbec1750db8aa929=
7c8bcdb242f58cc420e 100644
> > > --- a/drivers/firmware/psci/psci.c
> > > +++ b/drivers/firmware/psci/psci.c
> > > @@ -17,6 +17,7 @@
> > > =C2=A0#include <linux/printk.h>
> > > =C2=A0#include <linux/psci.h>
> > > =C2=A0#include <linux/reboot.h>
> > > +#include <linux/reboot-mode.h>
> > > =C2=A0#include <linux/slab.h>
> > > =C2=A0#include <linux/suspend.h>
> > > =C2=A0
> > > @@ -51,6 +52,14 @@ static int resident_cpu =3D -1;
> > > =C2=A0struct psci_operations psci_ops;
> > > =C2=A0static enum arm_smccc_conduit psci_conduit =3D SMCCC_CONDUIT_NO=
NE;
> > > =C2=A0
> > > +struct psci_vendor_sysreset2 {
> > > +	u32 reset_type;
> > > +	u32 cookie;
> > > +	bool valid;
> > > +};
> > > +
> > > +static struct psci_vendor_sysreset2 vendor_reset;
> > > +
> > > =C2=A0bool psci_tos_resident_on(int cpu)
> > > =C2=A0{
> > > =C2=A0	return cpu =3D=3D resident_cpu;
> > > @@ -309,7 +318,10 @@ static int get_set_conduit_method(const struct d=
evice_node *np)
> > > =C2=A0static int psci_sys_reset(struct notifier_block *nb, unsigned l=
ong action,
> > > =C2=A0			=C2=A0 void *data)
> > > =C2=A0{
> > > -	if ((reboot_mode =3D=3D REBOOT_WARM || reboot_mode =3D=3D REBOOT_SO=
FT) &&
> > > +	if (vendor_reset.valid && psci_system_reset2_supported) {
> > > +		invoke_psci_fn(PSCI_FN_NATIVE(1_1, SYSTEM_RESET2), vendor_reset.re=
set_type,
> > > +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 vendor_reset.cookie, 0);
> > > +	} else if ((reboot_mode =3D=3D REBOOT_WARM || reboot_mode =3D=3D RE=
BOOT_SOFT) &&
> > > =C2=A0	=C2=A0=C2=A0=C2=A0 psci_system_reset2_supported) {
> > > =C2=A0		/*
> > > =C2=A0		 * reset_type[31] =3D 0 (architectural)
> >=20
> > I don't know the PSCI spec, but it looks like with this code it's not
> > possible to set=C2=A0a reboot mode (in DT) and at the same time instruc=
t
> > the firmware whether a warm or a cold reboot was requested.
>=20
> The code added in this patch is kind of dead, until vendor_reset.valid is=
 set to true.
> It can be true, only when both below conditions are true.
> =C2=A01. A SoC DT defines a psci->reboot-mode command say - "bootloader".
> =C2=A02. reboot sys call is issued using LINUX_REBOOT_CMD_RESTART2 and th=
e arg* as "bootloader".
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 reboot(LINUX_REBOOT_MAGIC1, LINUX_REBOOT_M=
AGIC2, LINUX_REBOOT_CMD_RESTART2, "bootloader");
>=20
> With that in place, warm and cold reboot just work same as before until a=
bove conditions are true.
> There is no effect on regular reboots or the reboots with a "command" whi=
ch is not defined in
> psci->reboot-mode DT.
>=20
> Now lets take a case below, where a SoC vendor wants a combination of psc=
i->reboo-mode command and
> warm/cold to work in combination. For ex. a requirement below:
> =C2=A0- reboot command say - "bootlaoder" should do a cold reboot along w=
ith some extra HW reg writes.
> =C2=A0- reboot command say - "edl" should do a warm reboot along with som=
e extra HW reg writes.
>=20
> 1. For this, both commands will be defined in the psci->reboot-mode DT No=
de with the arguments that
> =C2=A0=C2=A0 are defined and supported by the firmware.
> 2. Further, such requirement will now be taken care by the underlying fir=
mware that supports
> =C2=A0=C2=A0 PSCI vendor-specific reset. When we call into firmware with =
vendor specific reset arguments,
> =C2=A0=C2=A0 firmware will take care of the defined HW writes and warm/co=
ld reset as per the mapping of the
> =C2=A0=C2=A0 defined arguments. Firmware and the Linux kernel here are in=
 agreement for executing the
> =C2=A0=C2=A0 vendor-specific resets.

So that means

    echo warm > /sys/kernel/reboot/mode
    reboot bootloader

and

    echo cold > /sys/kernel/reboot/mode
    reboot bootloader

can not be distinguished.

The firmware can not know whether or not cold or warm reboot was
requested in this case by the user.

More importantly, if e.g. an OOPS / panic happens after the reboot
notifier has run (and set vendor_reset.valid because a reboot mode
was requested),=C2=A0a panic handler changing reboot_mode to warm to
retain RAM contents will have no effect, because the the original
code above making those distinctions can not be reached anymore.

Above scenario with OOPS / panic after reboot notifier could e.g.
happen as part of device_shutdown() - see kernel_shutdown_prepare()


> >=20
> > Doing warm reboot is useful if e.g. RAM contents needs to be retained
> > for crash recovery handling, or other reasons, while in normal cases
> > doing a more secure cold reboot.
> >=20
> > On the other hand, of course it's useful to be able to specify the
> > reboot target for normal reboots.
> >=20
> > Is this a problem with the PSCI spec or with this specific change
> > geared at the Qcom implementation?
>=20
> SoC vendor should define a vendor-specific reset in psci DT only when the=
y support them in their
> firmware.=20
>=20
> Do we still think we are breaking anything in the spec or in the warm or =
the cold
> reset path? If so can we discuss such use-cases?

I don't know the spec, but see examples above.

Cheers,
Andre'

