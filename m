Return-Path: <devicetree+bounces-294668-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2AhRFHxF/mlFogAAu9opvQ
	(envelope-from <devicetree+bounces-294668-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 22:20:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7FF4FB6B6
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 22:20:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 94EE33024965
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 20:19:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1418C382F08;
	Fri,  8 May 2026 20:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNSKTqtb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5A033101A7;
	Fri,  8 May 2026 20:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778271595; cv=none; b=lpHaxG2FSuu7oBc6OlLl4EOVQjh9OjUQX7a2K3Dvby1lECI2CWMTPUyKxKdVkRbAcEGyWlFGG/hCOH7Y+EIcV8Iui5L8CgvTHrzQV/6g8j6rNWvuMVSGw8bGLcqhNR5kCb4z3WkZFoHGbANsaG1O1ykF3r8bufAjf8NWPZqRDdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778271595; c=relaxed/simple;
	bh=L1FtKV36RSlwVHOa4wY21cgtKWZbfF1ybSXX+fMEeIo=;
	h=From:Subject:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=h69Mrzq76QVO1idDCn0x4hoWT/PtbYd7VMVyxOSY8Oh9ia1U93m4Jl8oCk0BW3EYIHKXlFPUK35niwU1cyrcohtZoI0SCM0N5m2gPQ7ATl/s/bn+o9bJLLEL8lfYEAn8/bxFxdPFb03YnKvCWNBthhexUwnH7GNodHZgPorKnTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNSKTqtb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60231C2BCB0;
	Fri,  8 May 2026 20:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778271594;
	bh=L1FtKV36RSlwVHOa4wY21cgtKWZbfF1ybSXX+fMEeIo=;
	h=From:Subject:Reply-To:Cc:In-Reply-To:References:Date:From;
	b=qNSKTqtbhnpi4tvUeJ/NMDdXtRcxfz6WHsiXLCpKLW2WHw/a8vKE9r7U0qgbwg43h
	 X0F68TGkKSUUonxdageaP8pv0Ux6I75pA9RVZzG9tzAGq2HgUdrUe7IZby+/9hNced
	 FwgLO/VpICRomrzNpBj8Xq2iD4hZDIKQsrjc7RcGzzK/BJdcSrPNhzTAjhRAc4DrJ4
	 zTLxvrTDyLi100CwhEU2R07W1dIERJnmOf/caVUDVRJXjdbpNZ2qgO0otfL4swpx+A
	 JIFj3YYA9GXuNgiM3ndMpDaJQpYaLopxRRScDzaEDcWmnjSC56NdgvWDqsFB6Uo39T
	 o20RcQbfUxv0Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] dt-bindings: Fix phandle-array constraints, again
Reply-To: sashiko@lists.linux.dev
Cc: robh@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, linux-pci@vger.kernel.org
In-Reply-To: <20260507201749.2605365-1-robh@kernel.org>
References: <20260507201749.2605365-1-robh@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 08 May 2026 20:19:53 +0000
Message-Id: <20260508201954.60231C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: EE7FF4FB6B6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.84 / 15.00];
	MISSING_TO(2.00)[];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_FROM(0.00)[bounces-294668-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FROM_NO_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The `maximum` constraint for the 'Single bit index to toggle' in `q=
com,smem-states` properties is incorrectly set to 32 instead of 31.
--

commit 20348129b7dc793c517f442ef59bc8d4f2293a0e
Author: Rob Herring (Arm) <robh@kernel.org>

dt-bindings: Fix phandle-array constraints, again

The unfortunately named 'phandle-array' property type is really a matrix
with phandle and fixed arg cells entries. A matrix property should have 2
levels of items constraints.

[ ... ]

> diff --git a/Documentation/devicetree/bindings/net/qcom,bam-dmux.yaml b/D=
ocumentation/devicetree/bindings/net/qcom,bam-dmux.yaml
> index b30544410d092..33746c238513d 100644
> --- a/Documentation/devicetree/bindings/net/qcom,bam-dmux.yaml
> +++ b/Documentation/devicetree/bindings/net/qcom,bam-dmux.yaml
> @@ -42,7 +42,19 @@ properties:
>      description: State bits used by the AP to signal the modem.
>      items:
>        - description: Power control
> +        items:
> +          - description: Phandle to the Shared Memory Point 2 Point devi=
ce
> +              handling the communication with a remote processor
> +          - description: Single bit index to toggle in the value sent to
> +              the remote processor
> +            maximum: 32

Should this maximum be 31 instead of 32?

A valid bit index for a 32-bit value ranges from 0 to 31. Setting the maxim=
um
to 32 permits a device tree to specify an out-of-bounds bit index, which co=
uld
lead to undefined behavior if a driver shifts by 32 on a 32-bit architectur=
e.

This maximum of 32 is also used for the smem-states additions in the other
bindings updated in this patch.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260507201749.2605=
365-1-robh@kernel.org?part=3D1

