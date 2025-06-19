Return-Path: <devicetree+bounces-187683-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC2DAE0EA7
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 22:35:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11E7F5A28A8
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 20:34:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4751B25C813;
	Thu, 19 Jun 2025 20:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="QJKey7/j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BFDE25B1EF
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 20:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750365313; cv=none; b=j4kq1lG4ar4rTfHBBhX/8DafpgpIgJyZOB1Pwqcx08z0JRBB5WopxK4Ma6J+OGqL/a76wnXVoDm3WUWsE0NGPAOwvlQb/3Tn667a2J5UcltBuBWr9tKKtAyjxEuHDzj99wCwVNOlLK9i/oDOdTVftx90762C+22Y/hPJRWXB/8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750365313; c=relaxed/simple;
	bh=TrO2SFjGKBK1TwkijXcscyMw/RsP3DJJ4iYMXoLZjYc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=A2Z41AJeN6L468oJ/rhdraL6Uqm51TQ0xE5AzKo6DHoNyY5i85Sjbbz6gm75qeATUrR+p6b2SqucjL1xoEw5ZBEvTG8L6nwJ18A9hgKjV6yCzGW9pq64h0uuI2FiFdECKVWOU/Rduu1fT1gn21Lf1QCiKlfLhJ5LcGfoCQAu+Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch; spf=none smtp.mailfrom=easyb.ch; dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b=QJKey7/j; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-450dd065828so8643795e9.2
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 13:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1750365310; x=1750970110; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+EIhw+Rvhc6cZiuD+svHBrLE+9XGVyIueYFgEdxmfoI=;
        b=QJKey7/j5hmUB/NIvIfMlaq/KRjGiETL8swYiU+5g96vggXfZG47/yR40/PwJgqgZV
         xMa7CnS81mwyCg85CO4Ut5qPNcCnKjFbRkeg7zaj3RyX/rDpCiJRxW6ykzwzYtE5HD+y
         KBZqaarjz2JenkDnFbktktgpDn2xADp5n/ZDE/M8/qkFpg0Tj127vT+6catM88AZVfZf
         b5xes9eZHDXUPb68rAeoxsMis14GenObd8EYRDAA3EPO12TGFxXpddTE/DNxFcnDl5NY
         f43HsQAkfbKpNob6Lh0dDVcAwCtwkcSDK37YpwJdth41DUhQ1AvZbspn1UI2sSiKewcq
         Bpmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750365310; x=1750970110;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+EIhw+Rvhc6cZiuD+svHBrLE+9XGVyIueYFgEdxmfoI=;
        b=YFq/fVfEmEw8so6oqk5pcbirCy0cBuZR5MxpRyIfpsKpEYtjd5l/7+HSsUrQYX0fou
         KIKLLrXMBOXV8xHw3ApwWEGT0c2EGzE52xXFw+YFMSNziCUnJVJPAY944LlVbfccAxF3
         +gj49PqZLw+E79G3rZCnYvozTBSZOxoqcSdHIjsLZbALZEcL0/jAJVS2hsRvL9LQ+ZYe
         kuIJ0wEXr3x7g7hTPP0okgctL8TV9yX0iq7dztJuESQk0BtjmcWCEPnpTGu/pUfSpbPl
         V9r0+3JIU0NzKgcqRvH7kI1y53dKuRlwkoW44HmkePpHnFG5Mt/3ccvtznEIXwjXy02Q
         gGMg==
X-Forwarded-Encrypted: i=1; AJvYcCWeLRTKA39Mcoy0uJeyQzp5TEwGSaWQwdKIiD7uhqEStmpRemwmSbumRHblLS9JZ89o47hSTtuMTxHQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzBsSgikCe2p5v9OJ7jy/pOaDwVol+K7mpklLtrUj5JMCkSxs2S
	n23rkHGwe6hhlqm/B2cL45g7O58Y7N1ByAkg6D1LZrBeeq6b2Kqmqv8NQefYuEOFuFc=
X-Gm-Gg: ASbGnctqsWslrBNMKeDao9gGAOw7IWyNuevmQD0aPAYfyvmLdyYW+ZcyGYb9kdM41Rf
	NhSfrvKPMgh98lWFu3M1sf3Lqckj4f5iI4m+04v/+64c01d97fpfGN9m+39SrElhS+RVYMksZ7g
	Fjqz96PJMZ637kDoSIIJqtNyhN4h4SXEJXhmKsuYNKLAhjRIC71TyDW6fYRR30ldRBoQxdScSew
	KXrkIZBG+ET3JwRbknca4H9u78ILkfreKAeQ0mJR61qiSRLPP1d2c+ODusOrdKU/WOlGd3bqCug
	eIdoDbeWOcn5Pmcgsm+wqqw38p4mItROcXCgXwKWKHyPjUOrDFJ3shKBVIvzklfY3Xn4iuI=
X-Google-Smtp-Source: AGHT+IGJ1FrjwXgIPpZKq//ytcCmpdPAVFWG3nWjw0PBHri12OXqaLTMvq+ey9k1PsjBloAJ8N54hw==
X-Received: by 2002:a05:6000:25e5:b0:3a5:27ba:47ba with SMTP id ffacd0b85a97d-3a6d12e2680mr291561f8f.44.1750365309855;
        Thu, 19 Jun 2025 13:35:09 -0700 (PDT)
Received: from fraxinus.easyland ([2a02:16a:7402:0:a60c:e454:f09e:79d5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a6d0f1d91bsm288495f8f.42.2025.06.19.13.35.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 13:35:09 -0700 (PDT)
From: Ezra Buehler <ezra@easyb.ch>
To: linux-mips@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Conor Dooley <conor+dt@kernel.org>,
	Harvey Hunt <harveyhuntnexus@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Reto Schneider <reto.schneider@husqvarnagroup.com>,
	Rob Herring <robh@kernel.org>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Stefan Roese <sr@denx.de>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Subject: [PATCH v3 4/4] MIPS: dts: ralink: gardena_smart_gateway_mt7688: Fix power LED
Date: Thu, 19 Jun 2025 22:35:02 +0200
Message-ID: <20250619203502.1293695-5-ezra@easyb.ch>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250619203502.1293695-1-ezra@easyb.ch>
References: <20250619203502.1293695-1-ezra@easyb.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>

When starting up, the GARDENA smart Gateway's power LED should be
flashing green. It is unclear why it was initially set to "off".

The LED frequency cannot be configured in the devicetree. Luckily, the
default is 1 Hz, which is what we want.

Signed-off-by: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Reviewed-by: Stefan Roese <sr@denx.de>
Reviewed-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 arch/mips/boot/dts/ralink/gardena_smart_gateway_mt7688.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/boot/dts/ralink/gardena_smart_gateway_mt7688.dts b/arch/mips/boot/dts/ralink/gardena_smart_gateway_mt7688.dts
index 7743d014631a..0bfb1dde9764 100644
--- a/arch/mips/boot/dts/ralink/gardena_smart_gateway_mt7688.dts
+++ b/arch/mips/boot/dts/ralink/gardena_smart_gateway_mt7688.dts
@@ -56,7 +56,7 @@ led-power-blue {
 		led-power-green {
 			label = "smartgw:power:green";
 			gpios = <&gpio 19 GPIO_ACTIVE_HIGH>;
-			default-state = "off";
+			linux,default-trigger = "timer";
 		};
 
 		led-power-red {
-- 
2.43.0


