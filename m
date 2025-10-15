Return-Path: <devicetree+bounces-227147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCB7BDF1C4
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 16:39:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9A7F334B22C
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 14:39:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCDD1284B2E;
	Wed, 15 Oct 2025 14:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OVvXBITg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5A121B9F5
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 14:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760539162; cv=none; b=JE3f+JAUQektIgBdY2YVyCYQnP9rt3HcOs7MO5UctTjneI/L2Li6ItCKWpBjezPq54tByue/5msNC980/5hgdgZlhF11AMCw5V8UE1jhIMmg1sWS2lepsTnFB7iz3CCOrk+5vQEtjoCNDlSRVYt0MuO9XACGpwqLllXpT78B9ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760539162; c=relaxed/simple;
	bh=SlngsQQxcONRtHhTs1DZZ1H59SrvYbvg4ov1vmkq0Bo=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=O85iv23uVleYXS3flSHofDg4EHmnT+wvbJkLH/FI+QknsHY+7lk4uzgAfjeJ7h6VjZnWyyL6awmIjVQqFnot19qNWarziVPZKGvB33WPW8OMTiv188gKrb/d0QbkBh73D9oa5NvBBwe7vnEbxpMV7xdWgE8GRqI6n1u4aE9wqxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OVvXBITg; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2897522a1dfso62277335ad.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 07:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760539160; x=1761143960; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=ouWcSpiIf9dLpvZnWLKHc0VRpVvUzoJh4rEYwTYJ/q4=;
        b=OVvXBITgrwxPD748yT8i5mBEbmmV5OHKzvU4j7iK+1GgksviN3fm16GxV86fcVRHqa
         KVHqR4V3m/IeqbtEOUN4vk5AR26HmRQ5SetugQA2DHw+HBUslISfVWQo1E4vN1iKBCTf
         1Wv/nMcBsdew5pqaV1FGVB2VD0+JVlKrJg3gSMxw9QoGNlBfs9HgwZH1G5cjId3vruJE
         PjDaW2BHoc+kclOhtMPjNMQrlpYQxlodF05NcVRt5KTpECIb4VgJ7LV72+jQdjq6Zzfo
         AGN79q6MU+oE2MQ9IqGpGUf2FKv77JPGnZrnuETx1FcJD+A7Dpth5u+NLi5hjNZyMbFi
         dPhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760539161; x=1761143961;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ouWcSpiIf9dLpvZnWLKHc0VRpVvUzoJh4rEYwTYJ/q4=;
        b=eO3cKtsJQ17pWOst79baxxoQG/Tm/p28JwV/ZwUDjLP/mRhec8XahNdn5gdk/drTx8
         WzRwkjNoEB6I++6BT6FP5FH/IQZ10dPNz2eDbVnhGW+khdmPljmWOfgrAAYpuIhlxz/4
         guxw37JrA5C5kIuzvgGsh2VRCrjljLNhD9QM17Bx0RJm6blzZrjeT3SjVOWPMks47l4W
         3pNmq1CvpdYBe6glaDNu4JPpo9wVBi1o/BodM2V7SVRyNVAv1m6Dc5YFv/bJ0vCdvzf1
         GRR7TTXNe7Ri3kmwSA5rrtvuMEoF19F/xhdzrfSbODhdtx//k3jp6Rc9TDY03mubG24j
         ujzQ==
X-Forwarded-Encrypted: i=1; AJvYcCWsAlU+kAEg0P+9Qj4Lp+qAGgxM9s7U9ePn2QGi+XI5tqB2UCikRCvOJuUvWBymS5Kq0LgGi+VdNigw@vger.kernel.org
X-Gm-Message-State: AOJu0Yyiq/JXt6Us0swmxItYUWWGrbkPQl6r/+QPlEWuno8U1eEZGFt/
	aEASQfRN66DmC41NUGmDvfaGskzBtw9MvIidsCYDzQCw9pgBVTlWzMbH
X-Gm-Gg: ASbGnctZ8LNzhL+IlIqY3iDbhaO2cqEsx4NqUBhkJh5ock9TRnESxYFBP3rzVQNi9Zq
	OdDoFD7Db+hayfXe1RX8Y9oT8qBjVOAmun7fx/ZQL3gMMsy8jj6W5bRC+UE1d2COYcvPihu22rw
	gueEjrDDX5nk+i/QQBRQIoa19f/V3eqOGN9qxR7H08KVpKKiSYLi8frDi4SUNXaga+wSodXPirT
	XFG3YsNXGOlMsPRp8NzCsmtOcaNayuWRYnEPw7D2e50mit6omv2NlFYGpVhcxvqKNsd6Ovnxj1I
	GrNNrGQqFRiJLE0wuVKPoQMaQRMvQQ83gKTtqsIkbqISUfd1k+n9K2cTZZNO3r9HYisQzoVXpg2
	Gh8V4lPUQo6+FJwRWEQHz+vqoqV7OXnQX56XEequP3v9O7Z9jZ8ZNA0f+XK/ewowYpGWUHQV+/7
	1QdhNafmY1rPL9A+Pr+xjpvvXTk5m9TzAYM6MSlZflYYA72atm52Z+KMJL+k/w6HeB
X-Google-Smtp-Source: AGHT+IE502KIN4tz1ZiBR1VS+4c/5BDktMXSPvvmFW+gOT8kNcqJukYwWerUdV/VaxRhOB3SKUHsgQ==
X-Received: by 2002:a17:902:f642:b0:250:999f:31c6 with SMTP id d9443c01a7336-290272b4764mr317255775ad.32.1760539160392;
        Wed, 15 Oct 2025 07:39:20 -0700 (PDT)
Received: from fred-System-Product-Name.. (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f36738sm199853455ad.87.2025.10.15.07.39.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 07:39:20 -0700 (PDT)
From: Fred Chen <fredchen.openbmc@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/7] Revise Meta Santabarbara devicetree
Date: Wed, 15 Oct 2025 22:38:56 +0800
Message-ID: <20251015143916.1850450-1-fredchen.openbmc@gmail.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Summary:
Revise linux device tree entry related to Meta (Facebook) Santabarbara.

Change log
v3 -> v4:
  - add blank lines between nodes for readability
  - drop changes to already defined LEDs
  - add gpio name debug-card-mux and FM_MAIN_PWREN_RMC_EN_ISO_R
  - enable amd apml interface
  - add eeprom for prot module
v2 -> v3:
  - remove mctp node label
v1 -> v2:
  - add 'bmc_ready_noled' LED and update commit message
  - add sgpio line name for leak detection
v1:
  - add sensor nodes for extension board
  - add mctp node for NIC
  - adjust LED configuration

Fred Chen (7):
  ARM: dts: aspeed: santabarbara: Add blank lines between nodes for
    readability
  ARM: dts: aspeed: santabarbara: Add sensor support for extension
    boards
  ARM: dts: aspeed: santabarbara: Enable MCTP for frontend NIC
  ARM: dts: aspeed: santabarbara: Add bmc_ready_noled Led
  ARM: dts: aspeed: santabarbara: Add gpio line name
  ARM: dts: aspeed: santabarbara: Add AMD APML interface support
  ARM: dts: aspeed: santabarbara: Add eeprom device node for PRoT module

 .../aspeed-bmc-facebook-santabarbara.dts      | 919 +++++++++++++++++-
 1 file changed, 913 insertions(+), 6 deletions(-)

-- 
2.49.0


