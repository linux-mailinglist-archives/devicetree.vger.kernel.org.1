Return-Path: <devicetree+bounces-263210-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gC7wEEZThWmV/wMAu9opvQ
	(envelope-from <devicetree+bounces-263210-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 03:34:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D14EF95B9
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 03:34:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 81A7C302E93D
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 02:32:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C9C726560A;
	Fri,  6 Feb 2026 02:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="V+PN78qv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E27CA156CA
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 02:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770345154; cv=none; b=RR7DDPbLqdzi5BYTJJ+6aJIcDrgtbEGwcjBFikil87dXWJjVOwWwAJ3e20rpc9C/Qe/QrgNvY302F9eyRStEH/ScNAvhuHlMzxiaL7Ki1DKO2JX+XuDHb3QzbDcj01lQ1ujbbgS4NF3IG1aFW28EAPGr7bnWkCo9o9/Tvk+JFtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770345154; c=relaxed/simple;
	bh=+EeOMbsrkVrQ/nWNRoy6GEJ8PsMj5M2eB9aEmRc4lyY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WDC25Axmv7RVT+HiPkuffKC90u+KM8qInNawBScKNJ9pWxc+qY5pee0gMuxA03IbBMEAFqOHPMfu6Gpi1o/UhLG2LQvolpgKy02ke0SjPxScZKWUlWTITN2u8vkXLeThP8Kl61X/cX3zd99R3ZfOKA7uyuhIDMqX1gHqrciIsB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=V+PN78qv; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-352c5bd2769so922314a91.1
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 18:32:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1770345153; x=1770949953; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2ZvkXVSIOYFCtEBxE0jhzmf26iD9qAK0/wl2dxGNFLk=;
        b=V+PN78qvb5XRLI7tjU8i0NIFgsNI87H6oIB31mL5HkXKwKRqBjOsQRFsRYvGKj7dtQ
         1nqm/aw8PIOJ+j0kTO8bGyy9roRvxV50MgXXdpgxP73sG/2Ifl/thgcathxDaxLKzPk1
         B4+vXpaOz6iPjNybuqTQTxmWVLQoJXYSX8t+LL0IxPJqdOrYRSweuoETN/wbauiKO0cz
         wloWPj8bdDJU1ELBDRgg5zbOGdpTshWGmw/9xUovCyt3HpCktSYnrZLyrYs1Dlp3tcZw
         3snkhdeoYi/5N3WGNB3hziN1OLq/pahqmzhh3DC/dzEG1EC9s7dL9GQg3jZjTWM0pnwD
         1b8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770345153; x=1770949953;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2ZvkXVSIOYFCtEBxE0jhzmf26iD9qAK0/wl2dxGNFLk=;
        b=SbW9PbRod/Q3gwS9YdXJ8okV6wC3lFchiVA+8AWSeAPDhuVbX4RHj2wnwGryWy3XnE
         0M1MK6dXi10Pkee9Pm33w1EmnodnjpRgI2VK5cXVvmsn7fkgKyskGuVbw3eRDtlVWoOI
         u+JWEqXArubEVThiuKW7/WGyNWoCFXRvBd+SB6/9Lr3r8IYyP4swtQwkzc5vJtJUxRYf
         uUv6dnVE0rkkPoaqPBDCI+SrTo2iyEQHiYM9D1ChZ9X3Kjb+6jBV1McjBHjbGFq867Nk
         4p+LijJfMYzLnUVZXjGko8Qrb5awqZf5oGAGVn03gQnw904y2HFAZuk0Uh07ZpY05I9v
         XYjQ==
X-Forwarded-Encrypted: i=1; AJvYcCX7Uo9uzxzngIpxEFz/49bd9gb9GNYKjTz0XjyCRmaYeYEiTC2zpWuqzrV9CnqKfsLZX/PAyqLz2++Y@vger.kernel.org
X-Gm-Message-State: AOJu0YyMIluVskPQ/PENJMOH7/CQEB7eiEJW3ixBCJgm8L8Nxow3xV7F
	GBR+/VA3OTCSk9r4yx++hHbIBWhDe5lhPH15nBggmuVDdmL9RCuYj1KN7KZ0vbsSN4I=
X-Gm-Gg: AZuq6aLoimXYwjpWqF2UMBClf2MgDuTO5nVXIcpHnqUYUCBa+eG6HdxIJje60EeXJjQ
	VtGV/PJ0+owNIBjQ7rZ7YihDA7HT0xFsI14MZoDrzv4tBAigZKZ+brGWP9U4Cp6/QOuEjkZvFMY
	DvCZywNOPtO5HTbV9mdt/5sAJussFP3TQ1w6/JYV0VfLNA1uRw3CDIEbcDCwE36lpuODZRECd/L
	hMPsCT1I1sUuJqC+yIp4qSjJXOFYm2BIMQ94oVe0p2L83KAmMXSVOfyFc3zn/ihXPpB3PwAY5EH
	znDE4zqA1VXc4bbGPdJ2pZq6gB2jPv6799af7P6Z4rr67wqfX8tursQzPHznSTy0SlCdYL2xnyo
	Amy5rpw4lqjHw7KQb5dgtUrqLy3gR21UY3LPpyEPSWtFa6peIl0/WDErOIQHxW/8gvpRe7DdRKx
	fuuJv3ExyWXvtZHO1sDRHCFzuG0BNQaKI1qawKtQVbhSk0kZ0Q8gTnhei+ammFvVr/v2iQNVTfp
	nA+Vjzt9uwyHjIwPgc=
X-Received: by 2002:a17:90b:4e88:b0:34c:2db6:57d5 with SMTP id 98e67ed59e1d1-354b3ac0385mr944309a91.0.1770345153341;
        Thu, 05 Feb 2026 18:32:33 -0800 (PST)
Received: from [127.0.1.1] (61-221-120-110.hinet-ip.hinet.net. [61.221.120.110])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-354b64a8a9esm158419a91.1.2026.02.05.18.32.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 18:32:33 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Fri, 06 Feb 2026 10:32:03 +0800
Subject: [PATCH v4 2/3] regulator: spacemit-p1: Update supply names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260206-spacemit-p1-v4-2-8f695d93811e@riscstar.com>
References: <20260206-spacemit-p1-v4-0-8f695d93811e@riscstar.com>
In-Reply-To: <20260206-spacemit-p1-v4-0-8f695d93811e@riscstar.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Yixun Lan <dlan@gentoo.org>, Alex Elder <elder@riscstar.com>, 
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Troy Mitchell <troy.mitchell@linux.spacemit.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, devicetree@vger.kernel.org, 
 Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263210-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,gentoo.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[riscstar-com.20230601.gappssmtp.com:dkim,riscstar.com:mid,riscstar.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9D14EF95B9
X-Rspamd-Action: no action

Update supply names to match the P1 PMIC's actual hardware pinout where
each buck has an individual VIN pin (vin1-vin6) and LDO groups have
dedicated input pins (aldoin, dldoin1, dldoin2).

This is an ABI change from the original "vin" and "buck5" supplies.
The P1/PMIC regulator has no consumers in the DTS tree yet. For the two
K1 boards in-tree (BPI-F3 and Jupiter), power settings come from
boot firmware, so a probe failure has minimal impact.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v4: No change.
v3: No code change.
    Update the commit message to state ABI change explicitly.
v2: No change.
---
 drivers/regulator/spacemit-p1.c | 25 ++++++++++++++-----------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/regulator/spacemit-p1.c b/drivers/regulator/spacemit-p1.c
index 2b585ba01a93d0ce163c33e14c8022a506bdce11..57e6e00a73fa416fd6e557eb5bcada7dc69df444 100644
--- a/drivers/regulator/spacemit-p1.c
+++ b/drivers/regulator/spacemit-p1.c
@@ -87,13 +87,16 @@ static const struct linear_range p1_ldo_ranges[] = {
 	}
 
 #define P1_BUCK_DESC(_n) \
-	P1_REG_DESC(BUCK, buck, _n, "vin", 0x47, BUCK_MASK, 255, p1_buck_ranges)
+	P1_REG_DESC(BUCK, buck, _n, "vin" #_n, 0x47, BUCK_MASK, 255, p1_buck_ranges)
 
 #define P1_ALDO_DESC(_n) \
-	P1_REG_DESC(ALDO, aldo, _n, "vin", 0x5b, LDO_MASK, 128, p1_ldo_ranges)
+	P1_REG_DESC(ALDO, aldo, _n, "aldoin", 0x5b, LDO_MASK, 128, p1_ldo_ranges)
 
-#define P1_DLDO_DESC(_n) \
-	P1_REG_DESC(DLDO, dldo, _n, "buck5", 0x67, LDO_MASK, 128, p1_ldo_ranges)
+#define P1_DLDO1_DESC(_n) \
+	P1_REG_DESC(DLDO, dldo, _n, "dldoin1", 0x67, LDO_MASK, 128, p1_ldo_ranges)
+
+#define P1_DLDO2_DESC(_n) \
+	P1_REG_DESC(DLDO, dldo, _n, "dldoin2", 0x67, LDO_MASK, 128, p1_ldo_ranges)
 
 static const struct regulator_desc p1_regulator_desc[] = {
 	P1_BUCK_DESC(1),
@@ -108,13 +111,13 @@ static const struct regulator_desc p1_regulator_desc[] = {
 	P1_ALDO_DESC(3),
 	P1_ALDO_DESC(4),
 
-	P1_DLDO_DESC(1),
-	P1_DLDO_DESC(2),
-	P1_DLDO_DESC(3),
-	P1_DLDO_DESC(4),
-	P1_DLDO_DESC(5),
-	P1_DLDO_DESC(6),
-	P1_DLDO_DESC(7),
+	P1_DLDO1_DESC(1),
+	P1_DLDO1_DESC(2),
+	P1_DLDO1_DESC(3),
+	P1_DLDO1_DESC(4),
+	P1_DLDO2_DESC(5),
+	P1_DLDO2_DESC(6),
+	P1_DLDO2_DESC(7),
 };
 
 static int p1_regulator_probe(struct platform_device *pdev)

-- 
2.43.0


