Return-Path: <devicetree+bounces-45499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E058623BA
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 10:12:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ADB8F1F23C13
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 09:12:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1192418AEE;
	Sat, 24 Feb 2024 09:12:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oD5+EDKs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A6418037
	for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 09:12:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708765964; cv=none; b=r7ueZMkFyLw9za+LKWOAHdUP6v53Fo1W77bhiUd9yoJO3WK82MEe1mq6cIQ4pnSCBALft0lKBr0E4kBfucp3YKAAyuj/DGmd0eqoyfyMAxKvyCozI5njfGcrH7ASMyO1nvxg+zWTdD99gk5dlxoEdThzoyhdWriB6Sq8LqMDLek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708765964; c=relaxed/simple;
	bh=QJHaYzPY+m0OHtHiflvDg030t6MnJOuacu/PCuwm03k=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=On163riC6C3Pp1sym6jR1/ud+woTYNLVJbGgRpnrxxOXdl9O8hKubWwBeHhNWduQcJOA7rXGzbxTSfZqTDQeXRI95HCesn3HdK2QmhGILoKBOoBtAMnEJHs35BKM9QkdtNs2wcLgr+9nTiuRJd+204HVJaDaiv+/uGVhBHHZjuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oD5+EDKs; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-563d56ee65cso1860192a12.2
        for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 01:12:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708765960; x=1709370760; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rSJ+PeO4x72bs3AUvmTEqtOywxqrxagbi+uMUHWuQSQ=;
        b=oD5+EDKsCqSB++cRrpFfBwCb/J82G2d3Svs5NOnwqgpBw2c4bdZZLqjT+s4MSzUB94
         rFNbBcYCdI99RLoP7k27BF0R05ZHlADbtTZTcIjdSr5oAEzvDQX2BAvObAaSA+yLXf5d
         cKxaMlELTaZuyypcleWFJ/iVp2RvfvzRjmHFJU23hbHZiof5ICfJJ9itaBgfxUOdXSMm
         Jn2nmIGfWWn2nj1bmcgeELrJv9/ap7CMkqq7cFm4tLznsIUU0rmmMRL0t7iYHFMyQ7ri
         UMXDgVW4nyilih9oGpZ6z+0PpTPj7cImysWeOavYYrDtyhAmt1lRno24aSU/pvWpF3+e
         wYTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708765960; x=1709370760;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rSJ+PeO4x72bs3AUvmTEqtOywxqrxagbi+uMUHWuQSQ=;
        b=fgv3DmC7OxsXo+x975VQf9Gme+sI9Mhtbg/Bj7wcLGvKucXkiREVSGJdbTKFsbBO/g
         CvoQpb7tWx+5FpTb9FBB8eOBSnPjFilBTwDv4B7tcZCEJxE3xCs675LvgUar7Rti/wa8
         11y1XQnrIL6ivCGggCObIYJdR4Sct0yJespZkOx+1mnQCNIZHPSPskDX4zIidUBwui8p
         El3WCZluMVPlsQA/tf5VfVjxM0A5y6aJCx4sEHn8RXxoe9ksWr8DfK3rIHSAwvyZ8ql3
         qe+V5VaCq7Jfhndbn3USvWabpP7X/ODcKTRHdfDQbjlwkeUMRgKdE8tJcnCiAbz384DP
         L/Tg==
X-Forwarded-Encrypted: i=1; AJvYcCWcQOuPp71pKDWA9o9OD/Zf6p47f7SBbea4DFD7gQ2VNlcuAgSoghermkuYCGixKBJIqBJNUrnkNm/fOLP6D92kWRAAY/RqKtHw9Q==
X-Gm-Message-State: AOJu0YyAHdeF5jkZqGrUr36k4bHhuWxNMRU21p/lLkSNTgRkIiSajo9T
	98v3cup0yK84HL5flq53S/MWYu0NL5OK9zqyYOQSQD4nacbg9i7KcqjquoUeDtk=
X-Google-Smtp-Source: AGHT+IHG9kPQkhg3JSWWrcuHi1+sLlRaO9d5IHwbE6um4kWNgdiD0lDhIkh1bAKYCo23+kRRc/aVwg==
X-Received: by 2002:aa7:d591:0:b0:565:af2e:d016 with SMTP id r17-20020aa7d591000000b00565af2ed016mr295203edq.32.1708765960266;
        Sat, 24 Feb 2024 01:12:40 -0800 (PST)
Received: from krzk-bin.. ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id s8-20020a056402164800b005652f6a9533sm363120edx.74.2024.02.24.01.12.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Feb 2024 01:12:39 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-remoteproc@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/3] dt-bindings: clock: keystone: remove unstable remark
Date: Sat, 24 Feb 2024 10:12:34 +0100
Message-Id: <20240224091236.10146-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Keystone clock controller bindings were marked as work-in-progress /
unstable in 2013 in commit b9e0d40c0d83 ("clk: keystone: add Keystone
PLL clock driver") and commit 7affe5685c96 ("clk: keystone: Add gate
control clock driver") Almost eleven years is enough, so drop the
"unstable" remark and expect usual ABI rules.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/clock/keystone-gate.txt | 2 --
 Documentation/devicetree/bindings/clock/keystone-pll.txt  | 2 --
 2 files changed, 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/keystone-gate.txt b/Documentation/devicetree/bindings/clock/keystone-gate.txt
index c5aa187026e3..43f6fb6c9392 100644
--- a/Documentation/devicetree/bindings/clock/keystone-gate.txt
+++ b/Documentation/devicetree/bindings/clock/keystone-gate.txt
@@ -1,5 +1,3 @@
-Status: Unstable - ABI compatibility may be broken in the future
-
 Binding for Keystone gate control driver which uses PSC controller IP.
 
 This binding uses the common clock binding[1].
diff --git a/Documentation/devicetree/bindings/clock/keystone-pll.txt b/Documentation/devicetree/bindings/clock/keystone-pll.txt
index 9a3fbc665606..69b0eb7c03c9 100644
--- a/Documentation/devicetree/bindings/clock/keystone-pll.txt
+++ b/Documentation/devicetree/bindings/clock/keystone-pll.txt
@@ -1,5 +1,3 @@
-Status: Unstable - ABI compatibility may be broken in the future
-
 Binding for keystone PLLs. The main PLL IP typically has a multiplier,
 a divider and a post divider. The additional PLL IPs like ARMPLL, DDRPLL
 and PAPLL are controlled by the memory mapped register where as the Main
-- 
2.34.1


