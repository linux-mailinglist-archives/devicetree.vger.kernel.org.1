Return-Path: <devicetree+bounces-321496-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8JxkKXwMTGqffQEAu9opvQ
	(envelope-from <devicetree+bounces-321496-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 22:13:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB8171557C
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 22:13:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KiUDLhrI;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321496-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321496-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 92D60309BED8
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 19:07:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FA963859D7;
	Mon,  6 Jul 2026 19:07:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36963815FD
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 19:07:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783364847; cv=none; b=bR9OGcR+3oUX9auzgHUmg3LJI/RgAgDrGehD9SDgVLht2LtktT7EQfd27fv+KFUosD66AjpBKmo3u6/gg4q/TUesaXWn2G94K8y3TIF34OWDkSpe5clehtYSnWFn1NtbQ5311NiqsEiMbbMIfp8833jak8srysmsmergvkoEHEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783364847; c=relaxed/simple;
	bh=KFso+swnlwprwdCqhAPttlOEENsQ6YQDnNXJd1Yb77M=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=OlyhLTkqEml8pxkMaJTkPjxlrTmJhPuzEgXDw8GGqfXml8Q2zoiOuHMB58Yj360ApTFTyNJCSXXj0Y5AsOR7BZWwdx2sMCWBsWWLwS/8tzVKPxryKq87l+3+aVwsERofii0qtAIrdfrJQpXkMzYy3XmbL43zpT0lgFu2d5JKZdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KiUDLhrI; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AE0D1F000E9;
	Mon,  6 Jul 2026 19:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783364845;
	bh=BAEjn4htFHfdFN5IiaHZVQRbY7MQHB1gnOs4zfwTvtw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KiUDLhrIACPOij05iaAZ8/WRio5YKVMiOV6jJwS4EPQZKZGrHyty0A/oSC80eydGR
	 EUvUZm+fK0n10hGNameQxE3MCulKTrMsXnzRBkDYdz2St5rqurjVK0PzxjmtDxJlVg
	 jYY+AiPBgi+AfqDjlrqWjitwxZs9Tj1I1A0phJkHnI6fS3hBffGXQSL+MVSLchd2bz
	 mCpxHKhk9oHw22TTaDNY40CcP4Wqk04A2rr+LoxWPxi6CxEf3YihVFhgnemFArF5p1
	 ppzApm6v/aioPt5nb60ZeLYLieiGq9/PJ1FpaMJ4WRNGAOIBCpqEuupQy8OJkPK174
	 d6Bu9WibjLdRQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v2 2/2] nfc: s3fwrn5: support the S3NRN4V
 variant
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jorijn van der Graaf" <jorijnvdgraaf@catcrafts.net>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260705190621.128257-3-jorijnvdgraaf@catcrafts.net>
References: <20260705190621.128257-1-jorijnvdgraaf@catcrafts.net>
 <20260705190621.128257-3-jorijnvdgraaf@catcrafts.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 19:07:24 +0000
Message-Id: <20260706190725.5AE0D1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-321496-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jorijnvdgraaf@catcrafts.net,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EFB8171557C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Preexisting out-of-bounds read in s3fwrn5_nci_rf_configure during =
checksum calculation.
--

commit d87946b70fa655f2c45f22293e0eb74e7a2f637d
Author: Jorijn van der Graaf <jorijnvdgraaf@catcrafts.net>

nfc: s3fwrn5: support the S3NRN4V variant

This patch adds support for the S3NRN4V NFC controller, bypassing the firmw=
are
download step and introducing a new dual-option mechanism for loading RF
registers. It also configures the reference clock via FW_CFG and manages an
optional CLK_REQ handshake.

> diff --git a/drivers/nfc/s3fwrn5/nci.c b/drivers/nfc/s3fwrn5/nci.c
> index 5a9de11bbecea..7034fb810e18a 100644
> --- a/drivers/nfc/s3fwrn5/nci.c
> +++ b/drivers/nfc/s3fwrn5/nci.c

[ ... ]

> +int s3fwrn5_nci_rf_configure_dual(struct s3fwrn5_info *info,
> +				  const char *hw_name, const char *sw_name)
> +{
> +	const struct firmware *hw_fw =3D NULL, *sw_fw =3D NULL;

[ ... ]

> +	/*
> +	 * The stream is checksummed as 32-bit words and pushed in at most 256
> +	 * sections (the section index is a single byte); reject blobs that
> +	 * would silently break either.
> +	 */
> +	if (merged_size % 4 ||
> +	    merged_size > 256 * NCI_PROP_DUAL_SECTION_SIZE) {
> +		dev_err(dev, "invalid rfreg blob size (%zu)\n", merged_size);
> +		ret =3D -EINVAL;
> +		goto out;
> +	}

[Severity: High]
This isn't a bug introduced by this patch, but while you correctly validate
the firmware size in this new s3fwrn5_nci_rf_configure_dual() function, the
legacy s3fwrn5_nci_rf_configure() function in the same file lacks this chec=
k.

In s3fwrn5_nci_rf_configure(), if the firmware size provided by
request_firmware() is not a multiple of 4, the checksum loop:

    for (i =3D 0; i < fw->size; i +=3D 4)
        checksum +=3D *((u32 *)(fw->data+i));
       =20
will perform an out-of-bounds read of up to 3 bytes past the allocated
buffer. If the buffer ends exactly at a page boundary, can this cause an
invalid page fault or KASAN out-of-bounds read?

Would it make sense to add a similar size validation check to the legacy
s3fwrn5_nci_rf_configure() path while you are modifying this area?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260705190621.1282=
57-1-jorijnvdgraaf@catcrafts.net?part=3D2

