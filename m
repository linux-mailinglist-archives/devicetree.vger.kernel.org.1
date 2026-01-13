Return-Path: <devicetree+bounces-254427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C4BD181B1
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:42:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 128943038052
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:40:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4538343D84;
	Tue, 13 Jan 2026 10:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="iWItjtBs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BF62D130C
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:40:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768300818; cv=none; b=Y90YpbTe8Q7tTZ47XnKSJd5VrYSxEfhr2AezT3/GkwDsWQSjFSKvmi3TXRj/fYSeTbTNXgiKO2rYxOy+lQwvX1iW/Xaevh7X70TLN8sH4tzMPd5DE133otxBp2JjaqEMfqmA/FxPJisYLpaETtR+TlXYLjECLeCXNBpm4SJ4rY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768300818; c=relaxed/simple;
	bh=teOBXSGPl+wXTHvtP2Og0GZe2H53L4WVvkddC0eSMu8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Jg6iKeeuiA5XC+Vmza+nvoR0kMAR1cKELhAxug9Fk6AGaiizDyN5dBb78vWBdfVylQJ668a7JDuMV8jWaz58zlVWLmbj2M1H2tU/bHe9qSJjihHW8pxaHXX9wbckARDcjaYH1f5f2utmnpa/PQMwFDf16Gm24w+J/bcOSzPIe4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=iWItjtBs; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-432d256c2e6so3845309f8f.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:40:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768300814; x=1768905614; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lXYPhxT4VFsm4+vuJl0AaBhCYe20t+H2B88DUgUIoBc=;
        b=iWItjtBsSWFU0ioof3fvMg7eAYtrmeUpdOlIC0NSljgDftCQRPGpyND2m0uIfwm7Sb
         HPdpIXDQ6p3C07sGRCJl05VOlWFwf3EtQafq77P/6niU5Wl8dK28/jC9RISxKFFeEVVV
         Th4j7qMIioPhwzr0X4NUMI6wpuyGHqqDFMFMzF3tudVJon8tbY+7X4KfkccF3JLo3evn
         2jC/DcMTtODX0sVjReFgZ9Dlf1f3mOwBq+5hfCu17Rwdns5z4bZihb6lQVYoXX9RqIAB
         3TA9b2qyvG1SsU4FfQ2jao3w4kI47VBG2mc92yh6bYTm+2rOxbUHePm2y9O4pBhFRVDe
         nfCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768300814; x=1768905614;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lXYPhxT4VFsm4+vuJl0AaBhCYe20t+H2B88DUgUIoBc=;
        b=wRg7l4nPGIIlA414K+UyMgWXK8zudgmG3wI99JUBjFFgGpM6zuM3G4bkO/w98GHj5e
         A4MemKHy1imVQvwwMTGesJHNizLIR4M5QHysmuKaMnCj4x7X3f1xnJfZOnNqBpLK3PAG
         7IJJVGlxw49oku+RW03F+qFv62ZrmbthylDigi7AMdrB4hJrEe7U6a2XQggBp3WUmSjf
         ZURi0UXmkirrhjfhNiSVDvlAfqJoM1g4LElWuo8dIzGm01NEQd44jBAHX/goU8W/WfH4
         40PPKK1S8DWHi2Vlw8Hx1aDHhXOPgcs4Srnhhq39EGE9ahtYVd9joaJ75ynaZ0/RLO7b
         /Pww==
X-Gm-Message-State: AOJu0YzYHtHPg7wNAjDWTVEWtL0F9h6TQyg8F6AVk5eZwuxUFJbaJWHs
	+pi0T5CIgp2D3VYjGzDRBBKAJsim5beIihSeKTtgJTJHVkwBtlfeug9Zc0v7DEteueE=
X-Gm-Gg: AY/fxX5vGtFXgv3BCBqTnSWkobFzBbR5XLScjvk4ng+nDgQsu0E/k9xGml37Qdx+tbA
	QjteRVXyi81gSem9NYjPvaP4aYSa8zm77g+NtBJzQCLxHrFnJdWMvModOHYv5O2rNm2R94TGAwy
	caoEPNB4XN86bXnxBI/8Rf2mrxg57W7FW35bat8Gns5a4pZ2WficJ9RSnJL0JC12EiICBMLsAlp
	sqP0XlU8q02OsrvG0P2hKpZy3QSna/fk0QWXIKK94sYH3BrVfiXitvmd9ZzAI22TZjoi/M7K8PO
	1fs2nj1+JawNbG7lMw7uUgngfLvzkfZfJzhXCtSJAoZq1ggn3QnA2Z4pkJhjhCLAVfDtepeRmkA
	PZ/KIzvMrGONNjPszs0HbPG22rU2SkXXOo+uqHyofoSZncaRikwDIGfnP4VZYxMKXMfzkClqsb0
	e78vlwLDIf
