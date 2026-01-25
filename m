Return-Path: <devicetree+bounces-259307-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EH/XNISEdmkORgEAu9opvQ
	(envelope-from <devicetree+bounces-259307-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 22:00:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3183282718
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 22:00:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D41C9300461F
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 21:00:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22F442EFD8C;
	Sun, 25 Jan 2026 21:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZgbJgkCD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD66D2066F7
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 21:00:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769374850; cv=none; b=s5tCE2xVNhhT44z5vShv4ra9zjZPLFco4IbafKUAFGSO0ZlQCjBKxEmvahFDObxoYCs0gntQh5Do1rvDhVtSnKp9OuttEEobj5BR5PJeL3W/bcP52iO2KYCFfDc+rKtdouxaNGS3UT15rDHB9mqJGrDLh4ReNd6mogPeeRjsgLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769374850; c=relaxed/simple;
	bh=v39K6urYE3Aoesvyhn4A5NWZgDuN3AlrDnoYuDV3e2I=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=WY2lEpIy0jv89XS2YjkhbWs5bYEUv4ZRaDQg1Jw0iylInh1G6HFd12u+MqWJ1+O5PUaL1WHf9887f6XHKXl82/eO5QmM2cBRGCEOXWsNSTTi4RYwK+1ife61zgDpMdNfxeRzydW2DOwKcQ03s1EhMU4uRXWP1LMoYjEnIAaAGUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZgbJgkCD; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-79088484065so33884277b3.1
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:00:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769374848; x=1769979648; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7CeTj49j/suD4Rq67+orfSKtDdidAJEZzga/o+6BRCQ=;
        b=ZgbJgkCDB0RPjKe00vjYiYanUq4pu+R+hg9UNlF305n1lbyItgDmmoDZ3F4bvJVF57
         6EnKmGY5Vdzl6SPo+nx//Bmqs5qllR/gyuQ+U5cQc/4fn9j7sPWGzyHOQ8WB66KcirzC
         8Ajsrk/XOfrwg0iKNXUwRRNY+drswnnqJB/zWDQD1kqStMJzISe4Ag8gmluImP+u5bIr
         KXzrX68w4E35YUcila3okFCQICUvs8JTqxh264Pm3mAMlYP430ChWgTlmUbT8oz7avpm
         Q0gTpuY61CUzmNmYBorckwyjIJfrRD4ydZvqLwiRk5UcyfJqOIs+Ec9ofVlDvdWQrgnK
         aWzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769374848; x=1769979648;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7CeTj49j/suD4Rq67+orfSKtDdidAJEZzga/o+6BRCQ=;
        b=skDUOjsPvGN8RnMIGrxq2HL6g6q6wCju3WHuRb1WXsYSwkHeC3Bli8poe9yrIeZymX
         SiGkW2VH/0XBnosHpBM65YwIfKu/LJ1Xxnq+P1UTBpW6N/yhTUKyUEf3pqdxmqz/iu0d
         cvBuKUiMpmPPMyIWH51JiYh6ceLO+wBXyqUnSL2SCVw8XCnhuU6UIpyXbypX4HgfXlMs
         Qoa4mvWXuxH3QEO9b6u7PBrsppu1YoyIn2PKh2eG1ZdGdgUaMtagbaNiXehUpqbmI6rR
         QytdyUvYoLLm+PPq+N7v7hvn+WU4scOUvzb5ZRXz7xoiyiW2HnYsNsc6R9ybH97bDCsj
         h/0A==
X-Gm-Message-State: AOJu0YwfIDulQgfObI4ZoUDT2V+W4yMZjJ+9aTv8tw4HbVHbegAEyDMW
	pZ/c/W0uLdDz/dctAln+6fsXzjRjIrFIcYvY+Q4lXDH2eFqNaS/sApmN
X-Gm-Gg: AZuq6aKYjn30dMYBghS3SuOx+0vwGshKJcF51iPqMee4tx7tsrhA+EaT3bpBh5UG011
	RdpOgjtFmHzriobwwxoJaQ5dF4KS4lu1wyhtkkNkQd8usJOndlAgyabCvhv7ltMgueOrak8FMeB
	QBnKl6dG6kwN2HnAJ9niFpdyJ45TVcIgFjOOi3q1Z8/8D6bTBnsozGWtbU/Ki8O6J+bxsdohvjJ
	TyQuKbo8zp21uM/TKEjaAHAYM6UyXYiNrkYpZ1ykTfu84EMsqt/aQ7nTuH0yiFFKxo+tdCuYmNA
	3+aO4pA/yku7hJ3BXSjRjnocpphDQTUySuFpRQ7+vxaLNmTcNKqncAmMVsY8CXV1RZn3H4muXZi
	krrJOBXcV/nOmXQ29lQ/Q1kqUmqHi9VzedKZI7xZEj1g4/RdUd5SiPWqWU+Yi9LNvJRRjfaTBxA
	VmUDuH
X-Received: by 2002:a05:690c:64ca:b0:787:e3c0:f61f with SMTP id 00721157ae682-7945aa0d1e0mr41109317b3.57.1769374847540;
        Sun, 25 Jan 2026 13:00:47 -0800 (PST)
Received: from [192.168.2.165] ([2600:1700:220:59e0::914])
        by smtp.googlemail.com with ESMTPSA id 956f58d0204a3-6496855d65esm2518183d50.12.2026.01.25.13.00.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 13:00:47 -0800 (PST)
From: Anirudh Srinivasan <anirudhsriniv@gmail.com>
Subject: [PATCH 0/2] Add device tree for Asrock Paul IPMI Card
Date: Sun, 25 Jan 2026 15:00:37 -0600
Message-Id: <20260125-asrock-paul-v1-0-956085a4bd06@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHWEdmkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQyNT3cTiovzkbN2CxNIcXdMUgxSTJEPTZIukZCWgjoKi1LTMCrBp0bG
 1tQBmdGMnXQAAAA==
X-Change-ID: 20260125-asrock-paul-5d0d4b15c8bc
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Zev Weiss <zev@bewilderbeest.net>, Renze Nicolai <renze@rnplus.nl>, 
 Anirudh Srinivasan <anirudhsriniv@gmail.com>
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,bewilderbeest.net,rnplus.nl,gmail.com];
	TAGGED_FROM(0.00)[bounces-259307-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anirudhsriniv@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 3183282718
X-Rspamd-Action: no action

Adds support for Asrock Paul IPMI Card [1], which is an AST2500 based
PCIe card that provides BMC functionality. The supported functionality
is similar to the Asus Kommando IPMI Card, support for which was sent
previously [2].

Supported functionality includes UART, Booting from Primary SPI,
Networking, KVM functionality (USB Gadget and Video Engine), LEDs and
GPIO Power control. Complete BMC functionality has been tested on an
OpenBMC build available here [3], relying on this kernel branch [4].

For some reason, the Video Engine isn't always
stable when the host PC's video output goes black/changes
resolution, resulting in a hang and a subsequent reset of the Aspeed.
Applying this patch [5] from the Aspeed vendor kernel seems to fix this
issue. This doesn't require any changes to the device tree for this
device though, so I think it shouldn't affect this patch series.

[1] https://www.asrockrack.com/general/productdetail.asp?Model=PAUL
[2] https://lore.kernel.org/linux-aspeed/20260114-asus-ipmi-expansion-card-v2-0-12b72d20a9b9@gmail.com/
[3] https://github.com/Genius1237/openbmc/commits/asrock-paul-ipmi-card/
[4] https://github.com/openbmc/linux/compare/dev-6.18...Genius1237:linux:asrock-paul-ipmi-card-6.18 
[5] https://lore.kernel.org/linux-aspeed/20251124-video_dram_reset-v1-1-9d37229e4ec5@aspeedtech.com/

Signed-off-by: Anirudh Srinivasan <anirudhsriniv@gmail.com>
---
Anirudh Srinivasan (2):
      dt-bindings: arm: aspeed: Add Asrock Paul IPMI card
      ARM: dts: aspeed: Add Asrock Paul IPMI card

 .../devicetree/bindings/arm/aspeed/aspeed.yaml     |   1 +
 arch/arm/boot/dts/aspeed/Makefile                  |   1 +
 .../aspeed/aspeed-bmc-asrock-paul-ipmi-card.dts    | 131 +++++++++++++++++++++
 3 files changed, 133 insertions(+)
---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20260125-asrock-paul-5d0d4b15c8bc

Best regards,
-- 
Anirudh Srinivasan <anirudhsriniv@gmail.com>


