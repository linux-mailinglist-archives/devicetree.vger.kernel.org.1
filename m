Return-Path: <devicetree+bounces-220070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC58FB91B33
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 16:28:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 71082420C4C
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 14:28:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28B162236FD;
	Mon, 22 Sep 2025 14:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="s56TM4qe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677DD1EF0B0
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 14:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758551310; cv=none; b=sdwoys4RYWGYB3iQ2sP5JC9imKIrO5rV12HaS6j9KjPNscNjG3RU9uMqOY/H2lcPKfpdnESNuRA3FRIvhspIyn1y8SdGLdfF5aW2hrx8cqRfeXdSxfZurVeDHd1WCd2bMCKTnKVDOYnO2R82v5r0AraCcfvhKH5oGmQzJQGaopw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758551310; c=relaxed/simple;
	bh=WjiEYvRTCyxfeXoMzLNz+6hZB9UNJBt8nx03rVJu8nM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PD6tVY/qU37CdzmPfjt5MBDzUxbjEVHgjaMHUWwaY3O2GVGq2+8g0xeM96HqCTIjqbRl544g2DH5rPCR7Fw7R8qQQATYrtLDoY2fZJMBqulGsL2wq0jg1UGblFi/WrI9ABR078MhbDJQVVcSXLc7p9ixrxziT9CPI2iGAfe7c04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=s56TM4qe; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-ea5d7191a64so2413054276.2
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 07:28:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1758551307; x=1759156107; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eewXiWrdt+FbwB57GPpi0UiTga4wC1/IPQUMFS6wi8M=;
        b=s56TM4qeeXCWzJugd3y60mw1wgJh50YhG/qVQFlvcsrMHCZxp++dmvZ9vww8FT/C9E
         izH0ZyKk5y7mdzjLBf6CecUpmbfI9zMvxe050Wz6hwu2oq/WTytGTNdVuXGv72bHg/Js
         +A8OM1DcuOebyW8FGSD8ATk45ALG3LohDZSCP2zjThZ4xuEGLng9WV20TzKUR76YNHHj
         x1zNphmhi1HYzMU6Sse02rBO25uM+QV0UadLA6Bmr6zQaebcZeAxs3wKrF5mjD2iqDIJ
         cL4x82YpEAW5MfbxHYXeAXRvya+CYm/00SjmRlSyuhyQ1+FnL2njYnwJygPko92CAc+e
         i/dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758551307; x=1759156107;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eewXiWrdt+FbwB57GPpi0UiTga4wC1/IPQUMFS6wi8M=;
        b=JUGkV6J1zczxjD2e8huOkqXn4h7g+XHRLqYGOyTanr+u60hUNkFidbVASjWU9aDR1+
         YqYqGmjCyEYxVz2RYvMESojZaj+cC9Fcw7PxU45cZBCGkK8Anv2zyR9zs/Jyjctdc8Qh
         2mfAblOvjbRQFhDohFxX+6rc4FirqAZ93ugSs7xFylpP/xymC90U0DnK2nYV7ImxZP7B
         6LsS4/FInm2JrlDcFqLW44nNzmdQitzFVSErFjg4/Oe6DqydkmAy0kntvhaKUuqtekZ3
         KS3zdbiZzBHgmvhgLbTWqUWHK2NyC4+5q66sQdKn3m+68uAnmczKc/uxiR1zvAXFU2qk
         8/jA==
X-Forwarded-Encrypted: i=1; AJvYcCWRlSQVz11HF/abX2co6lqNnRUtkEw8OmprNgU81YCQ60jrSqwhIyFWJFDvgWb/PA5bEZ0UnMsTUrk7@vger.kernel.org
X-Gm-Message-State: AOJu0Yzr9FY1vJ1TDGsjOVhoPczncymVoEtkKwg9qFoiMPl5q7pL1hKV
	ZZq7sgBAeX7UBPTZ9GMQLUfF/auiSXLLgyRfDqNTaeT+871iEkRcxDvXziwE48jknjg=
X-Gm-Gg: ASbGnctglnJ8ajm+SYUOGBksBkpOZvhIv9nvH+4jLlb/3LgfG7xjmFpJufBc8Bdohar
	F7jWxmxbJ0/1V24G0wTZX82R5vriVp1IhOeBOO9sOHdRH1v+MZUPZUjyu0fEiq3L2yykaDsjXxJ
	CvBIGKSaCgnBBmeMnHSeK1XsTQUws13E+EUl67n7juPQJPdpiKSo5Eo0j9aru4PqnX9aJBq2Guj
	P0S15nNkSSbZ2vXaumqjn7WT+/wmZa618iQhB1+hJhz1FLMVkFmtcghpT9V0FGHJAQZrYg6rl4v
	//gI2c4AnPU89XNBFEWtHhXrh9+uaNq8ANb0hlUBQwRAqBgtmcZhD3EDl2PLyOvTk2tUqSGhE9G
	we8lfa2IhKS2bn3mFO0vIzfBMZs6L5K1wkw86q1pRZWzPFJC2F5H/qg==
X-Google-Smtp-Source: AGHT+IGe1b5Wk7IhRgrAniM5ARhlxshEkqecWedZ3KolyU7DGRz+jN3Bmhlp1P0FYWC7jo4Xqzkgcg==
X-Received: by 2002:a05:6902:400c:b0:eb2:ae14:2fb0 with SMTP id 3f1490d57ef6-eb2ae143ba9mr523177276.29.1758551307294;
        Mon, 22 Sep 2025 07:28:27 -0700 (PDT)
Received: from fedora (d-zg1-232.globalnet.hr. [213.149.36.246])
        by smtp.googlemail.com with ESMTPSA id 3f1490d57ef6-ea5ce709efdsm4163124276.1.2025.09.22.07.28.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 07:28:26 -0700 (PDT)
From: Robert Marko <robert.marko@sartura.hr>
To: p.zabel@pengutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	steen.hegelund@microchip.com,
	lars.povlsen@microchip.com,
	daniel.machon@microchip.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: luka.perkov@sartura.hr,
	benjamin.ryzman@canonical.com,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v3 2/2] reset: sparx5: add LAN969x support
Date: Mon, 22 Sep 2025 16:27:29 +0200
Message-ID: <20250922142813.221586-2-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250922142813.221586-1-robert.marko@sartura.hr>
References: <20250922142813.221586-1-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

LAN969x uses the same reset configuration as LAN966x, but we need to
allow compiling it when ARCH_LAN969X is selected.

A fallback compatible to LAN966x will be used.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
Changes in v2:
* Drop driver changes as we are now just using fallback compatible
* Add missing whitespace after ARCH_LAN969X

 drivers/reset/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 78b7078478d4..59245cd0c393 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -170,7 +170,7 @@ config RESET_LPC18XX
 
 config RESET_MCHP_SPARX5
 	tristate "Microchip Sparx5 reset driver"
-	depends on ARCH_SPARX5 || SOC_LAN966 || MCHP_LAN966X_PCI || COMPILE_TEST
+	depends on ARCH_SPARX5 || ARCH_LAN969X || SOC_LAN966 || MCHP_LAN966X_PCI || COMPILE_TEST
 	default y if SPARX5_SWITCH
 	select MFD_SYSCON
 	help
-- 
2.51.0


