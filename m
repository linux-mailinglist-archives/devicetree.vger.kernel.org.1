Return-Path: <devicetree+bounces-259124-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WOP2CWTcc2mbzAAAu9opvQ
	(envelope-from <devicetree+bounces-259124-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 21:39:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7D07AA22
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 21:38:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7E0C430157E1
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 20:38:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D11882F3636;
	Fri, 23 Jan 2026 20:38:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="aHuYTRoA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7875C2ECEB9
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 20:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769200732; cv=none; b=r9tlVYP9+DGTJJmwNkGSjVYESZTZLLXRrl9MV2SKfM1g6g5ihjyquCdibKkOQXbYxTBW5o9JAqROZ+z9tFK5NWrOGHyId0dWJ+q3q0rjEPlwKx+m81hTnWkiJplIq9Z6JynRkc2v2jUdasANJY8kJ0fovyiDPvrinqikJ2EcYKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769200732; c=relaxed/simple;
	bh=6K+Y2EpItjAFEVDHoZvaznPDbPUDrOkWEh/VhUaPTSM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ft746BTW+hSHTIKrU1tvG8ia3u8Jh6YFFGicfLCgJ9ebOgwucQKZKlQ67dmL8nx7G+fZaGs40NjYVUsTPsD6H6nq/NEazeS5O17cB1mDvNZyOvPvqMyQYzmrEQKYLr8tRBCuQrBxRwgWsJM7s8V0dRLxodbMLnlsjdfjzbKDSR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=aHuYTRoA; arc=none smtp.client-ip=209.85.160.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-40421de595fso2003960fac.3
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 12:38:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769200726; x=1769805526; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w6oXy9SAavgg4QtAir0K2/dqpzLAUs+ACA4F9zQ5oKI=;
        b=aHuYTRoA/YoRQxZBudut92S/EjpBHG+zzZRndDuCaX+T8h/jK4Dolhntf0jaMqGQB7
         WNNINYqsPLGKBD/+7TIwh2EdUDo1GdXA4c1cNx5s+6Awr3laRexp03vtOT+zn/DAM6xU
         6U3aXYg8VoNLyO2gMbfawha4KAV60BQ9CRvvHSUJe+nCQk6VVBHnjTnqR5V4pThbzepX
         ZJi9V7vS70MA/oGORPVKp9tQ6b4AAUwZJP5d/+hkXOEI1sCyATaM2Nuet/fY7U3Po/tA
         GhnK9IAjzzBIkP5LX1vJQ6RqBIaOd7dmx+pFU+KfFQfxOppesVJl+g/FCaZ1yQ8jfcAo
         7F7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769200726; x=1769805526;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=w6oXy9SAavgg4QtAir0K2/dqpzLAUs+ACA4F9zQ5oKI=;
        b=Ss1jyX9xgq5PDW4mWaWOKZs+NBdmF9HQAgB4GeOAlaREqSQs3Y2dYAjDnU/skD8yqg
         X1GXgGmb7PsDmXqF/1TLjh0/iEu7FCBBzNWXnyi5czz79OmG8aO8uRGz5x5b54eBNWoB
         ccB+W88m/thdDr2+hSLWviH+kGjainW/JyDhHBOE7wostYqX8xEytrmLokO5jIEtouUH
         g9V+6tuYh6fHNPbM4R5ijvV4X8i/TWX/FoSofjCFMhPC5UnMoJQuTXczsQIA2s1Ey4sY
         7zi3ImEki/xuHEjaXa+frGmIMfolMavKtXDZKuC297CdKJ/d9VGtt5tBfGKpHZnilXuW
         tLdA==
X-Forwarded-Encrypted: i=1; AJvYcCXU3WTwfG7odCx5EUhtHJPGnXLcZOlulEFNKG5E12VWgk+qgp82yZdgrKWgyt07B8ZunJp4vtnC8Igz@vger.kernel.org
X-Gm-Message-State: AOJu0YwyAGhS9BOVwDrbEEXLkOUcvCCOWVpKJ2TcZuiy1TiBfxN/sRnt
	4422ZLjDiRMCVSkKrjo/pTuvLVaIpKfKo6IKDG0goG0p8JnPKBSUfxUBBXxdQcVr4k8=
X-Gm-Gg: AZuq6aKJUl+Dkysa12j8bozisIErAQfEsBF24Eba+5mNRLTP4G79UKuqFZSsv5CRI7X
	i2151xhtmLWJCJ5FQl6QozU9jWQZCNlKl90mGmAITVkLF2M85c3qyXA0mG8r5y9viPIUO+l2YAx
	TOBc8+WoBx5StqYnzFDGU1EIPqnf4zz6wkBRbFQpqzTJo1tv+FI3uJhem7BPjtH0kF9RIcjsvp8
	n2ClvYJtySNgJrrYhr8MHg4oJxdnAv7Sj3/1mP5RgCc7FgnBgksSW5V/w+zFXBuNpBRICNl2gzd
	uidxM81iDZ8jYUZ0tq08b/NF8uGmsw4CGVVvif6z+b3Qh62aEUaQGGiaVv4wZ3Z++wr8xYnTNdh
	hTU3HA5vfaFTxgBoGtmVAxbOgN8W7tXiW+qhivcs+zljsjGCznxiaqWXrrEhU/b/RgsbKjwxkGD
	9uUIQi90+uT/aZ1g==
X-Received: by 2002:a05:6871:2e89:b0:404:43c1:28b5 with SMTP id 586e51a60fabf-408ab4e60f2mr2227571fac.14.1769200726621;
        Fri, 23 Jan 2026 12:38:46 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:198f:2b50:c48:1875])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-408af888da1sm2167805fac.6.2026.01.23.12.38.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 12:38:46 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 23 Jan 2026 14:37:27 -0600
