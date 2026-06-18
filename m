Return-Path: <devicetree+bounces-313284-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dikdEtqiM2oKEgYAu9opvQ
	(envelope-from <devicetree+bounces-313284-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 09:48:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E36F69E322
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 09:48:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BMx1XD0g;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313284-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313284-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DC4C8300B458
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 07:48:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B35273D7D86;
	Thu, 18 Jun 2026 07:48:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D8A3D7D72
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 07:48:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781768894; cv=none; b=dCD6aYrW+WYW6b8qYytasJ69UfTSZ4yPGNk2LiAoG7SWK88S7xrvb4DIMemqvJoeNTlK+3XRWAFT3KO6AXOy48koi0xR/vJZse0ayQM177cA+Z6Cnl9iIhFVeAtUIrLkxm6273pLUJf0fOSYyZn+gJYkkRFDYzGJCXUPBkRkCUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781768894; c=relaxed/simple;
	bh=lKPcdPq7brvOrLw6gyLOpFqRkTOqaIEQY8n7L7+L8Vg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=SzzquIMeWpEvnAvFZjzkqOUViUqWWPkrY7NV6rzWMTCFYmxAHt3+YR7BAkF9V7DAcASEDjJqYhagGyD3pHl3OTx7Ksoe0wUJB1JZzK9TJU2daW7VLFPORUb7aMQolGXychlnAPOqalrxo4GwxCGWkjz479WLJGhiuCPfQ8HWlag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMx1XD0g; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 320C61F000E9;
	Thu, 18 Jun 2026 07:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781768891;
	bh=t7sZFOdqQIKUGgekDz5HmfLGX52ZunXPiA21qsdNRCk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BMx1XD0gvqV/g7x3bxJHYYkeZzv8u2G+rQFpqx3QEB+Pk2mKTytT6stVt1gzcZLav
	 3D5hbnBgdTP6y6Y1briQ08yOoM+Q2Zv0bUXr0J1SWw+SGIQaOF4QcK1wMlJCuAs2lx
	 CKVVKdTSeYBb/hwIbDRl65QvAa/8fbrdxqFEin+nvbB8aKR6D3BDNPVIVWqenUGOSs
	 w62HkRn4WKYPVFHZjq0y6It7JID4tmMVVmsprufRqLBIQQhF+EFnK7VLdqeCSYTLJH
	 efAmPeHvJv1hKWgJzzOnC7NzKROnmGxbF77UrsCd3Xnn/ibQWmUUBk0Eg609D+h9rL
	 lTMIYnc198mbQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 06/16] spi: cadence-quadspi: move
 cqspi_readdata_capture earlier
Reply-To: sashiko-reviews@lists.linux.dev
To: "Santhosh Kumar K" <s-k6@ti.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260618073725.84733-7-s-k6@ti.com>
References: <20260618073725.84733-1-s-k6@ti.com>
 <20260618073725.84733-7-s-k6@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jun 2026 07:48:10 +0000
Message-Id: <20260618074811.320C61F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-313284-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:s-k6@ti.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8E36F69E322

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Mixed accessor semantics for FIFO I/O causes endianness portabilit=
y bug and data corruption on big-endian architectures.
--

commit 1ac225c2f73296224ec939152c97968ddfb4feaf
Author: Santhosh Kumar K <s-k6@ti.com>

spi: cadence-quadspi: move cqspi_readdata_capture earlier

This commit moves cqspi_readdata_capture() earlier in the file to prepare
for upcoming PHY tuning support for read and write operations. No functional
changes are introduced.

> diff --git a/drivers/spi/spi-cadence-quadspi.c b/drivers/spi/spi-cadence-=
quadspi.c
> index 057381e56a7fd..0cc0d648d78db 100644
> --- a/drivers/spi/spi-cadence-quadspi.c
> +++ b/drivers/spi/spi-cadence-quadspi.c

[ ... ]

drivers/spi/spi-cadence-quadspi.c:cqspi_indirect_read_execute() {
    ...
			/* Read 4 byte word chunks then single bytes */
			if (bytes_to_read) {
				ioread32_rep(ahb_base, rxbuf,
					     (bytes_to_read / 4));
			} else if (!word_remain && mod_bytes) {
				unsigned int temp =3D ioread32(ahb_base);

				bytes_to_read =3D mod_bytes;
				memcpy(rxbuf, &temp, min((unsigned int)
							 (rxbuf_end - rxbuf),
							 bytes_to_read));
			}
    ...
}

[Severity: High]
This isn't a bug introduced by this patch, but does the remainder read
logic cause endianness issues on big-endian architectures?

The code uses ioread32_rep() for bulk transfers and ioread32() for the
remainder bytes. On big-endian systems, ioread32_rep() preserves byte order
during the stream transfer, while ioread32() performs a CPU-to-device byte
swap.

Could mixing these accessors on the same FIFO cause the remainder bytes
to be corrupted due to unwanted byte-swapping?

drivers/spi/spi-cadence-quadspi.c:cqspi_indirect_write_execute() {
    ...
		/* Write 4 bytes at a time then single bytes. */
		if (write_words) {
			iowrite32_rep(cqspi->ahb_base, txbuf, write_words);
			txbuf +=3D (write_words * 4);
		}
		if (mod_bytes) {
			unsigned int temp =3D 0xFFFFFFFF;

			memcpy(&temp, txbuf, mod_bytes);
			iowrite32(temp, cqspi->ahb_base);
			txbuf +=3D mod_bytes;
		}
    ...
}

[Severity: High]
This is also a pre-existing issue, but does using iowrite32() for the
remainder bytes after using iowrite32_rep() for the bulk transfer
have the same endianness problem?

Since iowrite32_rep() preserves byte order and iowrite32() performs a
byte swap, it appears the remainder bytes could be corrupted on
big-endian architectures in this function as well.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618073725.8473=
3-1-s-k6@ti.com?part=3D6

