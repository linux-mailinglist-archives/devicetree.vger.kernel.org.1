Return-Path: <devicetree+bounces-313298-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gLCvF6WmM2rbEgYAu9opvQ
	(envelope-from <devicetree+bounces-313298-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 10:04:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A878369E539
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 10:04:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=cpLStstG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313298-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313298-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 66F713009536
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 08:04:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DAA33603D7;
	Thu, 18 Jun 2026 08:04:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F372F2DEA6B
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 08:04:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781769890; cv=none; b=ASwaJs17F50BLybultoOvIzX/HQ0h1SSPzJLJOfQ+c+zmTdE61F2/sCAfOJkDR0LVdp31GvXiJraw69fkOjnYDofNh2/RdeBh+2iYCTB35MIpuBNGOXuSc+T06stMvY9CqIDxcEKIb7RsvP59z2tmalWQ6PPlqhhpgEkORPwxx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781769890; c=relaxed/simple;
	bh=XsoRzHMMCwgmn2Vz6Z+o3WjTmLgdAztCy1In87F+wOY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=V/aIBvZMgwf90sRyNeRkdW+rUNlTmwWewdHlC0HKGYAyslTDqEdrjYueE2exB3l8FbzoGkY7y4tDvq5e1OdE/C3xQz5FmReZV/AdJ2eDVGmy3pg1o4+K8dfz96AC5BVnJTavEL9soThLo9bIuTgopYZ/JjNt60VLzs1K3Dbfl/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpLStstG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12DD31F000E9;
	Thu, 18 Jun 2026 08:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781769889;
	bh=QTOIZoG/3/M06Y2yHO6boY2B+RmkCZiPE5ksPTBqqzY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cpLStstGTdqqE65kvscxqkmrV31iaettgPt/jXFxUFDnOj4lE/etCit2wEYa/eB8f
	 0Onfg6wM69gRA6FbWRClJSPLMFhpf041annrgIyRLYOjcPCXb4O/CQvuOtUxZ38FS3
	 t/lO4S+CnEtShG2EklaXzwX71n4OT2wj7pnkyCBkfzknWrr+MSKc3EULFDXpc+/leN
	 faFyWLqszCClW7rSaRu3G6Cx+8awQS//yDmhUnYd15Xi+ikUndRp7FWJ2lhbvsmYz9
	 qP63x6PjSEwhHF5qH1qElYXTWCFORJiGei0YyISvdxAA8W5zjwHF0vdf3GdSDrVR9X
	 1gj27RXQXbbKg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 09/16] spi: cadence-quadspi: skip DDR PHY tuning for
 2-byte-address ops (i2383)
Reply-To: sashiko-reviews@lists.linux.dev
To: "Santhosh Kumar K" <s-k6@ti.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260618073725.84733-10-s-k6@ti.com>
References: <20260618073725.84733-1-s-k6@ti.com>
 <20260618073725.84733-10-s-k6@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jun 2026 08:04:48 +0000
Message-Id: <20260618080449.12DD31F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313298-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:s-k6@ti.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ti.com:url,ti.com:email,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A878369E539

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Unchecked dereference of `cqspi->ddata` in `cqspi_mem_op_execute=
_tuning()` leads to a potential kernel oops.
--

commit 40592f2a22efbd29a6272035f538dcdb01d9f776
Author: Santhosh Kumar K <s-k6@ti.com>

spi: cadence-quadspi: skip DDR PHY tuning for 2-byte-address ops (i2383)

This commit introduces a CQSPI_NO_2BYTE_ADDR_PHY_DDR quirk to skip DDR PHY
tuning for 2-byte column addresses. This is done to address erratum i2383 on
AM654, which locks the address phase in PHY DDR mode for such operations.

[0] https://www.ti.com/lit/er/sprz544c/sprz544c.pdf

> diff --git a/drivers/spi/spi-cadence-quadspi.c b/drivers/spi/spi-cadence-=
quadspi.c
> index 05e1b7a2f3433..c94bb8ad5d1dd 100644
> --- a/drivers/spi/spi-cadence-quadspi.c
> +++ b/drivers/spi/spi-cadence-quadspi.c

[ ... ]

> @@ -3864,7 +3879,7 @@ static const struct cqspi_driver_platdata k2g_qspi =
=3D {
> =20
>  static const struct cqspi_driver_platdata am654_ospi =3D {
>  	.hwcaps_mask =3D CQSPI_SUPPORTS_OCTAL | CQSPI_SUPPORTS_QUAD,
> -	.quirks =3D CQSPI_NEEDS_WR_DELAY,
> +	.quirks =3D CQSPI_NEEDS_WR_DELAY | CQSPI_NO_2BYTE_ADDR_PHY_DDR,
>  	.execute_tuning =3D cqspi_am654_ospi_execute_tuning,
>  };
> =20

[Severity: Medium]
Looking at the tuning execution path that uses these callbacks, is there a
potential NULL pointer dereference in cqspi_mem_op_execute_tuning()?

drivers/spi/spi-cadence-quadspi.c:cqspi_mem_op_execute_tuning() {
...
	struct cqspi_st *cqspi =3D
		spi_controller_get_devdata(mem->spi->controller);

	if (!cqspi->ddata->execute_tuning)
		return -EOPNOTSUPP;

	return cqspi->ddata->execute_tuning(mem, read_op, write_op);
}

The cqspi->ddata pointer is initialized via of_device_get_match_data(), whi=
ch
can return NULL if the driver is bound via sysfs to a device node without a
matching compatible string.

Other uses of ddata in the driver (like in cqspi_probe or cqspi_setup_flash)
include a NULL check before dereferencing it, proving that ddata =3D=3D NUL=
L is a
supported and handled state.

Should this tuning wrapper also include a defensive check for ddata =3D=3D =
NULL?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618073725.8473=
3-1-s-k6@ti.com?part=3D9

