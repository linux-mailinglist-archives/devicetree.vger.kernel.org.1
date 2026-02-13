Return-Path: <devicetree+bounces-265396-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JGKEd5Bj2k5OgEAu9opvQ
	(envelope-from <devicetree+bounces-265396-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 16:23:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB601377CD
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 16:23:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4420930675BE
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 15:22:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2087363C68;
	Fri, 13 Feb 2026 15:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cI8oMsnV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f195.google.com (mail-dy1-f195.google.com [74.125.82.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4A1D36212C
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 15:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770996126; cv=none; b=J3voC1KhR5bpPHhkyexE2xMK2fGQcqJvYtltAvPwzRGWjLE4C8QR5Z/eoXPlQxeEqWVtzz+f2NLxXfCrbiN5MU6HdCIb82bn8GnRtcF0ak+k2jI5Z65QF3wEU/29FbcRVLh9VzOaLpUZXsEfjIDU/feW//FMmnj1MAI8s/AIvOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770996126; c=relaxed/simple;
	bh=MTOwoKcxAPZFSxZSEyJ02B9TZtaimRRkuonsCTf0d6E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eIi6j3cd0hAKHJDjoOYgxpq0iWcw6dZj1Yob2PZyWiaiMb1sjhTtKl2azQSo4lRzaq78Do5WUoiF1EH8KXLE2NoMcX9k4tvyY/RdaCz592VRsfJbej6QNwSoAV5QjA6FIOk2ftvGLI8NqN6wAxbTrlvlWaGWs/J5OflU4QW8aww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cI8oMsnV; arc=none smtp.client-ip=74.125.82.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f195.google.com with SMTP id 5a478bee46e88-2ba85f77203so153108eec.1
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 07:22:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770996124; x=1771600924; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=24xeLq4glj44WmB+Xh6EwNPiqaMVqiDvD+zsYj4BBKk=;
        b=cI8oMsnVwcnJrfwFkdU9cZCuOUpb7VzYLBytx9nKaBZlgvOAvA5pvDo70oFyD8G9ui
         l/BnUVWMF0ndXNKyaBFQcfrTdr9t+8OHI1yPKXiH56hq9NF0FCJjCrc3djSY7ew0+Y4e
         gtlE8oHCcLXawFaQEdlpQXZTfLqHxGrocVOSv7Qyg0Y9E2OGozdohztrIdP+wXLgcxRJ
         whXxZODzPGwdw51VFgNSZfLAfM57fhCjRN4uycOE7rv3z40pNqPEjx+jIwdNn8ae7Kgd
         3L90ArZ7TB2k7dgmwyZdcImL6seCSWw1MdzTEMOtvL5rI7sVKDk+8yFB9kjZAgDkqKSP
         57sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770996124; x=1771600924;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=24xeLq4glj44WmB+Xh6EwNPiqaMVqiDvD+zsYj4BBKk=;
        b=TykJde/3wHTSQh8SWjcbLxFwIcGsC+0IPFksuRD70jNgv5WG0OuvzgNCu0MCUFEdNC
         2Uar6b8/FudGiHmFvHCqHk1vGiPaHud/0j4t2YssfnWq/OgMbALroSwY3zUAuPzGZFTh
         GymGpIaSK03urt+eRBAjfJM8LDTEosGsEONLbMH8RrKFSEixHxeSpbgsvEDgborKBGLb
         u5DKqo7yW2tQyL3SgyziAeygHO0r1DhTRwm6vbsoXgQiKC5QOD0W1LUfyy8LY8bgC81b
         dbLNIEdanzygYkc2K3+uvHE2b2njWjdWSmcrvBABXzsb1bjXmsX/CoNcgCBc4TFvybB/
         NoRA==
X-Forwarded-Encrypted: i=1; AJvYcCU5wjfHwsS1u7+Cilg3q1CXiy2XshUOEiP3WUdh1gRF2HI32bLfsBsZb9HN207OqEpTmrf4VO6WhjtE@vger.kernel.org
X-Gm-Message-State: AOJu0Ywrg9M4RXEtIIH3djTj5UVOZ1lnd6TNSeJTmvBxQWaHioeqM/N7
	EqXELMbbKnv1frpuOrqtlt/B3RRkWiPFEEAeIwRrL/pb4tmtWlMASxNb
X-Gm-Gg: AZuq6aL9xMwqjnemEcYyFQfBoQNzWxk/4BVHEDGYAqL6nzeAoNvmJ4cUbUc3jMy1aY4
	LJibeD1ojNDdfoOha4jFSAeRo3oxnfkb4bWuNhSkI6Bz7Qhf/NsJH6P+NCvIRAh+DplpfeINMW1
	QqVcm27zlO+fPWKiaKjhcAF+mqhJ4Ov8uDkgN0xDOCYp6nABBdzWKxSTq12WShg4rdPp8jGbWEW
	q5GgDFCABGxzhCzXGZbOntTz0P16nzJbSFkKwONWqfKfbkuzuaooUu2FTW0HSXV9u2kTHWkB8dH
	H5QMSS5pd5Q6nwCo8oN952uQhXyDKDB50Nm4Osy28fG6MWgh3bbM8tOaEAnMgApCAslGFMVWClc
	e9mHQtVBJGmsnqYq4RD+7YV6307pBDhloxW8M8wkEalzzX9UOuZ/lRWNqID/iS45ZoLzFQqxVC0
	gJagHg0utYyMPhgjwlAvHqqLM+kSr/QkO1pDbz7HiFSZzcIq+y8wBw2Cc=
X-Received: by 2002:a05:7301:10c7:b0:2b9:1375:b551 with SMTP id 5a478bee46e88-2bab9ea9ca8mr567430eec.0.1770996123873;
        Fri, 13 Feb 2026 07:22:03 -0800 (PST)
Received: from [127.0.1.1] ([45.32.86.188])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ba9dcd01d1sm6755006eec.17.2026.02.13.07.21.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 07:22:03 -0800 (PST)
From: Yasin Lee <yasin.lee.x@gmail.com>
Date: Fri, 13 Feb 2026 23:14:43 +0800
Subject: [PATCH v3 1/4] iio: proximity: hx9023s: fix assignment order for
 __counted_by
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260213-upstream-20260219-v3-1-df9371d29f5c@gmail.com>
References: <20260213-upstream-20260219-v3-0-df9371d29f5c@gmail.com>
In-Reply-To: <20260213-upstream-20260219-v3-0-df9371d29f5c@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Yasin Lee <yasin.lee.x@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1033; i=yasin.lee.x@gmail.com;
 h=from:subject:message-id; bh=MTOwoKcxAPZFSxZSEyJ02B9TZtaimRRkuonsCTf0d6E=;
 b=owGbwMvMwCEYyfeRr6Zs90zG02pJDJn9jr3zTC3joxmO7vwuXis83fjKJl/x20J5xjqKr9tLl
 m3k+3yho5SFQZCDQVZMkeXM6zes+aoP9wT/ds2AmcPKBDKEgYtTACby6hjDX8Ecu59/Vn8XFJq8
 1FGqe8Jit6myRV7zEwLU3ddJpgvtKmVk+DI/NXlmt59fLW/c9cmJa/+ytzLmKFf0hz5Ievr2yOu
 4hQA=
X-Developer-Key: i=yasin.lee.x@gmail.com; a=openpgp;
 fpr=CCEBEC056F25E1BC53FB4568590EF10E7C76BB99
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265396-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,outlook.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yasinleex@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 9FB601377CD
X-Rspamd-Action: no action

Initialize fw_size before copying firmware data into the flexible
array member to match the __counted_by() annotation. This fixes the
incorrect assignment order that triggers runtime safety checks.

Fixes: e9ed97be4fcc ("iio: proximity: hx9023s: Added firmware file parsing functionality")
Signed-off-by: Yasin Lee <yasin.lee.x@gmail.com>
---
 drivers/iio/proximity/hx9023s.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/iio/proximity/hx9023s.c b/drivers/iio/proximity/hx9023s.c
index 2918dfc0df54..ad839db6b326 100644
--- a/drivers/iio/proximity/hx9023s.c
+++ b/drivers/iio/proximity/hx9023s.c
@@ -1034,9 +1034,8 @@ static int hx9023s_send_cfg(const struct firmware *fw, struct hx9023s_data *data
 	if (!bin)
 		return -ENOMEM;
 
-	memcpy(bin->data, fw->data, fw->size);
-
 	bin->fw_size = fw->size;
+	memcpy(bin->data, fw->data, bin->fw_size);
 	bin->fw_ver = bin->data[FW_VER_OFFSET];
 	bin->reg_count = get_unaligned_le16(bin->data + FW_REG_CNT_OFFSET);
 

-- 
2.43.0


