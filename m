Return-Path: <devicetree+bounces-217993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D5DB5A00C
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 20:04:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BF6347A246E
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 18:02:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63A0E277C98;
	Tue, 16 Sep 2025 18:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jFXckyTF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC85D32D5A0
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 18:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758045867; cv=none; b=DV5ywwrVVYbejxI0yU/w4rGjsj3TtmD1OvSEhztIIhwogOZin/yPvuOR0xREapt264JjD/11lu+O8PdeY1qQ4kfR3mRbr0FoEyfmmPfd5668fOtrbo4qrNtpE9qEoNPpF7kmsZG6/32uMdt5Qory//U92fyJvz33Pd27JJjPbro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758045867; c=relaxed/simple;
	bh=PzcSQ8s7GfmxH7lt4N94QWfy7MnO8OSH0HGrI/uXssY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=N4WPlxau/+yXwHRS0jveFbhRCXlY134g5/Et9l+R5tLgFfAazaDqLGBA1X6ZpT9m3uOIw/4h4yrO9xJz4E2LZGiYHJ/xrJ33otKQyjdwNXROSDKOm9n4uc3/Ddlx2K75knnK/N1M1p6GoRgx1kqEJqUhzXyLEV04Hh5bHmW4hg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jFXckyTF; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-77796ad4c13so1885733b3a.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758045865; x=1758650665; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KlMD9Q0JVitdbzhKoBVG9BxngG7xfjv+ACgNnBWgBr8=;
        b=jFXckyTF2Joss6ICkOWP/E4pJDdtXhIA/G2BlkW5sPdHs2K/wVYIUM8GiaE/YM/fX8
         YavV4Mw/Pa6HFFACKsgSyQQpKkDdy+XOpzsEtic8TPyDzH/TzGRAcyWp9g5HMnMaGMYn
         IVMjJ07k6L1kzaBgY5YoUXqR6O3OfvcMb1CYLp1rWcMioDFlfbkOKMyZ2oKV4kZ+EVW9
         IsJpYCszn98zDsQPacpdeK519NFOoxHq5kVr0PpENic3iMIpkPvrxe4IkcmVC821Br/8
         5s0ttX5k2ctUNeSKESMvoSNY+1FzkLIOgbsm71CWRpgwPBFwoMhkSqivAkuQ8cCUuwbN
         RF2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758045865; x=1758650665;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KlMD9Q0JVitdbzhKoBVG9BxngG7xfjv+ACgNnBWgBr8=;
        b=unWJHwDqCk5Rk0oBsYKehWIvdXnzPVan6YuPLYzUHO/bQeL8byj36tZLwX+1MnkaOY
         KX78j6xiGU4zkvD8nJMbYRpsxvQzxLW6lXzQM9Y2Z1hXgcLbmhCArmibcqiJU+wOe8Bq
         CJAKsJTbEZ0bEx6/1zJr20/r0sI3RR6m4re1rW/2wVnznD+xH488nKbN15+IgztpQuGq
         2ZNmu8YY7YZpluBYTHxjUj34JsNgbn8L3CfclqZgtFy2IPdISwSe7z2d2rnXbPW6W4m7
         4hxNdgvYS6Z1k6OeL8L0g95aDRn8eQGTzQ/UOETnnJVI7NYiGXH8IjYcE66yMxRgPxWy
         9EUA==
X-Gm-Message-State: AOJu0YxXwKUO2gDW3/kwblOQrpr5BPRIi0+WwuYURTRSYDffWXxQXFpH
	lGs7MuWSAgcZfVdYhVI5+r304s8W2yM8UMuSHH0ZqPgjE8b4I8mVuZh8FM+qXx78
X-Gm-Gg: ASbGncsiITB2nEmMUX6tkl0DFHsbQj4X8LeXajYtrngOy21J2y3Z8IzC8PFweNCT7mh
	rRh9nD6FgaSsiyboBTPaBuQN7DUK+TELuW25R8NcYUzR7/o170Zd943K7eGRIJQbZtqDAOzVUHD
	c+GruDZyYOnkkutUgVn/JfsFtCRgo3FG1P6ThqhwN9p2Kk8I3IG5L4ome4o1tvk2Muy3aYImGhC
	uFFfQ6Ha08xWeGYy9K7dibR7uYNMz9RNQgBNdkREtG3wCMeVEpUmvdsW0S+Dg7oo/s9XOPwij68
	evu6UWW6O1Qb6K8/mdh261zQeE94YF7DB892i2Izqq7NNC+dpEMD6xTW5+25rY/f9mkEerzGbGr
	AJouuf/lWnzkq0nBAwD0ojAA48NoYeA==
X-Google-Smtp-Source: AGHT+IE64vEQGGYu0FHbritPemhJAwVBgkK+MK3Escq6TQXLMCHhie2Kq66Y/kds7nMxdc8J5lT6NA==
X-Received: by 2002:a05:6a21:99a8:b0:243:d052:9833 with SMTP id adf61e73a8af0-2602aa809d1mr21763638637.25.1758045865256;
        Tue, 16 Sep 2025 11:04:25 -0700 (PDT)
Received: from archlinux ([152.245.61.22])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7760944a9a9sm16329819b3a.78.2025.09.16.11.04.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 11:04:23 -0700 (PDT)
From: =?UTF-8?q?Eric=20Gon=C3=A7alves?= <ghatto404@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: arm: qcom: sort sm8450 boards
Date: Tue, 16 Sep 2025 18:04:08 +0000
Message-ID: <20250916180409.157115-1-ghatto404@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The bindings had samsung,r0q before sony,pdx*, which is out of
alphabetical order, solve this issue by moving samsung,r0q before
the pdx boards.

Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 4f254922069e..640fae56f6ac 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1097,9 +1097,9 @@ properties:
           - enum:
               - qcom,sm8450-hdk
               - qcom,sm8450-qrd
+              - samsung,r0q
               - sony,pdx223
               - sony,pdx224
-              - samsung,r0q
           - const: qcom,sm8450
 
       - items:
-- 
2.51.0


