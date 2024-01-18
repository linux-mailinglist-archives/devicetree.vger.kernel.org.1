Return-Path: <devicetree+bounces-33050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CAD831DB8
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 17:42:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A4ED5B24AB5
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 16:42:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 766FD24B3D;
	Thu, 18 Jan 2024 16:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b="kD4T8i6h"
X-Original-To: devicetree@vger.kernel.org
Received: from egress-ip43a.ess.de.barracuda.com (egress-ip43a.ess.de.barracuda.com [18.185.115.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339BD2C843
	for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 16:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.185.115.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705596132; cv=none; b=FWe7yiq7hYAdr3TTqGtE1zYV90WKGGbB7HR+kAURBg+FQJV4jIYJGRkTD+BqSvuFnRhIbHOUvT6EFmUiQQsvgDxtGCDDLoDDnv3ZmVkHg5/D262OFxY73e0VuTgVUIWUIPXGylsBEC1rF/oo5QI16Ir8tiLVCUPdQsZwmZbzV4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705596132; c=relaxed/simple;
	bh=+y5fUEkd5+zzoxl0HWIsvFG0uwPbNdaHmGmzGann5z0=;
	h=Received:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Received:X-Google-Smtp-Source:X-Received:
	 Received:From:X-Google-Original-From:To:Cc:Subject:Date:Message-Id:
	 X-Mailer:MIME-Version:Content-Transfer-Encoding:X-BESS-ID:
	 X-BESS-VER:X-BESS-Apparent-Source-IP:X-BESS-Parts:
	 X-BESS-Outbound-Spam-Score:X-BESS-Outbound-Spam-Report:
	 X-BESS-Outbound-Spam-Status:X-BESS-BRTS-Status; b=Z3V2aL7DFg7oGSVGyVICYCE4iMeE1y5DSZ1OSYWHnGlsVBWeLQjqekugy91WnccIZM9sRoJqICaIjQJQRMpD/Ytl2R807bV6iEqB2Cups+lfSjzMYS6MvBsVvY0T0jJNu9dLWrm8fL4EwleQakhTCO51IF0eBjVhktH4+qSLscM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com; spf=pass smtp.mailfrom=mistralsolutions.com; dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b=kD4T8i6h; arc=none smtp.client-ip=18.185.115.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mistralsolutions.com
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71]) by mx-outbound14-230.eu-central-1a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Thu, 18 Jan 2024 16:42:07 +0000
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6819ae59b38so3808576d6.1
        for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 08:42:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google; t=1705596127; x=1706200927; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o8p6tnemlAQdnLlr6kCUPw8u4bTJQ9vaiCBP/sDK8h8=;
        b=kD4T8i6hNnRsttrWeVWaplWNCVM6Jw1z/GS0FATXFrpiv+6xotXdfwj45hBOII1Cbx
         4lnRYAEEm+wE17UdvULyYjNpJ1k143GaOyRUimdc+n6pvGhTZIpXtEKP7MTStgZztq2n
         KZNC+JMJMjz0+zz6i2mqbbuboUdqg5ZSY7v/4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705596127; x=1706200927;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o8p6tnemlAQdnLlr6kCUPw8u4bTJQ9vaiCBP/sDK8h8=;
        b=HPIkKlcEO5SOCYuSG9YxDMhtNxrnlmqxky5EqYJTp+XwVBg/pS4ScK4cztp3DlSw+V
         qlhOvZ4bGVAzY72H87h/ZZkpskh8XoztYiJw/Ety7DeH7nO6PemxFMJPev40Ctwibrl9
         FofR5VL36X975LLvRGNbc4zj7j7k52n8QDxoNU5+kifQes4CMUkSieRPQkszmN7xeTSz
         74C3/9dMpXc64OOEiT7AE+6YjkYrU9VDLZPRS9MNvIlTZNB3xy+L74eKDBQe01nODkRC
         K2zvo5ZqC+cvBknO47IXFygPPInAZ7GTGUek0zp/bpm3wYeueSN34q+r33IXt9PUXsvo
         ii+w==
X-Gm-Message-State: AOJu0YypH7F0f0hunM+4402K+W8XLBbwETFOKizbKSG9AigOd4JzMalt
	wduO5nt2Okc57VfWRwy7/MVhix7qTePKU277lbX72MLC1P+oNufahDTFapmIs8hI7dKpnubfY3E
	pZ96m+RNJnmjBFJdozhhYKQaCCiR/HB/A36FyHUgpfLcAvaPaC4sIVZqH6t7iNyzGk8flE73IWQ
	Ew7BKIxA2zTYT2JbFHUw==
X-Received: by 2002:a17:903:2289:b0:1d7:ad3:6318 with SMTP id b9-20020a170903228900b001d70ad36318mr1058204plh.23.1705592152662;
        Thu, 18 Jan 2024 07:35:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEMhD19NwdQ6O2/f85sTtPnPbTyrLlNxaAEf9pNnH3bnZq+ODPClOncwHC663UDceOhebj/zA==
X-Received: by 2002:a17:903:2289:b0:1d7:ad3:6318 with SMTP id b9-20020a170903228900b001d70ad36318mr1058187plh.23.1705592152360;
        Thu, 18 Jan 2024 07:35:52 -0800 (PST)
Received: from LAP559U.mistral.in ([106.51.69.35])
        by smtp.gmail.com with ESMTPSA id kf13-20020a17090305cd00b001d0ca40158dsm1535207plb.280.2024.01.18.07.35.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jan 2024 07:35:52 -0800 (PST)
From: sabiya.d@mistralsolutions.com
X-Google-Original-From: sabiya.d@ti.com
To: nm@ti.com,
	vigneshr@ti.com,
	kristo@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linus.walleij@linaro.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	u-kumar1@ti.com,
	sabiya.d@mistralsolutions.com,
	Dasnavis Sabiya <sabiya.d@ti.com>
Subject: [PATCH 0/2] Add CAN and OSPI support for AM69-SK platform
Date: Thu, 18 Jan 2024 21:05:22 +0530
Message-Id: <20240118153524.4135901-1-sabiya.d@ti.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1705596127-303814-17310-3738-1
X-BESS-VER: 2019.1_20240103.1634
X-BESS-Apparent-Source-IP: 209.85.219.71
X-BESS-Parts: H4sIAAAAAAACA4uuVkqtKFGyUirNy1bSUcovVrIyMTMEMjKAYsZGRobJJkbJlk
	DSwsLCPCU1NTUtzSA11SzJwMzCxEKpNhYA43mfqkAAAAA=
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.253602 [from 
	cloudscan10-177.eu-central-1a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
	0.00 NO_REAL_NAME           HEADER: From: does not include a real name 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, BSF_SC0_MISMATCH_TO, NO_REAL_NAME
X-BESS-BRTS-Status:1

From: Dasnavis Sabiya <sabiya.d@ti.com>

Hi All,

This series adds support for the below interfaces on AM69-SK platform:
-  CAN support on both MCU and MAIN domains
-  OSPI NOR flash support

Dasnavis Sabiya (2):
  arm64: dts: ti: k3-am69-sk: Enable CAN interfaces for AM69 SK board
  arm64: dts: ti: k3-am69-sk: Add support for OSPI flash

 arch/arm64/boot/dts/ti/k3-am69-sk.dts | 166 ++++++++++++++++++++++++++
 1 file changed, 166 insertions(+)

-- 
2.34.1


