Return-Path: <devicetree+bounces-269394-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WO29LgDfoWlcwgQAu9opvQ
	(envelope-from <devicetree+bounces-269394-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 19:14:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 699B71BBD8D
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 19:14:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 469A030A25BE
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:11:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 233E9368275;
	Fri, 27 Feb 2026 18:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VZZqleu7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6A251A9F97
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 18:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772215901; cv=none; b=nlMEVkwLiXct6Vt8reUZAq7BsB9QpdlNPMg/ESdOEHeiQmKuc/ZtPCzotK6nOrUV6O/WuFHYI1LFx7MRVjxI87ulzxflS0QbOl8kOVWa7F34eYKMTtkzyb2bkE+GDkdX1XCBAPJ9ymCqiBOEoDD3fPhH+B1gICSQsWhrjIpuzUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772215901; c=relaxed/simple;
	bh=chk+s7sHhDgpMr4pthHr6E01perbFvqGu7cfXRO9o7U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JU33bVsQKj7d/2sNHPzm8f6Z51ytmfU9CGuGQVAWHlAqgG9w1B+sdvEegBoyIKP+CzNRCR2wQ66Q+hxRE9ccXhUD3C0tzj1ho+M384Y0ts1/Wwhs8Ideud+Y6dM1w4Ej1dolkL89kFyjjG+bbrZYvqvM7QtoNT87F1DH5hPT/Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VZZqleu7; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-5688b9e4e80so2310429e0c.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 10:11:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772215899; x=1772820699; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hc0dLqQoQ6W/KnLUw4OXQrYgdCgC/5tcHVqNhJgH/8I=;
        b=VZZqleu7e0yiDn/WNC23FEprM010qKnXqN5esmGvUR5PSAiq4NQEvgpLgclNTAX2KR
         lr7v7I0j05HJuVv99iXrY++AcjcrRTpI8frx16yqKDe7O8SvgCpr2BaAhWeL7aFZtzQ4
         27+FgiwITlsBcU795I3dbuydHoQYjuAegcMlZoRpIMLzlkU0vqFevjJVs/JKLfhEi4jv
         fGdX4EYxDMwWkOF3CRqRAlvmPyjNimCk/PCIOPI76QMjKlEsQReJQrK9v8bupu2biguN
         c+aiLfpfl9PmBt5wOC71SKw6GlLh8WVDaF4CVC/eKipwovSmii7f1c+5YnXGdG8LB4my
         937w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772215899; x=1772820699;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hc0dLqQoQ6W/KnLUw4OXQrYgdCgC/5tcHVqNhJgH/8I=;
        b=ixanRppIcob4BUR6PiJXrxxYNqmKdDYk0HTYijA/TU3cst0b1lrZ8sDAp3DEmPSfGb
         Ljat2c+dlk66Czz1YiD8Bj6YLKEStQapoIfZrQ+UY5wtWLzgsaXnOzetZooZAbb//895
         YT2f76aEHNU/11fp9WzlHelOvXHD/vRHhpyJD3Y7N6q7rGdu/Hpilm4deed6HeeFA9/L
         F7o0bzjQTeW7KIc8GwIcWouX5DZ1IaKFH5uVqVH5YWYhUOLGPrpU9dijANVDYOZQ5jP5
         lvAPa5+I1NiuGPXSDdrDqpsy7+I3VQYvruKnboTx0D6s1orJjpr8wC92gG9sJ82X99MN
         UZig==
X-Gm-Message-State: AOJu0Yw5zBJf8CLlzOzHLShTCjRpBQ0qR4JUBd3nAxvMUEEBXEej6R7z
	6OXR6CIgwGfG6G4v9xIVArPyEKwtRQL2qNjFYqNmlZN0Ok6DoZ2NCpy9
X-Gm-Gg: ATEYQzwMigwR/PTi2gR+DlNIovxu8tJgsipTaa53vCfAPWRq3EypDCtriTgMJK65n0k
	lD1MRkelqz1UEYTyWuQ3X96/O6a5Cv+BKwokQ8pbdJ4xS5Fh5m8/CYFZZfYuClxloSEVa7Ff0L1
	OH6OXaKvhOXaC73SiJU4Zwrn8WaSerZGDOXfH6H2QAjwEsMUimc1O0LWWzLNgRJUa4kym1hvYYS
	r5MN6RMllPnl160fh0sNm+kHusWAuGnoT8u3OCTmhgorBS9BIjPbdDs7stI7cKumiNW33bH1faf
	IGgdB1H45xXmOGfJ1rwVLWQu1akyqoHllIKTRfYzFteO9kpqPML55PcLUk/YTLNJUxp6R/HQE+W
	TMMOLeevdXHpoKTUL3yBFsNUO8pPO6rMNctO+QP+1n5OOhx/SzBCL2R1MtEk24r+Xim9bIzfS44
	wD3DLjHTxzemO+UQaPnDJZ2YVe
X-Received: by 2002:ac5:cdc6:0:b0:567:8fb:136b with SMTP id 71dfb90a1353d-56a907b46damr2948323e0c.0.1772215898853;
        Fri, 27 Feb 2026 10:11:38 -0800 (PST)
Received: from nixos ([2804:1b1:b880:4e06:554b:5779:2074:421f])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a92049d05sm7452905e0c.12.2026.02.27.10.11.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 10:11:38 -0800 (PST)
From: Lucas Faria Mendes <lucas.fariamo08@gmail.com>
To: gregkh@linuxfoundation.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ovidiu.panait.oss@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev,
	Lucas Faria Mendes <lucas.fariamo08@gmail.com>
Subject: [PATCH v2 1/3] staging: axis-fifo: fix alignment to match open parenthesis
Date: Fri, 27 Feb 2026 15:10:43 -0300
Message-ID: <20260227181051.36207-2-lucas.fariamo08@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260227181051.36207-1-lucas.fariamo08@gmail.com>
References: <20260227-unboxed-customary-7ce6eda1858c@spud>
 <20260227181051.36207-1-lucas.fariamo08@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-269394-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FREEMAIL_TO(0.00)[linuxfoundation.org,kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[lucasfariamo08@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 699B71BBD8D
X-Rspamd-Action: no action

Fix checkpatch CHECK for alignment in the wait_event_interruptible()
call. Align the continuation line to match the open parenthesis as
required by the kernel coding style.

Signed-off-by: Lucas Faria Mendes <lucas.fariamo08@gmail.com>
---
 drivers/staging/axis-fifo/axis-fifo.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/axis-fifo/axis-fifo.c b/drivers/staging/axis-fifo/axis-fifo.c
index aa90b27197cf..c64a7249feca 100644
--- a/drivers/staging/axis-fifo/axis-fifo.c
+++ b/drivers/staging/axis-fifo/axis-fifo.c
@@ -246,7 +246,8 @@ static ssize_t axis_fifo_write(struct file *f, const char __user *buf,
 		mutex_lock(&fifo->write_lock);
 
 		ret = wait_event_interruptible(fifo->write_queue,
-			ioread32(fifo->base_addr + XLLF_TDFV_OFFSET) >= words_to_write);
+					       ioread32(fifo->base_addr + XLLF_TDFV_OFFSET)
+					       >= words_to_write);
 		if (ret)
 			goto end_unlock;
 	}
-- 
2.53.0


