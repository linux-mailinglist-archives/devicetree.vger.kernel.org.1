Return-Path: <devicetree+bounces-268873-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AM0bHF5XoGkNigQAu9opvQ
	(envelope-from <devicetree+bounces-268873-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:23:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9221A772A
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:23:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4012830CE52E
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:05:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64CA136F422;
	Thu, 26 Feb 2026 14:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="Hg7vegCj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB06D33A9F7
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 14:05:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772114732; cv=none; b=bHurwoKi5sfTFZqJGDf88oVKjVzwvFZ1RAbb2c4ox9RvKcTC2xi9RKO5jP0aSuNhdfTuOTrXVcBNBSGsGP3hq2ohnzs2Jx/mx+17ajl0aEcsrSR4gne7BKQ2eoJhGGm8RkF4Qh5P2aecQjKE5D/wVZ8dIXzL0kACoxVHZBy+glw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772114732; c=relaxed/simple;
	bh=5PWW2bECJpi+KmGyUtsDq2d8pqqeL5yHRiL7SDHfi/g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=vFArEkSbqN9WsTPwA/Rb98DnsHL/H2n0hPfkZPjNQfUpWdcmaJWMUAEwutDCOTkQwV22C4b4cfhvPtDhaLf1/Jsp9l7c2xxmnheC6GF1RgTXO0zBe6v1l9q+d0vZ+FPHKneWTwoxK7ZuTrld13kg1oHKrMvDdWZzT92GPQlyQKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=Hg7vegCj; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 87D423FCEF
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 14:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1772114721;
	bh=dN9A/8NcdFPO3Zi+AfZ0VKbrL07IdR/gdWg7UnqaXcs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version;
	b=Hg7vegCj6eAvIB9Pd5QVOdM7jXar3HmFApoxt8STYQHPzlPN38rS5uiqiMU+4XYZ9
	 HtEEASYrN3QKnsG2WCq17RR4jOwqOJC+/6lk276eqSYpR4QO/Ddbg9DReEaahR6A7E
	 7Vpi36d5yOiENvkeExpfPEr/NxN+27LM2/BiKIHNYFiApTOM6ROI+1MJU2mXMCYsRR
	 FIZgH+0zhXe0Z3XQeFMmefVDVd4wmL/tGBnP9YcEbvGPH1bGRDRN+RjvU8nSZeyx4o
	 zjQet7zK/dEutUSNgLSYLIl+Rz/5EIX9+zALhLKUT/sfuaa6qZxaXdn0ZjQIZgganw
	 wcNB6k5JfcR09vY/KQpgcCoarVOKdwuzeR7PFCzV0I1yh49yCCJDfHAfOI9QAz0+Mh
	 gJaTI/mbUjao7CRY+nMPF8ggo6/JXZfqiQg/l/G4yf8egP+dI+fpRURAt9X+zfLK1+
	 B80Ursw3wzxHjcQ0mFUuOqPXeejOqrx4aVmdYlpBQ/cugVdXR0NdxUlz39bbn6I7bE
	 FJxl7L1NibUZu6FincSLKDpM4AjOjyFMvbdO7/0uQXEFCHfCMLGHCoLkwaR7DjBtP9
	 nHTMGVkcO4V6hv0zDOWd9FgYHN/tFOWOlHQGyuPHqPUJvpNJ94AawW3GKsvhdp2+Gy
	 vF9uHtla20l/6Rbuk3XUpnc4=
Received: by mail-lf1-f72.google.com with SMTP id 2adb3069b0e04-5a0ff9741fdso513613e87.2
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:05:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772114721; x=1772719521;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dN9A/8NcdFPO3Zi+AfZ0VKbrL07IdR/gdWg7UnqaXcs=;
        b=cxpKW0VAp8Jedk+2uTdaARP2qp0BEl1X0f2cSeTLD3Wyk4ts59q3hbAxzxEsfXok4S
         TxHx0YMjhsbSuH2pSSucPezCd5KtVNImK7r+pXrtE4ossBlz+MJosJ2I0E3sh64Q+DFd
         gvK0fbgfUIiga6pKvPuQFSRo7giulyc1ueSMZkEfucODn5Gx0sNt+AVfDMTv56fR+znn
         Y10XS4LzU8a7tyOtoUy7htuoGdp/1IuARbXE7CvNyFt+JEvwtQd55Z/jZLqGsYFFZC3e
         ViqwxqgyHqsslVvuohCwd0nytXJmBg1gz3M653+TX73wBKQ88JU/OX2WiLvpr5zsm5j+
         6WGA==
X-Forwarded-Encrypted: i=1; AJvYcCWxFfpN/IokLeglDMX7XVoeywC/8OPVukktLTzyf4eFe3bLNiC67OzMdAhY4x50CQcMhLHkYJTYJ9uZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzCLRFIsy3x5M5Fiueaysu3mEOZLL0+CyHV+ah+G20KBPxqtS35
	w5IdUSzUMntyzO2toZVMxlOxZ8pwPHKTVoxx8ISrSwDirA0mbDCeDF5yCZMZ0MM6OSF/nT+T169
	Y8vAxpG+Pp+FVRtmMFM6hwhUmfbVk/QhqUrXl3wZ9hCDHODzN5CItiz0pIehRDwgp9tCYjgTWlT
	MCZpI=
X-Gm-Gg: ATEYQzzQIlSUTp7VIIOyff91s5E/WMRE3qLiicJUUoq31e0atHifGx9kOzVwY581b98
	tNRdfqAd5OhHH1NF0b805TtV2vAjlqSJOyi1cfY82VYgXB2+izv+vKWvVC70Bs4XeCl/9jkMFA+
	tFpuUMypGrIUJJOswLD9eY2so1IHGHiQ0HDMN2lgKjeOw4Ezc++loqDQm4b06xH9qxwcdRyIlLc
	R8NTPITMgR1lcPzeHkJJdOvPu+Sux5UDbJD7Uui4H6gEhMlMuQqqS+x+rNiadosjs5Kz5lOF2wh
	iJyGEIN81fPMWOhIvT183ppIjPBqJ5hhJI43JB0Pjux2PJIOivdrhAI0fOFghcf64RHFspgeLIe
	fe03XhmQJX3u6WEBtsTUz6yN/zPB6rqxVQBGA
X-Received: by 2002:a05:6512:b02:b0:59f:6db4:cc7d with SMTP id 2adb3069b0e04-5a105d84f29mr1677314e87.2.1772114720714;
        Thu, 26 Feb 2026 06:05:20 -0800 (PST)
X-Received: by 2002:a05:6512:b02:b0:59f:6db4:cc7d with SMTP id 2adb3069b0e04-5a105d84f29mr1677296e87.2.1772114720264;
        Thu, 26 Feb 2026 06:05:20 -0800 (PST)
Received: from m2.fritz.box ([2001:a61:35c8:6701:3d2c:4b2a:b4d0:81b4])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a109debf8bsm898874e87.74.2026.02.26.06.05.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 06:05:19 -0800 (PST)
From: Tobias Heider <tobias.heider@canonical.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: =?UTF-8?q?J=C3=A9r=C3=B4me=20de=20Bretagne?= <jerome.debretagne@gmail.com>,
	Dale Whinham <daleyo@gmail.com>,
	Tobias Heider <tobias.heider@canonical.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: add missing denali-oled.dtb to Makefile
Date: Thu, 26 Feb 2026 15:04:30 +0100
Message-ID: <20260226140429.232544-3-tobias.heider@canonical.com>
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
	DMARC_POLICY_ALLOW(-0.50)[canonical.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[canonical.com:s=20251003];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268873-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,canonical.com,vger.kernel.org];
	RCVD_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[tobias.heider@canonical.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[canonical.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[canonical.com:mid,canonical.com:dkim,canonical.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4F9221A772A
X-Rspamd-Action: no action

The device tree was originally added in
0d72ccaa1e840b4c8723a929b2febbedcf5f80cd.
The original patch on the mailing list also added the new device
tree to the Makefile but that part seems to have been dropped
(by accident) when it got merged.

Signed-off-by: Tobias Heider <tobias.heider@canonical.com>
---
 arch/arm64/boot/dts/qcom/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index f80b5d9cf1e80..b05e8adc02f65 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -374,6 +374,8 @@ x1e80100-lenovo-yoga-slim7x-el2-dtbs	:= x1e80100-lenovo-yoga-slim7x.dtb x1-el2.d
 dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-lenovo-yoga-slim7x.dtb x1e80100-lenovo-yoga-slim7x-el2.dtb
 x1e80100-medion-sprchrgd-14-s1-el2-dtbs	:= x1e80100-medion-sprchrgd-14-s1.dtb x1-el2.dtbo
 dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-medion-sprchrgd-14-s1.dtb x1e80100-medion-sprchrgd-14-s1-el2.dtb
+x1e80100-microsoft-denali-oled-el2-dtbs	:= x1e80100-microsoft-denali-oled.dtb x1-el2.dtbo
+dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-microsoft-denali-oled.dtb x1e80100-microsoft-denali-oled-el2.dtb
 x1e80100-microsoft-romulus13-el2-dtbs	:= x1e80100-microsoft-romulus13.dtb x1-el2.dtbo
 dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-microsoft-romulus13.dtb x1e80100-microsoft-romulus13-el2.dtb
 x1e80100-microsoft-romulus15-el2-dtbs	:= x1e80100-microsoft-romulus15.dtb x1-el2.dtbo
-- 
2.51.0


