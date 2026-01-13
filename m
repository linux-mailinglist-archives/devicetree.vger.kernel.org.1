Return-Path: <devicetree+bounces-254637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBCBD1A361
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 17:25:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BE53A300FA2F
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:25:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA3CE2EAD09;
	Tue, 13 Jan 2026 16:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="dkQBUFnG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40ED723C51D
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 16:25:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768321531; cv=none; b=lyCH0btDtf+zQ3UMoNN+p2UNWLwvZDz7V0dYbEMOXyjjPA6MGIgki9OZ9nUkFAX/PDbHU62Bk+7HMWYsDOX2koek6IWVGvz0vAMuX5KH01Jx4wPnsF0zMnuZIAHqVVLjUbrfi3DdbA87gX+UXCw4H+yCVKVOXfVMrNNnD4SiD70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768321531; c=relaxed/simple;
	bh=bg+IgSdMS3ZqRtW1LIbkb/laIDLBoPEv1ug5jd4gYlM=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=YcH9jvqaD1P82TXzyh3a/4yU54ZikILNFIIP2leZItLqxKAsYf7HAlxg1Ie3GXBAsFINve0tL9eIm21i67R/OpTgfdf37kEA2GesHmtZr52F4t2BXorRfbIgRbizwZCw6JVlUqab9yqmbNnE+NWjd5kBmSUj7nFMs/BkxN8yBMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=dkQBUFnG; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id D66D3417BD;
	Tue, 13 Jan 2026 17:19:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1768321163; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=sgxXVC2FsBUN9t3WEgWwzTWuclM5HhRFteoBQ8njGPI=;
	b=dkQBUFnGXLxGcBL1IwTitewtzZlr1MF+dr9gAvL+Rgv4zAXinS/wHcs3mc4RMR6rEzW8FU
	Y6qYxgljyojIpsBQdri/tSMkvRqOgE1SpHyTILD+sIQbeGERw7yDNJZh0Us4wX9WdijpLJ
	kp7ptijvu47Of3UZW9CC6J2pLB1oswc91cO2Cb0rWRgDdZyaoDYBmLq6fa28gaSNsIJNUR
	nCLi/hQlY7n9xQzLqDNe5LAvvNw3/Pi4pphNSccAAR1RWklFA734zq80Z7sdwZ/n9eTJ0T
	QrAJ9sQTKxJSw4d6dTofRaj6mxXC5Yu1jXHtBvZWixKbIYqJB2/YDv0wkiPlmg==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20260112141300.332996-1-jerrysteve1101@gmail.com>
Content-Type: text/plain; charset="utf-8"
References: <20260112141300.332996-1-jerrysteve1101@gmail.com>
Date: Tue, 13 Jan 2026 17:19:17 +0100
Cc: heiko@sntech.de, pbrobinson@gmail.com, didi.debian@cknow.org, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
To: "Jun Yan" <jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <3468aed9-c760-fe0e-5c5f-4b03129873fd@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Remove =?utf-8?q?hdmi=5Fsound?= on 
 rk3399-pinebook-pro
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Jun,

On Monday, January 12, 2026 15:13 CET, Jun Yan <jerrysteve1101@gmail.co=
m> wrote:
> According to the Pinebook Pro specification, it lacks HDMI port,
> but hdmi=5Fsound is wrongly enabled.
>=20
> This fixes the following warning:
>=20
> platform hdmi-sound: deferred probe pending: asoc-simple-card: parse =
error

Thanks for this patch!  I'd suggest that the patch description is rewri=
tten
a bit using the standard imperative mood, and without relying on the pa=
tch
subject or the patch itself for establishing the required context.

For example, it may all read like this:

  arm64: dts: rockchip: Do not enable hdmi=5Fsound node on Pinebook Pro

  Remove the redundant enabling of the hdmi=5Fsound node in the Pineboo=
k Pro
  board dts file, because the HDMI output is unused on this device. [1]=
[2]
  This also eliminates the following warning from the kernel log, which
  also gets emitted on some other devices with HDMI ports, caused by so=
me
  other reasons that are still unclear:

    platform hdmi-sound: deferred probe pending: asoc-simple-card: pars=
e error

  [1] https://files.pine64.org/doc/PinebookPro/pinebookpro=5Fv2.1=5Fmai=
nboard=5Fschematic.pdf
  [2] https://files.pine64.org/doc/PinebookPro/pinebookpro=5Fschematic=5F=
v21a=5F20220419.pdf

As described above, getting rid of the quoted kernel warning is actuall=
y
a nice side effect, so to speak.

> Fixes: 5a65505a69884 ("arm64: dts: rockchip: Add initial support for =
Pinebook Pro")
> Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>

The tags should also include "Cc: stable@vger.kernel.org", to have this=
 fix
propagated into the stable kernels as well.

> ---
>  arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 4 ----
>  1 file changed, 4 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/a=
rch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> index eaaca08a7601..a6ac89567baf 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> @@ -421,10 +421,6 @@ &gpu {
>  	status =3D "okay";
>  };
> =20
> -&hdmi=5Fsound {
> -	status =3D "okay";
> -};
> -
>  &i2c0 {
>  	clock-frequency =3D <400000>;
>  	i2c-scl-falling-time-ns =3D <4>;


