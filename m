Return-Path: <devicetree+bounces-218335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA58B7E6F2
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:48:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4DF8F3266D2
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 10:20:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD993281369;
	Wed, 17 Sep 2025 10:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ndrW70/Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6743136933E
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 10:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758104324; cv=none; b=IwrN4+tBkRJRpXJRF7t+lvHg83xfkeNWPpzei/OpdjPunc/cKCoq1OIdEyDq9bsuF/IqMswtVF1XTKCZWbpJy3SQUiCC3NxtDiWkyd6ElblriyvQxDNfgZkjAuFqmi6IWiLNbCGWDT40D+E/LC8ca59ADSL0zj4h7SHSwyEs+vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758104324; c=relaxed/simple;
	bh=c9+1zzRffLrR0HrPRkGx6haKjpruqLr9G3y9t3Y58EI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rf0gnh9RTbhIDx6iDktQsmXubTITa4m796XbwPwUBQQe76wkW9HyzY5wpJ0TuKP7ip/hmvRBuJnSGK1eNa+qQIAOKqP70rx7UpzBpQpga4vIFyl54w1SlHQlIWM08Bp3XHAs7sNFOVVIUX+CeI46fkQf6pp1nMfVKckiSibi2wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ndrW70/Z; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-b54dc768f11so1645289a12.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 03:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758104323; x=1758709123; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5zZ72N87Qaim5aMPVYiT+iILb4wfsMlQ62gUTdmY8nk=;
        b=ndrW70/ZyKiGyey30siE7OCImZ+NNRxsiTk4uf2PGGvvV0KL36BiMLJ15WU7qLAp13
         BfvFsVyrFtDVGsPBtxU8KcvlDXFeHoNuyb1qteh5EHToTzZxzpnTgYy3hXBXQ1/9Eqs+
         sR5NoeXEr+embhL4UCak9bzrH9m1ocz/Lk3E9Q32ysUyaCnZ7xTxaaf10bLDkzf4sNDg
         oYRTqqDTfwfIPa78XvHIz+AIBlnofq8gLfCBa2Sm8o9gpxUw5STIW3F/or1lwwzQlKGs
         zNKKtCmIiqcD0gqBxYTgtWFoW76Xz4Dd740rOfpGC608fUNMElTEiuaSUiK0Ds0y0YWb
         XvyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758104323; x=1758709123;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5zZ72N87Qaim5aMPVYiT+iILb4wfsMlQ62gUTdmY8nk=;
        b=lGrCFqrzOs3OMk8qpsCygEUW6LWlcf7quZR/d9Pxzx9mmpjiIhMI+huBOa4cXDbnjt
         cIv1eHj8TC7rUiQQP1Hi61saTgmAD4wNOzBTotM3awN7sfWTiiQ172aFEWo7K3qcRs41
         RbYU+6qKJ6fYpbpadJ+8E0xPBLaaD2GxkcLzBTnY7WOelyycLeyT8wxswr9FEMkZ3F0v
         VcIfrDZlh1cYezHZVXQ3gzCgL1I19X7wy+ky324DX4yuYycDILnTu3dTW72/LUgzzxBG
         bB3VcrAxzrZlhiNTRZFiIYf3j1cS9GIgItQ6LW9SMfEWfd0og2ddURaVXeIPFENykT+Q
         ykqw==
X-Forwarded-Encrypted: i=1; AJvYcCU43kL301c04kZ8fWssNJ4fO8aUUBMkJ3E0SKD1/nDqatJAR17N1m1mZn71HCR3Bo22Oov1KeLmJOoo@vger.kernel.org
X-Gm-Message-State: AOJu0YzAy600vDHr81KAFJeApvvkw+tPKqMA0WnAQeafBr5JY9VS96+f
	C6i6PKsofFzwls3JyRh3281A3cbHJ+ahzAB6s8pF8sG7QcbO80yV3bFL
X-Gm-Gg: ASbGnctsNcdt4XYThHw0iGN9I/HA0gZPbrjavcN6yzHMlZGV9cA4ddtEhwuUyWWUHsc
	dE7EKU9e9RNaPCpP8GI0M5fbFqQiwNMW4ijKvkG0E7bZ1Ebqg7rmjpbB1Tb5OM6LAH0ffjTjm5o
	pApLEf+eXp2CdbG8Ar4tUrbaqSW/uommxGuIblZ1GkVc+dXa0Foxit75TjjpT+4gULzXANMB20D
	ULPKOBTGnnMLPPllg0Dne5kJL0dibV0GukUyfg181PIwsgyV+B1qxvdC1KTBwfyXkOXoXHWNMn4
	FgC3VB86eaWupORE4QPnj+wgz5tL3jc0yX/M+f9sfim8FP17GEvq3rSFmviM3oggLek7j/Dg0cn
	eICoCEJxkw6XX0HZN5Hnk03J8ro6bSctmlOH8r1hyy41bTYhQHC5PAM3pvC/95tbgyncMqv9nVr
	gF8yr0+PCAapyuR0uc4mh8tActAQ==
X-Google-Smtp-Source: AGHT+IGJbBv49X8Fm3/hWIcTvxvlFS2nF6Nm7mbCdXfD2nMXpiK58GybyZRf/sFMYFcCCU2A4mYHkw==
X-Received: by 2002:a17:903:11cc:b0:262:661d:eb1d with SMTP id d9443c01a7336-268118b9516mr20803485ad.1.1758104322723;
        Wed, 17 Sep 2025 03:18:42 -0700 (PDT)
Received: from eric-eric0420.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-267f4d286aesm28588755ad.63.2025.09.17.03.18.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 03:18:42 -0700 (PDT)
From: Peter Yin <peteryin.openbmc@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: peteryin.openbmc@gmail.com
Subject: [PATCH v1 4/4] ARM: dts: aspeed: harma: add retimer sgpio
Date: Wed, 17 Sep 2025 18:18:25 +0800
Message-ID: <20250917101828.2589069-5-peteryin.openbmc@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250917101828.2589069-1-peteryin.openbmc@gmail.com>
References: <20250917101828.2589069-1-peteryin.openbmc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add irq-retimer0-0v9-alert and irq-retimer1-0v9-alert
for power fail monitor.

Signed-off-by: Peter Yin <peteryin.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
index fe72d47a7632..37b5e2614a9a 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
@@ -828,9 +828,10 @@ &sgpiom0 {
 	"","",
 	"irq-pvddcore0-ocp-alert","",
 	"irq-pvddcore1-ocp-alert","",
-	"","",
+	"irq-retimer0-0v9-alert","",
 	/*O4-O7 line 232-239*/
-	"","","","","","","","",
+	"irq-retimer1-0v9-alert","",
+	"","","","","","",
 	/*P0-P3 line 240-247*/
 	"","","","","","","","",
 	/*P4-P7 line 248-255*/
-- 
2.43.0


