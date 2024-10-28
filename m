Return-Path: <devicetree+bounces-116420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD8C9B2CE0
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 11:28:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2BDE9282AF2
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 10:28:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D66D41DA0E1;
	Mon, 28 Oct 2024 10:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="LX3qzQMZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C69FF1D95AB
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 10:26:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730111187; cv=none; b=V7fHzz2yh/WHETCmWaSr6Q32LmD9nHwtv2uZSCnjwl3DiqDBo5N7w06zXABcnvH94AwrXKHR+65myx4ys+4vNL0EfAsj1I9jHli2qNMuN1IQQULbjPk2tzK//t1E9MwFRmCz99TbN5bXnASFKmK8moyOHCvcgMlxhw1DY4xZvrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730111187; c=relaxed/simple;
	bh=Bf/UL0py+Aoem3QDfrlUSLDA/Go0dx2JfQ0vlJCPhuw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=D3okPzojYGw+5rPFug3yxDHcwoSV/iTaHWSgThg87KfwxbvmYHRllnZRu8JPdI4dW+QHAD5ZjuOmnzollo6FDP7rdzGzluH6chcMpKYzsld8K6a2ib7KWM5RCT2x04QgqAdMhdg0+vw5KRuy4ttVHoEAhmdDTZsts6KiNjNW2zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=LX3qzQMZ; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5c96936065dso4843815a12.3
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 03:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1730111184; x=1730715984; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rR+lzb/We4vJpOJMhvb0fzb6ziPa4r87OMQDrQMxLAc=;
        b=LX3qzQMZACPqF8zlJGN90JMuSGqwSsvEk/rqWVCO9Di0Oy+rAi4C9Ianax864uPV/t
         MPN071aAZxfMvCX3clUwZP2JIjgHjQ54PUrN+Cs76e+lUCQtuyalZ1qQpWR5+D5b6fjv
         UAieg9Q4dPcCWmTnn2Te89UY/I4yyu0Xn1ihs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730111184; x=1730715984;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rR+lzb/We4vJpOJMhvb0fzb6ziPa4r87OMQDrQMxLAc=;
        b=GAoLnq+JFcx0GhzdsffWabiBBkzhUvPWtQGRFK+0BzPyM8XG/5pDgytuTuThHaRslZ
         9imyyg+Qrc/aSfVtZwchkLK0FiYIbeau/bBBpmtPINiqxfFmxQR0VUZlEJJxsPzq6lzi
         E/vbiO7tOtaupCoSJuf7xwagQAOYMrLr+mUoIh0tzWEZ+lkvr53VUciLLTia/mKpiThZ
         nVG/L8UtvyEQj8mWj3FJFnWP7Fd2nqBpyFc69rcVuE1XV1Qqa/GuPx8zqGWy0pIEDcsX
         qHj0dN/O6+IyT96SMAc7A8RboBF1iRXGvVCinKEp67/bpZ12ObGLA7OAZlERcDhRxZLp
         qLLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVuQp6XFSy9qly3HOGU4YsPD2uCLjEqXbFO6pl4sO626vlxQvj4HvXiuSzjW8H7F+Ugv/cKx+//4wKh@vger.kernel.org
X-Gm-Message-State: AOJu0YzmHf4Sd4lspZq53fDEnh66Sl7qUKE8cYqWHcpDZGE0zmwASVbg
	o/cq4GJSFPWQX5kSawtUJJdDttD30uWlCsHTMPwdHPAfzxeXb7Q/BK7FYNv4bSs=
X-Google-Smtp-Source: AGHT+IHAVYFMAgB+KAyZO87/7sx3tp0rbXix+BIz1smt6N19gM+Y6+v1PukMzpc/m5GRKmJHBaYyMg==
X-Received: by 2002:a17:907:7e91:b0:a99:403e:2578 with SMTP id a640c23a62f3a-a9de5c91d04mr907125266b.5.1730111184145;
        Mon, 28 Oct 2024 03:26:24 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.41.121])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1f297b04sm363613966b.134.2024.10.28.03.26.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 03:26:23 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Marek Vasut <marex@denx.de>,
	Maxime Ripard <mripard@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Stefan Agner <stefan@agner.ch>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [RFC PATCH 09/10] dt-bindings: lcdif: add 'fsl,boot-on' property
Date: Mon, 28 Oct 2024 11:25:32 +0100
Message-ID: <20241028102559.1451383-10-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241028102559.1451383-1-dario.binacchi@amarulasolutions.com>
References: <20241028102559.1451383-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The property states that the (e)LCDIF display controller has been
initialized and left on by the bootloader. This information becomes
relevant in the case of supporting the simple framebuffer.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index 8e3a98aeec32..937f108daacb 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -71,6 +71,11 @@ properties:
     $ref: /schemas/graph.yaml#/properties/port
     description: The LCDIF output port
 
+  fsl,boot-on:
+    description: |
+      The controller has been initialized and left on by the bootloader/firmware.
+    type: boolean
+
 required:
   - compatible
   - reg
-- 
2.43.0


