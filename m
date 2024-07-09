Return-Path: <devicetree+bounces-84368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DB80992BE55
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 17:28:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 35A7CB22C6A
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 15:28:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20B3B19D881;
	Tue,  9 Jul 2024 15:28:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qEqYBGub"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87A9419D090
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 15:28:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720538927; cv=none; b=ToIf7W77FqhNdFquybtCh7gIwdHph8LqsrpvUbZVpjkW2H99Coclr7to22b04GTWvUxJQ2NpQJpZXYZI9UC8kEbWibJP3WzUHUZeabqKQbT8/olf6MP6KSh3CBbBvppKar4CMh61tqAmmUgwmfj+bRnBiBeh9L3AA9piC+lSL6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720538927; c=relaxed/simple;
	bh=68++p0TLm5vTWyW+78bNCCU7gxHIxep9gk/S1rYIeHc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=n8QuwHRDtMz+r0kJ2n8b4jgMMf3irHxXQNuzTdcJGPYq9e9myzFXUXYBFvWGrPELuwW8nVOSl2FdEIn6kOJxwb6RHSH44QRcE11rR4jKG6mmteKaqlZ0fIm4P2YRcG2viObP3m/M0Kh4uE1JuQOO1mpa6E4BA7m1/cmKhvv95Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qEqYBGub; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-42579b60af1so37266765e9.2
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 08:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720538924; x=1721143724; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1uvKJVDAkNfWouoiWb+1kR3F4IBUjlyoO5Q61R4r4Tw=;
        b=qEqYBGubdShLx0Pykh5mmAC4J3htyJaup7qIgGYidQZAvkO4HgOepwSbPjhAGBJ8hD
         wlmNUEp3Ziss1Ob+aa2D91N6nOjiQDKEr8WJJut1g0Pms4bAlyib9q2gnEXF5fP6qWm2
         j3SgFlpSHfxEFVJBWVIOKmRyyc5/L696WhkKHigHwssWROVJXQmUmUYTlNXByDu1nb3Z
         L1RiPH9qCJKUIHrIQuZHtrhZrOHBSOI6/3hGZftxVYzChR+HsUbX7gQBpZXGHy4e2DCs
         WmAOtpa/Tp2vd7lWUwXdvSJqUKNE8ZPN607zPzy7/V0Q8tNj/O8qeR4ZxcNC91K48NP1
         NQiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720538924; x=1721143724;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1uvKJVDAkNfWouoiWb+1kR3F4IBUjlyoO5Q61R4r4Tw=;
        b=tM/q1abUgE8cGA6vewAMrKZzu2Z2nu9SYM1e2QLFWvPfqMcMjb6kMsZnH0wpZqtI8B
         0dokEP4rT/IHWZVhedp5AUI7HCqMWizVlzIT0KawRQvM62DkECyPrxsSiRZx/f0v8EFd
         MN089H/TZD14DUsk3gSJ316QHp/De3U/Q9os/7WqZjtSCL5rpDGsodEAy8SKoiYAGew5
         HqIKHJIz1jMGBgHmN5djmvPVpD7BSg/GgR5iEKWI2WsHy3PSAVC/WK8hLagx+cLQkPf3
         zsxKDLbd3spRgibXJvvFy28AXqXr7m3nZA5T3GWeNK4bSDSg3EJAkJ15pgOETZ9jhslX
         BRVQ==
X-Gm-Message-State: AOJu0Yw69CaVLbDq1TVl13G284Uv0Tsd7VhjAl7M+gxRnkmCLy0sH+N0
	sFEzAT7w9+J00Rh97XeEG7WTfsrk4LXEcVnBxw18lWheyfBMHMk7Sm+BfG3JOSehSqIJcLiZ23D
	P
X-Google-Smtp-Source: AGHT+IECZyuBODbUWxODlQIq2TNUEQPYhnYHr3v7tlYB31S3xcLkk0SWvj9qahKiYTMEWYdHqCwhUA==
X-Received: by 2002:a05:600c:2e04:b0:426:59ad:bbb3 with SMTP id 5b1f17b1804b1-426708f1f54mr17918255e9.32.1720538923729;
        Tue, 09 Jul 2024 08:28:43 -0700 (PDT)
Received: from rayyan-pc.broadband ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4266f6f5a32sm45883775e9.24.2024.07.09.08.28.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 08:28:43 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
To: devicetree@vger.kernel.org
Cc: Rayyan Ansari <rayyan.ansari@linaro.org>,
	alsa-devel@alsa-project.org,
	Banajit Goswami <bgoswami@quicinc.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 0/2] ASoC: dt-bindings: convert qcom sound bindings to yaml
Date: Tue,  9 Jul 2024 16:24:41 +0100
Message-ID: <20240709152808.155405-1-rayyan.ansari@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,
These patches convert the remaining plain text bindings for Qualcomm
sound drivers to dt schema, so device trees can be validated against
them.

Thanks,
Rayyan

Rayyan Ansari (2):
  ASoC: dt-bindings: qcom,msm8916-wcd-digital-codec: convert to dtschema
  ASoC: dt-bindings: qcom,apq8096-sndcard: use dtschema

 .../bindings/sound/qcom,apq8096.txt           | 128 ------------------
 .../sound/qcom,msm8916-wcd-digital-codec.yaml |  53 ++++++++
 .../sound/qcom,msm8916-wcd-digital.txt        |  20 ---
 .../bindings/sound/qcom,sm8250.yaml           |   1 +
 4 files changed, 54 insertions(+), 148 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/qcom,apq8096.txt
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-digital-codec.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-digital.txt

-- 
2.45.2