Subject: [PATCH v6 4/9] spi: add multi_lane_mode field to struct
 spi_transfer
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260123-spi-add-multi-bus-support-v6-4-12af183c06eb@baylibre.com>
References: <20260123-spi-add-multi-bus-support-v6-0-12af183c06eb@baylibre.com>
In-Reply-To: <20260123-spi-add-multi-bus-support-v6-0-12af183c06eb@baylibre.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marcelo Schmitt <marcelo.schmitt@analog.com>, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>
Cc: Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, David Lechner <dlechner@baylibre.com>, 
 Jonathan Cameron <jonathan.cameron@huawei.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2129; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=6K+Y2EpItjAFEVDHoZvaznPDbPUDrOkWEh/VhUaPTSM=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpc9wjnXMHw1tRGqZ6YNmZ5UlrWYkzHUgSrhuv1
 MEsWa4upC6JATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaXPcIwAKCRDCzCAB/wGP
 wJnnCACUe2jk1jNjSGdqZBZ5TKEPO/eu3xkCUafz2SJHfCZ181UY0qHmVMtSnWIf+S3V+/f+bsJ
 Oj66B//o16b1cSeRpLS652IOro4mwCasABG8beWtnXI/1HrY5nBdzOTcRVdkMEuLfeOfXzLSJwD
 pn7iOLhz+saxfqw6GRfPfrZ7zNyFjahc+lQ8Zp+7oHG5dkEDUUXaI57zx5/iYuzYQjaEIo8IQD0
 lUcVQGnPgkV3RuTKADBgWSZpp4Dv5Bewg8EBSIY/iwgTFBYVK9wz7ahq6dvAo5wMJKia1g1lGwR
 bKzuUnupvn21goJfbbBqv9+k4al0iIxyJak54Xr3Db74duIP
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259124-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[baylibre.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: DB7D07AA22
X-Rspamd-Action: no action

Add a new multi_lane_mode field to struct spi_transfer to allow
peripherals that support multiple SPI lanes to be used with a single
SPI controller.

This requires both the peripheral and the controller to have multiple
serializers connected to separate data lanes. It could also be used with
a single controller and multiple peripherals that are functioning as a
single logical device (similar to parallel memories).

Acked-by: Nuno Sá <nuno.sa@analog.com>
Acked-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
Reviewed-by: Jonathan Cameron <jonathan.cameron@huawei.com>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v6 changes: none

v5 changes: none

v4 changes:
* Shortened commit message (useful info will be in docs instead).
* Added whitespace to create clear grouping of macros and the field.

v3 changes:
* Renamed "buses" to "lanes" to reflect devicetree property name change.
---
 include/linux/spi/spi.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
index ec8a03ee0d4c..fd8dce4169f7 100644
--- a/include/linux/spi/spi.h
+++ b/include/linux/spi/spi.h
@@ -990,6 +990,8 @@ struct spi_res {
  *      (SPI_NBITS_SINGLE) is used.
  * @rx_nbits: number of bits used for reading. If 0 the default
  *      (SPI_NBITS_SINGLE) is used.
+ * @multi_lane_mode: How to serialize data on multiple lanes. One of the
+ *      SPI_MULTI_LANE_MODE_* values.
  * @len: size of rx and tx buffers (in bytes)
  * @speed_hz: Select a speed other than the device default for this
  *      transfer. If 0 the default (from @spi_device) is used.
@@ -1126,6 +1128,12 @@ struct spi_transfer {
 	unsigned	cs_change:1;
 	unsigned	tx_nbits:4;
 	unsigned	rx_nbits:4;
+
+#define SPI_MULTI_LANE_MODE_SINGLE	0 /* only use single lane */
+#define SPI_MULTI_LANE_MODE_STRIPE	1 /* one data word per lane */
+#define SPI_MULTI_LANE_MODE_MIRROR	2 /* same word sent on all lanes */
+	unsigned	multi_lane_mode: 2;
+
 	unsigned	timestamped:1;
 	bool		dtr_mode;
 #define	SPI_NBITS_SINGLE	0x01 /* 1-bit transfer */

-- 
2.43.0


