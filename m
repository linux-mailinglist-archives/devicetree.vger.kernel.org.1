Return-Path: <devicetree+bounces-216987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7674BB569FD
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 17:03:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E9BAB3A3D20
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 15:03:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBEB62D061B;
	Sun, 14 Sep 2025 15:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d03RQbXI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9DA2C327D
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 15:03:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757862221; cv=none; b=PZGboH9XK8gx2pS6u+7zTNEgTa0pDvFzdzaaeMN91SRRo6vJzdqMRhjyTUc59iFYdONt5kAxFBI06yW7Vmt/w28x9dLRTW2M1wPpdAQ4pTaJyrNhE7h7qeH+BOYVLup91h2Rq1t/NeuQxA83z9oHcFfWJq+MRFhK3VO95a+WH6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757862221; c=relaxed/simple;
	bh=t8tzZ/2f7RCQSjiip8NSX/rfbTT3f/6gXgGGXz+AV6U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mnUybpk5bTp9AYh/tL3lSHMTBt8/RxKw1zIh0IUiZiokxDwkbjo9xGefaQVv5h0+dEqtVGuoQZSWEEq4bsIjIdi0PRefA4NroHI3pd8UiFPpPyLZoBW7DtmZwoR5YIDyisl0PL+kr4N+hNwuMgBY2wZhSZoT8mPlLJ5q9nmR3XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d03RQbXI; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-45dd505a1dfso27730505e9.2
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 08:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757862217; x=1758467017; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wyg3bozHzgmdRL161LYvLfYk983lEGFQ9huQuS5QQKo=;
        b=d03RQbXI010PuwEvDZPjmuK1qQqg8avahsAfSGLDc/0i8DwejuU7GfWfC7CZSumyyK
         n9K9PhhSJJO95Y/aJrF1SnnUKR5RB5ezcvuGIW5Zzex6nBqzScaDD5vHOzoP+8lFLF25
         T94rLaKumyUnF6pCjUPqUrZasZfJ/K0GBojcJmAFkm/98o4Deyq4I38Naw9dQr1ATOCd
         jvyol3kbWZgpV7mUQtUROyu1y7JVM1G0jPiRau3qpw1ohwOPvq+166SkH7DQ2MlVhWgu
         MkrDunR+wqldW1gNMUKhvr+2W1lAcjOTagCLBOTFarkOjh/MFjLb6tvvvSu+qd8Y1iZW
         p+zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757862217; x=1758467017;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wyg3bozHzgmdRL161LYvLfYk983lEGFQ9huQuS5QQKo=;
        b=PAKAj8D2PMp3bZlkOxYhU2zt9dURt9uoJ8UIrFJPKMhZn76SXsER4plRvYVVyOZk6I
         cdNB6AALCbbC34WB/Xvg3YkWyWBkWCBJ1wHywrrGX4qXwUOJbv8uF0H/BXzhRASnv769
         sDVxEFLVWMcHfIHmCSJnyD4AYnfhc9BY+z94GPDKvGWq03hkcEctb6U+RYYvVGliW7EW
         C5Bfr6HqB9f0+gfKGehnYwd1YN9Hze4EYIpetNRwPb4m9mrCJlSuynTaKV900OtjRNma
         pytzZzAmvYn2qpVOgnKbXpN3T4ogf5u3ehAS8w/yWC9CaVDzXMzVX440tlkMOSCo4OlM
         kDOQ==
X-Forwarded-Encrypted: i=1; AJvYcCXnDhwUnlG8MQCrMmnKxjNmfNbmU5Z0Ozzxihu64v7OdTPCsdvRlm89zlD46MRLL5FItw+WWKHW9c+k@vger.kernel.org
X-Gm-Message-State: AOJu0YybuKSTfuincVJl4t+XU8uDW0ZUZYOwp9wP6dN+DMF0UIkqYwa1
	uANj+GsW5aYFVZK/2jxm4ISiGnMvl9909U/jp7BbujskGkOqdUpmpCh1
X-Gm-Gg: ASbGnctmqH84mqXIhCxayWJTX+9Uf4qdRD54YpTBKyUThYXlZ2ZZuwnIZ3uBkRHu9C2
	0P6GBPnU8XlpwOoI63F5HhujQKqMDjEG9JGxO55aeKYb7gHy44xtctpD2YByWika8izIufi782V
	cSCwLDKmP5zScl0WImuP/BrjG1e+jn45jFUlr1OdZ7LfczQHrRspexHY+FAvDwoalpDU8JxpmsM
	0dBcHUsniqsTfYMHVviG1Qo4hUNQyHCdW1TxQ3LgUXxdCClhdC4L6ddQ8Hf76NfzhelChpXC0L7
	7mnl8sa5cC2LpIRYUuAyqWqBOUhoFSAAazRaq/K7Z9Ku8L2gBqfNsDIs4oiUhhVxTwm7sDz/ySU
	xO2lnyDXfL2CgweBeGnO8RyeU9u2WOPggifJyDmHi712Uk9Kgb4tZZFLfi2njzcW5+cbwlmbHig
	==
X-Google-Smtp-Source: AGHT+IE3h45OZpMAY6SiSVCXJQptcZFERabg2hn7u3d3tNKA8ghZYuzRtUbXRk0u5MeYisU4RNY5bA==
X-Received: by 2002:a05:600c:1c0b:b0:45c:4470:271c with SMTP id 5b1f17b1804b1-45f212f9888mr85615375e9.18.1757862217348;
        Sun, 14 Sep 2025 08:03:37 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45f2acbeee0sm32780385e9.0.2025.09.14.08.03.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 08:03:36 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/3] dt-bindings: arm: samsung: document herolte board binding
Date: Sun, 14 Sep 2025 18:03:19 +0300
Message-ID: <20250914150321.2632019-2-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250914150321.2632019-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250914150321.2632019-1-ivo.ivanov.ivanov1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add binding for the Samsung Galaxy S7 (SM-G930F) board, codenamed
herolte, which is based on the Samsung exynos8890 SoC.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 .../devicetree/bindings/arm/samsung/samsung-boards.yaml     | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
index 26fe899ba..cb921c741 100644
--- a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
+++ b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
@@ -238,6 +238,12 @@ properties:
               - winlink,e850-96                 # WinLink E850-96
           - const: samsung,exynos850
 
+      - description: Exynos8890 based boards
+        items:
+          - enum:
+              - samsung,herolte                 # Samsung Galaxy S7 (SM-G930F)
+          - const: samsung,exynos8890
+
       - description: Exynos8895 based boards
         items:
           - enum:
-- 
2.43.0


