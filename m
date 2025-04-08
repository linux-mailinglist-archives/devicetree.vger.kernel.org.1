Return-Path: <devicetree+bounces-164502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CC0A81407
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 19:52:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 55C087BA724
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 17:51:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDA3023E325;
	Tue,  8 Apr 2025 17:51:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="1UuQVUMj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CC823E220
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 17:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744134712; cv=none; b=uT64sZIyDTZj4yE5Tlr0Jul7aim5vfgyZk52C60lq8vp/hr/SnSkEDig49SuSUxFmPwwlMDlwkEKO4ryYMtGsUSpd82tS42aQ88p2U5kR9jkBBcmIRlr6V7ByA/aRoLbD+OGuFQD12pgEqlMAg0vHQWq9DwQ8DblL3MYnieqTfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744134712; c=relaxed/simple;
	bh=LUAaQpYmHZr2x8IcCyxqSCkpOZjk7GLcZ6iYEadmxbY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sTgqtGYasfmxk5znSIOyhPpsREjBbXT7rVdRspIvsa9g9k5aWjALGDYyYSy4BHEVEVNRB3MyeypsLy+mfsS+yMhjBEPw4QCZeHe3HE/ambQTpGRON2qG4f6vnSqOHaN65bPucp22xqO7FP3JIb6G+lM1v4y0yZPdMFThUvP9bBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=1UuQVUMj; arc=none smtp.client-ip=209.85.166.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f169.google.com with SMTP id e9e14a558f8ab-3d46fddf357so20698455ab.2
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 10:51:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744134710; x=1744739510; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SvGZNr8yAkgwxgzEHlIxH9XT7UuZH9oRFwm3lKyD2fw=;
        b=1UuQVUMjZxymk8a7ggJmPWd6K/v/uzv+CNOzV+b4P4j4FLwIEVcNWu+2x9ZR9mcWS2
         sdVPh835kG9hkRehxtttGl77qHPYoB0bOF0nnB7C42r3GQzlqfoXQgTQ5sB9jh1UYaee
         UphRM0eKApiPF5gGQv0cj1fo4+mHoFlIjbnR2Dix3F4MS9vnaiYZBJ9kb3xOssmRJK7c
         ZWBEUWaZumyPn9M7GlqOh4d4KCHmMgFFWQ3eq2gKw3pAH2ilIV7htAxxLsLobZWE0lRn
         a5Or1yEfusZeVcDJOW8gPVDJyLguve0sHKqoeEjgXEKYsRQinfE8t+ZSnFixjgocA2/O
         1nRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744134710; x=1744739510;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SvGZNr8yAkgwxgzEHlIxH9XT7UuZH9oRFwm3lKyD2fw=;
        b=hicuw3pbX29o5jPDzInT4ovRynZJ52+xM1SgE9w+EI+tSem/eeMNN5upd8797+0Pks
         sZLl02A+w8D25GkTTSfEtQdCX9/O09+DDEl/vviggFzLVC02XRKOq8JHVtQtjS7lM8d7
         49orIq4/vL8dFsQkcES/6EMbJdVr9mCrogsln/GT/bCq8CaOykTftMqqCmxViQCHs9K8
         4IQBJRV43IM8chrN1TcDHVhTJI33oq9oz0A4MbY94jR6ffJ5elcRC2iyRLnFQnICX8xk
         lLeitd3KnRGySnxLN1DtixSNl1M+CXwpJQpHH5WKXagrVxJ9Yi32aOwDeANFL9O+RRoN
         Hjwg==
X-Forwarded-Encrypted: i=1; AJvYcCVAdg3NXITZX2Ng8CNGdrLR43ebJWUnHx5eWNhpmpHt5mItnN6R5bBM8nS98V/H3P8l8n17QRmbBpWN@vger.kernel.org
X-Gm-Message-State: AOJu0Yyre/aMZDaLt/vhCeCCHG6Rqjt0F2vhYDTa7Q4d6RJlW3v2/Pvx
	0QQtAkkYHXTcw/jGEu78dSOruNKir4JA+QaaVer4QTbqNYNUZ+HES6wWrxKlVoQ=
X-Gm-Gg: ASbGnctyAkSIwYyrvXMa7z/nVgUITTbkhtNz0Su9Ytk6LvbH5htvZOnhr0VrSGI56UJ
	Pz+LsZOghMEZhQ16DWZ6FT9TjnV+YZf4SFrMdbGhJepkInksO6s5mmjHx+AkfpmiSLcCWxgPn6T
	CWhAs0waBeECw/HKLGmsYEkeojz0snhZsiVnMLyr+cHFFbfw6banvbNnF26KC0VasMUPEUgxrl6
	E1UuKRDW+pOS65tgTFbX8Rx+unoFsApzr3CLv7akoOWS4jrmIl8YGg8Ips5DLn7skH/bqOYhwt2
	pk4SGvDB9nb9m84gZpBuoFTfk6V3lzldiddIqAn3w2nHCgFlE7X1IW6x2ua7oaEI+YFkFNN1elU
	mR9LjGMT6s+r950YK5g==
X-Google-Smtp-Source: AGHT+IFrFQFeWwluR9916XoDwk7qLK/YcvMXzppSoOv4/49mKNfrTo4IKuB+tZmx7E3ipEdOGJkdyw==
X-Received: by 2002:a05:6e02:4401:10b0:3d2:b154:49dc with SMTP id e9e14a558f8ab-3d6e52f60b0mr131530745ab.5.1744134710141;
        Tue, 08 Apr 2025 10:51:50 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f4f44e26fcsm595914173.120.2025.04.08.10.51.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 10:51:49 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: benjamin.larsson@genexis.eu,
	bastien.curutchet@bootlin.com,
	andriy.shevchenko@linux.intel.com,
	u.kleine-koenig@baylibre.com,
	lkundrak@v3.sk,
	devicetree@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] serial: 8250_of: support an optional bus clock
Date: Tue,  8 Apr 2025 12:51:41 -0500
Message-ID: <20250408175146.979557-1-elder@riscstar.com>
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

					-Alex

Alex Elder (2):
  dt-bindings: serial: 8250: support an optional second clock
  serial: 8250_of: add support for an optional bus clock

 .../devicetree/bindings/serial/8250.yaml      |  6 ++++-
 drivers/tty/serial/8250/8250_of.c             | 25 +++++++++++++++++--
 2 files changed, 28 insertions(+), 3 deletions(-)

-- 
2.45.2


