Return-Path: <devicetree+bounces-317588-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aIUjMPOVQ2rrcgoAu9opvQ
	(envelope-from <devicetree+bounces-317588-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:09:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3506E2A6C
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:09:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sifive.com header.s=google header.b=kIdMOfcJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317588-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-317588-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=sifive.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E891C300BD51
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:46:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27F8E3BFE25;
	Tue, 30 Jun 2026 09:46:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3CF7392823
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 09:46:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782812809; cv=none; b=Z1eUI2dWCTwBI1F3a6WvDx+287OUm8ne6p70l+DD815m3wyWiIH0c1hrZDHixR0yV++rtVYcNi2Fq308FW5M6uAsU06PxOfYOQkVT3mvMqwnIQuixdRA/nTPs1D7erJebUB6X4JD6+QZsy11/Nvk75PFMfys7E657fESE06gxz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782812809; c=relaxed/simple;
	bh=CaFoSNXuBKxAvWcQK+MKKdLsqaO7OxAaJlieCaXIKxw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=btBuAEJJA4jaAvlVGzsl1U1gRCx4qHPk4gQXchzyiUOVYksm0dI1FjTKgQgdpgiMDSG2k02do7LMidfZLzssvNVO8H6NdWKdcVtC4JnuxGKhZTwGVDroW6Rts8eHZJIzfKw3E42qDbAWIOAXOvzyECA9tI/STULXcHs/w30u3pI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=kIdMOfcJ; arc=none smtp.client-ip=209.85.214.173
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2c8c30492a0so36261885ad.2
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 02:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1782812807; x=1783417607; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=y471ptHCO/F1YjHTOq/QY0bSdLfzgUbegLFtHTg4rN4=;
        b=kIdMOfcJ1BJu6yqMubNaqLIRwhAH9UpL+jWIcqh9YhghVtta+5/F0F9IiA1VS498Vu
         Y43wAPnBuRTlynou0mmSpb/LhKvj8R7SAtO8tvjnzQ0EHD3l99K9WQ30c6tJj7QcSr+1
         pIcOZEHtxc1IGU9bNHhApIvNq7hr7idZit9ui1h7cI6GlnD0zsoilqinqhEMJJc18qYQ
         0Et8fh8Oug0smR4EVL1oUpW2K+ULL/wmDoyCJBc2KMSZcuMi83iX6naGv3TQQh3SCFdN
         r7GT+XBUAZtgb1WNH3rMs9VUkqxi4Me2XlYjQPGO9MdUrbJUlLBInkYoMdiPeJ+r7YMa
         g4dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782812807; x=1783417607;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y471ptHCO/F1YjHTOq/QY0bSdLfzgUbegLFtHTg4rN4=;
        b=VmdY0xdr9nwjj1/7zSIupYSDiMhVUtfWY7KUCkaT/1u/PPpUA4KMMvMMe0AzIfEV+U
         QkRMmw+7uVWqlxUp4fE80UyDodPLLw40jBReZhTkcsR/IH/eqN7cdyQCKGgxVD+P95ZI
         7Plgx3qnYe4ZeD+nTwRr/Mlyc7jAdWv9n1VHEzAOaJH+5R0YyZUhDTv6RZ0a7aee14z3
         mXqNUax1anSeFZmscQZ2ukYagQ3/sIgypu+Am+ltISyjBPl3Ie0JvXyanx9Qkbf4T/uN
         ONf12ou9Sy8MNmQjCFcpDTC/7FrEfXZeHXcHxNKND/kP60RAia1SwShSTwEaq/JQAh1t
         K06w==
X-Forwarded-Encrypted: i=1; AHgh+RrGt2Rx8UexT8aOZMVFBbAF/RkC97521Z9LYPmSE+CcGMBLaqajeh3jwafrcER8dZctOMhSXiye8nBW@vger.kernel.org
X-Gm-Message-State: AOJu0YzdY2+LpfREUM6u1ECRRfiyhsP9V+c7uAY0kdtazvviE+YwE5yp
	PvdVseYbAuHD0Mjo0FvorbEul2e1PiyxL+bFokAsgIH3hqqNwt75bYK1dDm5zzPWFZb4Y1Su/Gl
	8elDZ0TDVkIherUDszOXsVFjsEdgmcGmnFilVjr8jqhjhIRyyf76m4P7H0B2eRSpe/ErKpITuY1
	tHBSgFdwj9rKiQhS00RrSZyGZrJd0jLFeFBbhqCnVSMTOrbOd6DNCi4g==
X-Gm-Gg: AfdE7clj9I814RN1OpaWqAFgFpbwI+T2jAs9L0PBAmm5btqGAjYawCCW/gqAND0UroN
	cMUsleKBIm/4yPxuYPH4Winhh1K1rhFBEW0Rd+/u0PtBZM6Hd1Ba0hZ9d+sy4VQdrrmW3rMjScJ
	giDptQOElqvygOd2vUMWBJ39NiGQp3cDScYKVIS1ezQEEr450VbZLT9TlNQk+L5uii5RkNIBe9/
	mXKOHM7Ywh1GP75ES7EsqGIJ0FuUsO7EKWv5RHqMBIq1uJuVLr2lGgmUdntpaS2BiXgUqSIDEpQ
	CVx+UK7YEABjaJbhBvnPJrpqpcLrCL9zM8KAya7VTpdUWngLKFMNVJQv5NkBGMq3UHN5zFjKmqR
	dhBwXkrCZ5dYOV3H+qwhoQNdCHaRoqm7mtOPEK9c4k6glvQ7Y1OVaUCUkPOo0PRi5P0wn7Lx2Ri
	7VIhPbHJWuPSApFCKBjKSzVPsgx9mpp+8=
X-Received: by 2002:a17:902:e5ca:b0:2c9:e6d7:fbb4 with SMTP id d9443c01a7336-2ca2ea1a4fcmr20740095ad.31.1782812806775;
        Tue, 30 Jun 2026 02:46:46 -0700 (PDT)
Received: from EricL-ThinkPadX1-TW.local ([136.226.240.181])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ca37c87bb8sm10144675ad.30.2026.06.30.02.46.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 02:46:46 -0700 (PDT)
From: Eric Lin <eric.lin@sifive.com>
Subject: [PATCH RFC 00/12] rvtrace: Add SiFive pre-ratified trace device
 support
Date: Tue, 30 Jun 2026 17:46:23 +0800
Message-Id: <20260630-dev-ericl-riscv_trace_support_v3-new_sifive-v3-v1-0-c9c1ffc64e4b@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAG+QQ2oC/yWNQQrCMBBFr1JmbSA2aUG3ggfoViS0yURHJA2ZN
 Aqldzfq8n34763AmAgZjs0KCQsxzaHCfteAvY/hhoJcZWhl28teSeGwiHqxT5GIbTE5jRYNLzH
 OKZuiRMCXYfJUUFRC3SntD5PuvIMqjQk9vX/BCwznE1z/Iy/TA23+pmDbPoNqHEiXAAAA
X-Change-ID: 20260630-dev-ericl-riscv_trace_support_v3-new_sifive-v3-e4534f9b45fd
To: Mayuresh Chitale <mchitale@gmail.com>, Anup Patel <anup@brainfault.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Samuel Holland <samuel.holland@sifive.com>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Greentime Hu <greentime.hu@sifive.com>, 
 Eric Lin <dslin1010@gmail.com>, Eric Lin <eric.lin@sifive.com>, 
 Nick Hu <nick.hu@sifive.com>, Vincent Chen <vincent.chen@sifive.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782812801; l=3860;
 i=eric.lin@sifive.com; s=20260630; h=from:subject:message-id;
 bh=CaFoSNXuBKxAvWcQK+MKKdLsqaO7OxAaJlieCaXIKxw=;
 b=+JaqWrH9g1HtWjQX66RV/3stjNQ/yueSV3AGgI/hetGiELFrnEk5F673KRs9QzUo4Amo5EBBO
 IxVFZ3hSKhTAKPBqULzO7INK6HhjEyRxqP64ZNZOShnZamiSsf/VK4R
X-Developer-Key: i=eric.lin@sifive.com; a=ed25519;
 pk=RLPQN6uNJ1cSM8GhP+L++2j3pf5ohznFbkNdwIO1XDw=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sifive.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-317588-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mchitale@gmail.com,m:anup@brainfault.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:samuel.holland@sifive.com,m:alexander.shishkin@linux.intel.com,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:greentime.hu@sifive.com,m:dslin1010@gmail.com,m:eric.lin@sifive.com,m:nick.hu@sifive.com,m:vincent.chen@sifive.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[eric.lin@sifive.com,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com,brainfault.org,kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,sifive.com,linux.intel.com];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,sifive.com,gmail.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eric.lin@sifive.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sifive.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BA3506E2A6C

This series adds support for SiFive's pre-ratified trace devices on
top of the Linux RISC-V trace framework patch set [1].

The pre-ratified trace hardware is not fully compliant with the
RISC-V trace specification. The key differences are as follows:

1) The pre-ratified trace component major version is 0, and the
   implementation register bitfields are different. PATCH 2
   introduces a get_impl() callback to translate the pre-ratified
   hardware implementation register information into the standard
   RISC-V trace implementation register format.

