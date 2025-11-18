Return-Path: <devicetree+bounces-239845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D17CC69F18
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:27:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 68ED04F2715
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 14:19:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 882F035A956;
	Tue, 18 Nov 2025 14:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NM5rtW8k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD0A6357703
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763475526; cv=none; b=Tlx79QnirPBo9230OZRa+/HoyHK5f3BRfC+a3c1KFb7Lf+hcKeGPpYZFxk//1T8wotaRXUc6wz20AU3QvPX60TxHhTNbT1huWhnTRSrHabUXwfEqFSZnwxd8O/adlzJDCli5NXHY9Z3bk8uh1gWozeMPiXNDEOCDF+fXzpaqLbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763475526; c=relaxed/simple;
	bh=XNm5SEXmvtVWoiWQMxPFHwO31RPeOhsDsE+mz8PKG44=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=i6uSwrmeNCL5m35Sr13wMBVr7ohjf4NtTYk4MKL3dWlNGdtSaqx70ZFRb7K4smOuHO8z9gVhsfUP/ZLjeechg6FgR8X8dtDvrYbmQ5qD3V4x2ilbLrcwtqUmBCkDtiHdGUi0Kz9K5zyXSkyJU5LFqplzn1Oon9z2St997gT0/QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NM5rtW8k; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4779adb38d3so25525625e9.2
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 06:18:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763475523; x=1764080323; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Qui8+v84SknU9Umcah51Re9uxWRY2Ng9adbI5wD5LWw=;
        b=NM5rtW8kzghTCE8mD2wzh9GzgY3ixymPOIZh8fwU6HuPEREYigsSNL/t/gWavUstwG
         FGZ2fpD1+sxOtJ8/yFvB3djjIkrckrj4731zQa31xnWVPmAWmEJLqWUmM+Rx9Iypms8J
         70qE4HCKYedjRe9PKfR1+nfsb3D2qLVmLGQMAMQs5VRyZ24beprdqF1p/rzVSxCpZqdt
         DSYEJyu7s8AG5k5lm3wTSysqU40abzs5eeD/HlMuuWPqQVSKCsGdnrx5WQQ/BqZXJrIE
         uiiKrKOgBw29vI90TKI7n7gIHK/Q7bpYqOkmhkjROGXapWobqmcWNAgVstHiAdabiEk7
         yrPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763475523; x=1764080323;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qui8+v84SknU9Umcah51Re9uxWRY2Ng9adbI5wD5LWw=;
        b=fiiib7o2fwHfrR7gp1oS6PoxF3KSJDcOUMuvO7NVo5xSB1EjRQnPDzP6KKBSSbvM0h
         n7wWsg9bQElgr2Y6INPFIYxQGoivYFUuXX31pwh8pm8OZZnFUOyQVDf8YgJLgf9oq0JY
         wdUHkQPqHC0YclPa7ATiaVwceY/JBlCgh143VEg+HLq95x1CDZVc5t9C4gzNVsCPhIBf
         tnV5hj+XcVIF0fsWawsqNTv89Y/povqvkhc/d5uZfJwx/pRGFHTS8hwNg8FFfnbMHEeZ
         /oYhWDjLdufFhsHzhu9jZrV3J6ccfdTmnJ13PkfdZuvlYrqmNmUbHBvzeVgGfFgiPt0k
         Ar8g==
X-Forwarded-Encrypted: i=1; AJvYcCXCiC/K/7WoqY7LvRSpJhZqnnbp4Tz8vhwq1qqkE8aioMiOCf/uv+rD1OPcl+ynLYsA+t6P893CbcK9@vger.kernel.org
X-Gm-Message-State: AOJu0YylBh+JN95tmkaCm85XBaFqgEjrsG/HYFsJ0iQbQgneVZBeZ6fA
	toEucdXSJGjS9YOEsIAZcnYyFZhthLyMbWiCg9gEkQpyHP3WRPZ4Ao3G
X-Gm-Gg: ASbGncsXM/WmUAS1dsXs5Bl/vOL+3ahdcMpE78wo+VnGKWDSIRPWZ+BGK0wIh/80fEp
	l/s3if1GvOpGqq6Jf48KJ/LjAzKJAnvTpyrLm5tnNCVFzaf0u+bLowfUOqQL4vtINAvmhO0gr+/
	rH11mcKmnoZvDB7w7h9zNVdPsBDe5idWJOV0+zmNCQX/E8DAMFYKCiOuqctHKbUwsBBDGFHEg+6
	47+cVzO0F6/z9/sYdsRjUQvjJIUpb74RlfqeISkX5fTD+kt/Et1bhjJ/UglFlvLDfb0JqaexAPM
	7fB2gPPViamx3bSayaOFP4OcLpGASpIoqhBHNXYSR0u2jRLEA5RBPQrFLOvWx7QtLl+mDmhPgbf
	8DOzB94aTZ/Mb4BPvEQaphAAAvn6XvgiwH7pS6ZLCVSdjYVySJsiAPnRg6EAQXhJ9KJov0E/5Tm
	kKDKuRZ7rkNGZKPj1c7wXfPB66dAGhXbF62zfITQj3KS71nZyPxKyVNizIh3V4IGbC9YBOsPu9y
	lp5TiWI4C5HJXFiPdRrc5zsURA=
X-Google-Smtp-Source: AGHT+IEqBD2t0X1IvlWqWiTrU/qzZiudDobdZc0iwHmOZRbMqQ2xWtFwlEkf0u9kPWTAvfeL1+PLeA==
X-Received: by 2002:a05:600c:4685:b0:477:7a1a:4b82 with SMTP id 5b1f17b1804b1-4778fe5fb4amr161762895e9.8.1763475522805;
        Tue, 18 Nov 2025 06:18:42 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e85e6fsm32487590f8f.18.2025.11.18.06.18.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 06:18:42 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	linux-can@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 0/2] Add FD-Only mode support for R-Car CANFD
Date: Tue, 18 Nov 2025 14:18:33 +0000
Message-ID: <20251118141840.267652-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

The RZ/{G2L,G3E} and R-Car Gen4 SoCs support additional CAN FD mode called
FD-only mode. In this mode, communication in Classical CAN frame format is
disabled. Update binding/driver to support this mode.

This patch series depend upon[1]
[1] https://lore.kernel.org/all/20251118123926.193445-1-biju.das.jz@bp.renesas.com/

Biju Das (2):
  dt-bindings: can: renesas,rcar-canfd: Document renesas,fd-only
    property
  can: rcar_canfd: Add support for FD-Only mode

 .../bindings/net/can/renesas,rcar-canfd.yaml  | 14 ++++++++---
 drivers/net/can/rcar/rcar_canfd.c             | 24 ++++++++++++++++++-
 2 files changed, 34 insertions(+), 4 deletions(-)

-- 
2.43.0


