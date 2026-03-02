Return-Path: <devicetree+bounces-269774-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLzgMpvxpGlTwQUAu9opvQ
	(envelope-from <devicetree+bounces-269774-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 03:10:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D9F1D26B0
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 03:10:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EB31F300DD4F
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 02:10:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53BB6286425;
	Mon,  2 Mar 2026 02:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U/d5a5+z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E400B284690
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 02:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772417431; cv=none; b=hDBjmTa27WV1d6b+QOFmW6178bqVE2+W0gySnxDfbsHI+vkAbxbhcWQfZrbGW1+QWlbE3aFCILQxHau7DKl1HSV+GLK6XIMeIdcumoHBeNfY1ygK06pIqLYA25lS11IPLQIhTx+g5EVcrUsQvIVb4Rp75RXcBu+Jqo6r2XJxl2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772417431; c=relaxed/simple;
	bh=W3+F///ytck2u0HUfIs3x6u2P642DxB32BYcOXGdTfs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=SrvNY3hV6WRb0aB5H3PQNyhGeb+mOsprXP1Jrw7GUveTJZrMfG7mewUpvoRmq3kXsdh6RBiQFcPeitMv0M2zL1xFZ2pVobmsdrHIPFgJW6UIHt46LMEk9/HLKKeLZRHBxFBcgdeCtxQLh/1zgh3qoS9vEiaWnK8drzRrpCju04Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U/d5a5+z; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-48373a4bca3so22931655e9.0
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 18:10:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772417428; x=1773022228; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DDgIClsU9tFXtpNwdi4WbXldTo4bd/zYzYnfaln1CME=;
        b=U/d5a5+zZ3ysx8Q8oGdYNfuW+geyrZk36FyU4ymW9sUwPOiJmWR6b5xSyxD4D+Brii
         /khtUDSDImO+Vprz4VwE3LqlPOueuEGyX3DmVxPyC2FL8U05CTLc5/cqECDtlXUEcw0p
         mch/hQxtn/TEnHgtrYmgNEaORxxeURoaNWazfhBiUxmkyCsR6D/DV76KBIAyST4at0Ux
         I5z4cMVd5bzvKpG81LcAFn4TcZAUrZMxqeFHP6/UN1JNEAGJYO0ENh+IjK813SiZDpbC
         +KgwnKMclm/yizD8GqGq8+pGu7e8bQYdVr/ZYVR9cfJlWxQGEpF/6qXh24uxShm3IdxO
         t6eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772417428; x=1773022228;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DDgIClsU9tFXtpNwdi4WbXldTo4bd/zYzYnfaln1CME=;
        b=RRZ8m9E1HB5CKW0jzQZvKNFDqGoF1LyI41uyevDWjA4ALRk13yjOsVztkpAspIzHq8
         lr5/9Nnx9O2L3yotJ7vu8HXSC7YKHET1JtRzCLrdCwQLQGRXzU5/zaHNT1LbEr2XdZaP
         NCLN1oRxOhoKK4z0yMBSULKFCkpyndbmfe/jWWbp7DlTXMzWb7x4ByySvJSbZ8tE7xHY
         nXlGt8HOLQDmhCsRqatsv4xRoZ+OFcdVYtVhtFwQKZdfWHEoPYVqqRC0SE+blf2srvJ6
         3IQJwNn8JRL+A98jqj2pkr2a2P23BjE/lYsdi06IpvaP4b/0paQmPqr1WEEhUhUe1xbr
         Du0w==
X-Gm-Message-State: AOJu0YyYIsAzcktjhfk8yLEF4T00C06wyPZC1Vb3cVAbkwIu4dPTnheY
	SSMUk3M5g4pmSz0QH/3TZpgWEZBhMcbgeBexDLXUlQl+BHzZVFEwJw1qs+DvncQiptA=
X-Gm-Gg: ATEYQzw5yiyEM7sGhALOF8VF9eTedzTKJqVs1T58vtl6VcrQOVgh9rxmpKYPUoDY16Y
	rRiOiLU6f8T7NHPDm98aBnRgOPBqfIpXiD68Xi8muAGVj6KIu95ZRZIFAcmYJG27wIvRTA7ay1S
	8MTdH4nYFPJ0Wj0J3h0fQW8m4/yi2OpgMF0hlnMoAM8+4EaPKWRWFv8oxE8AF4I5tAH+ITB1Dcj
	EtwabFPRSjGYkGlt+NJ2KZkF0Me8EFURvO5o7JDoqyw89WfR4791lHYvVpnWiZ8a706TYcol5ui
	2CRom8Aln41Ey3WOlv25ipNcn6S+BVYYdeRiayqZ1uQ/0QMSeoBbCblaF5ARc6SNHP/rIOnKUtY
	wl3VsA3+MlZwW73m2QACjp4s31/4P+Ih4nwcwFDDQ4Z2OvLRnPrpeIRYo8q1KP0bXTG+sLo0RQx
	LY3mygq8QKcscD+U/cH90p
X-Received: by 2002:a05:600c:a085:b0:483:badb:618f with SMTP id 5b1f17b1804b1-483c9bc5b7dmr176920225e9.25.1772417427953;
        Sun, 01 Mar 2026 18:10:27 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a55:9af1::1002])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfcb9b97sm194451105e9.7.2026.03.01.18.10.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 18:10:27 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	wens@kernel.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	mripard@kernel.org,
	andre.przywara@arm.com,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v3 0/3] board: sunxi: Add TaiqiCat (TQC) A01
Date: Mon,  2 Mar 2026 10:09:53 +0800
Message-ID: <20260302020956.96424-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,sholland.org,arm.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-269774-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,archive.org:url]
X-Rspamd-Queue-Id: 43D9F1D26B0
X-Rspamd-Action: no action

This series adds support for the TaiqiCat (TQC) A01 — 
a set-top box based on the Allwinner H6 SoC. 
Originally released by Ultrapower(UQSoft) as a blockchain terminal, 
the device has been discontinued and is no longer officially
supported.
  
  https://web.archive.org/web/20190409213228/https://tq.ultrapower.com.cn/product.html

Changes in v3:
- Drop the serial1 alias.
- Add an ethernet0 alias for WiFi.
- Link to v2: https://lore.kernel.org/all/20260227155801.211376-1-jerrysteve1101@gmail.com

Changes in v2:                                                              
- Replace "UQSoft" with "Ultrapower", and add relevant explanations.
- Link to v1: https://lore.kernel.org/all/20260226084850.417731-1-jerrysteve1101@gmail.com

Jun Yan (3):
  dt-bindings: vendor-prefixes: Add Beijing Ultrapower Software Co.,
    Ltd.
  dt-bindings: arm: sunxi: Add TaiqiCat (TQC) A01
  arm64: dts: allwinner: h6: Add TaiqiCat (TQC) A01 support

 .../devicetree/bindings/arm/sunxi.yaml        |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/allwinner/Makefile        |   1 +
 .../dts/allwinner/sun50i-h6-taiqicat-a01.dts  | 361 ++++++++++++++++++
 4 files changed, 369 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-taiqicat-a01.dts

-- 
2.53.0


