Return-Path: <devicetree+bounces-226364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFD3BD76D1
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 07:32:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DABA018A282F
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 05:33:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54092261B9C;
	Tue, 14 Oct 2025 05:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KOGdogld"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D516C13DBA0
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760419964; cv=none; b=YLMFebudRpNDPnrHrnvZsV14QT6u+DG/PbjMZUvLs7eQy46O9ShTUMVQrLb+jlwBnkh+KVdixYbV9AxSJXElRLQPR7tczkCJVGqFaQmoNs1qDQ8cFOUizX1NrJ0vpgmRKODwydWHWRduca907PIM3ROAzmeafDP9Z5w8l1OoDfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760419964; c=relaxed/simple;
	bh=hzo49Ka/mFjKA/H3SWa4obvcXKQktgs7Ghe2hJguy5A=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=JSsPfuEy+9/cTIFnInb0pCbroR46yF8UQobn1koRTc5/TX0L3tyNXPAn/MuinQXadFo6aKd6o4YpLBkBKIkp1MCwGVeOCyJJb7wQ2OLmqIDnl/RQyl9yfB3wFXX/V/vg4ZSE58cRbHOIfnWomeD76yBOz/jgB5O4AeAIXJX53Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KOGdogld; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-781997d195aso3499787b3a.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 22:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760419962; x=1761024762; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6Ea5NSCkOYMJk/IQhcF97hrapZkhykXrBU8oYzRy5ZM=;
        b=KOGdogldCERSFIgcgN8uL8ebqT2+z3WXPIuIURuEmk7fxPQ6pHouFEmBdnkB8nyEHD
         QIJdU94j5M5MptGnKSKbebv/pAESTsWiu4TNsreYNcwxUMqlvby8kShF8kztAiWboRx+
         uSXZ+BovUaP2S9mdUwH5/9uE2iKtnRykM0xAsUahv/aW2woCDoe0qkZkNWxIePYMaB19
         nog5DgGe3t3MgTQLUviqSZIp2BuvFh7pGXgEHd3wRAcHLvkNbOC2nKfWvQjUPsIvbJRJ
         jN8lleEQw5ifvj+nZoXF1ycgwAY2EUALC9JA5/y3kgOLjvsf3kFc2yboljnLtsDGKpe8
         FQAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760419962; x=1761024762;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6Ea5NSCkOYMJk/IQhcF97hrapZkhykXrBU8oYzRy5ZM=;
        b=usFNTcEsparPUYpYAGZ3p3TQMoNqVYFFZkbwpSv2McBkWAqy6X2cM3I10eVUrgZYGq
         0giqobo3/EG7Ia1T3G5VmULPZ3fighkb3+1vgwnbdAtSq5KDFhLjdOcMNA43YQemwcWQ
         l+34mh9VWHwIXfd626HaapDRnPf3zX50G1S3w0acJfiNb6Kv70Tb+aHnH+2+jU+BXO43
         bCOdwcLoqV6jod6dBrmh8ieRSe5B4Wa5/lOIDXI/Isj1H0n67EMQjxXf8RZxJBCNU67T
         xX72QpOUSYp1npKqg9dJdvTx9Y1OHXfBSlkgmmGDPTd9R2rUN09RTZ0BOovTTcHIBfrQ
         AhZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQ4zOfWKI0pNFfjt+vdq+mnufpNdCdJzIY7hPb+rVETbJm9CGcBqQ800TC21ixVVvJD/jUfVGuoB+W@vger.kernel.org
X-Gm-Message-State: AOJu0YwAkSeL9U0RT/hYRjdG88dS8NKpPgATSjjFILMTXZI4F32Hrqgj
	2qTHEpsBGu2zPZyiXGresntEDo+vKthfP3RUZf8bAQ1rOHNBqCOahmVM
X-Gm-Gg: ASbGncvWuxDqYgUZLvoE/YmZoYzzJozn9ns8R8t9VHnLq1vPqocXxWkv2Ht+beFxDUi
	VoMYhBCO0PTlDM3p/tGACvlSDImlt8Mz614TS2Ma1TJfDZ4kFCsPq+PFV+KMGmnLP/xUW297tO9
	MJkx4JPMPW3LfqpTAbiL8aofJem7wQiVZtNZM5qTsqYYokYjUSDbniPEgDjF2YxC2TMWcwA6Oxy
	t5DLGkaN1g7WcgWo4oYnIOHKdq6X1naRzj1eMa2jpjrX8fIRGapfpSyZOG7vwoNhxeSo7JWyN8Y
	RBXMORaMRLXiq8HzcTphunzfHLumHEdKmeu3kkpfKzJRXlIDxqO0lE31+AcFiZr/KTDzP+mheI6
	q+/ftFpvFcHHKFJ7WR+f5NDD7QmruT/eYasGry/ZWkKsIO1n3fUOalYLHTw5f6cpiCJSlgMY=
X-Google-Smtp-Source: AGHT+IE5opfw1ALI+fPEvrYyq3kqHeGMmNoJ41xh3ry6iaCObXcYfOfolts5xRoqBqA9T5qTHi3ETg==
X-Received: by 2002:a05:6a00:92a2:b0:783:c2c4:9aa5 with SMTP id d2e1a72fcca58-79387d0f5aamr31864888b3a.32.1760419962148;
        Mon, 13 Oct 2025 22:32:42 -0700 (PDT)
Received: from HYB-iPCgmhaB8Cy.ad.analog.com ([59.9.235.253])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992bb11ca0sm13707518b3a.32.2025.10.13.22.32.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 22:32:41 -0700 (PDT)
From: Joan-Na-adi <joan.na.devcode@gmail.com>
X-Google-Original-From: Joan-Na-adi <joan.na@analog.com>
To: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Joan Na <joan.na@analog.com>
Subject: [PATCH v3 0/3] MAX77675 regulator driver: Add support for MAX77675 device
Date: Tue, 14 Oct 2025 14:31:39 +0900
Message-Id: <20251014053142.15835-1-joan.na@analog.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Joan Na <joan.na@analog.com>

MAX77675 regulator driver and device tree bindings

Joan Na (3):
  dt-bindings: regulator: Add MAX77675 binding header
  regulator: max77675: Add MAX77675 regulator driver
  dt-bindings: regulator: Add MAX77675 regulator binding

 .../bindings/regulator/maxim,max77675.yaml    | 205 +++++
 drivers/regulator/Kconfig                     |   9 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/max77675-regulator.c        | 868 ++++++++++++++++++
 drivers/regulator/max77675-regulator.h        | 220 +++++
 .../regulator/maxim,max77675-regulator.h      |  52 ++
 6 files changed, 1355 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max77675.yaml
 create mode 100644 drivers/regulator/max77675-regulator.c
 create mode 100644 drivers/regulator/max77675-regulator.h
 create mode 100644 include/dt-bindings/regulator/maxim,max77675-regulator.h


base-commit: bf40f4b87761e2ec16efc8e49b9ca0d81f4115d8
--
2.34.1


