Return-Path: <devicetree+bounces-291761-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WPKhNrPl8mmvvQEAu9opvQ
	(envelope-from <devicetree+bounces-291761-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 07:16:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D7249D8FD
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 07:16:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BEC083013249
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 05:16:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2D0F33031C;
	Thu, 30 Apr 2026 05:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F6MkRqlp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBE161FF1B5
	for <devicetree@vger.kernel.org>; Thu, 30 Apr 2026 05:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777526191; cv=none; b=PGvuC2RJQBznAuDhz36blL5dIx8n17zakh9e8SIvQdQa0z219pdtQmHlOsOZTd+GqS7hiRz32mKFcYd+ydAhBj2g1giYV42525pq4c+/EagG5cRghlTUSd4BHxjHJPtc/ZpdzrasQHfNPHfHKIml4cl/xhFHvHBmp0EW2bJ8vrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777526191; c=relaxed/simple;
	bh=n8dT9YqH32OsGtmkRt4FrPcCzEZL1m3M57fIOoPsXJ8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=T96Gi0l5OVw34MmNysDsJzp+G91/RgTUzUu6PpxK7ws0gsTHTCSAuHGnaLpMZzq7qO3bv0usCcO5cGyDTJQEglxVx8dSPDyrPe3fk+gojbEl0frugokrkk/Wqbv9VKfjVZIUBDC+Dj706kq2unEvR+nUccivzYP2FgFWNl+N6cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=F6MkRqlp; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-82f68b3aaf7so230452b3a.0
        for <devicetree@vger.kernel.org>; Wed, 29 Apr 2026 22:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777526190; x=1778130990; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=H18543Yidz2lPsEK6jrBMSNn1Pul8IVdhilZdGgU5k4=;
        b=F6MkRqlpMxQhvqCp7vjEWMu+q1zi/dDTjb80PL11O66uoRcxY2hw3Dqa+PSgu8H5i8
         2kS/2604gRPKaKJ3Qlvtb6tupgu/H0E7EPC0Go8V3L8u8OzpdSMrz2rWbg9/Enl/nCzd
         Zis3bQGzZFmXmq4+G1hB7SWzHtEqWAJjSZKZ2JO7si+spMXa7P9swFIO6c+xKfmIU/qk
         Mv7EmrXN6+/uw5l8U3ruO9sj8+99e+pQwefQbdxAMYi4I1QUJSMMizFapYY5YAMTxuwo
         psHj6/8LxcOmLSj/fZfmfH1QosicrDgkD1dEDWS24x5OKPb98E7ZYjRsVXxfu+S6yFI1
         dtWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777526190; x=1778130990;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H18543Yidz2lPsEK6jrBMSNn1Pul8IVdhilZdGgU5k4=;
        b=ZTUFwHP6jBMvdvc9ldME746a4mutWFPoi5EIjaB+LivIhwM3PrDdOTzVoxbW2pwvc1
         Edz2CXtG1fW/Xl7PgXrTKQ7Gk14jUngXWhm+rr984kYzcNIHhxlcOTKt+g7N+NECp+Qg
         cM4qtcGUsWZFQbz0PShH4NEdgMGIs+VlAwjz7Tf+K0FB1dE4HUsJwzLcg30l0sdl2ykx
         L5dGeC9z34SbrqhYFwRgp+u2ms2+gbdCx8JF3IQlll9/bSvPxhXect9EpV4KsHYofwRH
         wGZBs9lVEoZdHnr2VHU5E1mhdXMY9YnZK0x4BrmZIXI6Tk8WZakVWv9m4doCz3ZG+lnx
         TJ0g==
X-Gm-Message-State: AOJu0Yw2O609VELMOjXe4HN3ge4mrQSUdejCELhiOlqnqtQhaO/lhoZF
	Jv9hkWVQgpBnDHlANXiwiSHeovhdnhYMpMSDb7qQhFafNr996AhpWleZ1dSjag==
X-Gm-Gg: AeBDieupf9Lwp0RiIMVXxrg7Ho0UH+7Kl+5Ih4BoXpwFCsdpnohYqsDy7n7FcPXO8QH
	4M55FBU2E2xDy7O28GHEXBl56HCX9vWgkKtioa9Y0etJHj82L1WH//AD07EIG+24sqNodhraHg6
	LIecVJ8A23Lha5KaaChhfcBFAzibsNE8nTrmdeESURrFIE7SWI9hynwbrf6cvWLR3BKjGs4TYff
	Z3GdIBFGa114BBgHU+Zpzret+N/LlFkbMJ7AuWX2tGSzUz9Q4OBDcZ2K0FbpIX5YVoxh572pJ7+
	t3nmz56PmtcVdFTVLBeMvpDchG+0rcI2ZXa0FQ0kuU8TuimcFN9MwN2bri6wmRRNl058CsEseDu
	w8QSk2/hkweIien538GI42lLZU9wDHFfUh2omr2lhjFca67RBbXRewEaVJ1l+uSgXB5QXWhA46N
	97JVnkN5d+NofnMSByvw6OHU0twPQCfUOd4i4i6se2oM1dnvf6hJ32fWMQsLVKgyIg+7Wg2ntUy
	xahZoFhzPT8LQrELogwzvllIoW9FJo6g/fy
X-Received: by 2002:a05:6a20:a104:b0:3a2:fbf9:d823 with SMTP id adf61e73a8af0-3a3cf56f0ecmr1688019637.8.1777526189794;
        Wed, 29 Apr 2026 22:16:29 -0700 (PDT)
Received: from ryzen ([2601:644:8000:5b5d::8bd])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c7fd5e6e830sm3848653a12.6.2026.04.29.22.16.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Apr 2026 22:16:29 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: devicetree@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM IPROC ARM ARCHITECTURE),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] ARM: dts: bcm958625-meraki-mx6x: move pinctrl conkfig to pwm
Date: Wed, 29 Apr 2026 22:16:12 -0700
Message-ID: <20260430051612.700050-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 42D7249D8FD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-291761-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[1.18.168.128:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

On boot there is this warning:

/axi@18000000/pinctrl@3f1c0: Fixed dependency cycle(s) with /axi@18000000/pinctrl@3f1c0/pwm_leds

Fix by moving the pinctrl configuration to pwm, which is the actual
consumer.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 .../arm/boot/dts/broadcom/bcm958625-meraki-mx6x-common.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm958625-meraki-mx6x-common.dtsi b/arch/arm/boot/dts/broadcom/bcm958625-meraki-mx6x-common.dtsi
index 7e71aecb7251..0ab2ed32be2a 100644
--- a/arch/arm/boot/dts/broadcom/bcm958625-meraki-mx6x-common.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm958625-meraki-mx6x-common.dtsi
@@ -121,9 +121,6 @@ &ohci0 {
 };
 
 &pinctrl {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pwm_leds>;
-
 	pwm_leds: pwm_leds {
 		function = "pwm";
 		groups = "pwm1_grp", "pwm2_grp", "pwm3_grp";
@@ -131,6 +128,9 @@ pwm_leds: pwm_leds {
 };
 
 &pwm {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm_leds>;
+
 	status = "okay";
 };
 
-- 
2.54.0


