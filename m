Return-Path: <devicetree+bounces-40832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AA858851790
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 16:05:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5ECD41F2121B
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 15:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F079A3C493;
	Mon, 12 Feb 2024 15:05:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TB9CSVOt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FC33C060
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 15:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707750335; cv=none; b=KI2UspmZPEhX+0k3y5U6+bTEKQU69w19tnASXfU7NeXOkSfA7iejL/1NjvQfZ84mV+czMI5nrAA31yvnOeArbCoI9HZ0mmDW275FqwFq26AqPLhn7Eqeh3E8QGX0khM1zxg+/STx1Ah7RZMw7HH4mA+pk69/8g1B1OW8VSqC7pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707750335; c=relaxed/simple;
	bh=KgUowYfgtXl28hHu8o53H1gGOukBG50qgWooL1gLRCo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=in9y+xqjGFfj4ggu9JXESDY+SPebttfXnmwKRkjEvNa5+gFY2WLOTZ/zxQLZCW8uxV7dB3nTMlL7MrvyAARnJHMwg3T7uKoiFAafflYROWtReGfpT8SjeuKDLinz2BwTh86I9VcdOkZEO/tD+K4rXa7FASf9JBVSIQyqbF7r0oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TB9CSVOt; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-33b189ae5e8so1371885f8f.2
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 07:05:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707750332; x=1708355132; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JyTLWvwJXO7xoVt7rika7/6Jet6raOmjXeaXTzvReEM=;
        b=TB9CSVOteC2cMG0gOP50vkZ9rvmG6IQszJ2R8MvIsL+64nVVJNy8siWyuX++uqX4Cp
         4M4w3wQ5cdRgSfENQ2gSpIH5AgYqbAACWm/HyTKin2PDynH3yLUQKRnhdRA/gSs8zevo
         ZPC1B81vsMPsNiuvuDa5vyn/IlboWQKc9UgtbWLq+NNiz8Vs8QUrEUIag2KpWLTO0Tx6
         wf4WAYhjpehQpVcykNle3myLlVzM5tobuezuAn8NG8NX/6GMG8bLwSw/0Dz1cvQSsk/+
         ntSgK4cRj6nu14OJHIRpDRC3+42le5K/Y1E0kwmDI0K9RPJgt8jmvxkeHpl0tmohyAfN
         hx3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707750332; x=1708355132;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JyTLWvwJXO7xoVt7rika7/6Jet6raOmjXeaXTzvReEM=;
        b=ZVPHlWFH7JEyZU8MUS9yvJd4iLPjwZVPH6xk/sUlsqEQwsf7/EmfC2dXyTV+ZmLpRz
         BdIK//fDxxusvcLZwXZjF8uKor+J7tY2sSLVPFQGKzUsdSAWGjSPCtWTB8l2cl02o1zl
         F5/fyRPfNeRarXnsTMuVMwa7MjS6cdz5zOH6Sx/n89xt86UFlEwLspXRnn6QE2l9ViCa
         g2VgPd2PzVlEw9pgQ4Pm59HNqKhkXyuEu1GlC2HRGtFnL0WFa/YtxsJRZfaT3Wjb/ur4
         Wotq29t3JtwCzJrqOqPAAbVCx2BUcTnQ18JXgOwGurs2eCWNCMx3nH4LaIHZ0RZDt18W
         +zRg==
X-Forwarded-Encrypted: i=1; AJvYcCWOarekh7QvbY2/aPWv7v23SW5WjB6YYMjXli7KeVBz051d/AAP9iknyrIWqLP2yJkNWzhMpMVUuoEEZagihFDw71NGWzGO3NhhYw==
X-Gm-Message-State: AOJu0YxhsgGbnkAdsSQ9MOhE+14Bxet9bCT01o50QtIE81Ui2fcavTf2
	vaBZU3BpO8i8Tah2In35NDhkw+Yhc7il5X0rCSuNy4qd7iy5fwVTiGdt7DqckBM=
X-Google-Smtp-Source: AGHT+IEHFhKnUidcc8ozQBza9HuX78VlrI3zB8EwUymtQo8q+7mZGqafUpbXddKfPALQC810Sp32mw==
X-Received: by 2002:a5d:6daa:0:b0:33b:582e:1e4e with SMTP id u10-20020a5d6daa000000b0033b582e1e4emr6259901wrs.6.1707750332526;
        Mon, 12 Feb 2024 07:05:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXFXqShNNvztQDBXSpM8OOw/PBnzVmD8Yv1Kz/rd2nVlpk3UjRQrEKiLCd1ONeLZ0xpPw8+acwyELh5o62P19lzguRMuQD4Y1tczTwFDHKss0GLB3SHAGwPu6m1W+gh5e2w7AgpfS8neTPJSrQnw0zKbe6okpx35a30VbCL/A==
Received: from krzk-bin.. ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id bu13-20020a056000078d00b0033b6d5a1244sm6964223wrb.12.2024.02.12.07.05.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 07:05:32 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/3] docs: dt: writing-schema: document expectations on example DTS
Date: Mon, 12 Feb 2024 16:05:24 +0100
Message-Id: <20240212150524.81819-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240212150524.81819-1-krzysztof.kozlowski@linaro.org>
References: <20240212150524.81819-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Devicetree binding maintainers expect the example DTS in a binding to
show the usage of only this one particular binding, without unrelated
device nodes.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/writing-schema.rst | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/writing-schema.rst b/Documentation/devicetree/bindings/writing-schema.rst
index a35859f3be00..7e71cdd1d6de 100644
--- a/Documentation/devicetree/bindings/writing-schema.rst
+++ b/Documentation/devicetree/bindings/writing-schema.rst
@@ -92,8 +92,10 @@ additionalProperties / unevaluatedProperties
       'unevaluatedProperties: false'.  Typically bus or common-part schemas.
 
 examples
-  Optional. A list of one or more DTS hunks implementing the
-  binding. Note: YAML doesn't allow leading tabs, so spaces must be used instead.
+  Optional. A list of one or more DTS hunks implementing this binding only.
+  Example should not contain unrelated device nodes, e.g. consumer nodes in a
+  provider binding, other nodes referenced by phandle.
+  Note: YAML doesn't allow leading tabs, so spaces must be used instead.
 
 Unless noted otherwise, all properties are required.
 
-- 
2.34.1