2) A pre-ratified trace component might support different trace
   sinks, and its trace sink availability information is embedded
   within the implementation register. PATCH 3 introduces a
   get_data() callback to retrieve the component's supported trace
   sinks.

3) For routing trace data from a source to an output trace component,
   the pre-ratified hardware needs to configure the current
   component's control MMIO register, which differs from the standard
   RISC-V trace. PATCH 4 passes 'struct rvtrace_path_node' to the
   start callback to provide full path topology information,
   supporting data flow control for both ratified and pre-ratified
   trace components.

4) Unlike the standard RISC-V trace RAM sink, which is an independent
   device, the pre-ratified RAM sinks are embedded within the trace
   encoder or funnel MMIO registers and utilize a different register
   layout. PATCH 8 introduces 'struct rvtrace_ramsink_regs' to
   abstract register offsets, allowing pre-ratified trace sinks to
   leverage the existing rvtrace_ramsink_setup() functions.

This patch series has been tested on the HiFive Premier P550 board,
and the resulting trace logs match expectations.

Note: The PATCH 12 reset RAM sink write pointer on every context switch
      to avoid wrap quickly.

[1] https://lore.kernel.org/linux-riscv/20260429125135.1983498-1-anup.patel@oss.qualcomm.com/

Signed-off-by: Eric Lin <eric.lin@sifive.com>
---
Eric Lin (12):
      dt-bindings: riscv: Add SiFive pre-ratified trace components
      rvtrace: Add pre-ratified implementation callback
      rvtrace: Add pre-ratified private data callback
      rvtrace: Pass struct rvtrace_path_node to start callback
      rvtrace: encoder: Add pre-ratified support
      rvtrace: Add pre-ratified trace sink config
      rvtrace: Add pre-ratified trace funnel driver
      rvtrace: Introduce struct rvtrace_ramsink_regs to abstract register offsets
      rvtrace: Add pre-ratified ramsink setup
      rvtrace: Add copyto_auxbuf callback for pre-ratified encoder and funnel
      rvtrace: encoder: Add probe success message
      rvtrace: Reset RAM sink write pointer on every context switch

 .../bindings/riscv/riscv,trace-component.yaml      |  73 ++++++++-
 drivers/hwtracing/rvtrace/Kconfig                  |  16 ++
 drivers/hwtracing/rvtrace/Makefile                 |   2 +
 drivers/hwtracing/rvtrace/rvtrace-core.c           |  42 +++---
 drivers/hwtracing/rvtrace/rvtrace-encoder.c        |  54 +++++--
 drivers/hwtracing/rvtrace/rvtrace-funnel.c         | 127 ++++++++++++++++
 drivers/hwtracing/rvtrace/rvtrace-platform.c       |  32 +++-
 drivers/hwtracing/rvtrace/rvtrace-ramsink.c        | 166 +++++++++++++++------
 drivers/hwtracing/rvtrace/rvtrace-ramsink.h        |  13 ++
 drivers/hwtracing/rvtrace/rvtrace-v0.c             | 130 ++++++++++++++++
 drivers/hwtracing/rvtrace/rvtrace-v0.h             |  65 ++++++++
 include/linux/rvtrace.h                            |  26 +++-
 12 files changed, 658 insertions(+), 88 deletions(-)
---
base-commit: 79783024b7bd12897e21fecfaf6ac7dad02a8f0e
change-id: 20260630-dev-ericl-riscv_trace_support_v3-new_sifive-v3-e4534f9b45fd

Best regards,
--  
Eric Lin <eric.lin@sifive.com>


