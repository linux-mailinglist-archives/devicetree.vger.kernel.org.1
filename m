Return-Path: <devicetree+bounces-314304-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4nDkBsbyOGrRkQcAu9opvQ
	(envelope-from <devicetree+bounces-314304-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 10:31:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC2E6ADB8F
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 10:31:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=LLWMatNQ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314304-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-314304-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7E27B30027B7
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 08:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 791E63914E9;
	Mon, 22 Jun 2026 08:30:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D037538F654
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 08:30:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782117057; cv=none; b=d5wclf1NbbVLsG9JnHV2TB2zToDQfqQ3X4g94ux0N9n9InPgB9XCAJ3HyrcaG++WJFRc26RepxvheNxt9Ufd5r+x71OSIgyEr4Rw/5CgoJSAT61u+nTCISni6y7mvaeTZwmE/AtZZPKCcnlTBxC79ZKSlITAVnJHqytnKBLW2BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782117057; c=relaxed/simple;
	bh=LvJ0Q2kkj/DeAyfiDOPZ8HPXq2hWb/mg+ljAJ2hfyBY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=pPINb9437lA/zywu+NXWTiEq71rhJOjCu/cZEI8Fi93EvTfKM7r1JkP6BQIK0YZmu35qFCOKlHsRINE+QolWsif0pggc0aUHbE3RTBVRa18ZgFkEIA1c2rZeSo8v2hNa0cbEXnmrWccqZRc3GkwXQRn5K79FC2xoUcCnTqmP0jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LLWMatNQ; arc=none smtp.client-ip=209.85.128.48
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-49249072f03so8970995e9.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 01:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782117052; x=1782721852; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wQOCUaRpEixwkQO/jMCRS1iA3oZk4GEUUJDXJCaOQNE=;
        b=LLWMatNQVGpNnfFndOivciD4YQoF+3tfhOHm+27AO0Q5xE2iTDC/JBPU12XqSj3dw8
         JcJrB6GmKoMPiIVm7Sz1Cd56g/h9T64v7+yFoyXDOOhG7h32WQhIDdbGAF6pHS44cUxH
         bK7QWXxYwkIqcVAR8UmptWWrczViDXoKYF0MCTu9VnK8TxvigqkWpiwchhw8US9FFrDJ
         OiFmVS/um7swr8npM5iXE8LjJ/MsBjGaQmjZGClbnXlyTfPUX191s//ss/wb38QWoRvr
         K3L0A0L7JsMcq+/pth4/vj+I1c9MmBY+dRQZU7bZUjPNTJJ9ArfIhvMYxwk3fB3DCvYq
         Ybkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782117052; x=1782721852;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wQOCUaRpEixwkQO/jMCRS1iA3oZk4GEUUJDXJCaOQNE=;
        b=fqiIBVoBD7FtM1ojbgUKDMBGembaf1Xnnw7tdrqIc4FtPqBXM/XgHt3HkQbyPAABw/
         VmCvVPm1EDJON9nJnipb0r7UeSKzIh2UkyywLO0XB/vgJNv6pJIXSnYo7OZx0KQIqeCN
         d7ivetOwn9gFZdSMcSAeVqrG+e3HUbYyPyZCn9tr87O/j/bZUheMFrUWCnlgbT9P2ec7
         ZoLoOSyoUsirOf3XCLusW2UVkz5QMYn/vYPH8ZBvRf8B9reVkJ9/MgAqr9hp1W3Dox/E
         gZhpjcj2NLYnh1patZs2oI/QOTqzeO8RX0/Zl0CrXbqUrHV0+JJ8g2cMl+0ytkyBdC1w
         R7bg==
X-Forwarded-Encrypted: i=1; AFNElJ9lLx0pZPU6fr7EN9J/ZJgi9k+MBVF6p2ZvJi9DwGA/VYcGLjajFtPwD4e92HnfqP3IgOE99l+/qeTl@vger.kernel.org
X-Gm-Message-State: AOJu0YzZGlW+yqaJkwLeqahclUJPvqV/nRb19PIap0nx/78FDqD7mhkB
	8+CK4op4b9hOy4dMRghDquEp3JnrJ3dM/72h/ABVmweCmK/rA+In99JB
X-Gm-Gg: AfdE7ck6fqSWl4I+DW8jDmdm3V76plwNu9yLRQqeylZ7weHIx8aydRIH9zVpmI9b/RW
	LiRwsqxhuBMkYPDa8WTK7Zc79a2n0YkT+A2y6tkbrYcuE9PZOOBFcwT9twxF9kDsqadFDoIFn7c
	xRFSCT6wwvOUu3Nbk+GHp5pC+JYwd9fAN2A7XMpGeyGRjdkWNbHEXKe8pXHTRNgdnrI8lUlETU3
	FP8qRvRuPrdbo97Aw3RRJivImHRujIYLeLIfXnYT0ZLYvWJbsm6RNxH3vK5ZFvzEW3QC4DIrMN3
	rkqdkBq1QPAIWrpzbPiq3KvQ0enCLb1HG/qkGBtpeWmjOsDj+mgQ3bmIImjgwBVXJcOKv9+Fi0Y
	Derqkph05SkiBo3K7/clQZqEgJ1arVmPSVb6+64dN0n0Rvqp2XGh+n5HwBiubidK7G5Hjeh0eHj
	NNSa4RpvyqguDFhtw48lxOfXM=
X-Received: by 2002:a05:600c:468c:b0:492:3c7e:57aa with SMTP id 5b1f17b1804b1-4923eeb494emr220979255e9.0.1782117051481;
        Mon, 22 Jun 2026 01:30:51 -0700 (PDT)
Received: from taln60.nuvoton.co.il ([212.199.177.18])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-492494497ffsm200809105e9.11.2026.06.22.01.30.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2026 01:30:51 -0700 (PDT)
From: Tomer Maimon <tmaimon77@gmail.com>
To: andrew@codeconstruct.com.au,
	wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: openbmc@lists.ozlabs.org,
	linux-watchdog@vger.kernel.org,
	linux-doc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	avifishman70@gmail.com,
	tmaimon77@gmail.com,
	tali.perry1@gmail.com,
	venture@google.com,
	yuenn@google.com,
	benjaminfair@google.com,
	corbet@lwn.net,
	skhan@linuxfoundation.org,
	joel@jms.id.au
Subject: [PATCH v2 0/3] watchdog: npcm: Add reset status detection support
Date: Mon, 22 Jun 2026 11:30:43 +0300
Message-Id: <20260622083046.3189603-1-tmaimon77@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.ozlabs.org,vger.kernel.org,gmail.com,google.com,lwn.net,linuxfoundation.org,jms.id.au];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314304-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:andrew@codeconstruct.com.au,m:wim@linux-watchdog.org,m:linux@roeck-us.net,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:openbmc@lists.ozlabs.org,m:linux-watchdog@vger.kernel.org,m:linux-doc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:avifishman70@gmail.com,m:tmaimon77@gmail.com,m:tali.perry1@gmail.com,m:venture@google.com,m:yuenn@google.com,m:benjaminfair@google.com,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:joel@jms.id.au,m:krzk@kernel.org,m:conor@kernel.org,m:taliperry1@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[tmaimon77@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tmaimon77@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,ozlabs.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7FC2E6ADB8F

This series documents and implements reset indication reporting for the=0D
NPCM watchdog driver on NPCM7xx and NPCM8xx systems, and documents the=0D
optional GCR syscon property used by that support.=0D
=0D
Patch 1 updates the watchdog binding to allow the optional=0D
``nuvoton,sysgcr`` property used for reset-cause reporting.=0D
Patch 2 adds watchdog documentation that describes the bootstatus=0D
mapping.=0D
Patch 3 reads the SoC reset indication bits and maps them into the=0D
existing watchdog bootstatus flags for NPCM750 and NPCM845, while=0D
leaving WPCM450 unchanged.=0D
=0D
Addressed comments from:=0D
- Krzysztof Kozlowski: https://patchwork.ozlabs.org/project/openbmc/patch/2=
0260210133843.1078463-2-tmaimon77@gmail.com/=0D
- Guenter Roeck: https://patchwork.ozlabs.org/project/openbmc/patch/2026021=
0133843.1078463-3-tmaimon77@gmail.com/=0D
=0D
Changes since version 1:=0D
- Modify reset detection handle in the watchodg.=0D
- reword patch 1 to use the GCR syscon-property wording from the=0D
  applied NPCM reset binding update and drop the optional property from=0D
  the binding example.=0D
- reword the patch subjects and commit message bodies to match current=0D
  kernel dt-bindings, docs, and watchdog style.

Tomer Maimon (3):
  dt-bindings: watchdog: npcm: add GCR syscon property
  docs: watchdog: npcm: Add reset status description
  watchdog: npcm: add bootstatus support

 .../watchdog/nuvoton,npcm750-wdt.yaml         |   6 +
 Documentation/watchdog/index.rst              |   1 +
 Documentation/watchdog/npcm_wdt.rst           |  70 +++++++
 drivers/watchdog/npcm_wdt.c                   | 197 +++++++++++++++++-
 4 files changed, 272 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/watchdog/npcm_wdt.rst

--=20
2.34.1


