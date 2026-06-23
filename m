Return-Path: <devicetree+bounces-314850-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BEyiNs2ROmqPAQgAu9opvQ
	(envelope-from <devicetree+bounces-314850-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 16:01:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C406B7B29
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 16:01:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=gDgH9vCd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314850-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314850-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1ADF53008748
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 14:01:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84E4337F73A;
	Tue, 23 Jun 2026 14:01:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3B434E761
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 14:01:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782223281; cv=none; b=s1qjmZiyK8zz8NftPvOYa9A3Dm6ku8w/2RD3zp+0AowRVfU875rq6Ys4hTDfYG3pivvV16DqXKLvHo+bn/71OtFrGOZRkT2uhdFTX1v3OerBzVMvbs5qpi65yq3kWNnw88ZI8TTLn4xTTNJlhmxRAwDhmzuU0Z7fgEf2M7PCA6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782223281; c=relaxed/simple;
	bh=fMVBqccmwp/luWcEuPsDmZ2zWK4sKAf+ovBgWOeG4TU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GssZqlbypBF9J++tVXYsK0IikTMbMUGtw8QBAImw3uLiq5rWtSYr1PJei27jpVOZwtkGwyacay0LJhlJVLeaIlmGfQOuWnG7ude2S56h30aP48FIbgqbfNFECg+8BlTU5D0tUHx537UbB3RaV8Cg5+TFoXOd5djY4+aklCxOJak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gDgH9vCd; arc=none smtp.client-ip=209.85.167.49
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5ad0abf1f7bso4373647e87.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 07:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782223278; x=1782828078; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WAoG+I0VeboZcfZOa9yLZ2YB71By/3o7AaSCl8pHZgU=;
        b=gDgH9vCd1kntXUDa0Aq1Zub+XqRkbjlglCZ6rbnDWJbT+nM2VxwZ5lGHgbmef1jc4Y
         QsSuIagTSF6t4kYBIfqWbZvYJG1hyCKSfh/fPhskaDsMI2MOEwho8SlUWmS8rvl3Gy82
         r5elEAnZi0/3rUxSHK5LVTJhKxWCqFvx9an+eLSYB1NzuEejwsFbWvLfXx2AHlcjBesj
         sw6fuSddrGWCbUuX2neHqKkUDzM+vGHoOaiIc0zhceWrb81j+0Y0K6NOBjpykyMnpc6g
         MrOeWylEaGU5l0Pmmsb5FiKeQGObp9NWLhS9q7f0PmRMby5xjYkvRThpIe1mn3GavpC4
         Q9QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782223278; x=1782828078;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WAoG+I0VeboZcfZOa9yLZ2YB71By/3o7AaSCl8pHZgU=;
        b=e0PyQAESXsMtGNSVMrLRDwZ/EPnBn5IDXAdLRGC7t3Lcd6muyXaM8RwMUIFgPjDnje
         L9A0LaqiPLs/Ifl4WFb19yye/KD1rTAsBAlB2Pv5IycH9mhpjmV06sfjlQA8pQgx6np/
         Y0W51ZWYq7FJe/IWo97fjOHyV1WU4bHQf8g7xF8HnNKoKWNjJPvWu2UddusoOv0ufG33
         HUfDNr1Eq681GHA3jwD2H1NAD7D6xJVy5RjjpiKY5mSvnwUMi2337wU+pio8YlY4/Erw
         PxKWsM+UPY5lD6k2PK0BVTGcrj7dfmllPmA1tllA+Divp9mpKZz1sL+migr86cJ97kj6
         C37A==
X-Forwarded-Encrypted: i=1; AFNElJ/CI0HrUTfPjSwg8ui1s2hwe8CCZJtK/ircFrxizhs0IaAy4swyBDXEXBhQDWRSwcEUxfuUqnnB/hQv@vger.kernel.org
X-Gm-Message-State: AOJu0Yyl+/9Td6FbfsQ/lDJ1Xlq10eD81ToxpH5JFDWHsD9cAFPEIfUT
	TpXvVYxPuHZNV+2zRLzQrFJE6JJKt7AIewK8nhQoCuGcp4GMpp/qij2R
X-Gm-Gg: AfdE7cn7vZ0hYjS4PjoC/dHIf2rm7/nAcOA9WkX1dZ/noeltrEtQV0SY1Oxy7Z7SO4h
	EoLgPn7CaXWYA0cOxJ21koPnMngp/Nywq95Eevjx7N79KRyVl5mT3DXrEJRPeltRuI9y1LQnYeQ
	G3vMneZM3D9wACB5M8Y2b1yibqNTmj5qJUuL1aDcZecbVD2f0NQX/LvgzyJfd8YHNjz2RVT5+io
	ntkFhgxi9Xx0rlrLNeKFnTzfU9Hc3OxHMzURDuvNwYhxkr538q4AaDbh+rZHjQKCEN4QOyBeYT8
	CdNifIMhqCUXQWhQR4TMyxjgPuH5PGNTRWR0WM1BGUIxRlmPELH657sozPddShu28UVtWAV0qZb
	FrFs8gg4vhCB8cyCnwkDPJuLbzGoHNy7LHUiIUE39VyPqet3FfMjVxVcJ1C0iXRjyuLLZ20vkec
	+7f1dGDbarIM9zMzrqPqMVyxb812Y/tZkASDxT0SfIbQolhijwrFPUyZKO
X-Received: by 2002:ac2:51c9:0:b0:5ad:4da9:7330 with SMTP id 2adb3069b0e04-5ad576da87cmr6211327e87.11.1782223277734;
        Tue, 23 Jun 2026 07:01:17 -0700 (PDT)
Received: from Shofiq.home (87-92-251-137.rev.dnainternet.fi. [87.92.251.137])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5ad6958216fsm832663e87.70.2026.06.23.07.01.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 07:01:16 -0700 (PDT)
From: Md Shofiqul Islam <shofiqtest@gmail.com>
To: linux-iio@vger.kernel.org
Cc: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	Md Shofiqul Islam <shofiqtest@gmail.com>
Subject: [PATCH 0/1] iio: health: add MAX86150 ECG and PPG biosensor driver
Date: Tue, 23 Jun 2026 17:01:12 +0300
Message-ID: <20260623140113.12574-1-shofiqtest@gmail.com>
X-Mailer: git-send-email 2.51.1
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314850-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:devicetree@vger.kernel.org,m:shofiqtest@gmail.com,m:krzk@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[shofiqtest@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shofiqtest@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 30C406B7B29

The MAX86150 (Maxim/Analog Devices) combines two PPG optical channels
(Red/IR LED) and one ECG biopotential channel in a single I2C device.
Data is produced at up to 3200 Hz and buffered in a 32-entry hardware
FIFO with a configurable almost-full interrupt.

This patch adds an IIO driver that exposes three channels:

  in_intensity_red_raw   -- PPG Red LED, 19-bit unsigned
  in_intensity_ir_raw    -- PPG IR LED, 19-bit unsigned
  in_voltage0_raw        -- ECG biopotential, 18-bit signed

Key implementation choices:

  - regmap_noinc_read() for FIFO access: reads 9 bytes (3 slots x 3
    bytes) from the streaming FIFO_DATA register in a single I2C
    burst without address auto-increment.

  - IIO hardware trigger backed by the device interrupt (active-low,
    FIFO almost-full). When an interrupt GPIO is provided in the device
    tree, a trigger is registered and wired to the IIO triggered buffer
    path for continuous low-overhead capture.

  - All resource management uses devm_* APIs.

Known limitations to be addressed in v2:
  - IIO_CHAN_INFO_SCALE not yet implemented.
  - Runtime PM (SYS_CTRL SHDN bit) not yet implemented.
  - Not yet tested on physical hardware.

Md Shofiqul Islam (1):
  iio: health: add MAX86150 ECG and PPG biosensor driver

 .../bindings/iio/health/maxim,max86150.yaml   |  67 +++
 drivers/iio/health/Kconfig                    |  23 +
 drivers/iio/health/Makefile                   |   1 +
 drivers/iio/health/max86150.c                 | 512 ++++++++++++++++++
 4 files changed, 603 insertions(+)
 create mode 100755 Documentation/devicetree/bindings/iio/health/maxim,max86150.yaml
 create mode 100755 drivers/iio/health/max86150.c

-- 
2.51.1


