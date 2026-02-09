Return-Path: <devicetree+bounces-263789-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IALoEwJXiWlQ7AQAu9opvQ
	(envelope-from <devicetree+bounces-263789-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 04:39:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A992510B683
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 04:39:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 32FBF3002B7E
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 03:39:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC85C286891;
	Mon,  9 Feb 2026 03:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Lq/+pCc8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f171.google.com (mail-dy1-f171.google.com [74.125.82.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72448221F15
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 03:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770608383; cv=none; b=Iu97uShMwtwgnNu/suwy3W9PL/RLMK/yYbfAgmStR9tDiOZxSzA3n9bEp3Z68a+kIVyI7rsDZxKuF/WfZKYsxfvd+qf1i5YJK/IUJG34x7J2eH8oscbboQafbL6mgMyAMxq9mxqOaJ6nLK+jcJfccFrELuH4ug+xXdbcCXyua9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770608383; c=relaxed/simple;
	bh=mDWfQ5TQ7IKx3Jx2J+iH2KbYzclhCi7bvFUdjWsVD2Y=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=I6PvafcFJpVBw/MZr9SxCHmcMvlkDXsLUk8YuiLoSi6r+/tKZcQsIgiTV0jbA1UtccYH9+ZQ+yYT0QaG9f8OtextA75f2+oMdpEDCL9hHLyTvuM/xY/mRIM2tG/hk8hrZMtmID7PMyK68AY9xhwaMdC2+vTdiNnfX3KFuEZ9yQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Lq/+pCc8; arc=none smtp.client-ip=74.125.82.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f171.google.com with SMTP id 5a478bee46e88-2ba4f9df1b4so44805eec.3
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 19:39:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770608382; x=1771213182; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gyuiG6Pl+KcjgV30EMZ/m11jRo1aHxOMp16zLwhY/U8=;
        b=Lq/+pCc8i12/lyVdX3xUL8dnSFEIEKwjiJsQJu0HnjJ7pwO1hhuYsLB57ue6UmaRPF
         vyTMBKTf8Fh8y6YXF2FYPaUrwhffpBA6TnTIMpi0Mo68ki1Zg2MqIrW/tVLzpju7Y2hV
         +wgD7YOE8xS6NfcTEv2Om38ldajjxC6M1Fi+Br0CchTHeo3g1AYHcHWPRzYlQWiWdivm
         f5f8n77O0dYSM9iwZY9mfcWV5RwWK0iGzV+VQ+Vhn/LWmH9LuxWlm621/rCGoRaoNr3e
         xvbtA54I5nZgCOTXwWJttGtYewL7xCKts0oB9/+r+tzTpq7G7GxYaksA8Y0mft/quYln
         sngQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770608382; x=1771213182;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gyuiG6Pl+KcjgV30EMZ/m11jRo1aHxOMp16zLwhY/U8=;
        b=Pv6CYS6UuHMDrO0e34JbE1qTR6+ROuY7WW/QOVXUaq11/djpfrtDE1APrCLqkv9Uaw
         Y6VaT0FWXDPf8ALeKFi28CLVyKrxar8DEJVPvD8/B/HtrhoXgLw4baBkDvnxxYhZzvig
         WLu9bm2peKn2bzNcM2d95n2nxy2my0oY3d70xhVi+rZsOWFP5Yb2afA2i56fHRBQsLwF
         KCPL4DHIYBFTwQdtSxD/srLXYrwIRbYT/UWDrgWIAWOGpmEwGtyBskTWFFb7M9pD+hjI
         mOcqfLQ7huxKQO6PexCRH3ovrMR9EnTLDleoMZHznp7r43qAb6DHibRoSGSaO1V55Nwe
         98dQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQQCh2XnC+33ufKrUOWqfA2qgNTBCrIBgv4DKNv0RN4LrgKMlxnOgnDUUUhTrAD12L1pVPOxLjgHkH@vger.kernel.org
X-Gm-Message-State: AOJu0Yzh3N0eg0opxSYiTTR1lwdz6+fbODQ530s69pLYoCBAHB1jQ9mG
	B7I0KPmvoePSwtrUm2vckIqU+G2BfRiLcr89u3txL6NZd1YAvpGnrnbyKHtvTw==
X-Gm-Gg: AZuq6aJvgQc01VxeUNlhaElXAIMFIx2k79vQI3ypkg+oyHMuQEOTunVL7Jt9iyhztvs
	hmazg7Z3Qp8TXkiGEYBIqSiTJbFmWdF3k9f18ZicS83nyMP9N3d63KwAUi9z84S5D1GYv2gFRgw
	nXpaG7BK2qPJPuvqTXoFezFFUTrnEAuz9uXvgERaZCeZqL/a71uC7hxc466orNtc/lJmN3CpgBU
	gs7Zfjn9kdRSLGkzTycZqnnZYwTUPD7aWfzPkreixTymWhkW7oPHW4x/PeJRY+V67PMxZF2sjNr
	xsVK8n7mSJLghBaA8glW0Vz8JvGOmyhcbpocHyEMM5wKkyXpu7CzHfDeniHjP7Zh6NSIIHz5sM9
	od6fXgWXOUEm44kaD6y4QR+AQBTL4bLAUc299M7iKuml6UDgP2wUt13En7XIVRUbcwI0xO9gV1u
	MiDnkICXirhgU=
X-Received: by 2002:a05:7301:3d12:b0:2b7:e929:856b with SMTP id 5a478bee46e88-2b8564e83d1mr2149490eec.5.1770608382489;
        Sun, 08 Feb 2026 19:39:42 -0800 (PST)
Received: from [127.0.1.1] ([45.32.86.188])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b855af5ca2sm7682073eec.8.2026.02.08.19.39.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 19:39:42 -0800 (PST)
From: Yasin Lee <yasin.lee.x@gmail.com>
Subject: [PATCH 0/5] iio: proximity: hx9023s: firmware property, safety
 fixes, and ACPI support
Date: Mon, 09 Feb 2026 11:37:01 +0800
Message-Id: <20260209-upstream-20260219-v1-0-2b4d74e309d1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAF1WiWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDIwNL3dKC4pKi1MRcXYiIoaVuonlimlmKZaKFaWKKElBfQVFqWmYF2Mz
 o2NpaAADk5V5jAAAA
X-Change-ID: 20260209-upstream-20260219-a7af6d9a85ad
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Yasin Lee <yasin.lee.x@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1540; i=yasin.lee.x@gmail.com;
 h=from:subject:message-id; bh=mDWfQ5TQ7IKx3Jx2J+iH2KbYzclhCi7bvFUdjWsVD2Y=;
 b=owGbwMvMwCEYyfeRr6Zs90zG02pJDJmdYW9qnu5U3pikNe1Szo9PV15dcQt6c2TSWk/LVBX5D
 7s/H15xuqOEhUGQg0FWTJHlzOs3rPmqD/cE/3bNgJnDygQyhIGLUwAmcomR4X/qUssz07Tu1h1c
 vcPui3hf1OK1a7TfHuhe98PspHRE762lDD9ul/Cpc23drTEl4EXXq38pvLv+fWL66W19lJvr9rE
 Zah0A
X-Developer-Key: i=yasin.lee.x@gmail.com; a=openpgp;
 fpr=CCEBEC056F25E1BC53FB4568590EF10E7C76BB99
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263789-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,outlook.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yasinleex@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A992510B683
X-Rspamd-Action: no action

Hi,

This series contains a set of small fixes and improvements for the hx9023s
proximity sensor driver.

The changes include:

 - Fixing a potential out-of-bounds access when copying firmware data.
 - Avoiding a division-by-zero case when the sampling frequency is unspecified.
 - Allowing the firmware file name to be specified via firmware-name property,
   along with the corresponding DT binding update.
 - Adding ACPI device ID support to enable hx9023s on ACPI-based platforms.

All changes are independent but related to robustness and platform support,
and are grouped together for easier review.

Tested on a DT-based platform with firmware loading enabled.

Thanks for your time and review.

Best regards,
Yasin Lee

Signed-off-by: Yasin Lee <yasin.lee.x@gmail.com>
---
Yasin Lee (5):
      iio: proximity: hx9023s: fix out-of-bounds access when copying firmware
      iio: proximity: hx9023s: Protect against division by zero in set_samp_freq
      iio: proximity: hx9023s: support firmware-name property
      dt-bindings: iio: proximity: hx9023s: support firmware-name property
      iio: proximity: hx9023s: add ACPI support

 .../bindings/iio/proximity/tyhx,hx9023s.yaml       |  7 ++++++
 drivers/iio/proximity/hx9023s.c                    | 26 +++++++++++++++++-----
 2 files changed, 28 insertions(+), 5 deletions(-)
---
base-commit: c8bfb63c902678228a0a265e22a5f55404988a43
change-id: 20260209-upstream-20260219-a7af6d9a85ad

Best regards,
-- 
Yasin Lee <yasin.lee.x@gmail.com>


