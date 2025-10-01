Return-Path: <devicetree+bounces-223136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7630FBB178E
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 20:18:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C38481C7E41
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 18:18:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AB6A2D5939;
	Wed,  1 Oct 2025 18:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="fhftp/++"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f226.google.com (mail-pl1-f226.google.com [209.85.214.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298C02D46B3
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 18:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759342656; cv=none; b=hDAMe8kLVwrlOAAKEg9NZS1EbyPDwZPqfdwHv1SNK1ZhX+RpAkuDwJNWiYoCChoqRXDdQM4LoJBWCPpeVKPFhte6uEY2Nl7XeK4rbVhFo8VocRVCLmUkRR3LIHTkeFJGQT66W0n/0yGmopAYPyskDCQ8x1TR/hknyGRAcYfWyjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759342656; c=relaxed/simple;
	bh=pbh0BAzdCZ5GeAnkz26ytoOKgkgpRsRjE/yqGfWQuio=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jbTZ5AkMCGvpHf61/z7rnr7jvruUrkSbhYXIxiXZNoa2M2qiUxuZnZUjTiUWVaCEPgsgte8R3oi8yFfL74sv7ORdt5ol4zbKEwSjmULl1Iz4TKFNWEMBKVDX8bDDvv1ygwKF1a35E8USOnZ6vxwaxTSRUKp4GcMKQnQX3pX0wTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=fhftp/++; arc=none smtp.client-ip=209.85.214.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f226.google.com with SMTP id d9443c01a7336-27ee41e0798so1314835ad.1
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 11:17:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759342654; x=1759947454;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KKcTz2+WfcXi6NCeJhs4Aeeo3+yILKRVizIKcyvohdY=;
        b=sjkKgnES5apAQiZwYelMt/TFNpsOFbm5kCvKsDe0Ci4rTF9OwWX5EHltjFl0K2hI2Y
         DjdgcMYAZwAoRnOqR7mDoP9gAYQjdXkTv1JYNhUP8BfIBgAPKzL8/qXi2jeVIO/vE2MT
         5YDztdvc4LjLx9NATqgDPbGHFzLiQevn7P0shrfNuevO332hefu6Ha7ufIL8VNMUsnhp
         KbkjMeaYrpbpIcco2n8+SYoGqKKRvL1fJ0ek2ctAKKBPvU699cEuMn+gaPBEpV+64elD
         eE/YEG0zfGOw5+bdYLUlnfuNM8bY93q9EiUZwnm/l7AMw6sRRb8dPQqmKO7dvCbsd3cR
         Mn1w==
X-Forwarded-Encrypted: i=1; AJvYcCXQ2TAyNHk8oOpvHrje50nCeIKGn+XzbOPmYvadS/w9DMX1RdvgvaHR0BmxBzLhS0tDYaBWp4d5ooCf@vger.kernel.org
X-Gm-Message-State: AOJu0YzPvr++zVzymqk6KYhqZzPv86XTAnpjXhD0Ll9pkyIaz1xIiwMJ
	13pjkpVL+CPlYklAIB5RD3DQa0xiYPOiKgb3pPZtKdqFh0alVZXaZOZFmqj+6grAe7tdHF/4jYL
	meO4dgfsaPSc5CZ+kkRo1CEOupEOH/o6PnuVkduEvRLDvYwEn0aMXZRyM+98t1yqjnv5hBuLekd
	gpOaeNJjw1qfe4Qx2I0nNL6oI/ZMNCjoDPMfMoI1f3w3ElQtN+oDFrh+NUIqDyxVm+MtdTLZQxg
	tZdyePyZlHLJA==
X-Gm-Gg: ASbGncuyhAAnYkNfQOOHfO9KFeAOEVKrD2mCu0BYoZBpMrunOD/4gIbxfsCkom/ar8c
	3MYMWH2U4trv2+nvc4Iududm+4HTvonMk4hcrKBAegpXHe95DgMysfA6CK49RyI1vQMfUL/UGrW
	7lkWazE/0eu/movP2SiLzb9zdtCBaMOc8KPLlWoV9FJZ4J8prdRHeKxZYbsrb14GGmn+zw8Rn5G
	1yi/dSwJwHWGM/Trp+n5OlnuLpQ0W4N3Pm/S84CI1y6NJBjlT0C29ptCsY0Bt22K/G+770oE59A
	yqsBXWLhcaaQ1wgbpc8nfGlISVrJTEFxRwFX6S+D8GP1f3uBiMuyDlfxzBKWmJ99a1jDSzrrOLI
	f44qQD9wtX14144eJjH0zcJyJI48Mk6N25f3GMtdH0FLJlz1QE3FlYmw+tJr/86QyHMRazmAuvd
	hFoPYC
X-Google-Smtp-Source: AGHT+IH/XWC0yyqllM0C2160tLdrOkqHKt2EJVaO8PQ2PdC7DUoF/vGekOvu+z3XZMPMPVqbrBBx8GDeA0vz
X-Received: by 2002:a17:903:1b63:b0:24b:62ef:9d38 with SMTP id d9443c01a7336-28e7f2a36camr55318025ad.19.1759342654438;
        Wed, 01 Oct 2025 11:17:34 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-100.dlp.protect.broadcom.com. [144.49.247.100])
        by smtp-relay.gmail.com with ESMTPS id d9443c01a7336-28e8d119f5esm224395ad.29.2025.10.01.11.17.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Oct 2025 11:17:34 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8645d39787bso38593885a.2
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 11:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759342653; x=1759947453; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KKcTz2+WfcXi6NCeJhs4Aeeo3+yILKRVizIKcyvohdY=;
        b=fhftp/++HXs0gaG3zBNC/4gWi792SCdTqPTika72fyZfqbaCbo/lwrH9emdrcVLjAu
         SZJTwty9pUTFpks4wOPu8dJ7iwfNVJ0MPyP0C9k9eGS53ctWL8Q7P/KJgz9DelYQUwOV
         9eS1/M2due8XeNCvRwzDlBEsIVOFAlDGmqBrM=
X-Forwarded-Encrypted: i=1; AJvYcCUaEgOSOrxDrZvJrA0rAcDFXAGO6vmli/bgSfOiA3zPsnzjQ/gBEySwKLa5PnuKCm4ihJrp/PlLwpgX@vger.kernel.org
X-Received: by 2002:a05:620a:4507:b0:815:dab2:1ea8 with SMTP id af79cd13be357-8737a8f483cmr563556385a.79.1759342653183;
        Wed, 01 Oct 2025 11:17:33 -0700 (PDT)
X-Received: by 2002:a05:620a:4507:b0:815:dab2:1ea8 with SMTP id af79cd13be357-8737a8f483cmr563551285a.79.1759342652745;
        Wed, 01 Oct 2025 11:17:32 -0700 (PDT)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4e55c9e78cfsm3847671cf.27.2025.10.01.11.17.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 11:17:32 -0700 (PDT)
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
Subject: [PATCH v2 3/3] MAINTAINERS: adding entry for BRCMSTB HWSPINLOCK driver
Date: Wed,  1 Oct 2025 14:16:41 -0400
Message-Id: <20251001181641.1561472-4-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001181641.1561472-1-kamal.dasu@broadcom.com>
References: <20251001181641.1561472-1-kamal.dasu@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

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


