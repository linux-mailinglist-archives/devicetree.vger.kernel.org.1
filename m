Return-Path: <devicetree+bounces-126573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E35E9E1BF5
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 13:20:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0CFBF167656
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:19:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 794A21E765A;
	Tue,  3 Dec 2024 12:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ES/XGxI1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0DED52F76
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 12:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733228268; cv=none; b=nZFHOiJaczTA7BOgRxDZJNvgNnw1lFR/UzT78SSPftgrFeFyZRcd81O1NhLps+//WnTEMZQtNDlRC1DgIXEjSdcW65+8NbQVEnPvAPObhmXhibOTcxLpuxht0f/+zTfbhRJyxFEGBpYVjpWIOJnZSfTPiyfkkYFG6ELBNnJ90JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733228268; c=relaxed/simple;
	bh=M49V6RgMFX9yBEfjwwyJSmpJ/ZrX7Mn6P9h37XiEDzE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=eHrPZeTLLcJ1GsGoxkue1Q4uLUxYNyqdo5q7aQyT6t6bDz2SNsoGzAfsCBHYsFufFzonUxRZtkV0WQrq6UuGhBP3EoqnZoc0Tm4Y9socXQacxv048Eqgbx7ZPoYMUf/VRhEVV7MWEnn4pa/d3OcnjrMcFBV6+uOYt9GAl5ewUE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ES/XGxI1; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-aa560a65fd6so921907266b.0
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 04:17:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733228264; x=1733833064; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=W2UfI3tNP6hp450YILSsuMQQhfugKH625KrlazXf/FU=;
        b=ES/XGxI1RowTnEOgPR+/WKiEZbwzok4NLJKXaySo/A+4ClcFYBftjJ2Tt202iJ5Mhk
         ZnEBcxwSkCVXK9JU6geyaPSXkyVOLWBEDlMPLy4M8KtfQ0EVekcaXQ5K22vyZKHxBVBp
         +LevHQo9x7gvfNTvIGcCgpty7BfWYpEsSAqc1Mn2FmzDNJ4jriDk3h7WRqsFunqLnYYq
         Daqfi6BTo2zZwJ2QclL8QL7gk/C8Suy7NST2KAIs37RI5xYXaDh2wWCC5q47tAKloykI
         HTjNLy5EYahad7klgH0wpl5qT+ds7MxtvyZRiOYFE31WIh0RNEjkGU65m/xF4I3ebbo5
         FVEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733228264; x=1733833064;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W2UfI3tNP6hp450YILSsuMQQhfugKH625KrlazXf/FU=;
        b=eGDiHroAVH/0x5dFcj/NCC3P9PQcZCKqK7QYTsWmBz0FZLd+EB8eRTVunVKDKTq+d1
         moyEcV6ARCSEHTqSmUV5UHCslDST6nJPzYOkFN4pryzDZnBpEJOtspLRglYCxY6MV1ey
         AZISCD4t7GZxbETziBDv+EwL+oJ+yaeHnPhN4SN8K6V4CfSBGOo6esbhXwrBNrxCkwnc
         4NTaxV1IWj+T6iydz1vnuf8ob6EacqzIS99o3Lll0a7RSRVZODiwS4F/04bD3XSTizu+
         IU3eG551jl3zis622mX82f0EKo6kgXOdC/URbxli1EBXPQgIZ1M080oh21fq9kXC+ekI
         ZQFg==
X-Forwarded-Encrypted: i=1; AJvYcCWFMGN1WfZv9U/N3r7Tl9apl4mQgr0neiJ+XsQItY7bEpgNZ69HSXtZyA6t5oVzrAOH8oCU87nqPMsI@vger.kernel.org
X-Gm-Message-State: AOJu0YwNrIPxTccfdU2hU8348kBfd8YhbQPFiy9GtWHjkhh+blL9Y97i
	kMqKRnS8f3CMHk9S4iVkVnNiFqE+I2Ztk5eyqZ7BS15m8rsT+Uf0GGYnyqvfn+8=
