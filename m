Return-Path: <devicetree+bounces-225143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E960CBCAE9B
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 23:21:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 17B544F7F40
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 21:21:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D48628489A;
	Thu,  9 Oct 2025 21:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="PcppOuP2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f97.google.com (mail-pj1-f97.google.com [209.85.216.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ECFB283689
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 21:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.97
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760044851; cv=none; b=qfCDmgv14kgWnnfv33nCPxmqnRt89QHL6ZvINBM/AIQ6/Y4tGIyi/LK4Iz8pe1FRnhYOCaZxCtmZ5wwjuB3l01DyGTxi6f9QlCiwhyaspOjrhMqrmyur8B9ICUJOBo/fwMU7AsoThEPhMMZpiw1Pgtk2m19sPPgH60XcTPKiW38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760044851; c=relaxed/simple;
	bh=5Z7F2UPREvGp5FEtsnFrVwld1p6TT/Qq5YikRzeYqHU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=t1Oolkxr5ypClhPd5txpGh4a26TFc1fJ5zCha8ThMMi3a9G7EuSWp1C0ge9wvzccmNnkG9HPOlRKlVv4qDuJAORBI2WjceP9VS5GC7KH4sJljkYRZeyW34JrBH0Tmb8MpeB5gSiyu6hyOJU1YRVfMM7742PatRic7K9K2aqX3lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=PcppOuP2; arc=none smtp.client-ip=209.85.216.97
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pj1-f97.google.com with SMTP id 98e67ed59e1d1-3327f8ed081so1859411a91.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 14:20:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760044849; x=1760649649;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8pC7vKNtvxXJSB4veOOQwTeA6v2wJSbqIf9D6+uJhGQ=;
        b=WZx7mBGvY6ZmgabNXUd3G4nqYi8FOK6fARQEvyM+iKlQr4FOQumL4bz9OkIjA1qUHg
         4g8pgCNNt/GQ6ZbG7Sdk4EsXy2bMF27pG6gkPqW8oQ1Cn0PGxdxo16hOdVmi8ifNwWSD
         RBLuVEUZl+VC2P2ONphAXvnOj4+1E3GGGspcu6iaA+pqrLPXjpcUt8GmKTf78MWG4uZT
         XrSN9rtv+t48mohytDwuTUwaDU5TxuBAFpzoYJkpzSS/R8P+1/egK/w4kKzkAZ5hN9Jz
         WA+2x+HeMKszn5Bpz8iz1aeQW5PKxvj5rJ9ixrIhgp60D/q22elBlkmxAhNoVsj+grNd
         vKdw==
X-Forwarded-Encrypted: i=1; AJvYcCWSMUiQJjaiw9udwH1d1Fh6Ymb9NB5XYjkZ0PGAX9LoBzoJPkreD/694oFq7fvpU/k0Ng1OOSUOQgtu@vger.kernel.org
X-Gm-Message-State: AOJu0YxjjYHaxtWJRs9em3d1wwha+JOJGQGUgG14fKPYmGvknFV5r6yb
	Qp41Z3RcZmDXzIP/UnZT+zwwr5c2TM+6k6S/6eCA2IlaOlKtC3YDSaZ7CYm8n+9fmTE0eHgyAVG
	I7BahQFa0ioiYmRf0If1QppvolKr+i3exO/kRZXi/iKknehRk7swGHBe4FOt9WtIkDtQRj2HJEL
	5AwV12c/sG6nba2CvEYcv35aSNTCaPrPCxm9+Dh5oe7pWNwxtSS4fMiBuC/rYXnhEzNly+M0Nas
	GjYn8ZK0Z+6pQ==
X-Gm-Gg: ASbGncsZyHQwGhLlePIx8vKhLeq+q/Aotc36KVpH1SDY4lIgT39JnwA0hxK1sMGUL+y
	JU3XDUieB0V6zz9sY8SxSsFMM42nGSbEjAG/+b3yNyqxg4aWWwMzmMOM/kb7KlolKKTOGAze3c2
	ieGgnROSjDQo2cn+CjYwud+7i9otm/GBCHpXGi3dLk4/DHkJ7GLeIVPOwjKiaRW930jYeX+c5tJ
	vkqcudj0NHNHK7mtHexBtbmBVk3APxrQCJajH8DIdK1KiCDepTdLSflPxHwf2is9X3SVnBA5gAA
	bffH3L7d/joTT2KFvW8Ku8DO2vE2GnbArULnILZ94/XOCI66mbGZev7VeZVqv4KGnxou0B2sjsm
	ACQEMqa5KEcNofXwTtU+I3JQ1H9kIOpBsIT9KFHVY+z7dwX3WJmElA6KvFm4A+nOvRKRRvxd/TN
	2ojw==
