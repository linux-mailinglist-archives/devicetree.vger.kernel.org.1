Return-Path: <devicetree+bounces-297726-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EGGcFRD+BWrFdwIAu9opvQ
	(envelope-from <devicetree+bounces-297726-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 18:53:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B71544F5A
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 18:53:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 52652300A650
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 16:53:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD14633F5B2;
	Thu, 14 May 2026 16:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9EiMzHJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8CE0304976;
	Thu, 14 May 2026 16:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778777609; cv=none; b=X+zgbS45Od8jldJ86ixp7mVTGoceBF+dvIwgFCc+A5rMDFb+lsqQ2xk17g/ndajMRRB7X8OV54jYGqtCWBFuoBVmaF6X3aUyNg+uft51oZuS/eLGUoHDjbR9WZMRjPh5q7ijXp1Ktamu3s5d+/CWg5UcP/ZTxP67nzH7gBrEKKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778777609; c=relaxed/simple;
	bh=I3ia4TSW2T1WftlUh1qFzhtH883s/C7iU6UGEPhQ3bw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=e/qpXUk1Ko0yGYNcjjid/NTTwclKJz6c255Q0yYPZdT5xuDNibsDJl1dNHwmx6ntoOfOc+4aoYSG9XZACnw4l5pZ3kDqH7vMimW8TLJsA9LQEj/hz+FfvrPZddVqAr+GBCX+Dyn9ZnezK2D8VUMUWW7xdk+fWBsGiybkjmFd1U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9EiMzHJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6813C2BCB3;
	Thu, 14 May 2026 16:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778777609;
	bh=I3ia4TSW2T1WftlUh1qFzhtH883s/C7iU6UGEPhQ3bw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=R9EiMzHJi/g0vI2Yiekbl08L3J3T6VnqHlE9gDMjkDxPd/ZEvzdBWQ3i1dr2I3rt8
	 adipw7zF9k4SPPq/eR8tKDNCvjVyPio4ne1Y4UqX1Qy+YEOjOs5ZtmtMO0los6k8R3
	 RWhqP0RTM2fSPeYmwlvnDIBs+6LXR6yAzCC1GwxtDp4GDpa5o2AGE/AX4OXjeVi/tJ
	 DxJbRcIlkJiyQIDS+QwKObARnwJ7SCWf0ISQ3S1ZtKcsx+GwyRIymQjZpgo7FQS377
	 ZOjpJ7gTp1G39oXgKUzpmK9pFXQmlh1EDTISa/Drl8gafeeTsVqLwbUzuFeQmZ9CAz
	 QSPOR+/6bG5QA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: timer: pit: add PIT node example for
 s32g2/3 platforms
Reply-To: sashiko-reviews@lists.linux.dev
To: "Khristine Andreea Barbulescu" <khristineandreea.barbulescu@oss.nxp.com>
Cc: Frank.Li@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, imx@lists.linux.dev
In-Reply-To: <20260514070605.996462-3-khristineandreea.barbulescu@oss.nxp.com>
References: <20260514070605.996462-3-khristineandreea.barbulescu@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 16:53:28 +0000
Message-Id: <20260514165328.C6813C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 51B71544F5A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297726-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,2.101.56.96:email,sashiko.dev:url,lists.linux.dev:replyto,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,nxp.com:email]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Medium] Incorrect Interrupt Cells Representation in DT Example
- [Low] Non-Generic Device Tree Node Name
- [Low] Example Scope Confusion and Structural Redundancy
--

commit 0c9d62d6961d94621407fcbe8691b419e9baf7f8
Author: Khristine Andreea Barbulescu <khristineandreea.barbulescu@oss.nxp.c=
om>

dt-bindings: timer: pit: add PIT node example for s32g2/3 platforms

This commit adds a devicetree binding example for the PIT timer
as used on nxp s32g2 and s32g3 platforms.

> diff --git a/Documentation/devicetree/bindings/timer/fsl,vf610-pit.yaml b=
/Documentation/devicetree/bindings/timer/fsl,vf610-pit.yaml
> --- a/Documentation/devicetree/bindings/timer/fsl,vf610-pit.yaml
> +++ b/Documentation/devicetree/bindings/timer/fsl,vf610-pit.yaml
[ ... ]
> @@ -57,3 +57,11 @@ examples:
>          clocks =3D <&clks VF610_CLK_PIT>;
>          clock-names =3D "pit";
>      };
> +
> +    pit@40188000 {

This isn't a bug, but the devicetree specification mandates generic node
names reflecting the function of the device. Should this be named
timer@40188000 instead of pit@40188000?

> +        compatible =3D "nxp,s32g2-pit";
> +        reg =3D <0x40188000 0x3000>;
> +        interrupts =3D <53 IRQ_TYPE_LEVEL_HIGH>;

Since the nxp s32g2 platform is an arm64 soc using the arm generic interrupt
controller (gicv3), doesn't it require a 3-cell interrupt specifier (such as
<GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>)?

Will this 2-cell representation cause dtc compilation errors or misrepresent
the physical hardware routing for users copying the example?

> +        clocks =3D <&clks 61>;
> +        clock-names =3D "pit";
> +    };

This isn't a bug, but adding this to the exact same yaml list item as the
existing vf610 timer example causes the schema compiler to interpret them as
existing simultaneously within the same root device tree.=20

Since they share the exact same property structure, is a separate example
for this platform strictly necessary, or could it just cause structural
redundancy and bloat the schema?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260514070605.9964=
62-1-khristineandreea.barbulescu@oss.nxp.com?part=3D2

