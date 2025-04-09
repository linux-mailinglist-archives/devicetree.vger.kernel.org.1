Return-Path: <devicetree+bounces-164963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A9AE1A83066
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 21:22:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2869C3AB2C8
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 19:22:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 795B01E501C;
	Wed,  9 Apr 2025 19:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="TwCQYgO4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00E8E1E51E0
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 19:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744226541; cv=none; b=P8FifesRQXtlZbvDScuhGCtL97f59JV+XVSW5ZdGva7ALMwfalUUvMz2mi+5MvsxnBGffgPXCJICkI59IUsS6jsN6GXpHF031g0cd/wJDkNnVMbRQYIKEAgRLKtmwxN4vvIhytYqGWw7/1/MrG/dCy0Ag60JW5QZVI7CrGhmbpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744226541; c=relaxed/simple;
	bh=cmNctPgE5CTHw/tO9Zr51B/dhnA9zRrqJS02ywdELvc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=rgsycPM64DCXamSqmXGmvMtPvkEnm4N+g3O/YN6j7uLTXZYmysCqxNa2NncURrnv0UPu1Kz9LPOUYnB94XfZ5MZYpgJuRYgZMOMQR7weHjkaRXKJiwVTaL52YFJV6ILM0LnKu4y5N0xg8ykLAg6FPLD1Nk5vyVIcGgyZYCwfTdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=TwCQYgO4; arc=none smtp.client-ip=209.85.166.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f50.google.com with SMTP id ca18e2360f4ac-86117e5adb3so3062439f.2
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 12:22:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744226538; x=1744831338; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RpmhxAFcMMXA3ewYDfoakLRc7cttBGIU/Z/F5aA9aBU=;
        b=TwCQYgO4jiAJYKPKOYVkWwyHzgY07PbApO/vuPDHe67VdgC+gjstcmXmm7bV1ByEo4
         7koxdgONZlbBiDVdP6amSXsR+tqG/T3SC5bRvDQTT4UrTgamSMEXnk/SrJopJx1sWYx7
         QndNfvqPUwWx2aMrcCMEv6wDoBzqK916sapi7JEqFrpk+GG7eIUOVHxlNdSDwH1pv4+t
         nEjick0WVMilIlUkuQWuM+zPVTqeOMMN/59/xEgJ6QcrlWgBHKKDGklOQSgYbg2Hhzdx
         wxrhIugZPrea6Bo753xVbXPWe7r0cR4O7casjRRa7KgRjK9pSNnCUmrPfM24VvwFcqXN
         D/CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744226538; x=1744831338;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RpmhxAFcMMXA3ewYDfoakLRc7cttBGIU/Z/F5aA9aBU=;
        b=Xl6Sm0UGQMt3Lg53FTYLb6yWTTrAXr8Ua/48YXWq5hTN81X3csX3aU8+r9xXUtCs2u
         e0WKzfD07BswcagH70TJbcqLfdkprcI71TF55RciD/TNW5n8YI6wL1Eu7dqghyF1Bxzd
         t+4ihUdL1i12V2OlmiDF/7cGvflj+hWoIyFnoXAB2YRcXfVXAQ3VZPYw4Mu+p9xCiziD
         Z+QRfHDnk9aaOQ5hLIIoIcZ8wxssC7+XQu3sPwvY6b7mB82XLhv+5W38J5sSsd6VETgB
         /Tp4/9gfqRGux4jkrhU21Z0QkvfXTDnBqKh5s9rrLLpRunW5FHiiAcsaQftN2FkRYONX
         /EsA==
X-Forwarded-Encrypted: i=1; AJvYcCUoTaK4kIfFS2AfKEuab8QQK9bGqKDw7+r6adPWRyCU2JrQ/7C0hQN+WdtkVQ3fMz4GgkhDS+/8gqlm@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4Lv+tI/C6cWmeimca75zsYTm3OOqbpRgMQL0XGAb6GcINJm+5
	a/wHdA0vmSWE3dficG3BpMa2KqYqQE8f8JBzjsaEP07s9vw15lMsDiUFXdnm5vo=
X-Gm-Gg: ASbGncv0l2AUNj1hSrJD/AMxWtzk0504Go8B+J2aTeQnu39k4hZb352oMxtqVNvxmZ1
	WHM1XbMgVuWcE89bDWJsDa+OJZdNQN2jobxzPMue59srCiRoYoZ/hE1pb8ZzaoDbFgqIgsZqAmI
	gFy1l0K30enBqGQOB6+4F94U8use2JFGYLU/TMMsFJVbPokFdFSp1zwOfYh7g5/8zpTeCmm1/6n
	eahfIE3BF0nQtVLnWOhetsBLyH0vyRELfAltmxJuEoYmWzkHsqtIySSGHVh9RbSqIyDyWUb2eDw
	Ya/8Sf38A16ylsF31ASuvwBIRsYvQaLpj2lOTkAExV0QJnGPfsnAyF/NuTNJKBFE181Uz8ifg32
	GgAicPgnO1gHtMA==
X-Google-Smtp-Source: AGHT+IHBIdM0sFVSXLsUHTwEjKCRbcHIGbDh+GVFxWpuuQ8TjUX92cXZCZ725TWzNK6m0iuJUoVS1w==
X-Received: by 2002:a05:6602:481a:b0:85b:45c4:571e with SMTP id ca18e2360f4ac-8616edbb21cmr9242139f.9.1744226538068;
        Wed, 09 Apr 2025 12:22:18 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f505cf81bcsm373459173.10.2025.04.09.12.22.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 12:22:17 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlan@gentoo.org,
	benjamin.larsson@genexis.eu,
	bastien.curutchet@bootlin.com,
	andriy.shevchenko@linux.intel.com,
	u.kleine-koenig@baylibre.com,
	lkundrak@v3.sk,
	devicetree@vger.kernel.org,
	linux-serial@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] serial: 8250_of: support an optional bus clock
Date: Wed,  9 Apr 2025 14:22:10 -0500
Message-ID: <20250409192213.1130181-1-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SpacemiT UART hardware requires a bus clock to be enabled in addition
to the primary function clock.

This series makes it possible to specify both clocks via DTS.  If a
bus clock is required, it and the primary clock are fetched by name.

Since the first version, the DT binding (which had errors) was updated
to properly define the number of clocks and clock names, dependent on
the compatible string as suggested by Rob Herring.

The logic that looks up the optional bus clock has also been changed, as
requested by Andy Shevchenko.  In addition, the bus clock pointer (which
was never used after it was enabled) is no longer stored in the
of_serial_info structure.

Here is the first version of this series:
  https://lore.kernel.org/lkml/20250408175146.979557-1-elder@riscstar.com/

					-Alex

Alex Elder (2):
  dt-bindings: serial: 8250: support an optional second clock
  serial: 8250_of: add support for an optional bus clock

 .../devicetree/bindings/serial/8250.yaml      | 30 ++++++++++++++++++-
 drivers/tty/serial/8250/8250_of.c             | 11 ++++++-
 2 files changed, 39 insertions(+), 2 deletions(-)

-- 
2.45.2


