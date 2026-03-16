Return-Path: <devicetree+bounces-276009-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cIW9FT7Ct2n5UwEAu9opvQ
	(envelope-from <devicetree+bounces-276009-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:41:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0422965C0
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:41:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B5F373018226
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:40:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87F00382F3E;
	Mon, 16 Mar 2026 08:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AbpDotg5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A9B3822B3
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 08:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773650408; cv=none; b=TNMFuW0aWPkWqLiroJSJuw7TzpuU1tNSwcKZqt5tx8uqDL7WJGeWYeUS2NwpdQY1zI+ugfVLL9BJb9ohcmgc0a7Zw6x65v7oA6NdpFHABoOjuokZ+OVAMrj3/1yqcstjNW8FEJ3xR/qsb+HhVg2dpxm86N1VRM12zwm3DDK4MBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773650408; c=relaxed/simple;
	bh=eAYEHKIMJ1HcMJfz2kIgNpsDS5JBZWGRLVub9M3wt2c=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=YHbYljr04OlqiIzIIOP4RqlxdUImkCeMFo0RWKJdXuhM9R/HmlZkMaed8qEZ+eK83BZTplgelKpxVtRPzLsPWEYfktMeih+gI7Wr1oaCbcoXldnzQS7YgjJ8Sa4jgk7CvztFrW7BBrFRLuxDVutRJo/qrlsH1K4MyLIT2LJsUaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AbpDotg5; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2b04d051664so11476255ad.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773650405; x=1774255205; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9HzxpmNsoszjfyCRF5qB2Qo4IkmZffw/F/yON08071s=;
        b=AbpDotg59FUfaWZeTxWgshDFsfxQfapp01Kn3Gjlx8b0+cAUDpSMoffX3PE89gdhAL
         ogNEaKuPc1gx2TIHAEFqZCBVMShShkkiqEcDGr0UWu5s/CYFyrhHkyxFBheC1brQeAbq
         tfUNo0eaNGDTsyubOR5Y7fljvHW/3IPbIMe10GV9Bd1eRFDsLstXIaX/wIFgB4N8CSZ4
         MAY03cPtkWRAPqKa/W3AU+T6eI1saTPPFmfmrdk06y8ITvelE0vbLTHC1WLLyS3yC53w
         /MQlY7G5vCSK3D6pnTsmarB9ZqjECHLEnYvODXd/eUiBivcROLtm1Z0yd1+v7yU+1SwJ
         2I8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773650405; x=1774255205;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9HzxpmNsoszjfyCRF5qB2Qo4IkmZffw/F/yON08071s=;
        b=HCeFcQAc8IJNa6XN+Zwb6cPL8Ykb1tQotAN+RmVr+oevaiFPhq9EtmvmtIwj2QDNEb
         peHczgsjWfQ/yaVq7R60QuMIyNGaUk3f28zH4H/3Tz/LbjZFCz4vuMtBf5uK0iQ3IbgI
         Ng1QSlj12OLU74JNkE+kHz7UNhlVCku9tn+lNj8NnQ4M4It1BZnGYhwhBPcq9di6frMp
         nxNz4rJcK6DAgFGGMlDvsnJSx0j7XCVpOcSenrLBtw70Oin825toFjpqlXjBsrGZ97Yu
         9grNgBp1cKvYfFRQ8gIunQFy8+szbXSdqroe9wxMndv2Z85RbNuQ/4X6yoMOc/4tTi9O
         nrnw==
X-Forwarded-Encrypted: i=1; AJvYcCW+3ig31VHUFAQvmBCKIJ0CxyeWxorbhUdYF+kOfZfXm5s/9PyDC6tb9Ag17LOr0llKszMzV8Q9Mt1+@vger.kernel.org
X-Gm-Message-State: AOJu0YyqkgrE4BCP3WY06UG/wgudIlWORR60uHH+E6NnXRdnnjKPWqVM
	NBbshAi/FJ/j2UQCPnWV+YQImPhyEE3k8kCqA9Th2zL/caaLxx5S5F1T
X-Gm-Gg: ATEYQzwb9UZDgDXpEKimKlewtM8as76lUYOYmtvOAizxLFxPbwZaTuw3cDuPW4IyblL
	Y9aaU5hg68BegPW4V+j34Qs7TCA9Iwm8bY8KHj8xK7KvCIFmEmPCfZxnxOdeBjgffRj1nE2xRuo
	FkF9XfaGYTK2xaoLO1LZ/VYBoY5xf8Ey9bx5orPJdmIcqD8mOztHxWzKmNDhWyGw7NCxrZACgsQ
	kLEz5ptlE4aWulFMMalqtxR8UHx7gAfrP4FsXvOkH1YFckKVENthL8oAw7vtFixZsRXMZo4ntZz
	GnIX6OiF48jG2BPyZFceNJikj9D+UT0StUL1gMwAxwkLK4SVA/YMriaXP3uaHvZ8dPQh+eMqGps
	QlesQM5gGTSqBCOIOYhD49nHGHsfAJSnVepcMOZHAslcrFBqYJrOY/RtF5BDWXuejJQriznEJQm
	Tp0flcIvpldXaT6R9oIIk=
X-Received: by 2002:a17:902:e88f:b0:2b0:571f:6f07 with SMTP id d9443c01a7336-2b0571f7b2fmr29222165ad.39.1773650405157;
        Mon, 16 Mar 2026 01:40:05 -0700 (PDT)
Received: from [127.0.1.1] ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b0537b663csm45946865ad.51.2026.03.16.01.40.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 01:40:04 -0700 (PDT)
From: Colin Huang <u8813345@gmail.com>
Subject: [PATCH v2 0/2] Add support for Delta Q54SN120A1 and Q54SW120A7
Date: Mon, 16 Mar 2026 16:39:32 +0800
Message-Id: <20260316-add-q54sn120a1-q54q54sw120a7-v2-0-60e6182cc4a7@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMTBt2kC/43NTQ6CMBCG4auQWVszbfgJrryHYTGWKUwiIK1BD
 endbTmBu3lm8X47BPbCAS7FDp43CbLMCeZUgB1pHlhJnwwGTY0GK0V9r9aqDLM2SDqfWe+sRjk
 qW3OvmbBxkBJPz04+R/7WJY8SXov/Hmubzt8/w5tWqLDFWrMl62xzHSaSx9kuE3Qxxh/YI7rZy
 AAAAA==
X-Change-ID: 20260205-add-q54sn120a1-q54q54sw120a7-fa492b6ea07f
To: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org, Colin.Huang2@amd.com, 
 Carl.Lee@amd.com, Peter.Shen@amd.com, Colin Huang <u8813345@gmail.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773650402; l=1235;
 i=u8813345@gmail.com; s=20260202; h=from:subject:message-id;
 bh=eAYEHKIMJ1HcMJfz2kIgNpsDS5JBZWGRLVub9M3wt2c=;
 b=zNr6Nc3i639FGZXPpBVwqmmBqW2c+oIkNCAhQ+wcFEikAWujbstRmbPo7nuTs5TK0T8UqW5Uk
 wDvbiLA7VBUCdpoCNjoMFoUgFSdOZOrieNGyqmMSnmYoB5Q93D8nCRg
X-Developer-Key: i=u8813345@gmail.com; a=ed25519;
 pk=Zlg0WqpCw4qbswOqamTBTXIchwR/3SnYZpy7rjaGMdQ=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276009-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,gmail.com,microchip.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u8813345@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6D0422965C0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This patch series adds support for the Delta Q54SN120A1 and Q54SW120A7
1/4-brick DC/DC power modules with PMBus capability.

The datasheets are not publicly available but are available under NDA.

Patch 1 updates the devicetree trivial-devices list.
Patch 2 adds chips support under q54sj108a2.

These changes have been tested with both modules on hardware platforms
supporting PMBus over I2C.

Signed-off-by: Colin Huang <u8813345@gmail.com>
---
Changes in v2:
- remove usless patch.
- noted datasheets are available under NDA.
- modify driver base on reviewer commment. 
- Link to v1: https://lore.kernel.org/r/20260205-add-q54sn120a1-q54q54sw120a7-v1-0-09061ecacfc7@gmail.com

---
Colin Huang (2):
      dt-bindings: trivial-devices: Add Delta Q54SN120A1 and Q54SW120A7
      hwmon: (pmbus) Add Delta Q54SN120A1 Q54SW120A7 chip

 Documentation/devicetree/bindings/trivial-devices.yaml |  4 ++++
 drivers/hwmon/pmbus/q54sj108a2.c                       | 18 +++++++++++++++---
 2 files changed, 19 insertions(+), 3 deletions(-)
---
base-commit: 18f7fcd5e69a04df57b563360b88be72471d6b62
change-id: 20260205-add-q54sn120a1-q54q54sw120a7-fa492b6ea07f

Best regards,
-- 
Colin Huang <u8813345@gmail.com>


