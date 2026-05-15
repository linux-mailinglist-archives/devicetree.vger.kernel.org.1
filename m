Return-Path: <devicetree+bounces-298319-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ADesCNQYB2rLrgIAu9opvQ
	(envelope-from <devicetree+bounces-298319-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 15:00:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8984355012C
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 15:00:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 501C83015729
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 12:36:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBD193D25D8;
	Fri, 15 May 2026 12:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AF6nGwfO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9BA537DEAB
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 12:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778848617; cv=none; b=YhaI2zLvxBu4z6PwDFQbChR6kIrBiZnmfHDePPBhr7lXfZY1G3HWw1Wmc1IJejJIGbkiTuvoi5nCyBapzsiq6CLlnH11AzRgvqxzk/iaBcu3eifw3CE1dCWnvV/i1AliUkp/NIU2eq8jZXAnsHGN8s+uiBIggxVfP6YpVKYhjFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778848617; c=relaxed/simple;
	bh=U6xpjZYkLzNu3aw3I+h7bk/wrZv7nov0VS4muO2jNHA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=WC4kYO7p4UhFJ5EwEL5pt1PAtR5lvFEK0kORmgUk7BEDlfoaSkuZ3fIigILqoPxKqPOfMOMQ033i9H3ZnTqMjQHjbCL5vVhhYYuYp/eOqOMR9Ax3oWmMgNMajQZZIwCzoo4nqHpnKfRBOdFCZHfVGe9IBWu9AR+TxewhVN0kWUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AF6nGwfO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3889EC2BCB0;
	Fri, 15 May 2026 12:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778848617;
	bh=U6xpjZYkLzNu3aw3I+h7bk/wrZv7nov0VS4muO2jNHA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=AF6nGwfOSZrHJBsQwI1afa2I+sKFdcFS9c4wtCRuWdF89wHar4A04TEFg9uj9Dv6z
	 3vJph8LgKD+v3d+uLXXsSzVmXWXaNwG+iwOIOPot/C77c8ypv2x8DXUYw4Cav7d6ip
	 FDKUBEZk2bxfvtAOp3cgOR/AwNrQLUO3l+UwD2o2+YIALHqkSNRrmmNhlkLdQPFwsK
	 xcOR8yKb0dEExfRIM8b3M7VEj3FxDZX9dkB/GQR00yRNZftF0MmGZMEXkU1Z/Nv81m
	 EHt/2phKBnt1sgq5L+N0RIojnOGNhVkc/RfWAUAdqL83HENUVlc492yeVDiML5MZjO
	 8K+3dea3sJ9+A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/3] arm64: qcom: dts: qcm6490: Add JPEG encoder DT
 properties
Reply-To: sashiko-reviews@lists.linux.dev
To: "Atanas Filipov" <atanas.filipov@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260515-qcom-jpeg-v4l2-v1-3-f38c2e1b3555@oss.qualcomm.com>
References: <20260515-qcom-jpeg-v4l2-v1-3-f38c2e1b3555@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 12:36:56 +0000
Message-Id: <20260515123657.3889EC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 8984355012C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298319-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The new device tree node violates generic naming conventions and co=
ntains properties that will fail DT schema validation.
--

commit b8074fba99ec8410569dbab1538fc6fc7f0597b9
Author: Atanas Filipov <atanas.filipov@oss.qualcomm.com>
arm64: qcom: dts: qcm6490: Add JPEG encoder DT properties

Add the required JPEG encoder definitions to the device tree.

> diff --git a/arch/arm64/boot/dts/qcom/kodiak.dtsi b/arch/arm64/boot/dts/q=
com/kodiak.dtsi
> --- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
> +++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
[ ... ]
> @@ -5305,6 +5305,58 @@ port@4 {
>  			};
>  		};
> =20
> +		qcom_jpeg_enc: qcom,jpegenc@ac4e000 {

This isn't a bug, but does this node name violate generic naming
conventions? Devicetree specifications generally require using generic
names such as jpeg-encoder@ac4e000 or video-codec@ac4e000 instead of
vendor-specific names.

> +				cell-index =3D <0>;

Can this cause a schema validation failure? The cell-index property does
not appear to be defined in the qcom,jpeg-encoder.yaml schema. Since the
schema specifies additionalProperties: false, this undocumented property
will trigger a make dtbs_check validation error.

> +				compatible =3D "qcom,qcm6490-jenc";
> +
> +				reg =3D
> +						<0 0xac4e000 0 0x4000>,
> +						<0 0xac40000 0 0x1000>;
> +
> +				reg-names =3D
> +						"jpeg_regs",
> +						"cpas_regs";

Are these reg-names aligned with the schema constraints? It appears they
use underscores, whereas the schema explicitly constrains these items to
use hyphens (jpeg-regs, cpas-regs). This mismatch will cause schema
validation to fail, even though the driver retrieves them safely by index.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515-qcom-jpeg-=
v4l2-v1-0-f38c2e1b3555@oss.qualcomm.com?part=3D3

