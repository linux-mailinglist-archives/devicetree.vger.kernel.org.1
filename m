Return-Path: <devicetree+bounces-142284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F67DA24C8E
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2025 04:51:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A0EB3A4D3D
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2025 03:51:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34F8F4C62E;
	Sun,  2 Feb 2025 03:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="3H2Vwxd0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f73.google.com (mail-pj1-f73.google.com [209.85.216.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B724B1C6B4
	for <devicetree@vger.kernel.org>; Sun,  2 Feb 2025 03:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738468268; cv=none; b=eqW2wjzqKHfn+YcOJGixeYXyCq8mtqjn4EuTd4p/K4S99YjM2EAVOymnh1GgLtDRw9fomAhOCbt5AHA2r4CWKjsVGozlHXPNj2hiPjXG42FPVjyg0GM1w6sHMxZq23V19cYJD7VdIhvFzPT6sr5c0Q95dd15uG2rRL7f7EFZD3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738468268; c=relaxed/simple;
	bh=PbYtkom+gUHlGGx+5lwLVcI6JHpDbOhVcKFC5fhJ7Ko=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=pFGOKLVGLgrBiKFF8SNn5JoV/Ryaq3MuB65KGEFxRObTZ9v/hghxEsYZV9jvHWyyMufIG4DTd0furPQy2L6nsCVw1Mr7GxZhBbSXdxFxm3EjDO7Km/ut9r6KJ9H5fdwEeRWQ24DJ43GCH75AaY4oMi52uqkpWHpN/kBXEzUQ4HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--badhri.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=3H2Vwxd0; arc=none smtp.client-ip=209.85.216.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--badhri.bounces.google.com
Received: by mail-pj1-f73.google.com with SMTP id 98e67ed59e1d1-2f81a0d0a18so6513134a91.3
        for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 19:51:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1738468266; x=1739073066; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=jGPnG/KaEKlAC+3m4DMkOr6QTvoaVn2cl6V4SfgkOEE=;
        b=3H2Vwxd0mgi9RI5BH3TKBaWz+tlb6oABtPLq/rI0U8bhmhoNOTu2zGdcBqRK2tiuWa
         G+osnbEVKPd2WQaYgM2rNCW8ec5t075hVfNveAaKSQxRb/RI2PezO1AcWq8GXdqor/FL
         Ky7Yt8aJk6gGOhocnJEyo4HftTMQaCZu9kGvCPBTtfy118IYHgBfAPS1DcIYegb2Qf6d
         OUrQ+l/52wRMXiIawwBQD/LlBsGcvS93c8y7A2v3Mlw1VnziCwUvCFR/irP5Df1GQ5Yk
         C/67dHj/+p/Cz7UkIOZzJXKJoTPPhX5KxjZ5eISP9ARlpYdvDYau0w6SdpyKcdhfRTW2
         9t5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738468266; x=1739073066;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jGPnG/KaEKlAC+3m4DMkOr6QTvoaVn2cl6V4SfgkOEE=;
        b=S19AOjBLiQ5bMgtE/kJ3s37/lhN8U3/Gap+7ri8ircKkD7t0NJJ6xEkVNc/7N/zQsg
         iP97QOgBQ4UevuOxtsQ29ozIfCC9EeS1e71H6JXUvbVzP3gB5YySU+9x8/39XJ5whEDm
         rC08C7OSk1OHdJ6T6vjtuWn+N8lwrLDmUBxhZ5aH5UQ+4TrVX9B05VAouf7x+gmBVJhV
         rm2+DlxVb2kUv7H3GtpvfdtESQsPsmoTaFKwE4wbc/g8A/fQyi56HchE51S9Y6CDRBu2
         XUuYf7ESr/tuTO6pgziFSNM+Z5NGWk2Jf62jhLSw0vHgxXSUCSeICUh69n8MZ3FmRe8f
         XuPA==
X-Forwarded-Encrypted: i=1; AJvYcCXn0qtqjT5rQ9/jj7NJ/WQK4xGnil4sSosFk+5oILyKINRe9UYTgmTAtjaRrZLoFPMJHpnTeRg7JB+h@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+76EUllA8L6Ur8itLjPGkLrZWfUiNkrWgSGUfPazV2Ysf2IRb
	8JsNebyBGahnPP3rYhb9PYrRKPjd/K35tTqvPgNGkCoAQpsSiBlYRERNiGvA1erRhFNAwkoXDv+
	+dA==
X-Google-Smtp-Source: AGHT+IEDIyLl95Xc6h9Y3VLVPAJilJvXKmnIGcbZt/ClsnL8T/o4SlEvGEsvbwbDOYzS8l6z1Htv/m+Mu+8=
X-Received: from pjbsw11.prod.google.com ([2002:a17:90b:2c8b:b0:2ef:a732:f48d])
 (user=badhri job=prod-delivery.src-stubby-dispatcher) by 2002:a17:90b:2802:b0:2f7:ef57:c7df
 with SMTP id 98e67ed59e1d1-2f83abaf38bmr27062123a91.7.1738468265303; Sat, 01
 Feb 2025 19:51:05 -0800 (PST)
Date: Sun,  2 Feb 2025 03:51:00 +0000
In-Reply-To: <20250202035100.31235-1-badhri@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250202035100.31235-1-badhri@google.com>
X-Mailer: git-send-email 2.48.1.362.g079036d154-goog
Message-ID: <20250202035100.31235-2-badhri@google.com>
Subject: [PATCH v1 2/2] usb: dwc3: core: Obtain imod_interval from device tree
From: Badhri Jagan Sridharan <badhri@google.com>
To: Thinh.Nguyen@synopsys.com, gregkh@linuxfoundation.org, 
	felipe.balbi@linux.intel.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, johnyoun@synopsys.com
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, jameswei@google.com, 
	Badhri Jagan Sridharan <badhri@google.com>, stable@kernel.org
Content-Type: text/plain; charset="UTF-8"

Although commit cf40b86b6ef6 ("usb: dwc3: Implement interrupt
moderation") adds support for interrupt moderation in device
mode, it does not add an option to enable interrupt moderation
unless the version of the controller is 3.00a where the
interrupt moderation is automatically enabled. This patch
reads the interrupt moderation interval counter value from
device tree so that the interrupt moderation can be enabled
through the device tree.

The explicit initialization to 0 can be avoided as the dwc3
struct is kzalloc'ed.

Cc: stable@kernel.org
Fixes: cf40b86b6ef6 ("usb: dwc3: Implement interrupt moderation")
Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
---
 drivers/usb/dwc3/core.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index dfa1b5fe48dc..be0d302bbab7 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -1818,6 +1818,9 @@ static void dwc3_get_properties(struct dwc3 *dwc)
 	dwc->dis_split_quirk = device_property_read_bool(dev,
 				"snps,dis-split-quirk");
 
+	device_property_read_u16(dev, "snps,device-mode-intrpt-mod-interval",
+				 &dwc->imod_interval);
+
 	dwc->lpm_nyet_threshold = lpm_nyet_threshold;
 	dwc->tx_de_emphasis = tx_de_emphasis;
 
@@ -1835,8 +1838,6 @@ static void dwc3_get_properties(struct dwc3 *dwc)
 	dwc->tx_thr_num_pkt_prd = tx_thr_num_pkt_prd;
 	dwc->tx_max_burst_prd = tx_max_burst_prd;
 
-	dwc->imod_interval = 0;
-
 	dwc->tx_fifo_resize_max_num = tx_fifo_resize_max_num;
 }
 
-- 
2.48.1.362.g079036d154-goog


