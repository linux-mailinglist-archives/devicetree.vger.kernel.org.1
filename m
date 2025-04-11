Return-Path: <devicetree+bounces-166018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCFFA8622B
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 17:44:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E40F87B057E
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 15:43:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0939211711;
	Fri, 11 Apr 2025 15:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="La62plsp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBEAE20AF8B
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 15:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744386267; cv=none; b=onYWdBZiM8vYJ4J5zNZG+ZBhjdOpVaZI51XFm02u+9VY6pIloQrrHUSiCaP1LYU52Jj9L8CAN7U3n+uQ+OFdl7G3T6awRcpoxo25+3ErDy8Bb9IrbqaYKaXJXMhaU+c8GoiMhGbZ3aokhXwSl6r1r+E2kefgSDUvVWm3Pre5BdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744386267; c=relaxed/simple;
	bh=2wgs8xkLPcDzrMkx5fPptVOf8gKg9PkOJJY3p/JCOtE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CKK/y6WvTU80PgFvy7jBEoZCVybS3ogGRY6Xiur/itS9ji7DQ9fMqOntbSxWiQRDANngasdK9D3dwKIi2sBABNbmWfCID5CsNVBbJRyccmThZHK255JDGXmAQKP5TOgKlyhzBvGEzzFb75g+F080374wMVM+WYSxdD77JTwlFzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=La62plsp; arc=none smtp.client-ip=209.85.166.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f173.google.com with SMTP id e9e14a558f8ab-3d45503af24so18667035ab.2
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 08:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744386265; x=1744991065; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2r1c/vOhjgtnKBMGLqUCUilpq9yxWP4WtszcGjN9x5E=;
        b=La62plsp+VYYlfiiDPGdu3r5WjNlfltaD9Sxk3FEvgxDTjjrzcm7aP54H7fIj9FDAH
         8R3ooLXpA1wPZiH2qwApaSQGqnS4UgLX8XIw44y7cVDyCl0UZLPXM8n+4W5/nCNEehin
         041+VdhdvJW37i7DJ1rrwChvp5e9aDR6TERIKHy/rmInbjm0ErGyJGiitrQ5h0kAi0bS
         EOWUoB083qeTSVanZn3fA5XPNanoXG21YY0Km4KXECEl/vEuRLuA1B//7sr7PMfK67Xr
         9O1ZDYHHPx6/3xtcKeYRq3NH+8g4IR5rSRMtiUxkKTcSkOIzWVulF4YJYq3afra0r5ZZ
         3nAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744386265; x=1744991065;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2r1c/vOhjgtnKBMGLqUCUilpq9yxWP4WtszcGjN9x5E=;
        b=nz1L9NxWtCE+sxVs1ewDUBcM5oV1O7y1xWld1YdlbHQDMYdK6XdQyEdRndcV1NIMoa
         Rk1sOKXGMkMe1P+6c975Z8aZy97yMCP+rPhYaiSEUS82tQWUJrKDhCyRLWRCvZUZsRRx
         ZsJNGDokFsPV7B5zszoRP+VK6pBlBhrhFv/apijdEEeAfK1z/AdWVPJBwbQA0k8HXDPD
         ps9PLzWWfZe5DCt1jSJWUQXio9Ey7wm/FDWTgqNar2U0/aE1xojVHVLxKAlq76IkUZdz
         D9S7abXT4m8NhgrWFW+9wt2ac01kgtlSkDYKTMFORhXGgU9b1THK5C5CQoIhBEc4QClT
         n2Gw==
X-Forwarded-Encrypted: i=1; AJvYcCXSFc6PsgE3BRh5/R1QR1bYrAX3NSbw6SC5nB52y2L3DO8683zGXyHFJdgK3VhwbNaXdD1qloswhoKy@vger.kernel.org
X-Gm-Message-State: AOJu0Yy62MrXaKaAribsQmM6E6HDRWFuj0y+HINIJ2od8De7GiKeVn8d
	tU2kcjfAgVQV24K1oEwtt9IKUGiclwOjWBVzXpsTr9oABNbqb6ImnKMEHoMvMdY=
X-Gm-Gg: ASbGnctkFE5xBc5Qw63k1mNFp6JIMcmlCgcWPTpKTMvXlOUeUK31I6QLMrkPEY9u7k3
	+kz3vA9/Yh9kke/J0IHez4gdvvuq9Vnj+fs19ew4l8hyXtV1JvgLacsbfj+pCurjzHe80q3kASo
	hhYL6AltPjZnT4iQ4v8SXSRM40oGVAeump9T3Y3JjGXjaJwRDutHLPxL5iAaiXE1QxhCM4f/ObU
	q9nSmgQkchllLq03am24UmaWtYocq0PyKY4j66sL80RxuNd8eaR+4xhD6HDVb0ghzAmV61olWJq
	aZgTM819TZIC9l4UCjv3c/wBptuBQtqswSai9WWMrOpipaqIJPk1tlycU0u+8RwXFfTaBsK4nUW
	yOApTszX+7JU55w==
X-Google-Smtp-Source: AGHT+IFK5sdaLIBjH4lJHrLTb46aftzH6TysHI0IthYxIBi/kqyaLNxSazBe9csKjIFKMCbouX8yUw==
X-Received: by 2002:a05:6e02:3601:b0:3d0:4bce:cfa8 with SMTP id e9e14a558f8ab-3d7ec1dc7f4mr34974745ab.3.1744386264887;
        Fri, 11 Apr 2025 08:44:24 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f505cf812dsm1276326173.18.2025.04.11.08.44.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 08:44:24 -0700 (PDT)
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
Subject: [PATCH v3 0/3] serial: 8250_of: support an optional bus clock
Date: Fri, 11 Apr 2025 10:44:15 -0500
Message-ID: <20250411154419.1379529-1-elder@riscstar.com>
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

Changes between v2 and v3:
  - A third patch was added to disable the bus clock on suspend and
    enable it again on resume, as requested by Yixun Lan
  - Rob's Reviewed-by tag has been added to patch 1
  - The first two patches are otherwise identical to what was in v2

Here is version 2 of this series:
  https://lore.kernel.org/lkml/20250409192213.1130181-1-elder@riscstar.com/

Changes between v1 and v2:
  - The DT binding was fixed to properly define the number of clocks and
    clock names based on the compatible string, as suggested by Rob Herring
  - Logic to look up the optional bus clock was changed as requested
    by Andy Shevchenko
  - The bus clock pointer (which was never used after it was enabled)
    was renmoved from the of_serial_info structure

Here is the first version of this series:
  https://lore.kernel.org/lkml/20250408175146.979557-1-elder@riscstar.com/

					-Alex
Alex Elder (3):
  dt-bindings: serial: 8250: support an optional second clock
  serial: 8250_of: add support for an optional bus clock
  serial: 8250_of: manage bus clock in suspend/resume

 .../devicetree/bindings/serial/8250.yaml      | 30 ++++++++++++++++++-
 drivers/tty/serial/8250/8250_of.c             | 13 +++++++-
 2 files changed, 41 insertions(+), 2 deletions(-)

base-commit: 0af2f6be1b4281385b618cb86ad946eded089ac8
-- 
2.45.2


