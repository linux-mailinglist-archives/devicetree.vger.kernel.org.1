Return-Path: <devicetree+bounces-275023-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yFp7G+3Os2n2awAAu9opvQ
	(envelope-from <devicetree+bounces-275023-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:46:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D14D627FEBF
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:46:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B6DF5301DC06
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:46:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3DA5351C0D;
	Fri, 13 Mar 2026 08:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fnEcNa+j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A60F8282F02
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773391594; cv=none; b=p1iARmYnUFFegyKH0mGW+zo9egwpsycbLslqmx5Q9SYF4Cz+r1t1FggJuu30TkH5aQBkjXQVgM1m+krJCot/NjtxxguIa7fx5xReLyFc8CwDpZ3Ta96lLygTiuSHammMCbFVVBx2/dwgbCjoe3EqADYx9sEr2fprKNCL/67lU2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773391594; c=relaxed/simple;
	bh=hg57UMGrkK/3Lcn/UzeoB+UZAJIiHjX5PwzYE/2k5IA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=poa6J6Aii5XCNxotpX9VY217LXBd/GYvAiDmpLI2rcSdXoHl2qljsAMG2QmQBBDUQ6CNJBdCtOdLlsra95rPPGLPSYwtZmz2u524DN+Du6EKEQ04SMp4reHf7EdeNDTdBCbIfAowq/SbqWSTSbNF4NMWCl8z3sszvuPiKH3UQAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fnEcNa+j; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-8cd7a75c680so293155185a.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773391592; x=1773996392; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mjNcWwgkDEc/wZH33Xnfxi5l4V1B4L2jFZqML+Flhc0=;
        b=fnEcNa+j97G/TQ0ElBlGuV3lSanfJ7MwycmI6ZMCp4pSsL3BlRMZkQbGbSBKDYrnsK
         Uw7RDlzk58fZxRYbHO3iy4dARLstBpsKuFSS/ngfCn6BAOUtqNbYvEvYM0LC5SP4oGON
         HseCt9/iIERXO/H7pC4q8A8+LDhUuLjjwhNCnOC9nVHwhoCv1pjFA/SiegpJZf2ZRX/a
         Z80QJR/RA66BTHNjE+en7Wg8FdUIuTKuHX3b8UBwZzZVz5ymQIZRI01TNiwTuXMNMmxm
         PYI+oXmVohsk/gQNjXtx+AHK0+8qlg6X6DdR0rt3KwQY1IXe/Xrfg1Mt6h8CJ6Pf/N8y
         MUwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773391592; x=1773996392;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mjNcWwgkDEc/wZH33Xnfxi5l4V1B4L2jFZqML+Flhc0=;
        b=ZGvcEOnRR8eJoWypgLRV5bbHCx6CfaMlRLLw2ZfTf69081rP6C2EglRj6ykGm/duDZ
         YYjGKsBco+epMTPy6THB24HeshJFdjQNqs0PDSLZGjp16cmb5DHfh/n/7bzoxRiSbQJA
         6kh9x+CHF79t7CEPMzUD8oQzvGjeRKIxe3UgliE5zm7oGoY3XDHqgFsdKdUH2DPXk+Fo
         OZ7gaMgZTJf3YrrAW70JC1maQRu5pINT2+ARNxvDyktNz0bLFtE3wLzfYQ2mmbgODVDg
         fNM5g7u/S1fRysDyW2yeRtwSWfC2uDhEofM1VC2DVKuK+ZHpuhABeOo2DyiGRVWNc6qL
         sK1w==
X-Forwarded-Encrypted: i=1; AJvYcCV8KcknX5hp3y9vE+ECCDu0bZ6LP2/BEH7RjnLnkO1XaJHiLiMYIZMRvwCqWY7iulyZG7MmRaC+7yLi@vger.kernel.org
X-Gm-Message-State: AOJu0YxGzBAO4wJpKlTJrLIUxFvoN/RL6OvfvHEOo3KVnG3wkOW/hePY
	gK3bamFutvt8lzVsSGMthZf2JABmK4UD2Eq7KW9WGWa4TTy3iCupfNPi
X-Gm-Gg: ATEYQzxO9v26GQkXa8mSwY9I2Cl2p+KWryfyP01U2LFr/Tqae2ca+AmcYhe9oUlb8bV
	5hpSJ/IOiuiJJO2lAOTcMwFIoxxmqb3vmW2JtqEzdVcJcz1CC/tY8rykPzrmNHoGTDeM00so3MR
	MD4RM4Foa+c1AucoolwqVCPcNS5LYqhbsqWQSrYK8nR8HouBobRTzuP1uzqOijkV/do/QvroxNa
	1dIG2s7WqkKUO0HawBJVOo+kYOQebC7hBF3tp/dlaiT4YDyhR8AmFyFf51pUFJfLvKkf9HOFrz9
	GXq249tugPCKfZGFX0uHWLFkT3vinBRxh0v47kecFdr8RUgoahVtBCZW9HcG21Cq8CefpzW1+oI
	HfaifUODWLc3Jg7gpR3oyIzaeBPfaoNej5H19FnA9Y0kcy46xPiAWej1Oa9lATtZpLDcDEBT0gn
	j7ofA9bJgzNSmAMpGSypQEFJ2C
X-Received: by 2002:a05:6214:262c:b0:899:a586:2923 with SMTP id 6a1803df08f44-89a81fd32c0mr35033836d6.28.1773391592387;
        Fri, 13 Mar 2026 01:46:32 -0700 (PDT)
Received: from m91p.airy.home ([172.92.174.155])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a65beb131sm50142206d6.13.2026.03.13.01.46.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 01:46:31 -0700 (PDT)
From: Bo Gan <ganboing@gmail.com>
To: linux-riscv@lists.infradead.org,
	samuel.holland@sifive.com,
	david@redhat.com,
	palmer@dabbelt.com,
	pjw@kernel.org,
	gaohan@iscas.ac.cn,
	me@ziyao.cc
Cc: lizhi2@eswincomputing.com,
	hal.feng@starfivetech.com,
	marcel@ziswiler.com,
	conor@kernel.org,
	kernel@esmil.dk,
	devicetree@vger.kernel.org
Subject: [RFC PATCH 4/6] riscv: select RISCV_ISA_XPBMTUC in STARFIVE and ESWIN SoC
Date: Fri, 13 Mar 2026 01:44:05 -0700
Message-Id: <20260313084407.29669-5-ganboing@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260313084407.29669-1-ganboing@gmail.com>
References: <20260313084407.29669-1-ganboing@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275023-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_NEQ_ENVFROM(0.00)[ganboing@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D14D627FEBF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable the XPbmtUC feature for Starfive and ESWIN SoC

Signed-off-by: Bo Gan <ganboing@gmail.com>
---
 arch/riscv/Kconfig.socs | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index d621b85dd63bd..0584511707c7c 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -14,6 +14,7 @@ config ARCH_ANLOGIC
 
 config ARCH_ESWIN
 	bool "ESWIN SoCs"
+	select RISCV_ISA_XPBMTUC
 	help
 	  This enables support for ESWIN SoC platform hardware,
 	  including the ESWIN EIC7700 SoC.
@@ -56,6 +57,7 @@ config SOC_STARFIVE
 	select PINCTRL
 	select RESET_CONTROLLER
 	select ARM_AMBA
+	select RISCV_ISA_XPBMTUC
 	help
 	  This enables support for StarFive SoC platform hardware.
 
-- 
2.34.1


