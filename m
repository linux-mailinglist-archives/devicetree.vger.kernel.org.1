Return-Path: <devicetree+bounces-318649-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0pBJLNgWRWon6woAu9opvQ
	(envelope-from <devicetree+bounces-318649-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:32:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BA26EE23C
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:32:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=lIgs1wBi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318649-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318649-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8D6CC3031902
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 13:25:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89941481254;
	Wed,  1 Jul 2026 13:25:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi2-f3.google.com (mail-oi2-f3.google.com [74.125.231.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40152481253
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 13:25:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782912341; cv=none; b=dBVQ5AlYFrC5qlgd92wTq9nQ6+x7JlVwT4MTXWzUnDcYMu4NslWhVXQEzsJjb/PE16P2Vwy771S6a9SqE6JFjPxgF6rcyUjR2k62s939vLlKwj64dyMuYO38y5Lqp7siFMmKj0qIF+WAIuRJerWnkWd0QTTzn9JFQcHXpgb6s4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782912341; c=relaxed/simple;
	bh=yNoLbb0TeKretzaEu3X7NPlkPt7hTaBNJoeGzZ/1W6k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=K284b3vJRvlQ1ehcVignEMtcKRs+XPyFzqAlv5HnDe8CRBIdCvq0G6jsvv5xujVRFF7i1paJeHitCDlaltnpOxaxEgzdBKL/4eKVZpJf23TnbrTox2/G1yTQ6c/GTOIAtkUkfw8gJVuKq/XODaN9B7QhoN2xbvm1b5Qf02c1bIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lIgs1wBi; arc=none smtp.client-ip=74.125.231.195
Received: by mail-oi2-f3.google.com with SMTP id 5614622812f47-4893ebdbfbbso128789b6e.1
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2026 06:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782912339; x=1783517139; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7dk9Opzu24JNP4K9nU0Mr28PXO88jXoMMk5rdIT57/w=;
        b=lIgs1wBiBWO1v09JQe2qItAmtKycY4pYafho1u2bE37ROUvY7sZaiwaHeJYU8dC505
         wAHiczIsgAb1hNUbzxyuqD5Rcii+/p1DqQqOkngTeZg9CTYTtGYt1fazC2Vhtc4sdtiY
         76Kr0DoHlBml3oX4149HH9yGzqZyxZ8pU9+1iKOz4LZ3LGr3L4uELLZS+2rMBCnjwNK0
         K7kZjrh0VaclKELXGexLnpeARtobk6cFY5DUfTK5AbB2rD6yRGOooAJPrUt307cGm+cP
         MO0mU3fVpCjaG/sR6HIhUo8J+JzNLA9VvjOysAcBqhhFnFajJCGeJ8kY3G0BYZb8Nr0f
         CmiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782912339; x=1783517139;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7dk9Opzu24JNP4K9nU0Mr28PXO88jXoMMk5rdIT57/w=;
        b=iLsc1+3DL8R4V6dVzIU9fmjViqyaojUqCcx7bNUFANu2bn4+c+BX9+PX1mHxbEDXHu
         Sbd+xcYh+G3YywNftzuHftC6yVpYCaDLSvbz0x7IVC2nexqxlXzX+oipU6QTCQ1Xecof
         WsCSny9Kjhu0L+Iu498DL7g74JNcNFCc02bkDBhJEf6834Vr3uTvGvscHTUiO9Aqv11B
         u48mUX8fhLBJGgom9HL7h4LPRgJ3aHNV20qH1fwQxYEQrLC8R899TLW7fE0lJo6x53ob
         O5lORIs3VuFXbLPvqeDJrDm9vqHHAs5bM8cKzXroWL5K3uwLLaijcDyExF5dJheprPLm
         Rjjg==
X-Forwarded-Encrypted: i=1; AFNElJ/TRL9mcvgf3cJtMABZ/yGZD1Edk7OpAc1CC9SPt8b3OHFd4V/CrU+eixEBWUbodbkrYlreiWgn6jlH@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9pWZKjek/G1ceCl5Gw9H/MmSeKISykV/LbzjUUJ7A7pYx9om9
	Sg7+VKW/ATUY1rvTxB/dCARtpR0EIrbgdqYqv1QjkjzjOCThzbrLIsf0iBo+fho/b13pe4P6
X-Gm-Gg: AfdE7cn08YNg5P3xGr7Z72UcAktj3ZpOC0xibbFpAFMy7wiaO9HhMLReS/tyzC8595k
	ntu5EIfmTtEV4g8/zuy3MOe+a33eFHu5TyWaBPAnL4OF4coiOywOiBxPSJPEgIH+uoIRPTYPAMF
	mpm9KADw2/aSnU/7km9bI7RauTqp0KLmQnDMV6ZGr4eIIWOqs0FxRqmNIrKqyc3h/zLdNma71pt
	n82lu4FvcLZdvXfxWL+9wEM8ANpvABF3p04sn/6/gaqs7sgbG2z7ewZxlSRLPxybP4BnQAAnTMd
	cC1e4vTo49957+GWKnZgJTnlgGybOng9U/r6Q2cvmI8QdoJYwk1/gLzhh7PKqm8cPraA8yJNsxS
	t9N3HdEzMtgaWR+JxJmnHieJPg9sWDVWpkVDGLSCQOMcl4JWeuRO6FRgFlm/1w48jiAeBu9BpIn
	hvsNh/HkCFKiQhtORuQUm41TrOb2X8Vf2EjTgYbws59HzVrhRPc9/VKp8=
X-Received: by 2002:a05:6830:348a:b0:7e9:e5df:5ee2 with SMTP id 46e09a7af769-7eb3cedcb83mr899113a34.6.1782912339110;
        Wed, 01 Jul 2026 06:25:39 -0700 (PDT)
Received: from ubuntu24.. (dsl092-249-254.sfo4.dsl.speakeasy.net. [66.92.249.254])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e9ec34f898sm4938144a34.27.2026.07.01.06.25.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2026 06:25:38 -0700 (PDT)
From: Xing Loong <xing.xl.loong@gmail.com>
To: Jens Wiklander <jens.wiklander@linaro.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Sumit Garg <sumit.garg@kernel.org>,
	op-tee@lists.trustedfirmware.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Xing Loong <xing.xl.loong@gmail.com>
Subject: [PATCH 0/3] tee: add MbedTEE driver
Date: Wed,  1 Jul 2026 21:25:11 +0800
Message-ID: <20260701132514.186953-1-xing.xl.loong@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,lists.trustedfirmware.org,vger.kernel.org,lists.infradead.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-318649-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jens.wiklander@linaro.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:sumit.garg@kernel.org,m:op-tee@lists.trustedfirmware.org,m:devicetree@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:xing.xl.loong@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:xingxlloong@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[xingxlloong@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xingxlloong@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 40BA26EE23C

This series adds a Linux TEE driver for MbedTEE, a Trusted
Execution Environment for embedded systems
(https://github.com/mbedtee).

Two RPC transports are provided for systems where platform
firmware or board configuration has already established the
REE/TEE separation before Linux boots:

  - ARM/ARM64: SMC calls and GIC SPI notifications (TrustZone)
  - RISC-V: shared-memory ring buffers and IMSIC MSI notifications

The driver implements the TEE subsystem interface (tee_driver_ops)
and provides GlobalPlatform TEE Client API support, dynamic shared
memory registration, and tee-supplicant support for REE filesystem
and RPMB operations.

The series is structured as follows:
  [1/3] dt-bindings: vendor-prefixes: add mbedtee
  [2/3] dt-bindings: firmware: add mbedtee,rpc binding
  [3/3] tee: add MbedTEE driver

Xing Loong (3):
  dt-bindings: vendor-prefixes: add mbedtee
  dt-bindings: firmware: add mbedtee,rpc binding
  tee: add MbedTEE driver

 .../bindings/firmware/mbedtee,rpc.yaml        | 221 +++++++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 Documentation/tee/index.rst                   |   1 +
 Documentation/tee/mbedtee.rst                 | 155 +++++
 MAINTAINERS                                   |   9 +
 drivers/tee/Kconfig                           |   3 +-
 drivers/tee/Makefile                          |   1 +
 drivers/tee/mbedtee/Kconfig                   |  20 +
 drivers/tee/mbedtee/Makefile                  |  11 +
 drivers/tee/mbedtee/core.c                    | 236 +++++++
 drivers/tee/mbedtee/mbedtee_drv.h             | 269 ++++++++
 drivers/tee/mbedtee/mbedtee_msg.h             | 219 +++++++
 drivers/tee/mbedtee/rpc_callee.c              | 609 ++++++++++++++++++
 drivers/tee/mbedtee/rpc_callee_arm.c          |  91 +++
 drivers/tee/mbedtee/rpc_callee_riscv.c        | 203 ++++++
 drivers/tee/mbedtee/rpc_caller.c              | 539 ++++++++++++++++
 drivers/tee/mbedtee/rpc_caller_arm.c          |  66 ++
 drivers/tee/mbedtee/rpc_caller_riscv.c        | 192 ++++++
 drivers/tee/mbedtee/shm_pool.c                | 105 +++
 drivers/tee/mbedtee/shm_pool.h                |  15 +
 drivers/tee/mbedtee/supp.c                    | 310 +++++++++
 include/uapi/linux/tee.h                      |   1 +
 22 files changed, 3277 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/firmware/mbedtee,rpc.yaml
 create mode 100644 Documentation/tee/mbedtee.rst
 create mode 100644 drivers/tee/mbedtee/Kconfig
 create mode 100644 drivers/tee/mbedtee/Makefile
 create mode 100644 drivers/tee/mbedtee/core.c
 create mode 100644 drivers/tee/mbedtee/mbedtee_drv.h
 create mode 100644 drivers/tee/mbedtee/mbedtee_msg.h
 create mode 100644 drivers/tee/mbedtee/rpc_callee.c
 create mode 100644 drivers/tee/mbedtee/rpc_callee_arm.c
 create mode 100644 drivers/tee/mbedtee/rpc_callee_riscv.c
 create mode 100644 drivers/tee/mbedtee/rpc_caller.c
 create mode 100644 drivers/tee/mbedtee/rpc_caller_arm.c
 create mode 100644 drivers/tee/mbedtee/rpc_caller_riscv.c
 create mode 100644 drivers/tee/mbedtee/shm_pool.c
 create mode 100644 drivers/tee/mbedtee/shm_pool.h
 create mode 100644 drivers/tee/mbedtee/supp.c

base-commit: 03e2778d1f11de9260543f969e9e888a1c2bf830
-- 
2.43.0


