Return-Path: <devicetree+bounces-111140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DB60299D5F2
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 19:56:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 78E47B247B8
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 17:56:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA2471CF5EE;
	Mon, 14 Oct 2024 17:54:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="gcCczIL2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA391CF2B6
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 17:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728928488; cv=none; b=WQMsz2OViFp0uauLpR/CfIyz+cBxq4KcAyu73XLjiBoHLwBWNurR2W/XVEStiySIqSdcZtzCdYiUMIjHR7/8lFsuFqB39AmV9B5aaD6q0aPnLBVpxb2fonNNw6ibbIzO2I5AntVfoj3aQ30ZPMoawdsn8p2r60p56nPfU+L13jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728928488; c=relaxed/simple;
	bh=j8PRpBk/lIiVe/T2RTs5CZVHcgqvJy9CT3C0m3PRVNA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JJ7O1ZEEdIQ7soKmqNG2UyJ8mG6XoDbGKMQ8vFwUB7wxmat8xvyn5K2pYUBDCIwGQw8gRkRoYoEO44ZvbdAxi8e2oKWm6oY1ZVh4EPQNW6wXwtpwxV7YH0A4u7bbrTpplVWLGQK6Db32MmKfBU6aT+kLCNhpFwTWRS6X3ApquDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=gcCczIL2; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-71e483c83dbso2702910b3a.3
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 10:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1728928485; x=1729533285; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ib0LzHxCGUP2Of7LzCAvLTsWSTSTY5vzi6Axbb4I5D0=;
        b=gcCczIL2vD5NxmIJu4XU3mzFGSscbuC5Q2wz7lw0TlYmoABIZpBTmy1kP1IqZa+Eds
         tvFuncHhFc1izI61ygrqs5RmKIUxpLId8q5vRox7Gxkj28OS4RPyi+lRMTEic9oSvNOj
         fhh9g1CzXKjYkni3P8msQ/YyAZh5bJgNVyx49hlulMoc1niwtACAlrM9htalqFo5rJ39
         S6vstqOJ0/OLvFdoiMXlqbxnP9nzc8Dss8tUvvMEwIs9VwkzPdL41a/pTADGf+gh65i0
         m9CQ1QzVZmqgJVXqkPMQsBtIZSfuNZCxumur5SbHxuyGHsmXfNqjsUo1FOohSmr0lGXJ
         UhlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728928485; x=1729533285;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ib0LzHxCGUP2Of7LzCAvLTsWSTSTY5vzi6Axbb4I5D0=;
        b=GNvDGZyVbvT1e3HSpt1tnvqlnxbI5we0CBi5M76YvlCKFjfZ7t1Rl7JQ4PiKGLQviX
         Ir+XI7GRRw7E1Fq7a65bphfBH+ItYeP183Yx7nDmCYks/Tbv0v+5qewr0ftXaCibJXgX
         2Ye3bRjx8ztq7NsOcxZCKgD0Weln72FUZ8PPK6FH6EOomhsAiOwPxJ66b/Ln2WssDf8s
         wBiscKLPDZegl6KIqdS1hSRWI80cGcm6brP7QErWp14SRjHUUNFPOPX4xlXnAo+yt5C2
         OrdHJNZKqz9PmCSLp0e4D/tyj4hCWxG28PmLxKJbL36k77wbkhurCBKsaNlXU8i5uedq
         EPcA==
X-Forwarded-Encrypted: i=1; AJvYcCX/h0wzIoqtW7rXahHoU0WbNlL8eiGik1TpgSFljZ1iPbx0qbNtffoZuVN9fAwDdgWT9i+CXFQun6Wi@vger.kernel.org
X-Gm-Message-State: AOJu0YyMRewPGNF9G9QmpO+JHqNU1dvMZMGytwOLA4BXWCi4bmcnpGcA
	7K1xsTPWwhn7Q/BoZbdFLCiAMz99gf0bMiNgybTwyVAao9gQShFKHT/6NexQL/I=
X-Google-Smtp-Source: AGHT+IGn+w4J6ujcKmDO9lhPgpFFwLHQORkcQhURsA6+UDHkjEM67AndBJceCtyLERFJD54nONsRxA==
X-Received: by 2002:a05:6a00:ac7:b0:71e:4fe4:282a with SMTP id d2e1a72fcca58-71e4fe430admr12455912b3a.2.1728928485620;
        Mon, 14 Oct 2024 10:54:45 -0700 (PDT)
Received: from [127.0.1.1] (71-34-69-82.ptld.qwest.net. [71.34.69.82])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e49a7e5e7sm5611109b3a.179.2024.10.14.10.54.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 10:54:44 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Mon, 14 Oct 2024 10:54:25 -0700
Subject: [PATCH 8/8] riscv: dts: thead: remove enabled property for spi0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241014-th1520-pinctrl-dts-v1-8-268592ca786e@tenstorrent.com>
References: <20241014-th1520-pinctrl-dts-v1-0-268592ca786e@tenstorrent.com>
In-Reply-To: <20241014-th1520-pinctrl-dts-v1-0-268592ca786e@tenstorrent.com>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Linus Walleij <linus.walleij@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
 Kanak Shilledar <kanakshilledar@gmail.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Drew Fustini <dfustini@tenstorrent.com>
X-Mailer: b4 0.14.1

There are currently no nodes that use spi0 so remove the enabled
property for it in the beaglev ahead and lpi4a dts files. It can be
re-enabled in the future if any peripherals will use it. The definition
of spi0 remains in the th1520.dtsi file.

Suggested-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts | 4 ----
 arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts  | 4 ----
 2 files changed, 8 deletions(-)

diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
index c0cf9b086f81..86feb3df02c8 100644
--- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
+++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
@@ -150,7 +150,3 @@ &uart0 {
 	pinctrl-0 = <&uart0_pins>;
 	status = "okay";
 };
-
-&spi0 {
-	status = "okay";
-};
diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts b/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
index f60b1879192d..4020c727f09e 100644
--- a/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
+++ b/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
@@ -59,7 +59,3 @@ &uart0 {
 	pinctrl-0 = <&uart0_pins>;
 	status = "okay";
 };
-
-&spi0 {
-	status = "okay";
-};

-- 
2.34.1