X-Google-Smtp-Source: AGHT+IFLS7Nf6Kr7iK3HqBxankhz6v1/f6Wlei3raZcVcAM1oPRboP9ig73lbB0D42v7R6A8t5okZ6Vv1sZD
X-Received: by 2002:a17:90b:4ac7:b0:32b:dfdb:b276 with SMTP id 98e67ed59e1d1-33b513a1e32mr11239563a91.34.1760044848778;
        Thu, 09 Oct 2025 14:20:48 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-19.dlp.protect.broadcom.com. [144.49.247.19])
        by smtp-relay.gmail.com with ESMTPS id 41be03b00d2f7-b678ddcc5basm43104a12.6.2025.10.09.14.20.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Oct 2025 14:20:48 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8589058c6d1so260252885a.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 14:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1760044847; x=1760649647; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8pC7vKNtvxXJSB4veOOQwTeA6v2wJSbqIf9D6+uJhGQ=;
        b=PcppOuP2fE5nCC5mBvxBEuDFegxsNXPzfwQeg+jatq2Ojhu359hFo0AdJgh/Q4Oadu
         AnQ4bbhzDWK9YNdoQcj+pEP+w8JZvRzButrRzBZ/X3EuTPOnZheWmF6W7AT9RAeYgqdc
         w1mh1A/AbeNNg0vq6WepG4MQNC3+hXbwXhG4Y=
X-Forwarded-Encrypted: i=1; AJvYcCXAmOqIFVZMTTKMXJkhP9CqK+F2vOYznysxEBCQNrN5xi6Rf7YAOleFbRMGkiDhszR9FyMKZf2KWOYQ@vger.kernel.org
X-Received: by 2002:a05:620a:711a:b0:7e9:f81f:cead with SMTP id af79cd13be357-88356de6853mr1368994785a.71.1760044847466;
        Thu, 09 Oct 2025 14:20:47 -0700 (PDT)
X-Received: by 2002:a05:620a:711a:b0:7e9:f81f:cead with SMTP id af79cd13be357-88356de6853mr1368989785a.71.1760044846973;
        Thu, 09 Oct 2025 14:20:46 -0700 (PDT)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8849f9ae428sm274832685a.16.2025.10.09.14.20.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 14:20:46 -0700 (PDT)
From: Kamal Dasu <kamal.dasu@broadcom.com>
To: peng.fan@oss.nxp.com,
	andersson@kernel.org,
	baolin.wang@linux.alibaba.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com
Cc: bcm-kernel-feedback-list@broadcom.com,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kamal Dasu <kamal.dasu@broadcom.com>
Subject: [PATCH v3 3/3] MAINTAINERS: adding entry for BRCMSTB HWSPINLOCK driver
Date: Thu,  9 Oct 2025 17:20:03 -0400
Message-Id: <20251009212003.2714447-4-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251009212003.2714447-1-kamal.dasu@broadcom.com>
References: <20251009212003.2714447-1-kamal.dasu@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

Adding myself to the maintainers list for the hwspinlock
driver on broadcom settop platforms.

Signed-off-by: Kamal Dasu <kamal.dasu@broadcom.com>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 97d958c945e4..21b78f468169 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4972,6 +4972,14 @@ S:	Supported
 F:	Documentation/devicetree/bindings/gpio/brcm,brcmstb-gpio.yaml
 F:	drivers/gpio/gpio-brcmstb.c
 
+BROADCOM BRCMSTB HWSPINLOCK DRIVER
+M:	Kamal Dasu <kamal.dasu@broadcom.com>
+R:	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
+L:	linux-remoteproc@vger.kernel.org
+S:	Supported
+F:	Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml
+F:	drivers/hwspinlock/brcmstb_hwspinlock.c
+
 BROADCOM BRCMSTB I2C DRIVER
 M:	Kamal Dasu <kamal.dasu@broadcom.com>
 R:	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
-- 
2.34.1


