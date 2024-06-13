Return-Path: <devicetree+bounces-75456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 047439074DE
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 16:14:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 01BE11C238C8
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 14:14:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52D211465A4;
	Thu, 13 Jun 2024 14:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="fJvG1WGD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B21C6146011
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 14:13:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718288027; cv=none; b=bzUyOASm+blMjMCFBTd7P+pSXBzRXjYe3H8HFpkBlhIgycrov5FvSmyxJAk9vwON5ipmlugJi/12NwUSatwl1B0AK3rv0xRfubgZOk66jRP4Fsd14I4U8s4we+YBaSaY00gzWbJHUB/NJgotxyxM+mgLof9BlZD165WUPzVlULg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718288027; c=relaxed/simple;
	bh=ERjV5BJYroAXFIaG6FmVQOy7+GFyAqC/Q40IjLgdSn0=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=D3YIfuK3Cun3aIh7LRr4lqg9xr801berWmLWkgXzFGdyTFJ9H7U0iSpTb4bgAixPG1fscZDcVwwfp/8CMXwe4Yss4fSzdxrM0GVbZVx6IeUACGLqQdzpIfBF/eb3I77XTN8T70bHrAy144S9heMokf+GO7yxNB8WcRHIJamqNWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--sebastianene.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=fJvG1WGD; arc=none smtp.client-ip=209.85.128.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--sebastianene.bounces.google.com
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-63128f5eb5bso12531197b3.2
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 07:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1718288025; x=1718892825; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=4xD4B/30d59fgI1TQcHmQ/HHM3gNeD0CWu+CBJTxBNY=;
        b=fJvG1WGDnhRDHzpu+eZ9gNG7a6k2i7yrK76/2EK4GUj6ojle9CMNoZJsSMWzRzLTgl
         tkUYdnhFIVKQESN0/Ez5bQSzfyQfsyj6hEh1a6w8+8WkwW3elKzD+2OL7cHDsR3iVIkg
         CzfIQigi3kmcXQWF3pRbjEt2nKwxXHH1Womz0qcToeIMd3QXZ/nfd0eN1Yft1FiYcQCI
         kTZf7iSzUD/miGWQwJ4khpMkMLR+Zh4o1Si1C1/zEDP0VLGuVQPfj1w5sPlB8EadZSbz
         nuNn4jVRit0aUVTeRJaTFNSLP6NbKioZTuuCwJqnfkFta3OleD4UxBkTBq8Q80epWhnZ
         hlJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718288025; x=1718892825;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4xD4B/30d59fgI1TQcHmQ/HHM3gNeD0CWu+CBJTxBNY=;
        b=tQONeb9Bznr27eFKBuMoMU2ERby+nDX7p+LXDpltwWFTauIaNtIoTDt+nclR4lD0P5
         SZ/t7BmXeolEnz3jBXmSUTQW6N24+EdglgbLr5VNSgbrHrgnsfSi2p8GNYzFv+JK09tk
         ONrgxls/zjC/t5nl2WMQWYnB5Cq0yCUybBB8JS0GHYAUgwIJMe1TB8aXQv2cF+YoQdii
         cQvf685VruwrFwAog6MK4FGRjOJ1FSnrXhzX+DYVrxPhTwDBX7zxOa4ORCwSL3d6kZFm
         KgDfmI+y0AlEbfQQQRGIaDqVsOfyId0UgdmMlGpl2bl1Zalocuw52u1wULl7TwaLs/ZV
         0IxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhfcv44vSXe3LzqMfzg42o2Fhb20RqPZuCdxkaVyeg/wrQEp73zCLYjfnoWyck3cJDqUYk+ZjhiN/5w00cQlxl9VzEbuqdbt/iJg==
X-Gm-Message-State: AOJu0YzTHU24IXOn3MUAYPxJsnYvY9/QkCuUUC7WAPvS3OWs43YAAIxv
	YgO4a0GB6GP0Rbr0SXCjTvNaEVAlAAhUkhGu11IKoB8nit/h/7fC1r1YQkSw5sWKjOB/v2lz5to
	iCkVTVa/DHH+dR8fLbdspHRzGXA==
X-Google-Smtp-Source: AGHT+IE4GGKM2aTl6lWB2KY+Wdp3WNUVj4Ae+A0AMzyGnV4UVuSwDQxm/tAmKK1qBnTgqzTNbtfDQPyFW+GwABUCxZU=
X-Received: from sebkvm.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:cd5])
 (user=sebastianene job=sendgmr) by 2002:a05:690c:25c7:b0:627:a962:4252 with
 SMTP id 00721157ae682-62fba47067dmr11954057b3.7.1718288024746; Thu, 13 Jun
 2024 07:13:44 -0700 (PDT)
Date: Thu, 13 Jun 2024 14:13:34 +0000
In-Reply-To: <20240613141335.1134341-1-sebastianene@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240613141335.1134341-1-sebastianene@google.com>
X-Mailer: git-send-email 2.45.2.505.gda0bf45e8d-goog
Message-ID: <20240613141335.1134341-2-sebastianene@google.com>
Subject: [PATCH v2 1/2] dt-bindings: vcpu_stall_detector: Add a PPI interrupt
 to the virtual device
From: Sebastian Ene <sebastianene@google.com>
To: arnd@arndb.de, gregkh@linuxfoundation.org, will@kernel.org, maz@kernel.org, 
	Rob Herring <robh+dt@kernel.org>, Dragan Cvetic <dragan.cvetic@xilinx.com>, 
	Guenter Roeck <linux@roeck-us.net>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	kernel-team@android.com, Sebastian Ene <sebastianene@google.com>, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"

The vcpu stall detector allows the host to monitor the availability of a
guest VM. Introduce a PPI interrupt which can be injected from the host
into the virtual gic to let the guest reboot itself.

Signed-off-by: Sebastian Ene <sebastianene@google.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../devicetree/bindings/misc/qemu,vcpu-stall-detector.yaml  | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/misc/qemu,vcpu-stall-detector.yaml b/Documentation/devicetree/bindings/misc/qemu,vcpu-stall-detector.yaml
index 1aebeb696ee0..e12d80be00cd 100644
--- a/Documentation/devicetree/bindings/misc/qemu,vcpu-stall-detector.yaml
+++ b/Documentation/devicetree/bindings/misc/qemu,vcpu-stall-detector.yaml
@@ -29,6 +29,9 @@ properties:
       Defaults to 10 if unset.
     default: 10
 
+  interrupts:
+    maxItems: 1
+
   timeout-sec:
     description: |
       The stall detector expiration timeout measured in seconds.
@@ -43,9 +46,12 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
     vmwdt@9030000 {
       compatible = "qemu,vcpu-stall-detector";
       reg = <0x9030000 0x10000>;
       clock-frequency = <10>;
       timeout-sec = <8>;
+      interrupts = <GIC_PPI 15 IRQ_TYPE_EDGE_RISING>;
     };
-- 
2.45.2.505.gda0bf45e8d-goog


