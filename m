Return-Path: <devicetree+bounces-322578-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6s3tOTv9TWoUBQIAu9opvQ
	(envelope-from <devicetree+bounces-322578-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 09:33:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA4C722A7B
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 09:33:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Ga5cKG8k;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322578-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-322578-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4C07B300A266
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 07:25:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93CAB3A9637;
	Wed,  8 Jul 2026 07:25:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C901E3DF003
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 07:25:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783495539; cv=none; b=QvEHaBQSXcfjqTD8XwPebDvby1+aJtYdJHvhIVcvGZ8AMhpE5UX6a2XSfTeSofojEdKPdjVhuQDTBITCsGRjQWFTGDwLlaDdgFQzDpc+5N6muXCkmeaTr264W/4u5rXt20/qHdhViF+3MA/gNHWRKXwveQu6qhlWWMynFPWsTAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783495539; c=relaxed/simple;
	bh=4nt6mf/G2Qq9N6s3vxJVCWs7He26JESyuMFy3cgmBhU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=bO4LotdR6DJEfBglbYnkFdwxN2Wp4dTRFSBLd8d/vM6B7/sI2z8qk+/ivoeZw/nxrk0gwmJyuslW0kalCnDw9Sbn2qBsL9tuYsYdnPXfiRGY+YEk4HQAaROakBc0Od3Lxyb+fsh33H1tbBn/IafAZKJDOBF7Vp3qHPOfxTPhotU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ga5cKG8k; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23F251F000E9;
	Wed,  8 Jul 2026 07:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783495523;
	bh=lTePsQVLCNuY7eV1LeWsl8eqhJy1jXova5fM+9N2fvo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Ga5cKG8kzT/0P2tFwSc+Fqe2WI8nslfGjPXylCtWq87TlAEP+nai+AfXsMMNX+n7w
	 3/QHeQw433EVF/HxQALmjeK7Ny2UKgRikOOmJSg4zmL+BeNLAXWNV3X5iz9E9KUFcc
	 vB6j0DtMj1g5CPOboRGoBP/CD3EKymuCic18b05nTC5+mqPXMkU/QfLDaLYhGJVwIQ
	 VDwLYGEpVoY7iUEWLhJouXlRe2GqYI4Nm2qWFaVSVRdeREiF1OumIVBSOPdR5kLkyN
	 l/Blkq27wITMQkRq4SWMMxXJIF0+f3kpwhvrX7AWmGsQmJeXsMzA6PY1yq/jBXt8Wr
	 5B2Q3z2tJLrbg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC 3/6] efi: Add EFI_MEMORY_ISA_{MASK,VALID}
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sven Peter" <sven@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260708-efi-psci-v1-3-9efb3abf0e4c@kernel.org>
References: <20260708-efi-psci-v1-0-9efb3abf0e4c@kernel.org>
 <20260708-efi-psci-v1-3-9efb3abf0e4c@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 07:25:22 +0000
Message-Id: <20260708072523.23F251F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322578-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:sven@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[uefi.org:url,sashiko.dev:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DEA4C722A7B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The newly introduced EFI_MEMORY_ISA_MASK and EFI_MEMORY_ISA_VALI=
D attributes are omitted from the known attributes mask in efi_md_typeattr_=
format(), breaking human-readable formatting for memory regions using these=
 attributes.
--

--- Patch [3]: [PATCH RFC 3/6] efi: Add EFI_MEMORY_ISA_{MASK,VALID} ---
commit c6357eb92aeb854ab69dbec9ea5006a518bddfd0
Author: Sven Peter <sven@kernel.org>

efi: Add EFI_MEMORY_ISA_{MASK,VALID}

This commit introduces new memory region attributes defined in UEFI 2.10
that allow mapping with ISA-specific cacheability attributes.

Link: https://uefi.org/specs/UEFI/2.10/07_Services_Boot_Services.html#efi-b=
oot-services-getmemorymap
Link: https://uefi.org/specs/UEFI/2.10/02_Overview.html#memory-types

> diff --git a/include/linux/efi.h b/include/linux/efi.h
> index f3db3a18b5404..882148114068f 100644
> --- a/include/linux/efi.h
> +++ b/include/linux/efi.h
> @@ -128,6 +128,8 @@ typedef	struct {
>  #define EFI_MEMORY_SP			BIT_ULL(18)	/* soft reserved */
>  #define EFI_MEMORY_CPU_CRYPTO		BIT_ULL(19)	/* supports encryption */
>  #define EFI_MEMORY_HOT_PLUGGABLE	BIT_ULL(20)	/* supports unplugging at r=
untime */
> +#define EFI_MEMORY_ISA_MASK		GENMASK_ULL(59, 44)	/* ISA-specific attribu=
tes */
> +#define EFI_MEMORY_ISA_VALID		BIT_ULL(62)	/* EFI_MEMORY_ISA_MASK bits ar=
e valid */

[Severity: Medium]
Should these new attributes be added to the known attributes whitelist in
efi_md_typeattr_format() over in drivers/firmware/efi/efi.c?

Because they are omitted from the inverted mask check there, if system
firmware provides a memory descriptor containing these new UEFI 2.10
attributes, won't the formatter fall back to printing a raw hexadecimal
string instead of human-readable attributes?

drivers/firmware/efi/efi.c:efi_md_typeattr_format() {
    ...
    if (attr & ~(EFI_MEMORY_UC | EFI_MEMORY_WC | EFI_MEMORY_WT |
                 EFI_MEMORY_WB | EFI_MEMORY_UCE | EFI_MEMORY_RO |
                 EFI_MEMORY_WP | EFI_MEMORY_RP | EFI_MEMORY_XP |
                 EFI_MEMORY_NV | EFI_MEMORY_SP | EFI_MEMORY_CPU_CRYPTO |
                 EFI_MEMORY_MORE_RELIABLE | EFI_MEMORY_HOT_PLUGGABLE |
                 EFI_MEMORY_RUNTIME))
        snprintf(pos, size, "|attr=3D0x%016llx]",
                 (unsigned long long)attr);
    ...
}

>  #define EFI_MEMORY_RUNTIME		BIT_ULL(63)	/* range requires runtime mappin=
g */
> =20
>  #define EFI_MEMORY_DESCRIPTOR_VERSION	1

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-efi-psci-v=
1-0-9efb3abf0e4c@kernel.org?part=3D3

