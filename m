Return-Path: <devicetree+bounces-240511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFB5C723EE
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 06:26:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 4EC6729891
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 05:26:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17EE12FFDD8;
	Thu, 20 Nov 2025 05:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ug/5L3Dk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9353A2FDC4C
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 05:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763616371; cv=none; b=fA+KviSpJIQB5xoNp7CxBdsiV+m1tTiE6o66fcXYlq7ip21nOqnuVvpr5E8HOTEUGqu1v9hziUEgL/VS2/pWkudr9Qf/E60ckRJVXkaFjD7FtF+/+Bs1T2a/vHX11SYiiTCxChjckQhY7nOkqgcNlVfXlmYF32Xxjit2YasR4UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763616371; c=relaxed/simple;
	bh=V8hyqVc8AxjSIpi8Rf3ei8SCie7TL3OVm+o7PWaDSjI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fFijj39ymLOoqs3M+fBd+t7b/dXx+98/NAj3ch6sFtLdOJdNngI/djwXnmHecjs/zfkbzquRBXvkB26eb5pKCel+9F4HjhvCz6cYA1qsaRnADo83LWffKT01iN99bniDPOxnrKZOIZd6z/hgiDius78zldxndPg7lCwrurpScbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ug/5L3Dk; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-297dc3e299bso5429795ad.1
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 21:26:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763616367; x=1764221167; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jrmpJ7r5olEuuHW8bES57a8T6LK6exu5hSOQkrAzRxY=;
        b=Ug/5L3Dkp9leCfH74MaoucER48IhWKZY9hvnqorRxzp0fgztPjNiLr6iqTFDfVda3G
         3pbGvJxkvneLbgg978oMkXBVUt8Fb//SyNXCzTyF3pTiXPlHxESI1ygTzYUH3ERKQxgI
         cPu+pagNbD40d6e9jP13H9Ee0UlID5452VdX77a/hMS5lz+yc3gWbfr55YsTBdgaBSsI
         gNjZpUvdBtMR0Ub/7jmhNLzfhOeQxF4nSdRei+h5YfVHaouo+heN6uMacOBz2G/XHjj0
         P3t+7BNi4Hv4bWA6/mLGjtGsemw4F6uI01SXJUmxA/+YmxUpOo8BUeW5G7PbsCJCqGe1
         +oQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763616367; x=1764221167;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jrmpJ7r5olEuuHW8bES57a8T6LK6exu5hSOQkrAzRxY=;
        b=lszcfXpSl4oO11UPum+E33BrSV6mYBD/utJMhBiTsQKMS65IvU4eDnmxgZD7aulC9B
         cZgbx09BowyX0zdo/7ZDKw72VZGRdvvusQ13W91J53+/Oja03cx5oHzna3VrVEXPM7GQ
         ruRDaojIcl2SX9kmfYsf5QgJCf72Dl1Psm2yjYzXfyTHAePbSJWT5ouiW1v2ymR+BQ43
         SXkneHTxYn69La4hDecmlIIOX2MQIq2GxaNq6v3/naSm5qkF/2WPTgLwT2T8IEUh0wgr
         v8Nnw+hI7koUTtsnyNIJOIuzrzCi8ROzLX9SGT2UreiQs4nbBc20ZS85t3Ox64LM3cJm
         LN+A==
X-Gm-Message-State: AOJu0YzHG0KJ+z1PGpU/koI87py2Pwq4zCP3fWdyw6EYYZmOhLaFNCRO
	lg0H+AoPeKbsbrzR4yvTlhUJ86C16vLaJWsSaP35b6pSGNbqpGjoVzG4cSjsrw==
X-Gm-Gg: ASbGnctnKKFTxpICOxG9QQ5EZjbJlpfud2RTvlYT8H4Twx5hxh02Xi3pMDI4TQvpSqB
	hKAa6ZyWbNWhDsN+J34cH38fsxbpRPjSRbE9KgC73yyoC1BIE8CtItYg/cbYcEEFuITa4YicU+0
	ZlTZSK87K7A480c/U1aUoMfygSMq02sXHXq0DFxHj1eubUaf/opzGD4yQXgbmieGMoYa4EOn0Ok
	KxeutyMLXRUkdjZ1VKET1oNNHrtH32PZjtYydPt0cryboo+reE0Nbs4VVp8MrETz66xpGleBR9l
	Xzn97WXWqRp2/xZQUsxYLS1M4JiQz2kbiXkGLN2h5U4HWD9N93s0fwDWdlxJsYOEhGFP3LrbVmL
	KI02OCbvwGGGSCoBu8tqYrYEI2q/uSVCQAi1XiSPqRWevfV/YLh9+twLUxwCnvgsShEH7DGS1Z1
	5oMo5V+69DPjpz0mw+IKoJsVepxSJT4xj09KFJEHa+u11W7s7xLiUXRnLDwNFDsWe/phzfR8oPT
	QxbUx8UieF2d+r8QFyEg9RTs/1NeA5Yu225jBqg/apYVZnPgTSEU7LmLGaHPp/+iSoH82sC14OW
	YFPCvwxWlbk=
X-Google-Smtp-Source: AGHT+IE0C4Gi/8UKiKUiQ7+Veji85cevN0GQcvp62+0plkZpI6JLPQDYbGS70t9JxUT+e0asq9HnEg==
X-Received: by 2002:a17:903:2a84:b0:294:fb47:b623 with SMTP id d9443c01a7336-29b5b02e987mr23648385ad.11.1763616366824;
        Wed, 19 Nov 2025 21:26:06 -0800 (PST)
Received: from 2001-b400-e301-38bf-be0d-b72c-6bec-2812.emome-ip6.hinet.net (2001-b400-e301-38bf-be0d-b72c-6bec-2812.emome-ip6.hinet.net. [2001:b400:e301:38bf:be0d:b72c:6bec:2812])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3472692e5d3sm1221342a91.9.2025.11.19.21.26.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 21:26:06 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Thu, 20 Nov 2025 13:25:58 +0800
Subject: [PATCH v2 1/4] ARM: dts: aspeed: yosemite5: Increase i2c4/i2c12
 bus speed to 400 kHz
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251120-yv5_revise_dts-v2-1-4d7de701c5be@gmail.com>
References: <20251120-yv5_revise_dts-v2-0-4d7de701c5be@gmail.com>
In-Reply-To: <20251120-yv5_revise_dts-v2-0-4d7de701c5be@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763616361; l=1020;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=V8hyqVc8AxjSIpi8Rf3ei8SCie7TL3OVm+o7PWaDSjI=;
 b=0bsl4Rx14cAtCjmaDk5pc8Kupx+kOZS/805VJ8qDzXtiYCPgERiNuvmWmSRspeQkoS+bmAwIv
 ia6LJNmRmjxAyG6ryOy5JCxImsZ4z3ABZNrKDM2pwquLgjAYog+BKoX
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=

Configure i2c4 and i2c12 to operate at 400 kHz instead of 100 kHz.
This update aligns the bus settings with the hardware capabilities
and improves MCTP communication performance.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index 2486981f3d6bd36f3fe780b21e834b85242f8aa9..7991e9360847532cff9aad4ad4ed57d4c30668a0 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -231,6 +231,7 @@ sbtsi@4c {
 &i2c4 {
 	multi-master;
 	mctp-controller;
+	clock-frequency = <400000>;
 	status = "okay";
 
 	mctp@10 {
@@ -782,6 +783,7 @@ adc@4b {
 &i2c12 {
 	multi-master;
 	mctp-controller;
+	clock-frequency = <400000>;
 	status = "okay";
 
 	mctp@10 {

-- 
2.51.2


