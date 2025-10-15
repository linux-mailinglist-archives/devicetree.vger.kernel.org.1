Return-Path: <devicetree+bounces-227150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CE4BDF1DF
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 16:40:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 459E81A600B8
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 14:40:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 467072D372D;
	Wed, 15 Oct 2025 14:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XjLOXxzc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3ACA2D2486
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 14:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760539173; cv=none; b=LHaJbVEmnEK8QqNLNyCvPFjj7PKaaGZI6msFSAUOVynrBFgL32KB9rdBivgfN5YBz0ycSHv7Ld6aX2s03BCNdHzCQd4Y3L0qAzrAii3lKbvocg8xAKsQ4zIDN1MilvwY5eL8HsegqeBuF+HPfjlMw0nqSPWnHgjx43GwKKjLVME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760539173; c=relaxed/simple;
	bh=AzyWtWcVDHS3YUe2MXPBE3luV5G7bLlUdIrIjbCCynE=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=K47TOqmM1QC/fJ2WAUgxqfyOiOjaQJ6hrnvW6wydeONJB5JewiXwAgS9ddLJSZwiTr0c2msI4NYpVyl7iPwkUDSxDsm3gCQlEqtTpSwuaOEFMOcL4vT40r364xhSqn3k4qTkusfE2NEwShCkfJkEIXIqMXV4pQQRELv/R53TUl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XjLOXxzc; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-b632a6b9effso4136325a12.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 07:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760539171; x=1761143971; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oianJSkzTRF5G/SQIYeXjnYqhxQJXKeLJMnXmoruyyw=;
        b=XjLOXxzcghbvimP92D7i87LImR5faHuNtjUpydVLc5fOxA29RBeNFhU+hG+JUsdey5
         cDPZ6l2IPapTZFptYl91sSr9USfSSkXhRls+VMKNOWzD+9vNOOwcDueHx2Kxd6KZECO8
         5PBDwXVyySV/otNcrC8PO7NYArfuYHMj6pC4d0BOAvACdFRf0AfdwxvkKlTXozwKOfvp
         9nSxAf+bGnvbkwMh+S4uvB+1OQm3nI8w4tfJ995F8jFmKp0gIIbLhcUuDZ4kpbO6Wocn
         V5FbVTRTZ7L/2xEv+IONGMGhlEkj03KEu5sRZlmk5GNddCsRAhYlBedhsuooGTzqYjAl
         1lQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760539171; x=1761143971;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oianJSkzTRF5G/SQIYeXjnYqhxQJXKeLJMnXmoruyyw=;
        b=HFldFx4VKipjn9A9PL7tADig66ZrXeL2P00wlD/KMGErbE9m1UfQqLGP27MgesSyLs
         fcSGpUyVM3wyEb7fBcnRHpJuP67SDXDNeDc/3C7vHhXcy9sSqEtsRFt81Daa3qWGKWzt
         g211s3VeEPgn9gT/VzwiGenQui4H4omsEmzkEivW+3+IDW8HG7Iu1GILRqpi45K5lQ4t
         MT7lISbc516gpfwtCDu6pY9fQaQUg6lgo59v+9iCeTjOiFBh1SY1JSw8nDVBzwp24sG1
         OHj7mYnyoIAY8PBXCrfi7AvWGgPx2oo8UYea2EVMgGD9A4JRnbAhTtHhn/0OX0jcblS5
         9caA==
X-Forwarded-Encrypted: i=1; AJvYcCWAET+Ak6hRHh8apVRVOFIihe42wpuhMZVL2I9ubduS8FxfmCQWFo2n/MktC54nw7HUkKqhnTFxzar5@vger.kernel.org
X-Gm-Message-State: AOJu0YyB99fXoTfdC3mmxPG20kQL0MMyXcCoPi0zEm0UAoTAdYBeRh9i
	oQmFxWFPdE8fHg32fF5D9HzsEAt88JHByeQIXEjm49S+C29UaLqmq/wMMiRlaNOr
X-Gm-Gg: ASbGnct71crkuD3V2CHADXCIygaVK7oaxZVOyB2WB+ELJ8hznHv7MEWYK4bUdbp/eg2
	UX7KSiBfG4gUauBEmQrNsy7rrY8fjDfWo7L/e7aB6do0XmaIbZ8ezlHh7yzMt8d5eYWZei9FkEG
	aQ+rfSUblDe/lpanGkmBUHfUt3i5h8ERMiQixCAG26LTz6Y5s+hrQhZwisbJxyFX6gqVvWYQvOG
	4l2KTFeAzNsRPR1GFESHMa6yvUNeSCluioQLZpIVBVIcnjfoyY/8RY5ollUxTRUltwJ4gXAeNSK
	jJDCM2oJbN2jjiiaD3VtLU3qzAOdq8mAIqVdP+IN5hNGT4EmFkZXBiN2epM/FTFcl5cwxk+1OLt
	byabJlLLr90aLcJswI/VyxYcbwB4Ws6vj9wfRKx97aiOpSm5YPR29J2yUdel9Z9j09HnVMRp1YM
	BmLjonZs9tlzjtEw7PSZ4v5uCFznwafrZGQA8pinZSn6kp/6Sl2H7FbbJrq9uftBgl
X-Google-Smtp-Source: AGHT+IHQV5VLlGEJEx4nThpYETPXzWBCwzYZ1PXelEFJYlRZ0x4BxIFfLFgQXf99ujEGLB1D9HXqKQ==
X-Received: by 2002:a17:903:9cb:b0:266:702a:616b with SMTP id d9443c01a7336-290273799bdmr348708855ad.18.1760539171032;
        Wed, 15 Oct 2025 07:39:31 -0700 (PDT)
Received: from fred-System-Product-Name.. (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f36738sm199853455ad.87.2025.10.15.07.39.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 07:39:30 -0700 (PDT)
From: Fred Chen <fredchen.openbmc@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/7] ARM: dts: aspeed: santabarbara: Enable MCTP for frontend NIC
Date: Wed, 15 Oct 2025 22:38:59 +0800
Message-ID: <20251015143916.1850450-4-fredchen.openbmc@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251015143916.1850450-1-fredchen.openbmc@gmail.com>
References: <20251015143916.1850450-1-fredchen.openbmc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the mctp-controller property and MCTP node to enable frontend NIC
management via PLDM over MCTP.

Signed-off-by: Fred Chen <fredchen.openbmc@gmail.com>
---
 .../boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts   | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
index 89b18afe2b00..b190ab344aa7 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
@@ -1279,8 +1279,15 @@ temperature-sensor@49 {
 };
 
 &i2c11 {
+	multi-master;
+	mctp-controller;
 	status = "okay";
 
+	mctp@10 {
+		compatible = "mctp-i2c-controller";
+		reg = <(0x10 | I2C_OWN_SLAVE_ADDRESS)>;
+	};
+
 	// OCP NIC TEMP
 	temperature-sensor@1f {
 		compatible = "ti,tmp421";
-- 
2.49.0


