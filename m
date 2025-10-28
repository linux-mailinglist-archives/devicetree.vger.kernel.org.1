Return-Path: <devicetree+bounces-232288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C5777C16229
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 18:26:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D49B3B060D
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 17:24:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E02D6336EDC;
	Tue, 28 Oct 2025 17:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b="KS3bEume"
X-Original-To: devicetree@vger.kernel.org
Received: from out-179.mta0.migadu.com (out-179.mta0.migadu.com [91.218.175.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060F728C5B1
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 17:24:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761672273; cv=none; b=G7BRJUVa53Fes8BPfil+mkVbbAq2WQEQqZBJocDHVSQMURTS5OwWjfhG0QTLEQ9MJRSMs5jRuntifL3CveCWeQdhhOkKGV9pdWpPJHfTUyAXwSMxapGXXtMZOTQPShQjDLJm1grt/+mQjkYEIpHwNqn6Idlf8pBZ6Zipq1PgV6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761672273; c=relaxed/simple;
	bh=ZxONpV3i/ou2JfG5PzUXP70EAYe3B1djZLSgOaiLNhw=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=W4GoHqRN/hyp9MYAbEzOVpsRJeNVZgRb0nBTNoRHwXiB6v5wtuK/2jACEZiI8qXRdvgZQMUPPB/lsetBlIYjUnrqIDOtGVnk4d5ba/3AetdiYaJQzBkOQAUJ2gMeJyZa2O1pxsLlUr6K7RST5FOmFz8BM7XwxZ6lJsBHj01aaAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=KS3bEume; arc=none smtp.client-ip=91.218.175.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow-tech.com
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1761672268;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=E2Pml1G5/Sjw6JkBJ4bqsdsT4UzYGcaQDoLpBigadoI=;
	b=KS3bEumeNJwU0gYoic7hWhR0ndlInGfhrNEn6Ci2g3j4++LN6XDcgIv2WFW8MuMQstfAk5
	mqsoYLyRYPy1I4DpUa7/xk6VaprKxzABWovAfxk/3KHBNjflUqpERs0lxZMJcEXDjQqI2s
	YP1wvNOsCuBhYM0B2H8nmaPjwR9tTaPSIAHzKAItCbNOiksouigAihswuXupUS23Lkzk94
	mbbyEQnS0AyEaS2Bdmjffj8XpNKeuT9R5cPXTJz+O9Wj2+NoxPu9EnlbsZElH5MKiz8OP+
	ajxITudT9sD1Z+8ttFtCxxp2FEglQc7l8QUy7Q8vOnfY1735r5TruuydJPX9aw==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 28 Oct 2025 18:24:25 +0100
Message-Id: <DDU4P6569O9M.3DKFYS1FDBROU@cknow-tech.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "FUKAUMI Naoki" <naoki@radxa.com>, <heiko@sntech.de>
Cc: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <liujianfeng1994@gmail.com>, <dmitry.baryshkov@oss.qualcomm.com>,
 <sebastian.reichel@collabora.com>, <andy.yan@rock-chips.com>,
 <nicolas.frattaroli@collabora.com>, <damon.ding@rock-chips.com>,
 <jbx6244@gmail.com>, <detlev.casanova@collabora.com>,
 <devicetree@vger.kernel.org>, <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Fix USB Type-C host mode for
 Radxa ROCK 5 ITX
References: <20251028115040.101156-1-naoki@radxa.com>
 <20251028115040.101156-2-naoki@radxa.com>
In-Reply-To: <20251028115040.101156-2-naoki@radxa.com>
X-Migadu-Flow: FLOW_OUT

On Tue Oct 28, 2025 at 12:50 PM CET, FUKAUMI Naoki wrote:
> The USB Type-C port on the Radxa ROCK 5B+/5T supports Dual-Role-Data
> and Dual-Role-Power. However, currently it cannot operate as host/
> source.

You describe the ROCK 5B+/5T while modifying the 5 ITX. If the exact
same logic applies to the 5 ITX, then ``s/5B+\/5T/5 ITX/`` above?

Cheers,
  Diederik

> By setting "power-role" to "dual" and "try-power-role" to "sink"
> (along with adding related properties), the data role can operate as
> host.
>
> Unfortunately, a remaining issue is that when a USB 3.0 SuperSpeed
> device's orientation is reverse, the root port is detected but the
> device itself is not. This must be addressed separately.
> (USB 2.0/1.1 devices operate even in reverse orientation.)
>
> Fixes: 31390eb8ffbf2 ("arm64: dts: rockchip: add ROCK 5 ITX board")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/ar=
m64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> index bc8140883de47..1664f85db4aaa 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> @@ -484,9 +484,14 @@ usb_con: connector {
>  			compatible =3D "usb-c-connector";
>  			data-role =3D "dual";
>  			label =3D "USB-C";
> -			power-role =3D "source";
> +			op-sink-microwatt =3D <50000>;
> +			/* fusb302 supports PD Rev 2.0 Ver 1.2 */
> +			pd-revision =3D /bits/ 8 <0x2 0x0 0x1 0x2>;
> +			power-role =3D "dual";
> +			sink-pdos =3D <PDO_FIXED(5000, 10, PDO_FIXED_USB_COMM)>;
>  			source-pdos =3D
>  				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
> +			try-power-role =3D "sink";
> =20
>  			ports {
>  				#address-cells =3D <1>;


