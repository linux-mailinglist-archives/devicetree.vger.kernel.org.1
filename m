Return-Path: <devicetree+bounces-309187-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sYsYOUw8KGr4AgMAu9opvQ
	(envelope-from <devicetree+bounces-309187-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:16:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5EC6623A7
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:16:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=pxLUNHnL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309187-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-309187-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BDA563082656
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 16:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEFC8372B25;
	Tue,  9 Jun 2026 16:07:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83F2B370AF5
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 16:07:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781021268; cv=none; b=DiBT5OqA1OGcCDKrE/TCpiAW6jydUJKKg4iB2jGjwv50xHrj5qJar9lHjtBo8V8b4k8jVylXDYlal/4mdNWZovl75j3QxV1HE6IkwkNxYT5Y2JnlLhj81ls979yiw1dKOBmIYWeKcsfY/+GPpm/zRDRnBNJ02DQq+JyqXKnTa3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781021268; c=relaxed/simple;
	bh=Q79k8W9vOzEUW+r+p6LYN1WSF1e8vDMkHgr6pRQpJOo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Yuhyx+m1s1pe+glLM/iHix3zQBlJSto50afIqy80B2tIYu2DmiBLIp7rJJl3Y5H/F60mgXeYVq09o5ikzFn1HgvuJVNsdLzEofr3U4olxMKTocEHXJLFKJpERl23ODRuybn/xaxwfnhIZ6lpDi0RKHEfMs+PZ4LSWUgSX4RnsVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=pxLUNHnL; arc=none smtp.client-ip=209.85.161.52
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-69d862236ddso3436253eaf.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 09:07:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781021266; x=1781626066; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tr78Ec++ZHHyKCmRsLimyTQ1g5Bjk2CPqZ1jeJIAnco=;
        b=pxLUNHnLhN1rM1Yxf2R1VcR4carlwTLN7F8S9MCsduhpkCCYmkwqkKIksCEpwWTa1l
         +NYPbkrwMVe+63ej+U/caOhcF7faUsWfSCdKUMW18qh2L6KY/XDZN7w65DyxXgAl9JK0
         Gpheg2SvffT2omcqQETFgISEWlv8wPtfmt6fksrSWRKwBt6ESvdMBPjg9miOnQ9QntZg
         BGIJfOZinIK/gjIT0tfqyAYbbeewqKLsO+TDJIeSH5JPUOzGI3HPR41kuhAYYL2TOHY7
         Sdc35XF9gl4tMVDYsDNFpjI0LBc2GYGYlfTVVo83rd7KJHN+hxREddJjefS40Nt1vBzo
         vBAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781021266; x=1781626066;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Tr78Ec++ZHHyKCmRsLimyTQ1g5Bjk2CPqZ1jeJIAnco=;
        b=N7IG1mCDNLQ7CiPMUdZa4BFb8XeNCcCGmwfH8MRMidAAmAt2L4iqNxC0X5wdvFSpR2
         AQeCcArFYA9FOhky8uhj0ut1bc+JuULlrb+C/G9Ll/aI0NLe9xrLwK+wQ26QWH6GCvvh
         GUBgEo9+sgp70m6I8EANqRgapdOklrF64ziPCnbB+3kvhNFT0RziArB0U09/Ansyk6tT
         Y7gez1CPU/m3jxMRE1Ggyk1I40R2CBhrK4E9xr6Wk4HOXVPyYHm662KjwEHP8IoJmUio
         mYH1LyQWgdHCzF/gS1AoNiw3kwHqD9QdjVKjZGlQucolcUKN8lAX+jzPxaRuvatCTAIS
         aIhg==
X-Forwarded-Encrypted: i=1; AFNElJ91ylq389JUwjkzPcWBICpE4zS47LlUDzFlLq9Gon9+SjN7Ivw4Cy1XIHj25fzrAnA8yUgDrBpg+Sls@vger.kernel.org
X-Gm-Message-State: AOJu0Yxly3SCtZapDoUhg7s/vhwXHoUBA7OKQEQRXAvYLSAiOdPXHlhR
	wtmLYcxDmfumUTokbeIZBtRjcmvc7WThhvXvOMOjA4hfWghpHRUwGFMK
X-Gm-Gg: Acq92OFSdwXfxZzANQS4Bdw815ASnG31z9gjgh2HyBH/d9lt6OJ5Gk7a6komu2b2HJ+
	ZIa2DzNuiNxPB4xXV07dJHDi4o7Tc2CYSOxmb8G111TqcItgd0rlGJ1Mk4SE6Mi8qHmkJEev/2W
	zMaOICXjXKL6saouz6Ay6Phde+Hpn0K3U4IUssRf9siULry4Xkb0/hnkxgMb4Y7D5vXp1q6PvLQ
	k88AFecmnntiQHtsDqzJjBniD/biztVw7GDJaHggqMRhnyAM+XRJU6UcAB/uH0I4Fk5J257gDoQ
	k+O68snfDIDzMyNXGLd0S9fHDiphxph28x23vVsAUR6iryXRfEPlUBX5b5GTlNg/HFi8Wt3/xcs
	6M8LaRlf928KltOaWdwmuHZwUoe7tUBEYuBjo9Nli27QmRcM3ZrMI0YeqESMFAHxwtU0U6MSKL4
	9BS6Xxf+uYS0BVkj9qMJLNBRN8pbzfehLtKC3P/cv4N03tytvHjyHsQOIybq8x7bwobn6B
X-Received: by 2002:a05:6820:1687:b0:696:89e4:5493 with SMTP id 006d021491bc7-69e68c06d10mr12662859eaf.34.1781021266482;
        Tue, 09 Jun 2026 09:07:46 -0700 (PDT)
Received: from linuxescape.lan (23-88-128-2.fttp.usinternet.com. [23.88.128.2])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-69e464050fasm11393859eaf.9.2026.06.09.09.07.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 09:07:45 -0700 (PDT)
From: Maxwell Doose <m32285159@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-iio@vger.kernel.org (open list:IIO SUBSYSTEM AND DRIVERS),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-kernel@vger.kernel.org (open list)
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Tomasz Duszynski <tduszyns@gmail.com>
Subject: [PATCH 2/2] MAINTAINERS: Add myself as maintainer for PMS7003
Date: Tue,  9 Jun 2026 11:03:26 -0500
Message-ID: <20260609160326.45123-3-m32285159@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260609160326.45123-1-m32285159@gmail.com>
References: <20260609160326.45123-1-m32285159@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-309187-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[m32285159@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:tduszyns@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m32285159@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8D5EC6623A7

Tomasz's entry is no longer valid, as he is not active anymore. Add
myself as maintainer of the PMS7003 to replace his entry.

Link: https://lore.kernel.org/linux-iio/20260609140712.2e5d1640@jic23-huawei/
Cc: Tomasz Duszynski <tduszyns@gmail.com>
Signed-off-by: Maxwell Doose <m32285159@gmail.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index e035a3be797c..d1b0a40c02e0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21147,7 +21147,7 @@ F:	Documentation/devicetree/bindings/input/pine64,pinephone-keyboard.yaml
 F:	drivers/input/keyboard/pinephone-keyboard.c
 
 PLANTOWER PMS7003 AIR POLLUTION SENSOR DRIVER
-M:	Tomasz Duszynski <tduszyns@gmail.com>
+M:	Maxwell Doose <m32285159@gmail.com>
 S:	Maintained
 F:	Documentation/devicetree/bindings/iio/chemical/plantower,pms7003.yaml
 F:	drivers/iio/chemical/pms7003.c
-- 
2.54.0


