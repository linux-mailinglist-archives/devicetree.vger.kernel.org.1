Return-Path: <devicetree+bounces-265397-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFqUEABCj2k5OgEAu9opvQ
	(envelope-from <devicetree+bounces-265397-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 16:23:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2121377DD
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 16:23:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BFBFD3045232
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 15:22:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 707BB362139;
	Fri, 13 Feb 2026 15:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aaHpBpi8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550A6361DBA
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 15:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770996131; cv=none; b=soKYYDwXu0Mhia8Rz0QW5APVd5taHkd2V+e7TettdZaE/AYy7LMZ7BvNbxftjsqKIWQ1mXOIr9V/InG9bKlE02wOG5VJ56eB7df4cptOfJRvd8SoliznAr/BydKwyhfkIsFbdH7t4mK7a/30MQwuiriHzOzD1IMLhbqcpIoBI3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770996131; c=relaxed/simple;
	bh=P46HKoi8ZF7lBMC37WYjsZNDcBWA1dpuzLN4UTPe4G4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KsGR6GOxU+bJbkRvbtx0pILb3khQ7oEw1VRDBZPZGG6w9D5bc1VEnSGDE6yDGcnMSplzwiIbYd3FhNhX+5fqRB4l1P9QouRcGbwvLKCGWpO3Jephzn6YT/cv391nodLRMhSRlcq0KpzPUQVcuojMy1WDv5X+VlyY2Rau8jVBBWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aaHpBpi8; arc=none smtp.client-ip=74.125.82.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-2b867142b07so69698eec.0
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 07:22:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770996129; x=1771600929; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jxr9E7F+/W5lcyOhElHgejUw7bVh7N8Nbutx46AWWP4=;
        b=aaHpBpi8d2NyV5Idd9ywhCqAi7ltJufKsUa4B9ud9V40HLqea7KaQwXafxfS/cOiUL
         aFE3AN/mHhw6+vPOBhd70vt3RYWY/+HFKcoUL16pd5a43n1fR1Gk220TteB4wh9YB3dD
         PQwtZ8NAtDvufqkroUTnQ4lHT7UI4kyN8Yt7dPyOmDgxB9pmRlcd2IqENUpN6ZJI4eRw
         ACkeageYREbnGkoLRyXOD4Ac9AAhOehO57C0VTs1jDvKVxfh3cY5N6chipYAG4Wb49sK
         SIVZH4qTIZsqD37hNV1JwIRcvP8HBLjdHlu017ETaI7jLzpASKlMnEVywtQJuq5+tgPH
         B7HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770996129; x=1771600929;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Jxr9E7F+/W5lcyOhElHgejUw7bVh7N8Nbutx46AWWP4=;
        b=Hvx+aQe+qR0NwzKBaA3u13BufFp6jar983T1ZbVFbEh0gbFZQaKFt3VDe/0mCv0Ds0
         zNMtZvhgtGFI2VyMgc8UVJycQS0XPwWhRwP3kn+KoUpu5o1tG0omOES62Dau9vam9oQy
         BFUjYXCy6Ze9Fs8Tdp8HYfEfEe8eff+v1Pin/2gxazQI8m2K23khH067jiwBTDkh9k1Z
         SZ/nMiEmG+99+wJlLT2WVs3KhTghzO7gfomQ6s3DxcAWGwZxGApjyZzMAS0qKTiwSG8x
         tcTICguksA7LHfYMr5liBdWkSH0Nj0P2AQUQhi7zRWcSxWj0xYXpyqe4yPXtOgvyjoTb
         JUKA==
X-Forwarded-Encrypted: i=1; AJvYcCVI8zlWI89CBnkqkvs1l3AV0dUR5a3LvGoE7V5oViBB45X29uxAx1mqYBFpdeul/2EQ0iAspnnMndDh@vger.kernel.org
X-Gm-Message-State: AOJu0YxZhqcRltlCHXf4h4a8ZwDrjCUH6XDOHZT2xzv20Gp0mT0v5tgO
	xSRXrB3VPGSWlj4+crFNXRmnWkjTxvoNk4G8zgAJAJeUIz8A7HUtvZvT
X-Gm-Gg: AZuq6aKxOQSz2bF1ds3/cHSCbau54X9kWt64UgbpQDKglIv8lfHVyea9XaA/etpn3P0
	x/X3bdo8E3i8sIprMsrI7uXpaQKv8ogOrvDBZVO6YaccasMosYQKBoYSNKIp45jQJGbOVjQpkzy
	f0yBPHo8cQZnw1pU2gPXHCoO3ssuOdhHZ+m1obiQB6Jqc7kxbkyXWcQA7yiv8CHq0eO43bvuKAT
	wGs5V1AQDoFoPud20qT+FOEwSw1xa9IRYzAzo04V6X12rd5acwRielGNiwUEDJz9j9X6D4Y7h90
	uZouBPHCLuhufDneCvHBtLaJm3WLBjFQvJfvtEB4UfARW1iSqDxvPYoyYlbUpXQsZHzOVbXhcZy
	cXxrP4cLfJfAgBfVKOoKGbN1WOuET2kvtdkmWHX3yq6ojAV1MtgdodpIAIFhpyOL7EQd2NJRyMm
	6GTjxNSh7jlpUKAt18zAAilItAabWOmdUeoapvWYWOTgN5dQcGI+/H4UQ=
X-Received: by 2002:a05:7022:419d:b0:127:3480:7ca9 with SMTP id a92af1059eb24-127397d3704mr647170c88.2.1770996129389;
        Fri, 13 Feb 2026 07:22:09 -0800 (PST)
Received: from [127.0.1.1] ([45.32.86.188])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ba9dcd01d1sm6755006eec.17.2026.02.13.07.22.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 07:22:09 -0800 (PST)
From: Yasin Lee <yasin.lee.x@gmail.com>
Date: Fri, 13 Feb 2026 23:14:44 +0800
Subject: [PATCH v3 2/4] iio: proximity: hx9023s: Protect against division
 by zero in set_samp_freq
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260213-upstream-20260219-v3-2-df9371d29f5c@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=872; i=yasin.lee.x@gmail.com;
 h=from:subject:message-id; bh=P46HKoi8ZF7lBMC37WYjsZNDcBWA1dpuzLN4UTPe4G4=;
 b=owGbwMvMwCEYyfeRr6Zs90zG02pJDJn9jn3M3iIxUrzxv+d6OK54+KP92g+ORwzWE5WkFSTEN
 jadCPbrKGVhEORgkBVTZDnz+g1rvurDPcG/XTNg5rAygQxh4OIUgIlM+cjwV0QyWUPlYZ9QXKbu
 yem8W3cyFl/YX/hFae4p1b6qp1Hd3YwMrb3zqpuswhJef3mQLvF09fWqnaJr56oqWITMlHq8LV5
 qPQA=
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
	TAGGED_FROM(0.00)[bounces-265397-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: BD2121377DD
X-Rspamd-Action: no action

Avoid division by zero when sampling frequency is unspecified.

Fixes: 60df548277b7 ("iio: proximity: Add driver support for TYHX's HX9023S capacitive proximity sensor")
Signed-off-by: Yasin Lee <yasin.lee.x@gmail.com>
---
 drivers/iio/proximity/hx9023s.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/iio/proximity/hx9023s.c b/drivers/iio/proximity/hx9023s.c
index ad839db6b326..17e00ee2b6f8 100644
--- a/drivers/iio/proximity/hx9023s.c
+++ b/drivers/iio/proximity/hx9023s.c
@@ -719,6 +719,9 @@ static int hx9023s_set_samp_freq(struct hx9023s_data *data, int val, int val2)
 	struct device *dev = regmap_get_device(data->regmap);
 	unsigned int i, period_ms;
 
+	if (!val && !val2)
+		return -EINVAL;
+
 	period_ms = div_u64(NANO, (val * MEGA + val2));
 
 	for (i = 0; i < ARRAY_SIZE(hx9023s_samp_freq_table); i++) {

-- 
2.43.0


