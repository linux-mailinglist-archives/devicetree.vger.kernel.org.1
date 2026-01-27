Return-Path: <devicetree+bounces-259748-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLcbLD9meGnTpgEAu9opvQ
	(envelope-from <devicetree+bounces-259748-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 08:16:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DCC90A69
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 08:16:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5107F3004612
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 07:16:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A21F2475CF;
	Tue, 27 Jan 2026 07:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IbXxEN69"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C383EBF0D
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:16:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769498172; cv=none; b=sYhrJyIEeXUpIk2Jl82ZN6R1ONRdM3FR1LhjbIYC81sguId8aLti49vbQRy1DQJfv1DmhCpwB0KbA1r7OIS9mRSadeXBJozzpHZGQiMgzrB3pJibyxNm/wYJelqxJLxuxa66Jb2aO5E/5AJd0fU8jE4AdttaE0tV2DcvhXDdWAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769498172; c=relaxed/simple;
	bh=02e7n3+lctEJi09SAlNrz4VUwCcgYNB/BqGIhi/reAc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=SybvzM8n7nSuUdn6uT7kRneYQW+FqyiYGNS5o/1gX8O0Vf1lVkMq7QRS1IMeoU9HNVQOiLhZBvlV+1wYjMAXLVjmq1EH6XFUkjiJ6jFOfhi6PyWT3ZcHOVuMILu+zIOiigiM6/3AkpL27atVKWdZXpVBIoaO82BKnI8s2bIKgvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IbXxEN69; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2a79ded11a2so32902145ad.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:16:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769498171; x=1770102971; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ecu5YJerF7ppjEFjoeyqLO82/b5nn1WtdkAH1BLTIA0=;
        b=IbXxEN69uBx8NY0SgYVHnB/HCEKrX8cwiYiyY+fePb1gST4EVQKm5WaOI73Jqht1HI
         6jI6CXiNv000tYyVHjcwTK6Q1BytySfTcsmj939gHKM2cyfFtaHg9AoEeFfFFdXVcAIU
         RjAyXMDrOj6BLIwRl3Ep8tBNbN5Tt6vtMTpiM7VVQWwkvqjK7eNve6FR+pxz7JbOtK8K
         DMAhdT9Y15nX25p4Rvh+mRj7R0ScdA84flL89BMlmT5/HP2RZh0qSuJtn6O9+uYZ6tyZ
         xMkLuzY2cKNHMlGFlHvkEynJ5MImIdIKUfXCd4aZzyMc2nPLgdNs7eWfOfURLON15wfM
         fzcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769498171; x=1770102971;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ecu5YJerF7ppjEFjoeyqLO82/b5nn1WtdkAH1BLTIA0=;
        b=AmHFecusjIymP46dO2ZMEH2x15kHimn9PTMgd1rPzsU2T6RQNmQFSaCATszX1+tmYg
         zxnqFIyyuo0Y5L5Mnz8D0wAi/0bVNj4KYL17USzNlDlI2E3Yhph1C0XilRYK6IGBHiYd
         FP0MdHGc2lCC3cmnCEnr3E09a19w5gQiLFSgTvhK2MU/PnTt7jLPqxl7tgwQ6NfJBkKE
         6CdKg8i1Tcs5DBoLxoapPAIlOjJs0KpLKhr2eWfiIkNPvQP95RYt6m7wh9IcrqRU1jZG
         PdYR46VoO+u2HnQs3QOSv1+Ckkn5LFIGHy2z+RVFSptU0tPSTnnFB+XW4m+frKngVjCB
         3lew==
X-Forwarded-Encrypted: i=1; AJvYcCXY48/2vkLD6lw3+ENm7qcDOdtCtHWZspRmR8GUWZDgIRyxom7KZycemQvN/xUflKHxa7KMBKvArS3/@vger.kernel.org
X-Gm-Message-State: AOJu0YzNWLx/o+jKHnzqkC9h5K/FjIHaQhLyTsdDLYA5fAZ2UkEmdsDH
	a7NEHsPgwzGj++taM73+ab6GJViTAsZ7nTZUUVKmzS18bVVTCpfeff3g
X-Gm-Gg: AZuq6aLR6eEJYDjfp6RJ/1X77ScbEmq7Q7JedOqOv8hAF4YhkMBDi2Xb+WfNlzM4oAc
	miU0h6x5QH4Rbd5RxhQcYRE88GsWw+W3CDm6HcwuXqrzfVibHWQvsfGypX4EV1O4yUrRDk3ChV4
	6igaUMr9bXwe4DizSqRTiEHmleKLbEYoB5SzhRVJVgYg0RDmb3rude66bgN6b5Fb6UX5waBCqN9
	GYSXm6B2NBt2kl3VmmPGpWV963efCWeXOuymc3R014ezdSTwtNRytmgcL51kD5JySt8tYC4aHEO
	a5WuyMwwalf/NgdN8D+DVCTfSQZ3353tCwQj5bMfbELiuopepRv3kkqwS50OGlEncZtxDIjC8na
	eAR3jtv79MjcoIKo/u/WETAl5uMV1khrUd9Ak15UOy1/SXCbmhHAk8Fb5X/ZlLbvLkoVUOtjPzX
	1uKuOHeMuDCpxBszC4vgOv0VUNTbaDOJtfKcykyfPCF/s7JUf8
X-Received: by 2002:a17:903:3545:b0:297:c048:fb60 with SMTP id d9443c01a7336-2a870d5d5e3mr7523855ad.25.1769498170464;
        Mon, 26 Jan 2026 23:16:10 -0800 (PST)
Received: from cn1dhc-k02 (125-227-180-151.hinet-ip.hinet.net. [125.227.180.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802fb063esm106160505ad.85.2026.01.26.23.16.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 23:16:10 -0800 (PST)
From: Yu-Chun Lin <eleanor15x@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	james.tai@realtek.com,
	soc@lists.linux.dev
Cc: afaerber@suse.de,
	arnd@arndb.de,
	linux-arm-kernel@lists.infradead.org,
	linux-realtek-soc@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	cy.huang@realtek.com,
	stanley_chang@realtek.com,
	eleanor.lin@realtek.com
Subject: [PATCH RESEND v3 0/2] arm64: dts: Add support for Kent SoC family
Date: Tue, 27 Jan 2026 15:13:59 +0800
Message-ID: <20260127071530.25426-1-eleanor15x@gmail.com>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259748-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eleanor15x@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 38DCC90A69
X-Rspamd-Action: no action

From: Yu-Chun Lin <eleanor.lin@realtek.com>

Hello,

This patch series adds initial Device Tree support for Realtek's Kent SoC
family, including the RTD1501S, RTD1861B, and RTD1920S variants with their
respective evaluation boards.

The series includes:

1. Adds compatible strings for the Kent family.
2. Add Device Tree files for the Kent SoC, TD1501S Phantom EVB (8GB),
RTD1861B Krypton EVB (8GB), and RTD1920S Smallville EVB (4GB).

The patches have been validated with 'make dtbs_check' and
'dt_binding_check' to ensure compliance with DT schema and successful
compilation.

Cheers,
Yu-Chun
---
Because I haven't received a response from Andreas Färber for over two months,
as suggested by Arnd, I am bypassing the currently listed maintainer and
sending to soc@lists.linux.dev.

Yu-Chun Lin (2):
  dt-bindings: arm: realtek: Add Kent Soc family compatibles
  arm64: dts: realtek: Add Kent SoC and EVB device trees

 .../devicetree/bindings/arm/realtek.yaml      |  42 +++--
 arch/arm64/boot/dts/realtek/Makefile          |   7 +-
 arch/arm64/boot/dts/realtek/kent.dtsi         | 166 ++++++++++++++++++
 arch/arm64/boot/dts/realtek/rtd1501.dtsi      |  12 ++
 .../boot/dts/realtek/rtd1501s-phantom-8gb.dts |  25 +++
 .../boot/dts/realtek/rtd1501s-phantom.dtsi    | 118 +++++++++++++
 arch/arm64/boot/dts/realtek/rtd1861.dtsi      |  12 ++
 .../boot/dts/realtek/rtd1861b-krypton-8gb.dts |  25 +++
 .../boot/dts/realtek/rtd1861b-krypton.dtsi    |  72 ++++++++
 arch/arm64/boot/dts/realtek/rtd1920.dtsi      |  12 ++
 .../dts/realtek/rtd1920s-smallville-4gb.dts   |  23 +++
 .../boot/dts/realtek/rtd1920s-smallville.dtsi | 128 ++++++++++++++
 12 files changed, 626 insertions(+), 16 deletions(-)
 create mode 100644 arch/arm64/boot/dts/realtek/kent.dtsi
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1501.dtsi
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1501s-phantom-8gb.dts
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1501s-phantom.dtsi
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1861.dtsi
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1861b-krypton-8gb.dts
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1861b-krypton.dtsi
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1920.dtsi
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1920s-smallville-4gb.dts
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1920s-smallville.dtsi

-- 
2.34.1


