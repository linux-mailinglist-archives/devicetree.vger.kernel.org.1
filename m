Return-Path: <devicetree+bounces-256957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E44FCD3AF98
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 16:51:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 34306305CA1C
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 15:50:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1B2C3803C2;
	Mon, 19 Jan 2026 15:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b="FxygLC43"
X-Original-To: devicetree@vger.kernel.org
Received: from raptorengineering.com (mail.raptorengineering.com [23.155.224.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 877EB35EDA5;
	Mon, 19 Jan 2026 15:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=23.155.224.40
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768837803; cv=none; b=eM2Wrb8/6p38mdLpPZ71SnhVD8ti7r1rjMjpHFF3iBu/Jaqv+xV60GVyTcz07WM7sLHMQl2OlGHylH+RA4VFMNxorCiAy5WdECT6hMgjqXAhwSzCdJoTBGl9zMEw3zkcMPtPw5jpX0THcrREitq+yS/OnJpN0uxWObUUx6ELRCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768837803; c=relaxed/simple;
	bh=hScVRt3LHCaQojR2cZYFjzysfGbK5b/jLbP8CGtnSVs=;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:
	 MIME-Version:Content-Type; b=gZmGodJOR5YT1oxLOv0cZx3trC+YpMIeKCd70kzaVepG54VdQ5K3YlxdmsOpdOqgQgSEmLWaD9IQwKhSeUKKBQ3i8c5O+9rK6/WBivMremj8R+7Lk6aWuhG6HqYiSxfvouiB0YogbugQ1d+NK1X412y8Ur0ZGnO6dM6YyDslt0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com; spf=pass smtp.mailfrom=raptorengineering.com; dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b=FxygLC43; arc=none smtp.client-ip=23.155.224.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raptorengineering.com
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id D517C7790E6C;
	Mon, 19 Jan 2026 09:41:03 -0600 (CST)
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id KCfAvz0RJGah; Mon, 19 Jan 2026 09:41:02 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 3D4C97790EC0;
	Mon, 19 Jan 2026 09:41:02 -0600 (CST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.rptsys.com 3D4C97790EC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=raptorengineering.com; s=B8E824E6-0BE2-11E6-931D-288C65937AAD;
	t=1768837262; bh=H6HlrlNTV6NB4MGM4UjY079DAoe0uhR38YlB4C2W5vk=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=FxygLC43MUViN2MSxTCJhBpf5RzILFFMJE0Ter1z8jeOvqO8NGI/qDuG8YgENpL8U
	 QZObhnWeTWN9Dp5yzqgZP+oiUGKTSdFtTm2Q8zbau9+gZa8U385FiTK6aeb71W5U4t
	 E7Ykn+tfTrbSSCPmhxCn0ooQubsARAb9WyVGjydU=
X-Virus-Scanned: amavisd-new at rptsys.com
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id vPUQDMmtp_9P; Mon, 19 Jan 2026 09:41:02 -0600 (CST)
Received: from vali.starlink.edu (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 168A57790E6C;
	Mon, 19 Jan 2026 09:41:02 -0600 (CST)
Date: Mon, 19 Jan 2026 09:41:01 -0600 (CST)
From: Timothy Pearson <tpearson@raptorengineering.com>
To: Rob Herring <robh+dt@kernel.org>
Cc: devicetree <devicetree@vger.kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Lee Jones <lee@kernel.org>, 
	Georgy Yakovlev <Georgy.Yakovlev@sony.com>, 
	Shawn Anastasio <sanastasio@raptorengineering.com>
Message-ID: <1683797865.210858.1768837261953.JavaMail.zimbra@raptorengineeringinc.com>
In-Reply-To: <CAL_JsqLxVpFRPsNy5gRb61HvSohzi=OS3KdacKF7VH_YW3e8_A@mail.gmail.com>
References: <20260107002136.3121607-1-tpearson@raptorengineering.com> <20260107002136.3121607-2-tpearson@raptorengineering.com> <20260107-spotted-swan-of-sufficiency-1bfc03@quoll> <887779054.192722.1767805783381.JavaMail.zimbra@raptorengineeringinc.com> <24a1839d-5c5d-4e59-bc42-403dbc8134a4@kernel.org> <2068648185.192779.1767807665985.JavaMail.zimbra@raptorengineeringinc.com> <CAL_JsqLxVpFRPsNy5gRb61HvSohzi=OS3KdacKF7VH_YW3e8_A@mail.gmail.com>
Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailer: Zimbra 8.5.0_GA_3042 (ZimbraWebClient - GC143 (Linux)/8.5.0_GA_3042)
Thread-Topic: dt-bindings: mfd: Add sony,cronos-smc
Thread-Index: 2lSRflh0+/GfB91rs1V3iwUNYv6wIA==



----- Original Message -----
> From: "Rob Herring" <robh+dt@kernel.org>
> To: "Timothy Pearson" <tpearson@raptorengineering.com>
> Cc: "Krzysztof Kozlowski" <krzk@kernel.org>, "devicetree" <devicetree@vge=
r.kernel.org>, "linux-kernel"
> <linux-kernel@vger.kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Kr=
zysztof Kozlowski"
> <krzysztof.kozlowski+dt@linaro.org>, "Lee Jones" <lee@kernel.org>, "Georg=
y Yakovlev" <Georgy.Yakovlev@sony.com>, "Shawn
> Anastasio" <sanastasio@raptorengineering.com>
> Sent: Wednesday, January 7, 2026 6:20:25 PM
> Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc

> On Wed, Jan 7, 2026 at 11:41=E2=80=AFAM Timothy Pearson
> <tpearson@raptorengineering.com> wrote:
>>
>>
>>
>> ----- Original Message -----
>> > From: "Krzysztof Kozlowski" <krzk@kernel.org>
>> > To: "Timothy Pearson" <tpearson@raptorengineering.com>
>> > Cc: "devicetree" <devicetree@vger.kernel.org>, "linux-kernel"
>> > <linux-kernel@vger.kernel.org>, "Rob Herring"
>> > <robh+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Krzysztof
>> > Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
>> > "Lee Jones" <lee@kernel.org>, "Georgy Yakovlev" <Georgy.Yakovlev@sony.=
com>,
>> > "Shawn Anastasio"
>> > <sanastasio@raptorengineering.com>
>> > Sent: Wednesday, January 7, 2026 11:18:09 AM
>> > Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
>>
>> > On 07/01/2026 18:09, Timothy Pearson wrote:
>> >>
>> >>
>> >> ----- Original Message -----
>> >>> From: "Krzysztof Kozlowski" <krzk@kernel.org>
>> >>> To: "Timothy Pearson" <tpearson@raptorengineering.com>
>> >>> Cc: "devicetree" <devicetree@vger.kernel.org>, "linux-kernel"
>> >>> <linux-kernel@vger.kernel.org>, "Rob Herring"
>> >>> <robh+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Krzyszt=
of
>> >>> Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
>> >>> "Lee Jones" <lee@kernel.org>, "Georgy Yakovlev" <Georgy.Yakovlev@son=
y.com>,
>> >>> "Shawn Anastasio"
>> >>> <sanastasio@raptorengineering.com>
>> >>> Sent: Wednesday, January 7, 2026 1:25:10 AM
>> >>> Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
>> >>
>> >>> On Tue, Jan 06, 2026 at 06:21:33PM -0600, Timothy Pearson wrote:
>> >>>> From: Shawn Anastasio <sanastasio@raptorengineering.com>
>> >>>>
>> >>>> The Sony Cronos Platform Controller is a multi-purpose platform con=
troller
>> >>>> that provides both a watchdog timer and an LED controller for the S=
ony
>> >>>> Interactive Entertainment Cronos x86 server platform. As both funct=
ions
>> >>>> are provided by the same CPLD, a multi-function device is exposed a=
s the
>> >>>> parent of both functions.
>> >>>>
>> >>>> Add a DT binding for this device.
>> >>>>
>> >>>> Signed-off-by: Shawn Anastasio <sanastasio@raptorengineering.com>
>> >>>> Signed-off-by: Timothy Pearson <tpearson@raptorengineering.com>
>> >>>> ---
>> >>>>  .../bindings/mfd/sony,cronos-smc.yaml         | 128 ++++++++++++++=
++++
>> >>>
>> >>> How this can be a v6 with no changelog at all and still not tested?
>> >>>
>> >>> What happened with this patchset? Where is it explained?
>> >>
>> >> Changes have only been to fix issues identified in review and any pos=
ted
>> >> autotest failures.
>> >
>> > And where is this explained? Please always provide detailed changelog =
in
>> > the cover letter or individual patch.
>> >
>> >>
>> >> Please note that the tooling to check the DT bindings does NOT appear=
 work
>> >> properly, we've wasted a lot of time and effort attempting to get it =
running
>> >> only to find that it's spitting out internal Python errors even for o=
ther
>> >> drivers that are *already* in the kernel source tree.  This obviously=
 creates a
>> >> situation where it's difficult to pre-check the patch set for complia=
nce; if
>> >> you want to see this first hand, spin up a Debian Sid VM (which has a=
 very
>> >> recent version of the DT tooling from late 2025) and try to check any=
 of the
>> >> in-tree MFD drivers using the documented methods.
>> >
>> > I am using DT schema on multiple distros, including Debian but not Sid
>> > but Trixie
>> > (https://krzk.eu/#/builders/91/builds/116/steps/13/logs/stdio). Works
>> > without problem...
>>
>> Good to know.  There is next to no documentation on the required softwar=
e
>> versions to make this work, which complicates
>>
>> > On regular Debian based distro this is just few commands - pix install
>> > and them make dt_binding_check - so I am surprised you spent a lot of
>> > time on setting this up.
>> >
>> > What is the problem exactly?
>>
>> Good to know.  There is next to no documentation on the required softwar=
e
>> versions to make this work, which complicates setup.
>=20
> $latest
>=20
> It's as simple as that. There is some checking of a minimum version,
> but maybe we need to bump it more aggressively. I haven't because
> older versions might work.
>=20
>>  Bookworm's DT package was
>> too old when it was tried pre-Trixie release, and at the time Sid didn't=
 work
>> either for some other reason.  The assumption was that the kernel needed=
 a very
>> recent version of the DT tooling, so Sid was tried again this year.  Wil=
l try
>> Trixie before the next patch update.
>=20
> Don't use the distro version. There's no one checking that it works.
>=20
> One problem here (and for distro packaging) has been json-schema pkg
> breaking us. So we were stuck on <4.18 for a long time and now require
>>=3D4.18.
>=20
> Rob

OK, so this came back up while preparing v7 of this patch series.  Set up t=
he isolated machine etc., installed both dtschema and yamllint from PyPI as=
 recommended, and after rebasing on the latest kernel tree I get:

make dt_binding_check DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/m=
fd/sony,cronos-cpld.yaml
  SCHEMA  Documentation/devicetree/bindings/processed-schema.json
  CHKDT   ./Documentation/devicetree/bindings
  LINT    ./Documentation/devicetree/bindings
usage: yamllint [-h] [-] [-c CONFIG_FILE | -d CONFIG_DATA] [--list-files] [=
-f {parsable,standard,colored,github,auto}] [-s] [--no-warnings] [-v] [FILE=
_OR_DIR ...]
yamllint: error: one of the arguments FILE_OR_DIR - is required

Is there more magic $version / install method stuff needed?

Appreciate the assistance in getting this going.

