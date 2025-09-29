Return-Path: <devicetree+bounces-222555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF75BAA943
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 22:07:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D334E1C6770
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 20:07:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA7B1258ED4;
	Mon, 29 Sep 2025 20:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="WzX+oXpA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f98.google.com (mail-io1-f98.google.com [209.85.166.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B84264612
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 20:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.98
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759176438; cv=none; b=I22ph/SlPlx6OOJkXQH6hgbQhSp7YpTeQ7QgkeDpycQvA77bk4+nIevwIZyYjZ0xJG9HQb1mwjRp24TMI5HYr4dgk6Bqnx6tv/KOODpD7SthOB8sQ/HXtvMYSaLdFMTpb76Ai12Zy/Q08oAjzWusRyPvLMbzhhPduZGllh6BUYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759176438; c=relaxed/simple;
	bh=pbh0BAzdCZ5GeAnkz26ytoOKgkgpRsRjE/yqGfWQuio=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OBWWt5XWpIc/qByKWSSM5HyFUaCb2fj9BJeTjpWN1YAcSIF4S41j+Oe1du1Zkv4x+BExWgq+VzDooFOuJllTmsZ4/1bGlg+j45G3paaId9ZZx7TMItdQBuGpFSEUYeHWshuokQoZ+uEq4abDe9lmcVxsqNscdJ2frdaXzNOhPxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=WzX+oXpA; arc=none smtp.client-ip=209.85.166.98
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-io1-f98.google.com with SMTP id ca18e2360f4ac-91c93719deaso221924039f.3
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:07:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759176434; x=1759781234;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KKcTz2+WfcXi6NCeJhs4Aeeo3+yILKRVizIKcyvohdY=;
        b=aI18k3B+e7T33Wa6n3ZGU2M9wrWVhCTTUVkIcxu0DxyPMMHiv3T4fRm/0XQTCZ8NAv
         lLoJUqA33z+nKZmJbqj5BvETdt6usGa6qaEJwpEiZDwIwkWExDt/QzgPY0JZIi3H7UvG
         CPOwdT7JzWRnr48jj0aP1czk4MixDntvr0es9V6rlBGlWw0QdVeFXGl2zoLbIZwEog0D
         Wv8a9WlsWC3swcw3TLVtkP4hlkTKRcNgsklf5+EWChhY37m+9hh3uZFMHqlwpEP29k0I
         /HyOSG0f7hh5dTz8DeqqX7OA/gLz7h36q4Zq7r607adLxC5PtdFn3H5eG/Vs7kuUkbXq
         7+CA==
X-Forwarded-Encrypted: i=1; AJvYcCVWpdD9iQRl+bvG2jXHjegQ/Yl29lWXBvxHf+3YpuVZQZuGH5NvXhqfVJzXPlHRMQ+F4N6EBl5Yk6YR@vger.kernel.org
X-Gm-Message-State: AOJu0YzpRrbMERXwTywlibVTGc/hhxGWHxX/Y6FF55/c62cnQRLXoPEA
	rVubIEWcrqHoOkye8yZh8hvGLL9vXMh1aC6rLwc7HTQZgd5x+HWprS5UwR0iFhqYOcUFOaiRJlw
	8FqRjgh8o1SzlufvbTr9c+7ZgqkJJrObK20V+z61SknGSRxe/yc1GPQnB6Kl7dwIKnESpo1Djn1
	dlZjB+xRsVB9Gr0uY8c/l5CN/ODNwlNcpmpjmJjvssvGtR1cOXcpc3FJxzMOEfIi95pIkesqJYu
	l8uXwtrOJwmvQ==
X-Gm-Gg: ASbGncus04H22AALsWnprdE8d8DnvCVEus4BRm08tPuCJOb/7Q8Y0yuT9HMJNXkIArb
	No3Sii/SnqItlR7PRXQSD3CLwPuY6QU6b+7sn/hcVNECG4LBQk7P+RKQ5z5UR+WGgQ6vLHibHWo
	lr/kNos02QaRw2hCMKAVEEAZPQPjf//2S/LJipFzE1mL90ZEFrEWt4ZF5q3qIPBLOycnSGx8Az+
	7wShK9IQ+DTu8Ix2KkUavIGLkSov698F/AJnqK6pZhu2x4nZGl2AwDyDPLc+Bk1oxsONkdXCOVe
	o8eeid+jARL5mb/qffbRW58X8sLndJh/l20qhW7V1RY7rS4/Cru3dhlX5DHW8o/om9n6Z6lVYvq
	fEHRA9G4QpVT/fUDk+mmoKSD89Qlnob5Hf+cm3mzSn/p9YvN/E3DLZ4/B1pQn4mavzvkfr+rzWZ
	8=
X-Google-Smtp-Source: AGHT+IGe0+WFuNECU42sfwEMEMnYtkIP0VlYdCWlhZpHoEdwAmBGNRrKXjyqCLUPUXj9cfjyWXBuow7c9y+q
X-Received: by 2002:a92:c52c:0:b0:425:8a7b:70f8 with SMTP id e9e14a558f8ab-4259561426amr158005805ab.15.1759176434230;
        Mon, 29 Sep 2025 13:07:14 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-121.dlp.protect.broadcom.com. [144.49.247.121])
        by smtp-relay.gmail.com with ESMTPS id e9e14a558f8ab-425bfd9231dsm8722315ab.30.2025.09.29.13.07.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Sep 2025 13:07:14 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-32eb18b5659so4776550a91.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:07:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759176433; x=1759781233; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KKcTz2+WfcXi6NCeJhs4Aeeo3+yILKRVizIKcyvohdY=;
        b=WzX+oXpApqNUnlyvEPrkNx8BZBB/ASewmHzBLaP/P4C0xR3216v0eHbI2BFu/VJWrm
         myXjYxsj2P5eMPyapi5B2teLblFnWxlc4Yvdwm0RcJOioqjfXFviIYIxqjg642nf2ixo
         L2ZdAcGGw+mZOpednzxDsAynlMgyQFOgpYafw=
X-Forwarded-Encrypted: i=1; AJvYcCXex3T7hWUnOLqCkOTZCqmch+CgZrvYm9nIdCMs5Q01nJVuwjRW6070opJHwluSdVlo4+iWGzQgjZ3+@vger.kernel.org
X-Received: by 2002:a17:90b:4b84:b0:32e:528c:60ee with SMTP id 98e67ed59e1d1-3342a2c9fdemr19234052a91.24.1759176432858;
        Mon, 29 Sep 2025 13:07:12 -0700 (PDT)
X-Received: by 2002:a17:90b:4b84:b0:32e:528c:60ee with SMTP id 98e67ed59e1d1-3342a2c9fdemr19234028a91.24.1759176432436;
        Mon, 29 Sep 2025 13:07:12 -0700 (PDT)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33838735194sm2121479a91.22.2025.09.29.13.07.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 13:07:11 -0700 (PDT)
From: Kamal Dasu <kamal.dasu@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	andersson@kernel.org,
	baolin.wang@linux.alibaba.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com
Cc: linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kamal Dasu <kamal.dasu@broadcom.com>
Subject: [PATCH 3/3] MAINTAINERS: adding entry for BRCMSTB HWSPINLOCK driver
Date: Mon, 29 Sep 2025 16:06:27 -0400
Message-Id: <20250929200628.3699525-5-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250929200628.3699525-1-kamal.dasu@broadcom.com>
References: <20250929200628.3699525-1-kamal.dasu@broadcom.com>
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


