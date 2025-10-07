Return-Path: <devicetree+bounces-224245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54529BC2047
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 18:02:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13B753AD2F5
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 16:02:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A72482E7199;
	Tue,  7 Oct 2025 16:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aKKOCpsX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2D32E62C5
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 16:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759852912; cv=none; b=cImJ48Z3UZtK+Pl4ZYshDVu+rAPa1W5gCzG3ALdRsKlV/JvmTntb2clZ5+xnqohE3CSIqS0EkI14qzr/noYLarRkd757Ko8DWJFM37ITKX1RM5z7xwxfOpK9/1N5b1DCi1YvAtokhe8mAYywFL5g3fwsvUEbd9G0O8P5a7vUqG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759852912; c=relaxed/simple;
	bh=JESQkAaKU/J+NFwewP61WmovszCLFhCP0rBghjse7Ug=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=KRWj9eRZL8chKNkCsAUWZ23V69yWsXbPRwcZrhCWVwCx1INogyztJRsqzG5SFtNMR6FEoKsxX7zxc1CbyR1ZaBmyIiBghlHwlqRLfRfuMbPPmqiQN2IfxC/+F3s2o8+3vNLx69r8JhDapbDBHUkDtbUki9pwyoSjpSvoMOWySOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aKKOCpsX; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-62ecd3c21d3so11907106a12.0
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 09:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759852905; x=1760457705; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vIKhzvptts89Sbix0kNSsLk9FsLBPvSNCFN51YR9CMM=;
        b=aKKOCpsXYF9MBzm9tofaf8KFNiRxZ++vYVOr1T19IFwHKd91h1BlH3WS6BdMBQp4Zm
         lq+Tmc3L0QK9pBPk7sxmadsUuXEKCHD23LjSNZMMXPxs8Ej/EUnhX49P7l4YmzcLg1U4
         EqDwjM6y4FsIBjL009CGNI344f/jbhscY0IOwdiZn00VlJWoqplQppkNctbsuzcGnUIJ
         OeNbtH3as5/zWChNfSh8YW3N7gJml2tjq54SGCwqzEHouaieupKOfl6eLyygiSeuB0Ph
         opb9pU/YkAMsm76+zuBubJi/KgTynwZ9vYmHGtgvH0ByUSSW6NoVun0E1niZoTZHTGvD
         TPeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759852905; x=1760457705;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vIKhzvptts89Sbix0kNSsLk9FsLBPvSNCFN51YR9CMM=;
        b=qp6ZP2uz0hm3mkHYOEfqXRZxQW86vvgdpI3yoh3LYfqDdgmHn1EK9cZ91tXdZ59JMv
         xQPJjs15ny8FlGnuXn72DQ+/HNPfo0FH8YRozygLe8AmVhH+HvoAYhilVlB6ZX2fYE0s
         tbFNA7eDgAA3L3RH95Q/TXNNdCn1eg/Z1xvms18kve5+hz+9tuyLIUVfY/hh6ETGmZPA
         VltCrY4XsGgdPd5qtcQV4OWoBAHnSQO+SK+LFDEavIncAKH+SPTh62AWtol9SDdNeFb7
         D5LUMYgqvPPhMGUsyLpD2RfbVxkCePW8Je/AketABu1+hb1JeqSXOCg67btdiD2Y+IVX
         Vb1g==
X-Forwarded-Encrypted: i=1; AJvYcCVmEHNZrAqQcBtSKsMEHxlufPpfyOohhwklL25C3NGXVat4NdD59gMm9cOxYvRKE+FkjCk03oBY5vMJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwDCN/bPmHbpmW6/Q5BuEJmcYJtN0qTihycpgUec8PTYbz+gPRg
	HA1SVBiCxVM5WxNryU4ikK+l/dswqx5F1v0gDVngKiOUscJa96CfFKzjmS1M0LErHWY=
X-Gm-Gg: ASbGnctgH8cH+j7ks3WD4uhfUQoWY9PFeD4kXdMnx1XeB3+wyJjPLC3xId2qlvG8xkS
	fX/ueDM4/VldDX5ZcB/K8H+45uSWtPNVWrjg5wKTkualvUrffaKUZBWSrmGtzEmUSSDzhX4GX+G
	64uY7Kc+383KKaMsX2dPU9EZXu0hJtq4b97ALl9BK4FcexnzOLdE3MdMzAzXKtnPq4Q13S++toI
	nOCSmFz1MvQ1Mydohv+5upYAr/aMu6DXcJBlayCPgCFjnJiQM2r3gUkAN3u9UbtXHO+0j9AORCr
	P1IDpuDu2amTyrdriA4KNEK+pmurgu9ZcRqq4r7TDlNEZPwwR7SzoZo4keiIKlobJK00HMj9o5d
	jAo5c0j2wPbScdut7WiNDAjxLkzIQ2A0niTmH9FoVJNvi8PseqdWXZDqZ3Q32UAdAtupYcyh8Xu
	SuQO59EvUnh49q4zerN7A4UlOo/ye+QLoqcFhN/yePwhTIjvWqNEI=
X-Google-Smtp-Source: AGHT+IGf9IQ2wpi7EPhCeaXvA4php2sl46FSyFnA7c6eHrUoUGEvZyyl6soc6Yh6K+i89mmku9HqRQ==
X-Received: by 2002:a17:907:7f0d:b0:b2b:c145:ab9a with SMTP id a640c23a62f3a-b50acd2b3c8mr14811566b.60.1759852905201;
        Tue, 07 Oct 2025 09:01:45 -0700 (PDT)
Received: from puffmais2.c.googlers.com (224.138.204.35.bc.googleusercontent.com. [35.204.138.224])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486970a60dsm1402129266b.63.2025.10.07.09.01.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 09:01:44 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 07 Oct 2025 17:01:44 +0100
Subject: [PATCH] dt-bindings: phy: samsung,ufs-phy: add power-domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251007-power-domains-dt-bindings-phy-samsung-ufs-phy-v1-1-d9030d14af59@linaro.org>
X-B4-Tracking: v=1; b=H4sIAGc55WgC/yXNQQ6CMBBA0auQWTtJKSEKVzEuCp2WWTBtOoIaw
 t1tdPk2/x+gVJgUxuaAQjsrJ6loLw3Mi5NIyL4arLF9a8wVc3pRQZ9Wx6LonzixeJaomJcPqlt
 1k4hb+DvMNPRkyVF3g9rMhQK/f7/74zy/0CuPoX8AAAA=
X-Change-ID: 20251007-power-domains-dt-bindings-phy-samsung-ufs-phy-fce95e2eae38
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

The UFS phy can be part of a power domain, so we need to allow the
relevant property 'power-domains'.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
index d70ffeb6e824bfc19668e0f678276acd879a6217..2b20c0a5e5094889eb3e80dcc21b505943c68523 100644
--- a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
@@ -36,6 +36,9 @@ properties:
     minItems: 1
     maxItems: 4
 
+  power-domains:
+    maxItems: 1
+
   samsung,pmu-syscon:
     $ref: /schemas/types.yaml#/definitions/phandle-array
     maxItems: 1

---
base-commit: 3b9b1f8df454caa453c7fb07689064edb2eda90a
change-id: 20251007-power-domains-dt-bindings-phy-samsung-ufs-phy-fce95e2eae38

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


