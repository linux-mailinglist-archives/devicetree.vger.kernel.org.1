Return-Path: <devicetree+bounces-262149-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDcgFsfFgWk0JwMAu9opvQ
	(envelope-from <devicetree+bounces-262149-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:54:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C95E1D726A
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:54:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7E3E130A1693
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 09:50:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 314A439901B;
	Tue,  3 Feb 2026 09:50:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gThs9kt1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDB3C39A816
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 09:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770112242; cv=none; b=JhSVMSVsF49K8pFeqlZo1E9SuMrHTnCfuEsieVAsmzGhtgY4Iiq8wK3k8B7uC1lDzcoDUxR39i2sZfaBoHDNZNQAnFMP5S7UugaR19IosTXNV0gm196Q1U6z1rdyVf9B2/h5a/L4XMPr4gPdMiKvQzeahdJHOMTRvQaXg1WJ1pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770112242; c=relaxed/simple;
	bh=u0zWzVB/IbD5oQY4O26nV5N+KWOpDsoPDXV4B5J0j6k=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=FTYLbUpxa9neCLFVK9gTXwvjklUjV+3YCdNcRstkR49wT/mwiU6Cz5ZOG0mh1LaWXuLSKW5bSwbWAS5XALUybZ76gOvaaWFyTdCNd0qgyLEF18E7Ez3Z6o4XEqP9iJ85Gfs2Hj/y6CdLjwYy5tzCxMeMMksvm7R8NJ4c8WIzI+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gThs9kt1; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-bd1ce1b35e7so3320130a12.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 01:50:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770112240; x=1770717040; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RL8/ntmLbz7GfoTyFS9PYa6ILY9/8FH2UwySorYf6Js=;
        b=gThs9kt1o1x4nVqTWK7GIQg/KEoxURzcSTu1P7tUsGLX47NAC9auBTO3t/KLXzad51
         E34p7iW5oo1irxmCT0piQnd8w37qJiJMsCQlglH74kcPfZ3Wv7rTX92OdAKNfbMpeqe/
         zI3P+jbErsXTxjNMlO/lM6oaV7/pEPaUtNAYWFJ3i7bjS8Ni83embZQGrovZ8PcC0pTq
         nv9VAZjtBqdh12I5yLnkIVPUIXCP1TVGIOo0LEuNRvH3mxPdXg/HPkGy01o2qiB+NP6g
         WLjvb8UzahuWc2wG8wP50FG5XXto1Lsk/BajjoIYA/1ITHZgUfo9izZlSzm/tSHNfPNv
         F+LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770112240; x=1770717040;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RL8/ntmLbz7GfoTyFS9PYa6ILY9/8FH2UwySorYf6Js=;
        b=Ju/xDWaInj9HR5SP6ovt4ZYKSb8YppTRYecsFk6NFDbCEbS8UoquG5KLYYQghmPtXD
         Sx85zKUJmVXjRfUkCX4XUPjJdPwE/Dn6XCFpv56bU/W3XvdqDSdXAAHGbkjoIGZfsPhF
         rxboePGZ7W31vDi6alkwKi23NTEYTW5bCBrCfmaW40bpRixoJksDBz0UQxn3ymOggnSH
         Z1QPvBotEbKx1audAeH9skNoOI67RPuY9T8USl3amKQVkU5gUydgoyDCI7LOcP5+tr7E
         X7SRF1UpUm7plIEanTz+I1EmMCUlWglNTKbDAEHKJh0muEfkVgDPPw3UGdWhcoSrXxqh
         IaGw==
X-Gm-Message-State: AOJu0YzJzDYcsTmuoM9YRJbSeaAYTSBHv36ArhYnkDNzi8LVdRxCwABh
	J783xQwkXjAKpfcRl3hgc/Mh/cEz2Yk3LmbKasO0kDZTN/QjMoORBDtF
X-Gm-Gg: AZuq6aI/BeJ1pB1Hf0Cmb8hu79ycZhYTx+RZpH/h7BAQZ0jn8xZOT+AHGO8yv6/YZ5J
	gDgzeAmY/yXW48aaoXomRBWnc/UvfkOLu0DwMQAKT0PtraXQdtVk+jXgjWR0Tt/zD8kboOLviTG
	EnjxTP1Cb1aadz/aiAsw1vvkqRD0YIqoCMOzVDCUwJJssMWvowQ3IfVdfVe7rBY9vkbQiIEhBkU
	kSiCAeLp3d6zK+aAXPxYdZeigm3B+SCWg45jAIBQwmtSumfT3kJZfkFV/mrPjmUNqRSo+/DM32h
	OHbn8NNTCsvqf0hTzrrloDdW8X3k9IMQiE73CXpb1EEx60lGdYiJTIEncea+htlXP+dxAJFVBzx
	mNMSfXS1R2MGXoJQZ+SWFC13PV09kM424wdnIvOuTNmImi0MbGxSXzWlePu2+C3qSqXm2O9gXTx
	bHiv9FsNugpbLF3G397e8fQ0DBdr45VbOYcRYlpKVHpeo4dDzMW9o/0aYOQSMdVaI=
X-Received: by 2002:a05:6a21:790:b0:364:1339:97c2 with SMTP id adf61e73a8af0-392dffffe23mr14554241637.14.1770112240073;
        Tue, 03 Feb 2026 01:50:40 -0800 (PST)
Received: from localhost.localdomain (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c642a336a1csm17535332a12.19.2026.02.03.01.50.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 01:50:39 -0800 (PST)
From: Potin Lai <potin.lai.pt@gmail.com>
Subject: [PATCH v2 0/2] Add Meta (Facebook) SanMiguel BMC (AST2620)
Date: Tue, 03 Feb 2026 17:48:13 +0800
Message-Id: <20260203-sanmiguel_init_dts-v2-0-6a5682c32b38@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAF3EgWkC/32NQQ7CIBREr9L8tRigVq0r72GaBuFLf9KCASSah
 ruLPYCbSd4k82aFiIEwwqVZIWCmSN5VkLsG9KScRUamMkguj7wGi8otZF84j+QojSZFduq1ube
 t7rjpoA6fAR/03qS3ofJEMfnw2T6y+LV/dVkwzjTnslV4EOe+v9pF0bzXfoGhlPIFOhJrqLQAA
 AA=
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>, 
 Patrick Williams <patrick@stwcx.xyz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Cosmo Chou <cosmo.chou@quantatw.com>, Mike Hsieh <Mike_Hsieh@quantatw.com>, 
 Potin Lai <potin.lai@quantatw.com>, Roger Kan <Roger.Kan@quantatw.com>, 
 Potin Lai <potin.lai.pt@gmail.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770112237; l=903;
 i=potin.lai.pt@gmail.com; s=20240724; h=from:subject:message-id;
 bh=u0zWzVB/IbD5oQY4O26nV5N+KWOpDsoPDXV4B5J0j6k=;
 b=bjYFW176Y/+F1LIHvROPz0o13EZ5avX9lVW0ZmD/Tox+xxQ9TytzDUNlUSeAowYi4jCsnzI8C
 2CPIP0/fYiVALW2Sj/kads1HKs1Q3uxEeHj1TneJL4J/lnM8IeErl6e
X-Developer-Key: i=potin.lai.pt@gmail.com; a=ed25519;
 pk=6Z4H4V4fJwLteH/WzIXSsx6TkuY5FOcBBP+4OflJ5gM=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262149-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,quantatw.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[potinlaipt@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C95E1D726A
X-Rspamd-Action: no action

Add Linux device tree entries for Meta (Facebook) SanMiguel specific
devices connected to the AST2620 BMC SoC.

Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
---
Changes in v2:
- change mac0 phy-mode to rgmii-id
- remove max-speed attribute from mac0
- Link to v1: https://lore.kernel.org/r/20260202-sanmiguel_init_dts-v1-0-c0023ae41899@gmail.com

---
Potin Lai (2):
      dt-bindings: arm: aspeed: add Meta SanMiguel BMC
      ARM: dts: aspeed: add Meta SanMiguel BMC

 .../devicetree/bindings/arm/aspeed/aspeed.yaml     |    1 +
 arch/arm/boot/dts/aspeed/Makefile                  |    1 +
 .../dts/aspeed/aspeed-bmc-facebook-sanmiguel.dts   | 1161 ++++++++++++++++++++
 3 files changed, 1163 insertions(+)
---
base-commit: 24d479d26b25bce5faea3ddd9fa8f3a6c3129ea7
change-id: 20260202-sanmiguel_init_dts-79cdb33c50d5

Best regards,
-- 
Potin Lai <potin.lai.pt@gmail.com>


