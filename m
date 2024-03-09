Return-Path: <devicetree+bounces-49572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B6094877091
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 11:52:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 32F911F20F9A
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 10:52:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6394437147;
	Sat,  9 Mar 2024 10:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="TSwGxwqy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7E8A3418B
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 10:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709981517; cv=none; b=am5fvg09VTCa8/p9B/k61FjtsWc4Rsc5fnXSh4vwmgjU1fCOUwHIt0SM4ZEKRfcA6N2Q2IOiJ3OE4PaXAZDpuTX8dNa+M2Xn2EJRxW0kub9AxtL8VIgkH5eDefvk+zZUALIuQbWtbO2r/eA6QHMp74h1sYCIbIxUzvdwd/KwEIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709981517; c=relaxed/simple;
	bh=MJurD3lQkgJh/SJjO1IdmDA0nZhea/ItLzC5yip7HFg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VWheytRzM7fIuE3Ixs2nt2gj2vG0/nnbFLFPquAOlB3OAOYdJJ/9ySRTefjEGQYGJef5VxC+LJkT5dPA5uuAZ3ayCLqLtqZEqLW9VFG6uqjCQ22wuB3S7cq0yPXQ2Cj+WcMp1G4MlsHkP7LPbAAovfydGm+e6xICh4k3xHwu7Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com; spf=pass smtp.mailfrom=tweaklogic.com; dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b=TSwGxwqy; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tweaklogic.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-299d3b09342so2093762a91.2
        for <devicetree@vger.kernel.org>; Sat, 09 Mar 2024 02:51:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1709981515; x=1710586315; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SR1+ke7p4Q047/hy23eOGK+2iosx9giTHTVTkeIgf/o=;
        b=TSwGxwqyvI69fRdrhuj1eISIwoog5kn5ejCNLjq1qod5BXW4UBfrZNdXv6oSy6XE9n
         IAa/ySkFnOQf3oPKL8bcJFBtOxw1zCWBJdpMFcZNbKMh1rHPJPRM3sVpkFH2YU/FBxVn
         4QKx+M+izqZ+DlFxlEEhPuz+NVgopcU0Xmk+Bl/fULzXXYnKw2hiHzUgeKQuDtPWiWMy
         Aqp/1MR5pev1bn9A8aiXGGUEfDp2IgTgPVZG6xQhtFUyBCc5edZUzQV74eR3u2hKDY+I
         gfJFjR+gdGd/SwscYNOc0v3fMZj6h4ZohvLO+yZicBVB4hJQv2RVBRdJrqTKVZzUjdTI
         eAjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709981515; x=1710586315;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SR1+ke7p4Q047/hy23eOGK+2iosx9giTHTVTkeIgf/o=;
        b=eYRpSUADeTHAo99prstP1w7NYK+N/B2WjmF8AuUaWdnxljef5OstSywMRn0wtLyub/
         XE8igWuqWJ9iUPWtni+9iQT66M13nozfEHhHJxgyZ1Ky2s20fPOTkzJoixIADSHXcGf9
         unLyD+1amSfvSgqrA8Lgco6bY37RVuiHR195wXzUG+7733DfqbVXiN/UE9lXyjT5gugh
         V80/qpUoht7ftzMLCpKtds8JmMHjbNBosYEWp+Ly9Ta+i5aBfdhEV5xWB6RjiXmyTO0D
         CO05b3dzYtKFt7wYmaZDX3sb/P2+QIHUduQlzQMKgYUbl+tqdu6JO5/ZrJmj22T37YdZ
         ggzQ==
X-Forwarded-Encrypted: i=1; AJvYcCUIw5Y75YzutJtommDeeKWc6Z5ELB01g9ookfI4fuCxGH/Hnt483xgfWT7b5zuxKOR6dWSYu5vgmoRxMX6F6RAqSFZjAex07maYww==
X-Gm-Message-State: AOJu0Yy5tOTU5vJRnzZG1zAA9YmKveLKhzuPAWa0o9UtzhTv1oQ68nhw
	Wx+3CVJCDl33gtLISzltMdeEITnI1zOEsgqBpk+Ox9x3/Af8tjpR5gp3bSHyWn8=
X-Google-Smtp-Source: AGHT+IGgUOcJTk+1DFpfJo4xiOdVcORTwRLx+V25p/IGRHIEuRlbFRy6K5fuiu/UTsxyDzfLtS7n/w==
X-Received: by 2002:a17:902:e542:b0:1dd:6420:847d with SMTP id n2-20020a170902e54200b001dd6420847dmr2085384plf.2.1709981515355;
        Sat, 09 Mar 2024 02:51:55 -0800 (PST)
Received: from localhost.localdomain ([180.150.112.31])
        by smtp.gmail.com with ESMTPSA id l8-20020a170903120800b001dcf7d03824sm1070608plh.55.2024.03.09.02.51.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Mar 2024 02:51:55 -0800 (PST)
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Marek Vasut <marex@denx.de>,
	Anshul Dalal <anshulusr@gmail.com>,
	Javier Carrasco <javier.carrasco.cruz@gmail.com>
Cc: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>,
	Matt Ranostay <matt@ranostay.sg>,
	Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v9 2/5] dt-bindings: iio: light: adps9300: Add missing vdd-supply
Date: Sat,  9 Mar 2024 21:20:28 +1030
Message-Id: <20240309105031.10313-3-subhajit.ghosh@tweaklogic.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240309105031.10313-1-subhajit.ghosh@tweaklogic.com>
References: <20240309105031.10313-1-subhajit.ghosh@tweaklogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

All devices covered by the binding have a vdd supply.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
---
v8 -> v9:
 - No change

v7 -> v8:
 - No change

v6 -> v7:
 - Changed the subject line of the commit
 - Updated commit message
 - Removed wrong patch dependency statement
 - Added tag
   https://lore.kernel.org/all/20240210170112.6528a3d4@jic23-huawei/
   https://lore.kernel.org/all/20240206-gambling-tricycle-510794e20ca8@spud/

v5 -> v6:
 - Separate commit for individual change as per below review:
   Link: https://lore.kernel.org/all/20240121153655.5f734180@jic23-huawei/
---
 .../devicetree/bindings/iio/light/avago,apds9300.yaml          | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml b/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
index c610780346e8..a328c8a1daef 100644
--- a/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
+++ b/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
@@ -25,6 +25,8 @@ properties:
   interrupts:
     maxItems: 1
 
+  vdd-supply: true
+
 additionalProperties: false
 
 required:
@@ -42,6 +44,7 @@ examples:
             reg = <0x39>;
             interrupt-parent = <&gpio2>;
             interrupts = <29 8>;
+            vdd-supply = <&regulator_3v3>;
         };
     };
 ...
-- 
2.34.1


