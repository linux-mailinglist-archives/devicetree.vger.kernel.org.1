Return-Path: <devicetree+bounces-55919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F902896DBF
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 13:11:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B89611F2326C
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 11:11:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A1D21411F8;
	Wed,  3 Apr 2024 11:11:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tV/lnrM9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C8E1411F0
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 11:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712142680; cv=none; b=ej7qmdbIRzvOM0ICeKV77Te8H9dQMXjfwKfrle/Uzo3CtDXjaLTobhf4R0MRvJy4CeePotJ/eHqnkt84g4yn7OcHssiRrw8ae6eulFi3a8TcZtPHgyMJ3sXSDeXbJdJvfdwHszTzMO9ID3uThRawmw3KQTGFSHX0+KDV6HYOkXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712142680; c=relaxed/simple;
	bh=uFJzm8f1vjS0G4vlT/ZzbPlkJr43uotD4S58c4kPLrs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=BM/oqU1cOEV2Ua2/wzOSjm8GaDVTom3vxtHFYb7ftcCls5ICEJHPvj2Hcab6pDp/wPIipiumK6SZytSl5pdcG2ZtcLjMuIv1xJ8K2wr5GW18IN5iKfhHykE3GTz4DHnjg8IPUAMU7am5TJqaCjezoiCdiGQlSo7tB5XUjo30FRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tV/lnrM9; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-516ab4b3251so2998301e87.0
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 04:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712142676; x=1712747476; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4N6TUcHX7QEDXbrJJm5EP6ygwikqrs5fASreB7hB0qE=;
        b=tV/lnrM96u97qAbuDnqoMYArXQ9NhcU7h6tMwTKia7rcaLxxZMgMWunVEbzUI9Gfsh
         OEshCvUG/LlRLWmajgpAxVqez+LjYZBMbh5WataBLdQQ/1iEFJLcBqMU3d/tmj6aofiZ
         viYBQITCJ/Okj6Jh7ueu21GrCpQCKXtFandvCTZlpgyekwYWpcdl/hZKB62yP8KuemSd
         c4+kpPVmQBK0AV7m6IJp2LonTzsMhJ2tG91Ffsqdmy8QG5dBAZmd8ZLWVdOGE8T9Dcxn
         ziN/p79ZYPryI0YRvk+4Xm1mdlTTVspqA1OZSRY8lN4d/g5YIjUXsxVSNndM4qB2AZbu
         zm+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712142676; x=1712747476;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4N6TUcHX7QEDXbrJJm5EP6ygwikqrs5fASreB7hB0qE=;
        b=XDacAM7/cz+lZZE8ku60N5Nme1AuFiHxkcYMtJ7ybNmRZc+YHnDDZbxD9b60awSUSE
         MTTfCHzR2/W3f3SErp1tE+j2xnIXUNsa/gkLSfkktfyVpsrrz7GhxX/wzvEE2UwvsAxa
         VwGsLHgs2ouY1Wp7O8EmxqM1blZYUYl9M8N/jD/177677nNxODHioD8KLLgVwaI3wwxR
         TSNiBZqPacixDOeExwWeSkBTCTp4CL5DRR7D5oXZKqDZjWXMMyJJwRDLKwvjzHNvzTUN
         mPDwGmT3Xguuqx4eEhV5aOPx+lRNdDh8TWx1nFksie3sSxUP+r1T/HehqO5ZW4BNFLfH
         7OXA==
X-Forwarded-Encrypted: i=1; AJvYcCVBc2AdKiqg+bNf6V8Tqs1huYRB7uHxCuA86xeYo4DeBF9U2/HwT+00WdUrVaNnfroAJVEHwDrOWu7c2uy1MSpiOGwv8Njso4U5Ig==
X-Gm-Message-State: AOJu0Yw7gIVCB1IWCo1Q8mjE0UrJLW5PH3nwbKIdlWQkynROyI8NHEoU
	rHovt5jI6wVwleDlOC5avSKKQSDRDo/+K2YZ0+5DnoQC1n/6tv6KH8ZDjsICurJWRrR1DwACdLU
	w
X-Google-Smtp-Source: AGHT+IEuSdp1e0vdZ8DY+JV7uUQQTzjdaD6yhyhTFfyiLI60v0EOBFJkQ+LxC+jqvV/dC5GVYb8eYg==
X-Received: by 2002:a05:6512:398e:b0:516:bf06:cab7 with SMTP id j14-20020a056512398e00b00516bf06cab7mr1073824lfu.35.1712142676579;
        Wed, 03 Apr 2024 04:11:16 -0700 (PDT)
Received: from uffe-tuxpro14.. (h-178-174-189-39.A498.priv.bahnhof.se. [178.174.189.39])
        by smtp.gmail.com with ESMTPSA id v21-20020a05651203b500b00513ed62b64dsm2004197lfp.301.2024.04.03.04.11.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 04:11:16 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] dt-bindings: firmware: arm,scmi: Update examples for protocol@13
Date: Wed,  3 Apr 2024 13:11:06 +0200
Message-Id: <20240403111106.1110940-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Recently we extended the binding for protocol@13 to allow it to be modelled
as a generic performance domain. In a way to promote using the new binding,
let's update the examples.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 Documentation/devicetree/bindings/firmware/arm,scmi.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
index 4591523b51a0..93fb7d05f849 100644
--- a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
+++ b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
@@ -355,7 +355,7 @@ examples:
 
             scmi_dvfs: protocol@13 {
                 reg = <0x13>;
-                #clock-cells = <1>;
+                #power-domain-cells = <1>;
 
                 mboxes = <&mhuB 1 0>,
                          <&mhuB 1 1>;
@@ -468,7 +468,7 @@ examples:
                 reg = <0x13>;
                 linaro,optee-channel-id = <1>;
                 shmem = <&cpu_optee_lpri0>;
-                #clock-cells = <1>;
+                #power-domain-cells = <1>;
             };
 
             scmi_clk0: protocol@14 {
-- 
2.34.1


