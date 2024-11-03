Return-Path: <devicetree+bounces-118431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2E79BA3CE
	for <lists+devicetree@lfdr.de>; Sun,  3 Nov 2024 04:47:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5ABAD1F217BB
	for <lists+devicetree@lfdr.de>; Sun,  3 Nov 2024 03:47:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D21A713A3EC;
	Sun,  3 Nov 2024 03:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Fys2VPE6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251511292CE
	for <devicetree@vger.kernel.org>; Sun,  3 Nov 2024 03:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730605607; cv=none; b=u039F/HbhiMzeNC7fQsO0y+jko0brhI59XM6Vj9Rm7tqAN4wv6ANON7X2deFEjOwARM2rDPr7EmZf2JUhtDmhvq9GU4DgQBCxL6T/ERaGrQdg5PBdff9NME5nCtGWsN4mF+KVqSQWGXX7qZED+ihPFB+g6tlaS9/jf2960mAC0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730605607; c=relaxed/simple;
	bh=nodndSIWpNnYMRyxXjDdCYJsYRoIq1lmpYJn50Ochxk=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=jBvsBrloOgcXuxHZMZM8zUgrj7kR+/5SvtfB+60F4o1hDyROw9UtQ+64az5snv/s8ccmWanTsGcfC0Ucdn9talvkMDNIBi5tvVp4YSOnOQ/9IiFc4Q+DqBL78/pTWRGFl3e6zUOE4PXbyTIlBQsa02cEJmKolBuvqqLh6pgyl7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--amitsd.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=Fys2VPE6; arc=none smtp.client-ip=209.85.128.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--amitsd.bounces.google.com
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-6ea258fe4b6so67777377b3.1
        for <devicetree@vger.kernel.org>; Sat, 02 Nov 2024 20:46:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1730605605; x=1731210405; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=cz24K1evmI78I2+NJg1IxStwGuEObzk+Xurvv5EPuVo=;
        b=Fys2VPE6Qab9wzngasVwMLk09jChIOT2UO/L6vgTl4RKyJZRXTt8eoxlZ/34hx3ynC
         kXebfkVIS5pUR14qDhVLerPqjfZDyNJQpODwDFxnETM1bEBgiYzCHtuMO/wxl3vZ5YEP
         DxmMiEBH1gpioFksFuUDfZ3FTf3/+B8yOznMDZd0s8mmjvqPPq0MJr/PjsnxdacQOti3
         5l7O53YZMxCoxa5xPbvQEDcuuqzWWTXU/1z3RTzDR26NAkEUaNVUK+/fkxY9pE/+8+IK
         ELoMh2nMSQKtSjpHdEUDNoXUlvy+Z1D7+SVp576xHsJwuf9nOI3pvcFWYWAo7RxPrPu0
         cLnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730605605; x=1731210405;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cz24K1evmI78I2+NJg1IxStwGuEObzk+Xurvv5EPuVo=;
        b=i9qq9v8fYAbqrYq2/iKh2OGKft09ZQ8nFNv1+iJ5Q/g3nbUs4Kz+mKh7rFTL5gqW2Y
         sQknWMpl+XFDDA2YtuNp9pqMH091JX/nJbx24eGQbNU/Qtg0vLBTuuae6PWgRzy/Q79a
         DIi4xNeF0OYD045EDpKNqVVbjE30IkrZiQYySPzWOe8gEx7eiHg1fjGbp56MIN0k+riG
         jZpF+qZ8If0Zq6Pn+ebWTKyrh16jS2R2VwhPdPxHjfYe2xO9PaBTlKlauqL6dBxP8m9F
         KJPZjIDBkLBybLMKk+ALzXEDSaMhpWkPEBW5RMWnGDPyBL69O2Zsyogrs3NZe4J6DI/v
         efcQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXJSLJ0DL4CMh/si75gf+xqEnfT4AbOfFBNjj1uZXorgnkOlCXc7x48tRrfK1EJ1dMpx4n1UhVCsR/@vger.kernel.org
X-Gm-Message-State: AOJu0YzgvCwe5EeLYc7le6v6XKW/CpW0d9FYUToQt19PaTZfMjUGfDMU
	VLIcnvPV89hjl6RtR5Sn3GfQs7K5DGRRQdVu7vifEM9GZ0dnQcjWFCXHH2W8g1ch5202DylhWoB
	NEg==
X-Google-Smtp-Source: AGHT+IE0WVlEdrG2GsvwLl5rNgi0hg5nY6f8ceJOB9AAUS82QrY7EXjnMk1ez03Plg1ISqeq7HIQNBHaDb8=
X-Received: from amitsd-gti.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:827])
 (user=amitsd job=sendgmr) by 2002:a05:690c:6f12:b0:6ea:8754:628a with SMTP id
 00721157ae682-6ea875466e4mr485267b3.5.1730605605204; Sat, 02 Nov 2024
 20:46:45 -0700 (PDT)
Date: Sat,  2 Nov 2024 20:43:29 -0700
In-Reply-To: <20241103034402.2460252-1-amitsd@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20241103034402.2460252-1-amitsd@google.com>
X-Mailer: git-send-email 2.47.0.199.ga7371fff76-goog
Message-ID: <20241103034402.2460252-3-amitsd@google.com>
Subject: [PATCH v2 2/3] dt-bindings: usb: maxim,max33359: add usage of sink
 bc12 time property
From: Amit Sunil Dhamne <amitsd@google.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, heikki.krogerus@linux.intel.com
Cc: dmitry.baryshkov@linaro.org, kyletso@google.com, rdbabiera@google.com, 
	badhri@google.com, linux@roeck-us.net, xu.yang_2@nxp.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, Amit Sunil Dhamne <amitsd@google.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"

Add usage of "sink-bc12-completion-time-ms"  connector property to
max33359 controller for delaying PD negotiation till BC1.2 detection
completes. This overcomes the occasional delays observed while
receiving PD messages where BC1.2 detection runs in parallel.

Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
Reviewed-by: Badhri Jagan Sridharan <badhri@google.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/usb/maxim,max33359.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/maxim,max33359.yaml b/Documentation/devicetree/bindings/usb/maxim,max33359.yaml
index 276bf7554215..20b62228371b 100644
--- a/Documentation/devicetree/bindings/usb/maxim,max33359.yaml
+++ b/Documentation/devicetree/bindings/usb/maxim,max33359.yaml
@@ -69,6 +69,7 @@ examples:
                                        PDO_FIXED_DATA_SWAP |
                                        PDO_FIXED_DUAL_ROLE)
                                        PDO_FIXED(9000, 2000, 0)>;
+                sink-bc12-completion-time-ms = <500>;
             };
         };
     };
-- 
2.47.0.199.ga7371fff76-goog


