Return-Path: <devicetree+bounces-254811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 88475D1CAB3
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 07:26:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DC929302037B
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 06:26:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93D9336CDF7;
	Wed, 14 Jan 2026 06:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VBIqhBEE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED8C33B6C7
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 06:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768371983; cv=none; b=IyBrVL93ESlyUH6okSgoTxDGM3iBspXGJVhP3JivIjxw56y+Wkd39oObrzTGxYlst8JHaK+nOdqk6VQMaa9qkMh8t+wFLJu5NALkdmc4sTRz0A4bAjlPywpweSl7OOPzK/8RaygcEEYS/1zmm9JHzDM3n9CjTT6mH65IadhERZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768371983; c=relaxed/simple;
	bh=rPtVf65kJ1N1TywGctCCtpLt0SJGZD6s+R+h8f8siOg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=EjinSOFp3F22LhfPdrZ2NYjgdt0qpCNc+H7S8J6/2gdF9TTiXn2Olqqhq8RlmAaZb3sRoL2N+gDNJXaneabwIZOS8SZ1QA0d+0u8ezehgm7vhetabWOLcLnAyk8G9V2yT0KbZ6vpAYr8QONg0TTkuh+DhD3xj5JgnFRxjRAsVo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VBIqhBEE; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-29efd139227so57221315ad.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 22:26:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768371970; x=1768976770; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bot5yzHGRpdORn4dGLGp5ZsMsBNZegUjwbOB3QegdQ8=;
        b=VBIqhBEEmQey/7v817OCrSSVn8K3QrXgnTMycWcdZD0/DP0bj0j7SNgAInx6GjPTA9
         jqdqCeZVWxRJVXHwNI7UaFJI2916+eVU7shswIFMEKOF3cLzsyZMh39STTATWTZLTK+w
         h91caNeB84j6ZLp9NEYYNVHX2rxBkmdqsVTFG4GldHwXFbHuyguisSTBojfb+TiuysV/
         8R2mj9tEtRalsl73ES+aene4COnNGCIH9nlXuotsivJCIu7hDlSMCcpVNIkDbu7pFIzN
         aBKeEc2P4sPhcimmB33yyXleMHEI+js3UP/GXjhgsuIKlu97sGdy3PRtvozje7N7qyHg
         83pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768371970; x=1768976770;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bot5yzHGRpdORn4dGLGp5ZsMsBNZegUjwbOB3QegdQ8=;
        b=C2+i0E51OPR8fHuaoIqzaxH8H1qAwLNOyuMCmI7OTmmiTpR29il0Qezljw5wAag7+8
         ldPaK1h54ooXdH765kJESoQhHOTtwmRMXmqkrSGlyuSaQYzKBpSMVsO+S1Iy1HAQ5f2x
         nPGkhNO9Akyva/KjQ3Ctce/OX1Z7QFWfSycnaElu3qIYW4wkKoHASpvxYK3aRJhGupL5
         QS841lSVd0I4AKQwOF5ABjkwo0J6aoIjRqinWwD746kqUB8P17VRvw1e50DiSWnjbB1c
         Sse+GrzdTFdqmtjssmT+DU1xg4rkTUigTPu1OWOR09AhSFsp3Z8zW/bWxUlczHF2rj90
         liKQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5UjKH9oRgHj6SEPz54QgTSp6uFxXjteQJ2MD0aCI7JoYNeKmQm/AhMxZrbdLl40a+qHBuOLNOrEjt@vger.kernel.org
X-Gm-Message-State: AOJu0YwvvuwmexgCaduiKH4+HGhawXMo9hHvVr1its0n56poXRPJSjIC
	h76Ypqbll/4QJ69+Z7HTsCtvTGvS4Lc1n91KbddH5EzgNi5OF2JQI/W7
X-Gm-Gg: AY/fxX46IQGbHdPTWAjk+dWwhfSPKjEvuvf+If5iCeu5wqI2AIYeLLe9K2zdgkuoN4K
	4ZEEivOLpq1JwBv8T1AZquuuMN/wbCkjDyYZHiRmVZe3ZfTrabXeluIqZxPLQpIVYvMNZ1jvoqP
	vzpvD94fI961+ToWxdgG9pPpSK3k6AEVC5SsSj+CgvV7ddiKxohhe1Man4rjSMFSXCYQ2x0GOJ6
	NLrUTXhJXztJMRqnlwyntqS1v87SaZ71o0XtwnrBSZCGcCrrJqP7IeSsLUL4Kn+No22TN1WFSOB
	Me+eaScApY7bf2jwe8B155TWxAMI6VewZHFFM7ZG5HtE8FxG+RJAG+BRY2eeQWBv8Fn+MSXRmIW
	4SeXFk93TVL/v9UC21bLC0jbN4dqBe7FXBrUKL8os6CGhet5Lo4nrOnz5ELBJr6ukUclUNy4s7T
	knDcH4rus=
X-Received: by 2002:a17:90b:2782:b0:340:9d52:44c1 with SMTP id 98e67ed59e1d1-3510916b54fmr1625255a91.35.1768371970530;
        Tue, 13 Jan 2026 22:26:10 -0800 (PST)
Received: from localhost.localdomain ([47.82.78.41])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35109d88f0esm891791a91.5.2026.01.13.22.26.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 22:26:10 -0800 (PST)
From: Nick Xie <xieqinick@gmail.com>
X-Google-Original-From: Nick Xie <nick@khadas.com>
To: neil.armstrong@linaro.org,
	khilman@baylibre.com,
	jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org
Cc: xianwei.zhao@amlogic.com,
	christianshewitt@gmail.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	nick@khadas.com
Subject: [PATCH v2 1/2] dt-bindings: arm: amlogic: add Khadas VIM1S binding
Date: Wed, 14 Jan 2026 14:25:48 +0800
Message-Id: <20260114062549.68954-2-nick@khadas.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260114062549.68954-1-nick@khadas.com>
References: <20260114062549.68954-1-nick@khadas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add devicetree binding for Khadas VIM1S board based on
Amlogic S4 S905Y4 SoC.

Signed-off-by: Nick Xie <nick@khadas.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 08d9963fe9259..55663e0f7f915 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -247,6 +247,12 @@ properties:
               - amlogic,aq222
           - const: amlogic,s4
 
+      - description: Boards with the Amlogic Meson S4 S905Y4 SoC
+        items:
+          - enum:
+              - khadas,vim1s
+          - const: amlogic,s4
+
       - description: Boards with the Amlogic S6 S905X5 SoC
         items:
           - enum:
-- 
2.34.1


