Return-Path: <devicetree+bounces-224247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F306BC206B
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 18:03:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5F4764F6F57
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 16:03:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B7082E7179;
	Tue,  7 Oct 2025 16:03:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jFCCekN9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B0C2E6CB9
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 16:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759852995; cv=none; b=u36GssVLvQ1hodXBgrbN+BrSuKLJt2cCg77zZ+uqsDvyreFNh7+6VQ/vovMT2EZocSlIdr9z/RzwUF9fKHJBXpcK+asXI4NhC0Ic7Qjy0MrJVg23N9mvHqSlKAc2rOOmUUc3NBkF140KYYbZqi01woOYXDMKF01HQxwcTGb9gXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759852995; c=relaxed/simple;
	bh=fJ72ZMhavTt/zW71hZxTnZ2SN+OoyfXQg3BT41sI8Lw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=jqJ4hE629O4lJAF+ccA4bSGCmgOSUPEpiVvGnM85jOLkW/XoGigIxvKQaHX4AqwDg1ZFMTviDfAqhez0fYZksuhJHcW4rrrwDkOOD9nxwSnmjmOqOeuk/1OL8m7Dz8Wp0MccP1rThJXbcQ3FcWemfj5MDH9DKAfxXHaxLVSbzAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jFCCekN9; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b3d196b7eeeso979921866b.0
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 09:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759852992; x=1760457792; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7Cm5Dko9olaR4ZjBSYSeJvT1TaV6qKnd54YvU1t3L9I=;
        b=jFCCekN9RwyDqx0qwWloiB2wwjxnod2enfPpmNxf62IebJoXUXrWni7d1z3/EnGHfy
         aNjUnnfzdXYBXMN24SVO9QzcPUDwdeih3LIjXUTaLo5rLJQyZ9VQml+fPbGzSgoT5Ybd
         loMdf0h4Qra0w/hNiQD++yk8JcJ7wz5QLH7DqqYa9/F+5XzltCrB49IxTZpEzjz9pyDG
         BIoqsvlqBbcvI/GJM/sLpM8IMlgP1FTh7bH075VpkQ2xYaw60YQMBJ2X2YJ7JBqSl/6u
         CUNvszkf+5wJEVfvKbnhLSm202BycDdQPadAoVY4BUgX+4BMlnGVCjNbKk6CqM3paVHe
         Zj5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759852992; x=1760457792;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7Cm5Dko9olaR4ZjBSYSeJvT1TaV6qKnd54YvU1t3L9I=;
        b=giO2iOkS/OwDDXjhiXjYAPwYI4AzJIpNZo2esCNHlEQXwikz04UvtXOXqpPnriaOPQ
         W7xI7VrvFsO/1+yQW1k+g8PxrFC4lFpDoBpnIHfpKu8HQ6uDVkQSKGtcmVL2q/UawyiX
         w3L1oUkRz/zSydYPfBUCKGn84Av+0eINOHZ8AwDOKoOOK0XOf21o4GUmlxj9M9O3a0Bw
         h3rEk2kGn+QlEqjHexofnTk9sC0OLH9uy3vafRy3E6o/MzAErvLW2zZTL3LT7fdupPkC
         y8APuuMM3Iv1RoJ/hMuRRx3vApHiKjE/tD82iyD4yoy/K50k/6AANdKmg14Qw++X8VBS
         AJgQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7S1Jmej8f6s8nMPdheEGi5IzSzTFAOG0UhLPu6ObQpreSRJDfzeoYG/JF8pXYTd6cZmD5JtNPbs5N@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6KSmTnuF1Xqm7+z3Rq/oAF8pRr/ITwPSuPRESbj50ZGRRIVeY
	H2v7BZR2XBQYsvd4eYxNX2n4nfUrY6oP8geoqBd0Q7mF2b7tLTG2oRuKtgkvnYzCauQ=
X-Gm-Gg: ASbGncsPlC8lfrZf4576JfRxg+5cd8uj6BuzJOOw2iqz2UaQfdoavs2HAMWquDWhygF
	fcNFquOXW9wbAyB64AzocR5o46p4YGn11r7AIoM3scGXzZgv0n7wOPGUzvIo+doz8sFIjO0u5bJ
	lgZV3nambQgd2kr42/NnLGyRd1UA1L6RarwKvwPU+8Ci8nn0chuff0USlkUWKuJxKn9ciqNrEVO
	IyVBD+Xa9uF6cNkbs4jrvcvvh0iMURJHQ7C8crZJQQC7KlGjZGM+TbAH1nHhlWrSW1z0+xlF4vh
	ixnYZfEVXTf9kqDKWrjKRA/6NvlHNthAM3WXbaDKkToORmHRqfgLX9mOhr21Rw1RSBslk9CtuCr
	4n9XEkgf9IRC/Rr2zX7vAoFDpTW673vb+mnAUjYpZ/vD0CM6gfkq8bcNq66CGduDodtlcm9aBhP
	61tF2OB68paZ7yr4kYk+vF4XXO/OJWYm3rZosD7JhP
X-Google-Smtp-Source: AGHT+IGcHy/Jl0g2LAmEkVEntCtICg9hZqb+cVzIJexCEPogdkyReymHfPrFtWwic4ednSokiuHGag==
X-Received: by 2002:a17:907:807:b0:b41:f729:77b0 with SMTP id a640c23a62f3a-b50aa1869bfmr22271266b.21.1759852991654;
        Tue, 07 Oct 2025 09:03:11 -0700 (PDT)
Received: from puffmais2.c.googlers.com (224.138.204.35.bc.googleusercontent.com. [35.204.138.224])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652aa637sm1399772566b.12.2025.10.07.09.03.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 09:03:11 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 07 Oct 2025 17:03:10 +0100
Subject: [PATCH] dt-bindings: clock: google,gs101-clock: add power-domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251007-power-domains-clock-google-gs101-clock-v1-1-1ee73c453ba8@linaro.org>
X-B4-Tracking: v=1; b=H4sIAL055WgC/y2NQQrCQAwAv1JyNpCsqK1fkR7qblyDdVM2oELp3
 13E48xhZgWXquJw7lao8lJXKw1410G8TyULamoMgcKBiU642FsqJntOWhzjbPGB2SzPgtmZ+K/
 2gforD0dKQw8ttlS56ec3uozb9gU0JNMieAAAAA==
X-Change-ID: 20251007-power-domains-clock-google-gs101-clock-3208b1960d98
To: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

The CMU can be part of a power domain, so we need to allow the relevant
property 'power-domains'.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/clock/google,gs101-clock.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
index caf442ead24bda57e531420d8a7d8de8713032ae..31e106ef913dead9a038b3b6d8b43b950587f6aa 100644
--- a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
@@ -46,6 +46,9 @@ properties:
   "#clock-cells":
     const: 1
 
+  power-domains:
+    maxItems: 1
+
   reg:
     maxItems: 1
 

---
base-commit: 3b9b1f8df454caa453c7fb07689064edb2eda90a
change-id: 20251007-power-domains-clock-google-gs101-clock-3208b1960d98

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


