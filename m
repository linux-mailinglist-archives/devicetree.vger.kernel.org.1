Return-Path: <devicetree+bounces-45501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5F68623C3
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 10:13:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6AF9B1F251FF
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 09:13:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46C86219E0;
	Sat, 24 Feb 2024 09:12:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YAUcGtyA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72D2B1B81F
	for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 09:12:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708765968; cv=none; b=NLcq5ZthgYKnOMDWkKGEx61Ju9mfbYb3k/dAVT/K7k5UXelGU2QgR07676BvV+uOACLM6QBggPvz/dXQMRrG2C/yExQ4CgbZWuP77XNOzMmlFQLshXE5EFvmn9i8Tb13f1xlt0OR8lNEmKtLcLDfPjRqC5gvAlJ57r+gMJX5SDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708765968; c=relaxed/simple;
	bh=d0VFOfOH3/XDFGCEN39cKeYLTeNfespjyWL1U0WSFPY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=aNhKtUAZwHILUvHpEqiGfOwfiS6r23gzp3isFTwpFVBYV4fxMtZlzWhddVBahCRCoZgElpCGgY72lPLT8oBGUrqSiguy/OuNuDXEx8sEMWJb/4MJDieVTt8DyaRrifWEggnz5HecTicNLqUyN2EHJHNno7oR9MM1ZZiWIpFBVI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YAUcGtyA; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-564fd9eea75so1577260a12.3
        for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 01:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708765964; x=1709370764; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tbUWmxXPQmtEJUwryo3H5edvLFU7yMZad6wo2IXtDvs=;
        b=YAUcGtyAaij2RoTYdOUTqz/OtYEeuofW6E7dLHzn0xrM2/4X9IXkaku49WvUqjKn6c
         QxlLzgLjJSO1bbIsvwfC03WWc1HNEDJdxdvQA8n5t0gTeA8wlvLRNkUv43xvmGo1EAUJ
         VQkI0BQCg8UHwFNmqzmEJNRFquVl+sAVei0h61YxHDTUwtq+oHBErpdVSANxskDpVrjt
         enPiIGWpbVqUpodto8ELaavuGzNlWIW71XGEO0gA87a22bjSmh0+1W47ogfka43DhlQM
         LQi+a59u4QOWx1htbffFDjONFn3TnclW9MNEfigP0z2CTEMx3uJyDOPq4d8AFKaNY80T
         rG/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708765964; x=1709370764;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tbUWmxXPQmtEJUwryo3H5edvLFU7yMZad6wo2IXtDvs=;
        b=BvVBJi/xc/i1i0bKkrZoN35U9Kkw+ZorlodmwtDYze/FHtsAgT4vMkTcZ0FRARFWoJ
         AcPAzS/UC+A11Evu1ztTUzTeaURl4ZhvP/PPtqrLN+2JLTUIONavhrsTEnDf1xyLx/zs
         O7N/zw0SLv97EhgAYqzrPiDQYqnfWTcRVAho6SZ3IG1jyAZ/SbgJFnfXrBPJbkAAAuVz
         GuQGC0KFAC+5OpYxAvJ8xjQeSwDAyx+3x2x9RpU4lFes+mIDeRsxPON79Zuwl4LFn91V
         g/FgrFz5nYYSvuiUSoOjolg1RJTY0SPj5RKRjmHMQi1J8STQ4TrI0v+7rSmxi0whM7e8
         Fubw==
X-Forwarded-Encrypted: i=1; AJvYcCXWObwe2FFCt6UATZlXfhaibbyXSupWDNSb6LSw7BNvOVuE8rUfJ+Xc4rF85Twh+r+xwKubx9nETBmcQd4ZKGxEVp0xBQHdlYkSHQ==
X-Gm-Message-State: AOJu0YzyjnuVqqch+dWx/5kB7OxVZzf260N85QxDIeBXhsPDSImizbQ/
	gVnr+EOUYDgZ9DX+2Jd+ecKUk4SQqlvWJ6zrFnWNDWkC6CriPGw2LTVY3lyenec=
X-Google-Smtp-Source: AGHT+IHPkmdY/2JX+2DxbAffRxrLnVnrTav9C+myuLjv86tAmwyJIFeyB4pKDfYDM9Pizs0gbNasYQ==
X-Received: by 2002:aa7:d0c9:0:b0:565:7d4a:1d4a with SMTP id u9-20020aa7d0c9000000b005657d4a1d4amr1230145edo.8.1708765964241;
        Sat, 24 Feb 2024 01:12:44 -0800 (PST)
Received: from krzk-bin.. ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id s8-20020a056402164800b005652f6a9533sm363120edx.74.2024.02.24.01.12.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Feb 2024 01:12:43 -0800 (PST)
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
Subject: [PATCH 3/3] dt-bindings: remoteproc: ti,davinci: remove unstable remark
Date: Sat, 24 Feb 2024 10:12:36 +0100
Message-Id: <20240224091236.10146-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240224091236.10146-1-krzysztof.kozlowski@linaro.org>
References: <20240224091236.10146-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

TI Davinci remoteproc bindings were marked as work-in-progress /
unstable in 2017 in commit ae67b8007816 ("dt-bindings: remoteproc: Add
bindings for Davinci DSP processors"). Almost seven years is enough, so
drop the "unstable" remark and expect usual ABI rules.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/remoteproc/ti,davinci-rproc.txt        | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/ti,davinci-rproc.txt b/Documentation/devicetree/bindings/remoteproc/ti,davinci-rproc.txt
index 25f8658e216f..48a49c516b62 100644
--- a/Documentation/devicetree/bindings/remoteproc/ti,davinci-rproc.txt
+++ b/Documentation/devicetree/bindings/remoteproc/ti,davinci-rproc.txt
@@ -1,9 +1,6 @@
 TI Davinci DSP devices
 =======================
 
-Binding status: Unstable - Subject to changes for DT representation of clocks
-			   and resets
-
 The TI Davinci family of SoCs usually contains a TI DSP Core sub-system that
 is used to offload some of the processor-intensive tasks or algorithms, for
 achieving various system level goals.
-- 
2.34.1


