Return-Path: <devicetree+bounces-297853-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Ei7IVFoBmrOjQIAu9opvQ
	(envelope-from <devicetree+bounces-297853-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 02:26:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD2E54803D
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 02:26:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1D22B3006B52
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 00:24:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E303211A09;
	Fri, 15 May 2026 00:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUpd7S+I"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BED41EEA3C
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 00:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778804667; cv=none; b=fA2r/WaH9Of170+seu/bf2mUZ0jdjz6YdtAsfiu74c948crSdlBUN1nC013rTgUqCalQusrHq14JXzkevlxuUjcDLcFKGjvtPtQNZKhfEq02Jmt24BWNN29DwC2QS5qc4kvL9bhJ3bLnT60VnTblxj+RNoA4DdhYjANJqvMSE60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778804667; c=relaxed/simple;
	bh=Sar0GakJ3O1xIQRQPXTI663SLwPshMbaO/UXV5gcNHM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=iImYrCNO7iRnLZSSZ7zgqMPtqKJz9ba5wqdfwgy1tW7oUaCL96RfZnxCqPKX/TFNPCJrniq4p+dGVPERyBwkxKJmW5b1JUISMJgdmj04S6YQpGKXttsFIR0D/ZccmeFppb0ujTOcbkFl0dEg2KBODjTfedWtHTULvOp7DlYTsOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUpd7S+I; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 970ABC2BCB3;
	Fri, 15 May 2026 00:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778804666;
	bh=Sar0GakJ3O1xIQRQPXTI663SLwPshMbaO/UXV5gcNHM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=aUpd7S+IHRGuFyGxlObkcugAkAGpd/A+5x+hbPon7xPKmUh+OP2Sqn53e7V0M0UlQ
	 ZhtrD8rQXzBBkM0RaD3gwzUeI2YIVJ7OBlyDJVcum0xnUlGZufmsjRBciXHXy/W4kC
	 31W8KlZV8zeOdsqeHQKK+qkchEUrTmM7lQW9Oaz6Z2lfAratVZdaFLj7346CO7zwX3
	 u2CRxBLYUsVLgBdCO/6iUbClvbZ2YsRhJmYCEhzPa2QFuEmi2OzPEB6lQ9VAiAKJyw
	 GWA/IyFl774gNSl0seb+88UNFcjH7lLkCY8VIG3hPdFZnA87lMArD2ZI+8ci4M9CrR
	 X981ST4HiE1iQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v22 12/13] arm64: dts: qcom: Add psci reboot-modes for
 monaco boards
Reply-To: sashiko-reviews@lists.linux.dev
To: "Shivendra Pratap" <shivendra.pratap@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260514-arm-psci-system_reset2-vendor-reboots-v22-12-28a5bde07483@oss.qualcomm.com>
References: <20260514-arm-psci-system_reset2-vendor-reboots-v22-12-28a5bde07483@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 00:24:26 +0000
Message-Id: <20260515002426.970ABC2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 3FD2E54803D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297853-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] System hang on reboot when requesting vendor-specific reboot modes=
 on unsupported firmware
--

commit da9bb648c6683dbd4e4976f8d350b0b7213b92be
Author: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>

arm64: dts: qcom: Add psci reboot-modes for monaco boards

This commit adds PSCI SYSTEM_RESET2 reboot-modes for monaco-evk and
qcs8300-ride to support bootloader and emergency download (edl) reboot mode=
s.

> diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dt=
s/qcom/monaco-evk.dts
> index 9d17ef7d2caf1..df668dbf2bc60 100644
> --- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts

[ ... ]

> @@ -661,6 +661,13 @@ usb2_id: usb2-id-state {
>  	};
>  };
> =20
> +&psci {
> +	reboot-mode {
> +		mode-bootloader =3D <0x80010001 0x2>;
> +		mode-edl =3D <0x80000000 0x1>;
> +	};
> +};

Could adding these modes introduce a regression on boards running older
firmware where a system hang occurs on reboot?

The commit message notes that support for these modes is firmware dependent.
However, if a user requests a bootloader reboot on a system where the
firmware lacks SYSTEM_RESET2 support, it appears the system might hang
instead of falling back to a normal reboot.

If psci-reboot-mode registers these modes unconditionally,
psci_reboot_mode_write() sets the reset command to the vendor-specific
value.

During reboot, psci_sys_reset() calls psci_handle_reset_cmd(). If
psci_system_reset2_supported is false and the vendor reset type is non-zero,
it returns without making a PSCI call.

This causes psci_sys_reset() to return NOTIFY_DONE. The kernel then reaches
the end of the restart chain and spins indefinitely with a failure panic.

Should the psci-reboot-mode driver or the PSCI reset handler be updated to
handle unsupported firmware before introducing these device tree properties?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260514-arm-psci-s=
ystem_reset2-vendor-reboots-v22-0-28a5bde07483@oss.qualcomm.com?part=3D12

