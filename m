Return-Path: <devicetree+bounces-264909-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0HapAEF0jWn42gAAu9opvQ
	(envelope-from <devicetree+bounces-264909-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 07:33:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3CC12AC34
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 07:33:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 405FD30FBD28
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 06:31:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF2AE29DB65;
	Thu, 12 Feb 2026 06:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LUzz8GPy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f41.google.com (mail-dl1-f41.google.com [74.125.82.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0231299AB4
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 06:31:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770877874; cv=none; b=sEbZg/z3Uri3h0j92S3+Kw3FjfsJE9Xd0IUsGzzBUgKcidfBRctR9XX0uiinctjuD1U/MG9hemu1pTwfrW742WdDUehdkYaGjpgipPrbR9dmTrWQ+2CUFKpfzDpxZjFDQoWuGZSBhW9WXhlecV+Y8cquXi03IObglXWZ5DOsZq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770877874; c=relaxed/simple;
	bh=EBFLOEJADpoTiNro5GpxLUVSOG8AoEttij+vms0hlDo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VYkQFUSI3Dx8SwdZoDyiHCt6iARcidbUJKBJcASvYuPmun4TJuXJleVJAW9mNyjPZK0jkQnhdZGQBtzMWhNP9P9hx0OWdryx17NKsBWdIRWG6y7m309ZfUsQruNAJ+85CGye7s/4Ky94qOtqDe8oxojFSeyFF3OoiPF6xi8JN4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LUzz8GPy; arc=none smtp.client-ip=74.125.82.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f41.google.com with SMTP id a92af1059eb24-12714f01940so239431c88.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 22:31:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770877873; x=1771482673; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zMYuxthpUhmu7qx+N3HqzMNJ6PmngHneJWKEskMoDgI=;
        b=LUzz8GPyE42Ejw4zZUj8wi96RRJBhyPIvYEHF//vub2Z8exdudY/1w1sj77DULU4qa
         jjRwHz0/Ng8LwyJ51CH7a/Ku1n7yFl8jPkuTWVpOtUVr9WzKknRIMTdpBqENvrp5ramM
         A5hRydasvE6UPKoXMZJvc6g94mdaDnLYnddWTc5oHSOVhaXzLY57xEnkuLcNfqsVy1TD
         PNMmhmMtMSOIuLMP9rf+fJTtlUYvsa0PLptHgPmJtsHVBPiy0E9JgCtgGk8SDf6xxl2w
         J0kcwnpqoymSnE7c7rR61hIGy3oodZn4UMxB/HI/7kmNVEcjZyCMZvbXfLsTuiPfb0G4
         0n9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770877873; x=1771482673;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zMYuxthpUhmu7qx+N3HqzMNJ6PmngHneJWKEskMoDgI=;
        b=nCuCqdz/sIrSLQnLKmjkjt505FjSHjhHhF84V0yXtoqZPhpX3doN9zW/Xo+HLJRDfI
         JlkaegUIJWEA79JN6hyVd92hZaHnoyGYvHo6FvmAws6NaictYLVJVJAgsKdGL+DP8y+Q
         gJmFVVKi9fNkrSowsdYEmLVs36jwfZ8jKtx+H5THw95gcDtfbWj+cXkWVNBrlSGDwo12
         cAILat4TSrIIglBqiJJ+Gsmh01MCusp3tfR4n/DRrCM9RyqwVyCvhY3EMSFT46r1KIbD
         FpYYAczO6HyxrvHObYlazxqX8o3bItOjA+kwj8BwDNhOX64tWoccsfeRnqRY1GowtC9s
         mbfA==
X-Forwarded-Encrypted: i=1; AJvYcCWdvY6kNrq1b+83zprXf23Nb6KzUdr/xD7KZWb0062NJ5TPEbtTadxrEor1d0QvmHpDvnVXgmzmgIOT@vger.kernel.org
X-Gm-Message-State: AOJu0YzV0Y58LSAaXEjD73nK0kfa29yPzRCjKcpiUTSdOGijFTzyAYYw
	qmlAK2025F9DijMEtLXWt3fDssPKqKp2ZEFn656fgoFXezbxxRsE7spN
X-Gm-Gg: AZuq6aKok/msTOQ2dke/PApYxP2J/WA52TRNv+CopBTZJrxRKQuSEOXIGWkeMmLmOCz
	Xh9JL4cqCU5vf2/mT9eRAWuihgmrs2AvASkp/xfTdw96SCD+H8eqSAg4PbNB68BbnsLJCvdphY4
	KYq1VbhVPE5G37p7x+ke14x8AyloHi7OssNGg5iNk9fClBDROVnSn4OY7CjqkGqyM0xcJJoBsuT
	BSO4+cpG2D8WWrzrgZHM6QmPXD+mcTHMMRr9wkupEjrp4EtvBAlMJ51azX2FDRaKBMQVoF/UVru
	ugGI99wLD8FBF+XkGRlzoZUU5fTn2RrzkibqYNrgcXWCGIO8QWie/dn1SI/9r0TbdTwaJQ0dJhD
	lwtZliSd/mKHJL8sydBO2CfvquCO3ihvUdWilT9ANlrx5uDTkjV8++pEnc8GFC2fG9zXNQV2JZO
	QYZhFTdSsRdfFEMAXnCJ/DGZXhg9f0L5pgEisRy5AXIFKot43JZpYzHIHl2AHqMHYdGg==
X-Received: by 2002:a05:7022:6993:b0:127:1186:8139 with SMTP id a92af1059eb24-1272f79ca53mr428466c88.7.1770877872582;
        Wed, 11 Feb 2026 22:31:12 -0800 (PST)
Received: from [127.0.1.1] ([45.32.86.188])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1272a6f29dasm4313870c88.12.2026.02.11.22.31.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 22:31:12 -0800 (PST)
From: Yasin Lee <yasin.lee.x@gmail.com>
Date: Thu, 12 Feb 2026 14:26:52 +0800
Subject: [PATCH v2 1/4] iio: proximity: hx9023s: fix out-of-bounds access
 when copying firmware
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260212-upstream-20260219-v2-1-2b28fce5d09e@gmail.com>
References: <20260212-upstream-20260219-v2-0-2b28fce5d09e@gmail.com>
In-Reply-To: <20260212-upstream-20260219-v2-0-2b28fce5d09e@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Yasin Lee <yasin.lee.x@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1033; i=yasin.lee.x@gmail.com;
 h=from:subject:message-id; bh=EBFLOEJADpoTiNro5GpxLUVSOG8AoEttij+vms0hlDo=;
 b=owGbwMvMwCEYyfeRr6Zs90zG02pJDJm9xUtLXksv4T6UWGju81bUMdpsZvnHnP/TLqxU/R0id
 pyDO76ro5SFQZCDQVZMkeXM6zes+aoP9wT/ds2AmcPKBDKEgYtTACbifIzhr/hdDZc09XkaghM2
 qiQvt8+2Y08S27zMauPMbLdp5zWL1jEyNPPxmy+w+TdF68KOeXqzc6wb718R/fRxrYjyn8dSvb9
 ZXgMA
X-Developer-Key: i=yasin.lee.x@gmail.com; a=openpgp;
 fpr=CCEBEC056F25E1BC53FB4568590EF10E7C76BB99
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264909-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,outlook.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yasinleex@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5A3CC12AC34
X-Rspamd-Action: no action

Initialize fw_size before copying firmware data into the flexible
array member to match the __counted_by() annotation. This fixes a
potential out-of-bounds access that could lead to a kernel crash.

Fixes: e9ed97be4fcc ("iio: proximity: hx9023s: Added firmware file parsing functionality")
Signed-off-by: Yasin Lee <yasin.lee.x@gmail.com>
---
 drivers/iio/proximity/hx9023s.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/iio/proximity/hx9023s.c b/drivers/iio/proximity/hx9023s.c
index 2918dfc0df54..ad839db6b326 100644
--- a/drivers/iio/proximity/hx9023s.c
+++ b/drivers/iio/proximity/hx9023s.c
@@ -1034,9 +1034,8 @@ static int hx9023s_send_cfg(const struct firmware *fw, struct hx9023s_data *data
 	if (!bin)
 		return -ENOMEM;
 
-	memcpy(bin->data, fw->data, fw->size);
-
 	bin->fw_size = fw->size;
+	memcpy(bin->data, fw->data, bin->fw_size);
 	bin->fw_ver = bin->data[FW_VER_OFFSET];
 	bin->reg_count = get_unaligned_le16(bin->data + FW_REG_CNT_OFFSET);
 

-- 
2.43.0


