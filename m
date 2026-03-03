Return-Path: <devicetree+bounces-270291-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPd7JEN8pmmuQQAAu9opvQ
	(envelope-from <devicetree+bounces-270291-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 07:14:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A161E9710
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 07:14:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6A457301E6DC
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 06:14:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A712337DEB1;
	Tue,  3 Mar 2026 06:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="dsYidBuD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4FBF375AAC
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 06:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772518429; cv=none; b=GVdSX8Pjm3600iq9LoG7GZuvATvUMpSEeOilU2xJcIQQUDYq0FPFv7O2i8lBWjjGuh2dZxgLSAXLKlFW5R1Zj4qOQykGPYRQ3K8j7V+YWBsk0ndvm+rFobzsvC3RNmmIScRggrsmecRHnk06fRCly6A8PWYlno/x0vMvrU2SuTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772518429; c=relaxed/simple;
	bh=iGiE2E9+VdW+HxA91wNyKiTp5jCXwQwdWtX3DSw03NM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MurmMktnGube0WOZm5s7m55JoxYokhPa7MZvpoB7Lxh3110lDeBdVtPZTVWGE+yykGH2omG2LDyNgiENbR6i0fRmKvBv7Ml2O6zhrDQXiBra5DPlSwkx3+rYNBUA9C9JRvpoiPhBt3g3TYeH5T4gl8EF4RJcdbGZyFZUrBxL6mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=dsYidBuD; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2aaf43014d0so41128575ad.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 22:13:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1772518427; x=1773123227; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1DNtcofGYhMKbL+3R8ic92tUvVbSv56CGHIW8l4ecF0=;
        b=dsYidBuDL35A9dJFhrsIPHTd41438Pm1f/fmZX7tw5GmXEw2mwf5u63XChsm3b3hOm
         GeIFworVxJ0BvySjDz6uZu+a556U5TRY1pHOORyWH2AkUfI5abyAu8CGBYsjdwW31RuS
         bOrHcV7nfG5P7CFWeyTpcjt7PqJbnFVbFoA20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772518427; x=1773123227;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1DNtcofGYhMKbL+3R8ic92tUvVbSv56CGHIW8l4ecF0=;
        b=OEoIH75LRTdzNl6Ew2rdv0SrnGt5MO6zogl2/PtnUCyrDBXKtdMbcTvTnDszTCZwfV
         oTYbFQlZA52iG5nLRrHRBmkjOIRC5co+3fmcVTcCn3pgbSfYHeIuUMbzw55l2DiDon4d
         3hy3e/6zxKOR88pFk5C4njh1yfLkpFgc45qiwO9QN5soksumEVy0vU0bH4lNT/YSuUVf
         2mrMYQOuzFrMBF1uHyIXXg7VNFbOn+Wf5L1uDJ2bK//15vg2VUGm7C56rsx/LJWQbQ93
         sV3iS/iCvt3NPTvn5k1FIL06RqD08eUxbaJpQ57YbtTf5SM5HNjSW96y3GaGdxOcTe9z
         8HJw==
X-Forwarded-Encrypted: i=1; AJvYcCUesW+fQUXQT178FzV38MmV+9BRxE9EboAOGFVrCbWxRIcdwvyk7ph+Ij8joUHG8r+aSO1jrc1/9Hsp@vger.kernel.org
X-Gm-Message-State: AOJu0Yydu1pPZmam3lKmzJIK4PPYP+Orw2MtMkVEzflijPVB3995zAxe
	4O8+wOI6I7s8YPFMQ2mEQsa2Dg1SZKiJHiUvpUrn/0yFI5YMDXAB7araor2QW33D6KB/ic1j0sQ
	NU3Q=
X-Gm-Gg: ATEYQzzCLXxfU1C1YQDBt7sTxlILS54dYeAUNRtCe21QVJHGiwbt2zCFyeNBgoLzGkd
	/Q8RGgrxoe0U9fHdPB9qGRJxNiFXbeCAjUfu2/Hj2eUc+D9wObgSGaYtR13+cMrISqzNZISYaVA
	iLgXMkG/o0t7TXhesmeuiyQFNzGdUEavKBSBZSc53KToCYLJ8PXom6TbwVaD4vPI6+X0H6qy9cp
	jJKj4ggTOrTbcATcXlJKHYUyG0VNFyO+2hoqDbwFcwQqwWa6mnwYimczSqrhTfF07rtzlw+eoz5
	pJ3/TtchcFl+rnypU9kpMB1rQ41q8wAXpQ3ePS0SXw02p49BJITKVDe2EFdXZIkByXMo4MbWqoz
	51RuJAy+FmU8aTEzka0MSEp2Uw2r/Ew4ouc4uEGzeDBAtDAnpRCdMQQyl5N308o7OfFZjv4CJWN
	i4uBiFtLD5kqpXS4AuTglKcEA9QLvLcOlRyULNyoYzibV9D0uzD3VXA3tob0oqQaeN2Wg+5M4HI
	xl4Ghf5qk9GujvGuTteygBs7cMLSibm9Q==
X-Received: by 2002:a17:903:2350:b0:2ae:3f72:fdc5 with SMTP id d9443c01a7336-2ae3f730132mr113772815ad.26.1772518426894;
        Mon, 02 Mar 2026 22:13:46 -0800 (PST)
Received: from jingyliang-input-linux.c.googlers.com (111.169.168.34.bc.googleusercontent.com. [34.168.169.111])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb6fe4f3sm152639735ad.91.2026.03.02.22.13.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 22:13:46 -0800 (PST)
From: Jingyuan Liang <jingyliang@chromium.org>
Date: Tue, 03 Mar 2026 06:12:54 +0000
Subject: [PATCH 02/12] HID: Add BUS_SPI support and define HID_SPI_DEVICE
 macro
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-send-upstream-v1-2-1515ba218f3d@chromium.org>
References: <20260303-send-upstream-v1-0-1515ba218f3d@chromium.org>
In-Reply-To: <20260303-send-upstream-v1-0-1515ba218f3d@chromium.org>
To: Jiri Kosina <jikos@kernel.org>, Benjamin Tissoires <bentiss@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Mark Brown <broonie@kernel.org>, 
 Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-input@vger.kernel.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, 
 linux-trace-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 hbarnor@chromium.org, Jingyuan Liang <jingyliang@chromium.org>, 
 Jarrett Schultz <jaschultz@microsoft.com>, 
 Dmitry Antipov <dmanti@microsoft.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772518424; l=1343;
 i=jingyliang@chromium.org; s=20260213; h=from:subject:message-id;
 bh=cf+ZImr6i3mdjVcBn+wz/4JaSL42jhFPKySUJttD6b0=;
 b=YJAK3yDkHhhBB1rQeKmmk/wkmhQZiNnZ7tZkIkyoA0Fh20kDjb/Qet/ksj96xn4+enVKORB4U
 Mb/njusCz/xAUKz4lZQ/rh4zomjFu8ThVaKXJWgeW4oc1T5DedFx1a6
X-Developer-Key: i=jingyliang@chromium.org; a=ed25519;
 pk=VTYSdqslTtYOjWWoIGgYoWupGWqNSidrggReKMgfPo4=
X-Rspamd-Queue-Id: 35A161E9710
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270291-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,lwn.net,goodmis.org,efficios.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[chromium.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyliang@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: Jarrett Schultz <jaschultz@microsoft.com>

If connecting a hid_device with bus field indicating BUS_SPI print out
"SPI" in the debug print.

Macro sets the bus field to BUS_SPI and uses arguments to set vendor
product fields.

Signed-off-by: Dmitry Antipov <dmanti@microsoft.com>
Signed-off-by: Jingyuan Liang <jingyliang@chromium.org>
---
 drivers/hid/hid-core.c | 3 +++
 include/linux/hid.h    | 2 ++
 2 files changed, 5 insertions(+)

diff --git a/drivers/hid/hid-core.c b/drivers/hid/hid-core.c
index a5b3a8ca2fcb..813c9c743ccd 100644
--- a/drivers/hid/hid-core.c
+++ b/drivers/hid/hid-core.c
@@ -2316,6 +2316,9 @@ int hid_connect(struct hid_device *hdev, unsigned int connect_mask)
 	case BUS_I2C:
 		bus = "I2C";
 		break;
+	case BUS_SPI:
+		bus = "SPI";
+		break;
 	case BUS_SDW:
 		bus = "SOUNDWIRE";
 		break;
diff --git a/include/linux/hid.h b/include/linux/hid.h
index dce862cafbbd..957f322a0ebd 100644
--- a/include/linux/hid.h
+++ b/include/linux/hid.h
@@ -786,6 +786,8 @@ struct hid_descriptor {
 	.bus = BUS_BLUETOOTH, .vendor = (ven), .product = (prod)
 #define HID_I2C_DEVICE(ven, prod)				\
 	.bus = BUS_I2C, .vendor = (ven), .product = (prod)
+#define HID_SPI_DEVICE(ven, prod)				\
+	.bus = BUS_SPI, .vendor = (ven), .product = (prod)
 
 #define HID_REPORT_ID(rep) \
 	.report_type = (rep)

-- 
2.53.0.473.g4a7958ca14-goog


