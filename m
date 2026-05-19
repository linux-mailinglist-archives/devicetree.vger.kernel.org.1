Return-Path: <devicetree+bounces-299838-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJYuCQ0UDGoZVQUAu9opvQ
	(envelope-from <devicetree+bounces-299838-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 09:41:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 981FB579452
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 09:41:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B21013082FA0
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 07:36:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1622B3DA7E7;
	Tue, 19 May 2026 07:36:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WeUmQ+1j"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E73F13DA7E2
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 07:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779176160; cv=none; b=FFbThaWjLSxm3xH6yc6hCOOjXyHHRiilHg0wrD9H/CeFXVqL32ANmPeUGwbADEdDWaHtrN13NUYZSwSDrBYtkQOTIy+vHF2/vK4FWGSgewW/sT8/7qC4ekNBPXkAcwXTBMwgvKp4BEvp+V6I+ND+0pWW+3O908aBde9fAGfp+Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779176160; c=relaxed/simple;
	bh=co+ehvt9DDbgqhQECIDonHiltKE1gk/Dp9hE7jZsTBI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=VwKUQ73rs02ZI07D/OLhhFE4zUonUnxl1Rbzfu3HD6Y0ve5oeBnXpj7dUd9kNcPfcfstrMrcUEZU3y/LtEa4fLNZX8xTl+Nyn8BMSORPiMqHWu0fIFnmAtABsAW4K844og/qY6nYW8h66HAwEAbPaswghRKIYJiJ4WGCJvsKVLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WeUmQ+1j; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E042C2BCB3;
	Tue, 19 May 2026 07:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779176159;
	bh=co+ehvt9DDbgqhQECIDonHiltKE1gk/Dp9hE7jZsTBI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=WeUmQ+1jJbocVYmI5exl/2yBDZOAfHYLZXhUyUFNzjUAk10CfbpnfOx+AbEBrjCd4
	 9Tm2AOEm10ch/D9deQATmW0NiKRpz0duA/DWQRp24+mNNA8vvX8vvkWLh81xAOqRJ/
	 zLA71x+5TTd1eBQw1H6QwZXUUQOvQb1tzlZD+Vf5OMQ+BxVnndTRsTJbAPqAWekqtZ
	 M+wEQO87zmdI7zC7XcmnvGAM7alLT/7tIS6VtkI77fCXT69/A/JAw+CCWLeczhI+Mv
	 D+SoStlwE44wXOfzQ3yPOwv4kUDb3XxIbIRpuQ4Wf70x5HL2fCPniseibuWQ1ZKaH5
	 SvGMZzTgzyNYg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 8/8] arm64: dts: qcom: Add device tree for SA8797P
 Ride board
Reply-To: sashiko-reviews@lists.linux.dev
To: "Shawn Guo" <shengchao.guo@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260519063505.883379-9-shengchao.guo@oss.qualcomm.com>
References: <20260519063505.883379-9-shengchao.guo@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 07:35:58 +0000
Message-Id: <20260519073559.5E042C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-299838-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,qualcomm.com:email,smtp.kernel.org:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 981FB579452
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Flawed thermal zone configurations with incorrect types, descendin=
g order, and identical duplicate trip points.
--

commit feec939ce542144572175512accde079d1c6829f
Author: Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>

arm64: dts: qcom: Add device tree for SA8797P Ride board

This commit adds the initial device tree for the Qualcomm SA8797P Ride
reference board. It configures UART ports, enables UFS storage, and
defines various thermal zones using the SCMI sensor protocol.

> diff --git a/arch/arm64/boot/dts/qcom/sa8797p-ride.dts b/arch/arm64/boot/=
dts/qcom/sa8797p-ride.dts
> new file mode 100644
> index 0000000000000..2eab2c6fc173d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sa8797p-ride.dts

[ ... ]

> +	pm_kobra_thermal: pm-a-die-thermal {
> +		polling-delay-passive =3D <100>;
> +		polling-delay =3D <0>;
> +		thermal-sensors =3D <&scmi23_sensor 3>;
> +
> +		trips {
> +			trip0 {
> +				temperature =3D <135000>;
> +				hysteresis =3D <5000>;
> +				type =3D "passive";
> +			};
> +
> +			pm_kobra_trip1: trip1 {
> +				temperature =3D <115000>;
> +				hysteresis =3D <5000>;
> +				type =3D "passive";
> +			};
> +		};
> +	};

Should trip0 be configured as an emergency hardware shutdown trip point
instead of passive, considering the high 135C temperature limit?

Also, does the thermal framework expect these trip points to be defined in
ascending order of temperature rather than descending?

[ ... ]

> +	pm_kai_ufs_thermal: ufs-thermal {
> +		polling-delay-passive =3D <0>;
> +		polling-delay =3D <0>;
> +		thermal-sensors =3D <&scmi23_sensor 0>;
> +
> +		trips {
> +			trip0 {
> +				temperature =3D <125000>;
> +				hysteresis =3D <5000>;
> +				type =3D "passive";
> +			};
> +
> +			trip1 {
> +				temperature =3D <125000>;
> +				hysteresis =3D <5000>;
> +				type =3D "passive";
> +			};
> +		};
> +	};

Are these duplicate trip points intentional? Both trip0 and trip1 are defin=
ed
with the exact same temperature, hysteresis, and passive type.

Is it possible that trip1 was intended to have a higher temperature and
serve as a different type of trip point?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519063505.8833=
79-1-shengchao.guo@oss.qualcomm.com?part=3D8