X-Gm-Gg: ASbGncsFkBObNvzV/7saaGVYCwsFlCR0Up2JStyZO/pxtL4HpHCtxZJhnk+B+EG7lQm
	LMbteFp06Ab7Qx0+XF01VFwzM27pNcBte5FdVI84kyXzXs8mZQadeCgAM2ypYU6nF4CwugDxmHs
	DHq/DqUJxF9kJAXkKdwxTV/QxfaQAcO147AY6t3HUta1Zg5vA+4ZA9Ewwigm6lJurvQlV5ADxbW
	6tP7ebvYobDEMeNpiprUghFOlKx1u5g+eshDg/NhlmYjE0zKsEZw+a6SzW4BgcS2pR6R1oLq0s/
	GpNCQ7WQvuaXEGw8eiipVPejx9tDEB4PgQ==
X-Google-Smtp-Source: AGHT+IFuDfNoLsR+aGkqAxGMjkMHHCufm2JdaFXPMbn11SwOi0SEY0sCF5NfPxV3s0eUPciCzqcP2Q==
X-Received: by 2002:a17:906:3d2a:b0:a9a:616c:459e with SMTP id a640c23a62f3a-aa5f742699amr195441766b.27.1733228264338;
        Tue, 03 Dec 2024 04:17:44 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5996df797sm616652266b.68.2024.12.03.04.17.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 04:17:44 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 03 Dec 2024 12:17:35 +0000
Subject: [PATCH v3] dt-bindings: usb: max33359: add max77759-tcpci flavor
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241203-dtbinding-max77759-v3-1-e1a1d86aca8e@linaro.org>
X-B4-Tracking: v=1; b=H4sIAN72TmcC/6XNQQ7CIBCF4as0sxZTBirVlfcwLqBgO4mCgYbUN
 Nxd2gO4cfm/ZL5ZIblILsGlWSG6TImCryEODQyT9qNjZGsDtig5x57Z2ZC35Ef20otSqjszI6w
 1Fk+ykxLq4Tu6By07ervXnijNIX72H5lv608uc8aZEmJwKIe2b/H6JK9jOIY4wuZl/NMopXwBt
 mcw5fkAAAA=
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jagan Sridharan <badhri@google.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

Maxim's MAX77759 is a companion PMIC for USB Type-C applications. It
comprises the following in one package:
* top (including GPIO)
* charger
* fuel gauge
* TCPCi

While in the same package, TCPCi and Fuel Gauge have separate I2C
addresses, interrupt lines and interrupt status registers and can be
treated independently.

While the TCPCi part appears identical to max33359 on the surface, it
should still have a dedicated compatible, though, as it is a different
implementation. This will allow for handling differences in case they
are discovered in the future.

max77759 is used on Google Pixel 6 and Pixel 6 Pro.

Add a dedicated compatible, maxim,max77759-tcpci, to allow for
potential differences in the future.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
Changes in v3:
- change compatible from maxim,max77759 to maxim,max77759-tcpci - the
  former should be reserved for a top-level MFD device for the
  remaining components
- drop Acked-by tags due to compatible change
- Link to v2: https://lore.kernel.org/r/20241128-dtbinding-max77759-v1-1-733ce24c0802@linaro.org

Changes in v2:
- collect tags
- split out from original series (Krzysztof)
- link to original series:
  https://lore.kernel.org/all/20241127-gs101-phy-lanes-orientation-dts-v1-2-5222d8508b71@linaro.org/
---
 Documentation/devicetree/bindings/usb/maxim,max33359.yaml | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/maxim,max33359.yaml b/Documentation/devicetree/bindings/usb/maxim,max33359.yaml
index 20b62228371b..a31e00e6b967 100644
--- a/Documentation/devicetree/bindings/usb/maxim,max33359.yaml
+++ b/Documentation/devicetree/bindings/usb/maxim,max33359.yaml
@@ -13,8 +13,12 @@ description: Maxim TCPCI Type-C PD controller
 
 properties:
   compatible:
-    enum:
-      - maxim,max33359
+    oneOf:
+      - enum:
+          - maxim,max33359
+      - items:
+          - const: maxim,max77759-tcpci
+          - const: maxim,max33359
 
   reg:
     maxItems: 1

---
base-commit: ed9a4ad6e5bd3a443e81446476718abebee47e82
change-id: 20241128-dtbinding-max77759-b3ddbd264544

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


