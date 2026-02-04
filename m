Return-Path: <devicetree+bounces-262617-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qLHkOVA0g2kwjAMAu9opvQ
	(envelope-from <devicetree+bounces-262617-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 12:58:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D2FE5660
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 12:58:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 85C5D302EEAD
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 11:56:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 858103ECBD9;
	Wed,  4 Feb 2026 11:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Vw89mexy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1741D3ECBC6
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 11:56:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770206218; cv=none; b=Mg2VXkS/zGHtm390jMi8XfGZ4K0xWi3r9QqkqKuLDo7NthTNGA9/3yD8gAsmTFTHvr9OxI/zQ5WvOpjGrlpsD/9swn2EFhc5Vy4wo8zsvQKdk+9zI/WPgXenoxE0qi7rg9FJs7N30jy8wCRvn9EHJaMjoPZUbgNFX5Cb/rYh0Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770206218; c=relaxed/simple;
	bh=WjEXkGsQ5sr5TzqRl6oe46H9S0TisIOthFvDELfEQ7A=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XdBHD8IiJFIatHm4/p/MGc0IcCD8Am8TS2Dq6F6CFF85PIfHYKvXBRRV1XaXh7P+LcrMYmHm8L433JqZb0VQPTWodScmHI7s1kNP3nnHP8UuSt1QKeXKvShhH/F5Rf3ye8tMRW02ccaNmH2BbEs7F0gTIs5zFBxIEacZ7riFlIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Vw89mexy; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b8871718b00so1148208266b.3
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 03:56:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770206216; x=1770811016; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FtNij9A3CnyY9eArlj5GSFWikA3b1bHvLn2mkmp9wl4=;
        b=Vw89mexyDGlwDhc8wwEhxVPxbgvgqbzZOeaPX7G719Rs35UFFLMY+v8dhXVAGX9o+A
         bud/Oi7RHE/CHLC8VdK7xvUXWI4ozouKzQWtufitRra24yjd7JguHFtVw3TA964oOepK
         X5/W2gVfQipnWmKWcmBEf6RymZrIF02zbJqLBHXG99LZJ+8nRAFZcnBMecivbvAcSmWb
         +O9UXKq6a0URTeakd/tcGzItWcnnNmsrccGRQHN8MAXdct9dnwe2fP4TSpmqBwlJCQ3u
         tUBcpeKFi5/25He0xs9kY88eaWb/sfW2OmozRu3PAmyGMjYVhfj7nUNbkK39Ff1bFQzS
         xY7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770206216; x=1770811016;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FtNij9A3CnyY9eArlj5GSFWikA3b1bHvLn2mkmp9wl4=;
        b=iRBa8EdP0gAvt4hs/tBTZp4Rt24hV+GixeWPG5OYr3P2+5ApaCuke5TTOTS5DaRbAK
         Fw9MBZGq9BXYib02IA+jucLsjZrxhmjGakjmicZbYKxyiwOG1IyXXdKQ3KmvWOQmGgey
         K0g4o2viKRDGB6kwbmzdT56Nq/SiKCIcP4NX2JuH8Ncf+yP7NULcsne0pwUoCKLiC/US
         G6bLYj45x5d835VUBYIL7zOE2d1pOiIkU+WCHKTovm2ztzTYXVdDjC3M92NuIXLDYOwH
         21zfFPFIGP18LS3HqPy0x+wkTxVnaEuVaGfjEp/sVxTTkLtRaxufGv7oR4b10GfdBTnZ
         VG4A==
X-Gm-Message-State: AOJu0Yx3aOO07BnBH003TOzBXSPTsU0vg1lksn52K5v1kLSTSur/q9xp
	waamMq7v1u4HrXXAQ3hp/40UhuPvn9h2GYWrEuO5j2QuIGEkCJXz3M5wBxXgsdAW
X-Gm-Gg: AZuq6aLEbqInlmEYP5xFXboAQOqsQ/tEKWEMKL2zkosSVKS1BRG2gSi4uNoTCnM4wBO
	JID+gA5/km71OSWIB7JbHvVxHA4PyC/giSiMLjpTbACXnYRA45fF3wFsUQPsiKsMutmyq1s+Iyx
	C0+xC0DvbKktQCnsLaAMmmTKHalV1/IzgZ9Vt972yKP35ZS6iUvS5E1O3KXGNcMAmi4behcYIBN
	luVxSduovW2+qQDI1OEO5rGYk0lzs2MK+pE3/5wvJHNNJsZ9bSAQyANNw178rJmHSPiAn6SJR8y
	Pn7BXVB7pMHLZmqf0enNnlaNRczCrLRMBmRSO84Ko85KDpGS33oD/QLMAx4ZCZJChkaTT5e90qC
	f3n3SQ9siJX5Z+6KOjZmd7A3MasPb+s0YdPHTBkX/GI2TO9rlvJxFXLKfTPlybCsg1pVuNYT1t9
	YxAkjWalnkibZF5qs=
X-Received: by 2002:a17:907:1c98:b0:b88:5ef6:17f9 with SMTP id a640c23a62f3a-b8e9ef23790mr183701866b.7.1770206215897;
        Wed, 04 Feb 2026 03:56:55 -0800 (PST)
Received: from workstation.home ([178.228.161.30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8e9feefffbsm116457666b.37.2026.02.04.03.56.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 03:56:55 -0800 (PST)
From: Stanislav Zaikin <zstaseg@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Stanislav Zaikin <zstaseg@gmail.com>
Subject: [PATCH 0/2] Add Xiaomi 12 Lite 5G (taoyao) device tree
Date: Wed,  4 Feb 2026 12:56:43 +0100
Message-ID: <20260204115645.1343750-1-zstaseg@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-262617-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zstaseg@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 46D2FE5660
X-Rspamd-Action: no action

This series adds device tree support for the Xiaomi 12 Lite 5G (taoyao),
based on the Qualcomm SM7325 SoC.

The display panel model is unknown, so bootloader-initialized
simple-framebuffer is therefore used to expose the display.

Stanislav Zaikin (2):
  dt-bindings: arm: qcom: Add SM7325 Xiaomi 12 Lite 5G (taoyao)
  arm64: dts: qcom: Add Xiaomi 12 Lite 5G (taoyao) DTS

 .../devicetree/bindings/arm/qcom.yaml         |   1 +
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 .../boot/dts/qcom/sm7325-xiaomi-taoyao.dts    | 866 ++++++++++++++++++
 3 files changed, 868 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sm7325-xiaomi-taoyao.dts

-- 
2.51.0


