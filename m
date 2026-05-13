Return-Path: <devicetree+bounces-296603-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GUtJEwDBGoHCQIAu9opvQ
	(envelope-from <devicetree+bounces-296603-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 06:51:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9AA52D4AE
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 06:51:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4092130B50BE
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 04:50:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 617AA391E44;
	Wed, 13 May 2026 04:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aKS/CRqA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC727388E57
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 04:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778647821; cv=none; b=pHjU+SOo9qE9JPpM2h4xsdb8Ul+c6RRNtSc4P9LT+M/gDbkDWhd1/jaXa+zBdS1sTXRVMRoRMxmHWLNZVP0sK7POlzdvtujgm4ryIgx5lzM3c9vCRITe/+SGVF6+/11kJKrseL+q0yGzwck1smgM/fWWFxyCz4uhAeZ0N721ZlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778647821; c=relaxed/simple;
	bh=tE0vkv4AeNf9uXj69TTohvhoxtlDeJ+vneLAz78H2GM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RUZYYa21fzkGPjkhDXFbNizdMt2/czueL6T64eoz3AGiEQtPdHDEIH5ihOCJtzQGEipuFN2Mc/QKlogUt4t1MHTJEOdn4xrvB/AmecV8pLXrrITHH71fu1xeGNq/SXkN2Ax/TM9a4EKA9CGehQqZC1qnda4DoJ7faYNRk4E2uCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aKS/CRqA; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-83d5bbef760so2281853b3a.1
        for <devicetree@vger.kernel.org>; Tue, 12 May 2026 21:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778647818; x=1779252618; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7zlpa7Ke4ytx6XPVc5PZ6mNxC3kCRBVIMOI9TKDTTjQ=;
        b=aKS/CRqAo10wmFosk25zcB2iHvTml4vYTy0c3zNV/6yCSPYHNTMUXNrKZpUMQAKnNu
         crH6KTz8TEAPAplRaw0kVFKiXBGgveqsF1DCbmr8u1kb+jhjPdtu2PjaNVc7SKcH5lJr
         Nek4Wys/n1AAzjajXM0qHZYoY/iDsSS3m2KMHiMlMT1AQerPG3WlIdzY/3Y06rEuS6vW
         dB7Fd2mvprA6SGVemRcGggOu1zBEQFfLvJzSZdipxYp3s4UZpJOej39fwkNgp1yG3LuG
         baCCcIQ2ybbhdvLWaF4KgLExvFnhDYUV8UkCOs7ZhJ4FGNRqVxZJRqiMHArIFTtxWQQ/
         SvHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778647818; x=1779252618;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7zlpa7Ke4ytx6XPVc5PZ6mNxC3kCRBVIMOI9TKDTTjQ=;
        b=FhB2EkOLhR62SXSuXkmOqMB78/oFcHnOiJK6g6jLsc4uaZkG6ym/fxvPIVCWMzSdmh
         lAmo75i6kg8pMvW91IdghoMa0hH2Znt06adWARrgzQQuZxPKf/uB1Go7DAUd5Z6NOnAq
         QgkRSMtGQjhGPzI96vkltlT0+r5+xXFXj2RSpEXjjU7CIqWTT3FgYpZmz0rFXP5nc4LB
         eLvNiusKyaoEXK9wX4hRlDGW7dFiproYVBRsNQyaZjfTw/Pom4cX1dioHwajnOm+1RtI
         sBcTVCevNatiZwNwhN/s0lrS7AQ/xqIsv08ay7MbYNZhlxMyQ79Fn5/CW4FgX8qM9qMo
         eErQ==
X-Forwarded-Encrypted: i=1; AFNElJ//dhJpiXHz7CDq6iMbSOu9cHtIgw1SlUvt01HVJvBOC2/lds568wWoYMcPa96LkOiPhShk7oi20SeW@vger.kernel.org
X-Gm-Message-State: AOJu0YzrFQligT7hNGMdaX2iuzjHpY9RpZAIwIP2iwUH+Uyxh4vCUgRm
	godLDdrES5RWmVlUDIVEjS1Mu285Gu7lTYpl/JSxR8/nnAoE1zOn2FBRJcwoJp9q
X-Gm-Gg: Acq92OE9FWlxqofGAVSXmeS10qe8gN0cPXe7zWDjJZixr/jZjjxQPbT5TCvM9SMmMfu
	81dZxDFJfMZGkMEjMJRR2apoNDu3M4VihsLKIfDSye7gqp+ZaN7zmo4DeNaTmOfRuPdRYldN/87
	f6msEzXvZBz4TP9xOtiSJjVEsqFcjJyb6ZTS/YRPe8TJzJuu48ow71LeYdC/mmKkEcenB+FTjt/
	XpQRKUZnjBQPyw+KP1YcyL9rWg321XdmqziUE3JSwQN4WWaX6OCRNn9F0CrN0vENIV5cu4zRjHH
	UGPpiVBjG0qFb4BSyRHR8QQr0xoKhn5lZ6FApQIJVXxv5TxB1O7r8Y6yr0jW8dBWH8pkyngep3i
	Z268S9n75GRR+Ju3HlDvAPjhhSVam707zd894srylcUbsQ4n9EDeLed9ngRelVjc2huLe035AJ2
	eeBTZVFHVzwpgDcVqBKQLCdVV1yPLn+C0EbWEC
X-Received: by 2002:a05:6a00:800a:b0:834:e15a:19f7 with SMTP id d2e1a72fcca58-83f05d5ff3bmr1328113b3a.44.1778647817871;
        Tue, 12 May 2026 21:50:17 -0700 (PDT)
Received: from [127.0.1.1] ([203.99.159.230])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-83965c30ddasm32311914b3a.21.2026.05.12.21.50.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 May 2026 21:50:17 -0700 (PDT)
From: Javier Carrasco <javier.carrasco.cruz@gmail.com>
Date: Wed, 13 May 2026 17:49:41 +1300
Subject: [PATCH v2 1/4] iio: light: veml6030: remove unnecessary read of IT
 index
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260513-veml6031x00-v2-1-4703ca661a1d@gmail.com>
References: <20260513-veml6031x00-v2-0-4703ca661a1d@gmail.com>
In-Reply-To: <20260513-veml6031x00-v2-0-4703ca661a1d@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Rishi Gupta <gupt21@gmail.com>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, 
 Matti Vaittinen <mazziesaccount@gmail.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Javier Carrasco <javier.carrasco.cruz@gmail.com>, 
 Jonathan Cameron <jic23@kernel.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778647803; l=1095;
 i=javier.carrasco.cruz@gmail.com; s=20260111; h=from:subject:message-id;
 bh=tE0vkv4AeNf9uXj69TTohvhoxtlDeJ+vneLAz78H2GM=;
 b=ISt3NzjRzb7KhHFzYzU7B2y1enxR6T8lMuDXUlrcwUAm960i6bB641ld75uErc1Haoe7q5PCx
 UGoUQFOdwnoCTbsG/rQYhHSBEbsZ7VkkHKCRH2y45BPImcvpL4WwIx6
X-Developer-Key: i=javier.carrasco.cruz@gmail.com; a=ed25519;
 pk=Lge8w8xidNSf/INy7JAIbAW+Hezkp3nsBh2OjKL7lLU=
X-Rspamd-Queue-Id: 2F9AA52D4AE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-296603-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,metafoo.de,gmail.com,baylibre.com,analog.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[javiercarrascocruz@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

This is dead code as the IT index is not used by gts to set the new scale.
In its current form, the value is read but not used afterward. Remove
the dead code.

Fixes: 22eaca4283b2 ("iio: light: veml6030: fix scale to conform to ABI")
Signed-off-by: Javier Carrasco <javier.carrasco.cruz@gmail.com>
---
 drivers/iio/light/veml6030.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/iio/light/veml6030.c b/drivers/iio/light/veml6030.c
index 6bcacae3863c..745cf3ad7092 100644
--- a/drivers/iio/light/veml6030.c
+++ b/drivers/iio/light/veml6030.c
@@ -521,13 +521,9 @@ static int veml6030_write_persistence(struct iio_dev *indio_dev,
 
 static int veml6030_set_scale(struct iio_dev *indio_dev, int val, int val2)
 {
-	int ret, gain_sel, it_idx, it_sel;
+	int ret, gain_sel, it_sel;
 	struct veml6030_data *data = iio_priv(indio_dev);
 
-	ret = regmap_field_read(data->rf.it, &it_idx);
-	if (ret)
-		return ret;
-
 	ret = iio_gts_find_gain_time_sel_for_scale(&data->gts, val, val2,
 						   &gain_sel, &it_sel);
 	if (ret)

-- 
2.43.0