X-Google-Smtp-Source: AGHT+IHFzNYoWJwOUEYhgDUL2jzgr59pL14dNINqiejD4tK6O1TDnQY0+fHQGFbBHWVT74A5TNYbVg==
X-Received: by 2002:a05:6000:1366:b0:430:fd84:315a with SMTP id ffacd0b85a97d-432c3798332mr20221772f8f.39.1768300813665;
        Tue, 13 Jan 2026 02:40:13 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:982f:38af:1a7a:b10])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-432bd0e16d2sm44942027f8f.13.2026.01.13.02.40.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 02:40:13 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
Subject: [PATCH 0/2] arm64: dts: amlogic: s4: mmc clock fixups
Date: Tue, 13 Jan 2026 11:39:51 +0100
Message-Id: <20260113-amlogic-s4-mmc-fixup-v1-0-1ab1fca0fb2f@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPcgZmkC/x2MQQqAIBAAvxJ7bkEtKvtKdFDbbCErlCKI/p50H
 IaZBxJFpgR98UCkixPvWwZZFuAWs3lCnjKDEqoRUlZowrp7dphqDMHhzPd5oFZm6qwWtrUEOT0
 iZfFvh/F9PzWi7KdmAAAA
X-Change-ID: 20260113-amlogic-s4-mmc-fixup-92ad8b90b7be
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>, Nick Xie <nick@khadas.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1052; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=teOBXSGPl+wXTHvtP2Og0GZe2H53L4WVvkddC0eSMu8=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBpZiEJ+z5RHj+9WnWssofwZJOg33B60V2w+bpBd
 qY0coeQCL+JAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCaWYhCQAKCRDm/A8cN/La
 hfaZEACF5pgbd/q1o0s2UUMpaNbWIzuF7TlR4wFpW2nULLpPJ23Kr2F/i7q4Ajygd1+LhPVt/PJ
 uSefmwSXECTBZF43x64tJCn6oWhXMYUDVDgTuCr4l9t0iY8LBgAEP2MnmhPg4LyjtaoT0i0A1n6
 XtffOMurVTWkGKbJt5bci+A9el8wET1gos/S0CN0Cg1tPq+Y380BjUxvM4dSh0dpb/nWFhcm4OF
 M6yRYjj/+3jlmNgrRp+bVOq1QkDTYubZowzsnqUF2JZ/LyempgIeptjs1JrcSO5x3xwUf+1aYnR
 qItk2ttafdTSCAT5B+/J/kkzAgQdPqbkcXUK2QXajdLgqsRLgmHkiSRHC803SzcAAXou5krZwoO
 MLVkjDRKtYq/KvX+sbfkeuMm9A6qDHhk5ocmd8T3iggOVH5z/TYSgStkgWR6t70iEfXKCpqAU0x
 ZwNp+xeIJVabXyF/Ks4hwNbFZKvY3LcttP5QAgnTq85yIBC9HuSEoptApQUcDocEgFGrZLz7nbV
 m+VhY4CHq8sHSFoPkRZ18DNbsN0d6KZDTrg/6drh7AaeuwTxWzUO+jdcwDGs4Hl7FO+ounKmhD9
 YG1mY52rteCT4GkwtKKQmWaJ9exSyTfPaIId/Uw9gZEoie/GkeOf5p7BbXvssbdCoXegMGyufa+
 EtrJMazGI0Eiy3A==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9

The patchset aims to address the issue raised here [1] for MMC B.

While checking this, I've found that MMC A and C also appear to be
improperly described in this platform's DT. The 2nd change fixes that.

I do not have an s4 platform available with me, so these changes have only
been compile tested but assigning the clock was actually tested on sm1.

To be on the safe side, the MMC clock should also be assigned on the other
SoCs. More changes will follow once things are sorted out for s4.

[1]: https://lore.kernel.org/linux-amlogic/20260113011931.40424-1-nick@khadas.com/

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
Jerome Brunet (2):
      arm64: dts: amlogic: s4: assign mmc b clock to 24MHz
      arm64: dts: amlogic: s4: fix mmc clock assignment

 arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)
---
base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
change-id: 20260113-amlogic-s4-mmc-fixup-92ad8b90b7be

Best regards,
-- 
Jerome


