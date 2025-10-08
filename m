Return-Path: <devicetree+bounces-224349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C015FBC332B
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 05:18:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CD84E4E8B76
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 03:18:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F152C29E11D;
	Wed,  8 Oct 2025 03:18:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ECwVSz9h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com [209.85.216.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85B6829E0F7
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 03:18:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759893484; cv=none; b=feGvtjz/KYH6trci6d1y74VlEpprb2Iozkc1dWNhxjml06M2ZNET4ZSCD5yEXPgaiTuZ78xWhWmKIInI8ASyhDwFencmbff9fasZaOsT0V0po40ghTM/xNXQGr9qMVcXqYyW5An43e/eJSjyRMrELh271lhg7eSgmohI1UaVsWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759893484; c=relaxed/simple;
	bh=fIWRrEbesPeIWiQ6eMVMhIFPJ5Vl3n8thvPxlDqtswg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=q9C7OZHplgDPA3fT60SEVBqkiEdmz61URAdO22110U50A8cVwm36YzF2hharJrKE8sXPZoajRlSliRilFS9XrrHz0vvTlIALf6eimOv5fh3ouufHrLUjj8f0Np+XQdk1BpmCEh7WNoG34Dm27sp6ZGw5PY2vMv1p7JJAaHCbylY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ECwVSz9h; arc=none smtp.client-ip=209.85.216.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f68.google.com with SMTP id 98e67ed59e1d1-3304dd2f119so5936387a91.2
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 20:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759893481; x=1760498281; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZUBWpVB64KIAGGN3DNkFK9HbyeXvjuC9xFABF4qCWPQ=;
        b=ECwVSz9h7R1gjhTWodWJuE0a6WxTvdkHrRojgNN5p0BDI/ldTN8CoG7Yqxf9ICAps5
         2kdIIM3FENZVhk9Vy8YnSzGNvC6zrtm+wLsKaR/vHseBpSOmzKmFIJ9Tx2kZOFiLh9Sh
         I8ZG2mIf4VxireWcfo/hV/juJtAG9jUd4dcWk4fyxEJW4VsoLN2N0CO+AsePDNmv8KgA
         Ziwv2m74dH+17k0Ur2uBhvScAetxJ2ClShYoASbwemZzix3/igI1W7Bc3x/g3FpwtGvg
         sM0otcc29Ib7IMx50exLft9rSr4UAfC2fkcqzu2ZlAssU7uITEYL+LWXCV5KW3ANyb4G
         AVkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759893481; x=1760498281;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZUBWpVB64KIAGGN3DNkFK9HbyeXvjuC9xFABF4qCWPQ=;
        b=GAuvPSIpBfZ4Lsn9VSaTneGDSj9ZSC8e4d+QT8f3/oau7tyI/Bok27nE3VsabUGRP9
         O6XUFPVTUNuQs+3kOVd2O6YwU4jbsPF3t7kpMWxueF9jKKF4a8QjaebJj5/oMaQzQnyF
         /WR/jnxxEQuGXA/cXeVOHkKVqdtI25DBNSA5kmg35bZex37eqshO21+EUx560we1V6s7
         rL1eTBseIYkPrrqzVfGvAYZdgNEU2ZB/SfpW3rqkPCeHSBnq0e9gLRE8lmoAYvSlDLqq
         FwDf3czx3Fw1liHVJ3ZSEvjDf8TqaVo7UVOL7a/hJchAWpMMMEx0LJdwFfohuFqx0r81
         oVqg==
X-Forwarded-Encrypted: i=1; AJvYcCVDSGQos99zGvdmdrLugERaKgMQZ7bvY9kjSXn7YYfFnDdamkZGYWO2fg+a6MMo9079TKwR0Xwf6/Hx@vger.kernel.org
X-Gm-Message-State: AOJu0YzqLT9Dto/2nkGIErGLrSTbxE6UesgAKx6Ff6ZzUjhCW60cBBg8
	BE6A4ucQGInyL2qrL7+kq122jqSz6ZcNJH/iif/BVb6wg5YPa3fT/400
X-Gm-Gg: ASbGncszX0fL+/SWf9nzxweR4+qjU6+rdQv3YSBEHasSDBIrg9CgZquPbpE2M2WDn07
	qSXPE7BhCsklJ8gu64IwocJcIo9hzRBKV07bE/2+BYZ9sNJdA4t7SQvLFCoOEy8hwv1RrsAgPXM
	4dsLLy/RQVYpJSMRMpxBR1+jlGzMlaWxU6WzerL8mPy57cTzhzN1yUWoBv+NiRO0ljDBTCPRI13
	I64OjfH8cDNbNdGBLV9+oGk1FADKEDzh6piAaqjdh7C3cLde2CjI8ahZiQDoMd/+2iZqqLvdQzS
	ZgSC6p8ixFg9fk+tPaUwdly7vPEztcceh0DS4IXj8/GTu2skvu2Moxft/WR3QNvtaWjhEY/xU2t
	On5yCFUrNLydQXbZeCf+wkeuvwNhz8LRKqF75x6/faGTUZhNaeA==
X-Google-Smtp-Source: AGHT+IFbdt9o4+B6JZ8AWtV8URWuFR7skbc+7Fl9EFjuHuykYyJ4lLgk47E5Wl6/dwG7ikfSKtGBqA==
X-Received: by 2002:a17:90b:1c81:b0:330:7a11:f111 with SMTP id 98e67ed59e1d1-33b513be2c9mr2208816a91.35.1759893480753;
        Tue, 07 Oct 2025 20:18:00 -0700 (PDT)
Received: from Ubuntu24.. ([103.187.64.31])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099f5990csm16527746a12.38.2025.10.07.20.17.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 20:18:00 -0700 (PDT)
From: Shrikant Raskar <raskar.shree97@gmail.com>
To: jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	matt@ranostay.sg,
	skhan@linuxfoundation.org,
	david.hunter.linux@gmail.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-kernel-mentees@lists.linux.dev,
	Shrikant Raskar <raskar.shree97@gmail.com>
Subject: [PATCH v2 0/2] iio: health: max30100: Add DT pulse-width support
Date: Wed,  8 Oct 2025 08:47:35 +0530
Message-ID: <20251008031737.7321-1-raskar.shree97@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for configuring the LED pulse width of the
MAX30100 sensor via a device tree property.

v2 changes:
dt-bindings: iio: max30100: Add pulse-width property:
  Add unit suffix (-microseconds)
  Drop redundant description
iio: health: max30100: Add pulse-width configuration via DT:
  Improve default handling
  Used FIELD_PREP() for pulse width
  Use dev_err_probe() for error reporting
  Fix signedness issue

Tested on: Raspberry Pi 3B + MAX30100 breakout

Shrikant Raskar (2):
  dt-bindings: iio: max30100: Add pulse-width property
  iio: health: max30100: Add pulse-width configuration via DT

 .../bindings/iio/health/maxim,max30100.yaml   |  6 ++++
 drivers/iio/health/max30100.c                 | 35 +++++++++++++++++--
 2 files changed, 39 insertions(+), 2 deletions(-)

-- 
2.43.0


