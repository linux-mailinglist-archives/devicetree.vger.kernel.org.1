Return-Path: <devicetree+bounces-153527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1458AA4CE8A
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 23:40:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 062B5162012
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 22:39:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85F7322DFB6;
	Mon,  3 Mar 2025 22:39:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bjQyC9Rd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8821212B2F
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 22:39:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741041586; cv=none; b=HtIOCGY31GzQNgqdTHCO6w6F3NdQRTwgVcnr+Aez4uHff8n9WEawwnRXhCmqWKHdzlLfV0MuKq5TKIG0LdlxTTJ9qHsIyUDJjNwD3NHvvJJqlUhzAGVJ8/JLBR37mEmt8HrVluWFN82CHFrQmElNXhlRipNO6i3yVcEb/XvJzwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741041586; c=relaxed/simple;
	bh=F2BPRhnYI4/oT4PuPb232wQyV65ROpE/B2Cw23k2FBQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tqThpTfRP+DaGzHu9ifm5fcq2L8EzuosYGB6Jm6dU6ESpf/iQrrHQw8EVA+r0djTyhx7aDCt92DmbGTvSg4qXW94Z71qwWDXuxiDmD2EMs8NpkeLXn1f+B4XiAu0GOkCRPgNp223WOHSE6d1PIoAFsgYTR4vJUs81U7BXpoqy+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bjQyC9Rd; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5494ce73f2aso635666e87.2
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 14:39:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741041583; x=1741646383; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lU0Ty4Rv1+MR/rM5LdY8GrZthMLsgmGzQN5S3dlbH40=;
        b=bjQyC9RdSxyoL04+I/uKZLIr9CF8mbi/W931SFEwHf4FGbH/rmvQzw32Z69Oir6GGQ
         q1qgi08vN9uw+h/nDeLDeWNVFs276UXCZ2/RRv87Xbn/2Z41u0exrTRDmfBIaHFcS4GB
         dokNIMQzwBwyO5S8glAdfHwoqvJbrnJuUnLeBrCIZp94tA8wKp8eDa6LEvH4x/TbGyN9
         qG8UAjKx3lpBmEnEsqI+5Zz9evSbZPH32qbjJ3ZWEeT9J758nGnm6fbuHZnDgxAuTmWK
         CrRe/53s403fe2N5UY1JDtOqddC0gjEvJBUAMuugy76+J7HStsh8G/kv3zFakmjcr9+/
         RPpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741041583; x=1741646383;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lU0Ty4Rv1+MR/rM5LdY8GrZthMLsgmGzQN5S3dlbH40=;
        b=rrJgR5eXiL4xYnHJu3TBi6dTQOCx51BU4wTkANuRdpSuA7EmnP6oQPvBMUymbRySLP
         an9V5aWGLKK0lnk5AWURydl/N4NKSJswEWpsy5zA9nqbIZZ0NOoTwVPwGj6zfUhLNQvz
         cLm80PEi50oCoNLXjX7Crac02ph5+gJzTvF3LPefK8urxIERfazSKc3Qvejm2BxFTx27
         kpZfFB42IJ3CopBoCAJt/nSkfUz9BM8IobDVPtCMXhh5ddanHhA856LmthaR6HB8DMK0
         hZaaABqp2YSnkL1CLVwsen3XnH6e/KR4lzCNNRjha8ae5owG27cJS6G3L+aQbPOsnyEb
         cXoQ==
X-Forwarded-Encrypted: i=1; AJvYcCVv6KwqjKbfkq9qYTgfnQjSN1E+w4rj3y3TpjXbSt1VjWrifpRlEsWriUUggknJjLCyDTx94cHPXuNY@vger.kernel.org
X-Gm-Message-State: AOJu0YyDPQ0ceLtyqSzxXtEM8ILIX5CXmw0NgGSLMZAvmsHC4sK65JRd
	A0mLNl/8cQPuFEslitzqHqxgOYTiCsvVlv5Z6xlGOaR3FNdc1YhTzTPv/VX3at8=
X-Gm-Gg: ASbGncsovVE6DEbZzSCyaIwDtbQi3BFLJIPTLIFy0pp2x1XqMrMe28gWlBuibLT1XQK
	wb7ITlg4/29nvweSg1cuh0k635mmtyCw7t+VpzDDIBawE6JhJ2ykuthbE/D9yKvDaax40T1mYAP
	ee9Gt5GBbmEgGHyKNGHKNM+dT2iptz9MiMPZsHoRc90E19+E72dWIBtNiaMHfR+6feXn3PWFi9b
	QxusmdxH95Q4y9//nesBraK99nXDRqqNU/Sp0wkgfNkAdDe/uYUNT0TMZ4xsxiYsA7T8wSx6lle
	2cK72sFbswG1Xt2nX1WVxzoAfuEYlg3jrz8/INrtJ7KA2RolzoJe/1miZkWUqgSF1Cpr7MQ0VEK
	vbydO2DD8zLCv6x/q/+ixW7idjy72NNjhxg==
X-Google-Smtp-Source: AGHT+IEoOUau6O8fOgldkkrcY4yXopOzPJmbwXvQjDy3D2WrJL1U4OpUpUuUU0DL/6OV3m1+vwjrdQ==
X-Received: by 2002:a05:6512:2383:b0:545:2338:f5f8 with SMTP id 2adb3069b0e04-549763c219amr41679e87.6.1741041582737;
        Mon, 03 Mar 2025 14:39:42 -0800 (PST)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54950e2d386sm1106706e87.17.2025.03.03.14.39.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Mar 2025 14:39:41 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jagadeesh Kona <quic_jkona@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: [PATCH] dt-bindings: clock: qcom: sm8450-camcc: Remove qcom,x1e80100-camcc leftover
Date: Tue,  4 Mar 2025 00:39:36 +0200
Message-ID: <20250303223936.1780441-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Qualcomm x1e80100-camcc was moved to its own dt bindings description
file, however a small leftover was left, remove it.

Fixes: 7ec95ff9abf4 ("dt-bindings: clock: move qcom,x1e80100-camcc to its own file")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
index b88b6c9b399a..9e79f8fec437 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
@@ -64,7 +64,6 @@ allOf:
               - qcom,sc8280xp-camcc
               - qcom,sm8450-camcc
               - qcom,sm8550-camcc
-              - qcom,x1e80100-camcc
     then:
       required:
         - required-opps
-- 
2.43.0


