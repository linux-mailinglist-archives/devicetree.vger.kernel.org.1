Return-Path: <devicetree+bounces-36323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E8EC1840827
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 15:22:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A62FB2904BA
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 14:21:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABFA565BBE;
	Mon, 29 Jan 2024 14:21:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IlUY5qtZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA1A665BA4
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 14:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706538087; cv=none; b=rm0I+MlWg0R7ieYkOhGa+dknPaBpa0ES4aUoptIZNWfWF6fHHyz6Xtbcn/+IPtenc0HNUdCFPtBi8hZAQkIev7oJbzSHs5XUjfbMIfeZC6OCqSATwb4XepRh6J12wDjRtHKG0PDfU140Z0F3h5GJzS673AjhEHgcXmc4kQwkf9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706538087; c=relaxed/simple;
	bh=6ooVY3tCH+LuZLs3fS116FlZFUTRKgmzzxCB52sqz2I=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=eKn/ZDLxPNmvHOHHrTBr7MSSuDs4fe7RBO2Gc5GJrJKiYPSfpNbombK/okOT7WXyVV7FHSIvwtpsyej475kXCOtOlrU2TKb6cinqnt+V4Cu8SgClvljyIEG4lv04V8+2o+IZ2nFYnwoci24ObpiMcRUrFhXok9DsyxFpssewrfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IlUY5qtZ; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a359446b57dso148280666b.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 06:21:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706538084; x=1707142884; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8xvAQ4GfJSx9uAg2g1Cik9jmurTFuIkBcKsMco4Ol/M=;
        b=IlUY5qtZrNnt/HMEReAMXpKx2J1wkKRIpzCqi6epixM95fzv0ArgpCJb/Fho+f1IEI
         Kc+nMZJvh4ErwZeJVufUN1JenKkFC0ynkaSl7J1KdZlcMDI3PLdHDGQc/OQJahXROwpV
         tX7lcnfgzws36FAEPrX549EHHMoPriRNTyuos/CtLpsp77biLnjB/nAdo7ull8YIwlP2
         t9fNmam/OK2cgZfYRsqDAUYlaPeH0eS9BrX9BEjXvlFT1afmDL3dldCtgnziDzM+rUuP
         B1HiLhqMU3kFy0454Ejrccu5BuZOe+KzdzUIIqD+T6LXhrBQviEyzAe8LBjr1AXatUgL
         zpwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706538084; x=1707142884;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8xvAQ4GfJSx9uAg2g1Cik9jmurTFuIkBcKsMco4Ol/M=;
        b=DoIFk3txOIXudkkd5i9H2LJbPO+e20HK1Fm9zRoMJ/TUq7vid9jMSDOTKRe+xADcZf
         oNJzgE6jtC9etfHeCXwNCD5rgJ9k3Bw3TFHPMQQrcXX/LjfVO3AIc42cZTyyztWXdCOY
         3l/fPgAWgKZoNW+srE6St6ovOXVFBav/IsSAvsq1G4Mr7HOYJ7wIjgWREPBYOOkyoDKD
         3/vDo3mR0FhlMoFT1v6zfp1PuMc68hQc2ORtwg3HBHQV472v2LZ/fxpkxELSo0GfW2ct
         dpPsl2vDB/h7A0Na0I+9m/oblHNtFRv8BLDC5CY7PkxyI7mcDCr+gVazssAlmvJbPCea
         QIVg==
X-Gm-Message-State: AOJu0YwjrOPy/kV8tE2Ejj1bGFXcHxSai1X6Wp5DfBKUHjQHS4xD8pOY
	2HDSA9ClmvxbE5fs2zrdfhns12QHf7yNpYEMBp+IHWC36b+OgMbu8mk798IRSFY=
X-Google-Smtp-Source: AGHT+IHAFInFVHJG6lhAU3fcYvwUQbSAsGy/m19hvlbJSjKaDCVxBsf8RHHwydjEm/2wZmsKlD3aLw==
X-Received: by 2002:a17:906:b48:b0:a35:cd66:3e32 with SMTP id v8-20020a1709060b4800b00a35cd663e32mr1394848ejg.35.1706538084240;
        Mon, 29 Jan 2024 06:21:24 -0800 (PST)
Received: from krzk-bin.. ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id s12-20020a17090699cc00b00a2cd74b743csm3979681ejn.3.2024.01.29.06.21.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jan 2024 06:21:23 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alex Elder <elder@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: net: qcom,ipa: do not override firmware-name $ref
Date: Mon, 29 Jan 2024 15:21:21 +0100
Message-Id: <20240129142121.102450-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

dtschema package defines firmware-name as string-array, so individual
bindings should not make it a string but instead just narrow the number
of expected firmware file names.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/net/qcom,ipa.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/qcom,ipa.yaml b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
index c30218684cfe..53cae71d9957 100644
--- a/Documentation/devicetree/bindings/net/qcom,ipa.yaml
+++ b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
@@ -159,7 +159,7 @@ properties:
       when the AP (not the modem) performs early initialization.
 
   firmware-name:
-    $ref: /schemas/types.yaml#/definitions/string
+    maxItems: 1
     description:
       If present, name (or relative path) of the file within the
       firmware search path containing the firmware image used when
-- 
2.34.1


