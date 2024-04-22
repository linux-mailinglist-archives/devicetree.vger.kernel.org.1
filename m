Return-Path: <devicetree+bounces-61382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 978968AC788
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 10:49:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 374031F21598
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 08:49:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1240754FB7;
	Mon, 22 Apr 2024 08:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f1PKBDii"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DACA54FA1
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 08:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713775700; cv=none; b=KSdzDVHT0aH2ly7CQm4Hlzgzhh9ydpVwjofxI05+1jaRj9Rf6UcEJN9L3ntdQAv12OC4ofejA/2duwt30W7Fm0iKsEAihzLNJjmpM5q0YYh4gOdZS1glJdOIXQig4zwNBn/IWNsYmG7FBnhQw5U73WWLZRFDy5KV0fSuCWCuIEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713775700; c=relaxed/simple;
	bh=XWViwFClyPoSqKIp2sLKe4pbbvpkPWu9OeRT9H3W1oY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qUKqFVlwlVA5uTKAu8DWcwfTlzBL6T+42wc0tJtGHH11Via2WphgPu3KP8BNkPRyXAXcGX2wHhz3qSokmAecwmiJ2i6LUsgpauRHAW8advzaGV8893uQ4NH+DJhL/XnWHKNXqoqtM6n1TnNcjfzgGM6TzUp9TcPT7Cv4zAbETL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=f1PKBDii; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-41a0979b9aeso8911905e9.3
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 01:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713775697; x=1714380497; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7ebbPMvWBsKZ0ArkpmmdUg6nQqxEpO8djndB+too+HI=;
        b=f1PKBDiisz2DnUOyhR/gefKQXZg/InWxxH251XgYPmkvtkxmYdE+CMWkpw3U+2JJHr
         HKlowQF25XeWqZrheFC6KjXa3XhlLJLPTriXwEEoWfYej86q7LEPnNcilKbGK+/yoioc
         Ah8XDnGpk95vsyVsR1q6PXTGt47m4PkmIoXbhWOCgMBdDySsN2TPDd12H1KpDhbeYlOH
         2xsRwkPejC2h03fpjaM7Qux14K8AbKOwFqSTt9bLQPUYn44EvAX2KNSDpAx1DqaYC4o5
         X2czy2GThgdcUGGP1kN51UGu8X0MD1bfk+yDjWFce78NVUBO+Rm7DJTyX0gXQWkKDQpN
         5w/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713775697; x=1714380497;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7ebbPMvWBsKZ0ArkpmmdUg6nQqxEpO8djndB+too+HI=;
        b=Oo7gAZDz0GgQcsIyEtM4ePtv22jqmczF2S89WkWao4S49+OnWsUl6Fkk9JZEcPvcUH
         p44nXbd83/4tQDYWAqTVrIa14Kppk3WBaGvDj5isazq6b2gYX7W0IiJU2ZyAZVHCFJR6
         OBOyg5FavMzFyDnma/j3eYf6s+RQnrLCRo04vVdHvGHHFNJsQFkZmTz5yxbrOyr/p1Hl
         p8a3us+ReRKNB+QLZLCkqZQtSu72/3lKRDFf3qR3PO8Fc0YvKP7kWVSDFO2f72O+buj0
         +rbP9YIxs6OafY6pKhsJ0qRnD+QLU4TJiU6Xu+LT5ixkCc20yLu1ZDLerge+OATkgsow
         KnDg==
X-Forwarded-Encrypted: i=1; AJvYcCWsFhBmzVlkWtFDNOTybQ5Kc4XjzPtTAb9FoI1uvu70RJ+8JaLCN24bad2YCMALs/Oe/AQdeBgM9VpcvEODrU+aWXv3VvoaaYmFrw==
X-Gm-Message-State: AOJu0YzRnnAfmnJvZ5G+BTCJFllNrN88gLq4UzNxUweAEEToa61O3lkB
	cmBn4i/385lSau2ovJZdj+NscYCctBeepdW3jD16Z2/du4j2iIpuk3rQqsPqsJs=
X-Google-Smtp-Source: AGHT+IEDmMXEAsNMGafqsvYXvVxeCD4wbO2HE8DuQ9uEaYuSFLUK6kEssEISQVY+lV3u7ezKifjBQw==
X-Received: by 2002:a05:600c:3ca3:b0:418:c021:33ae with SMTP id bg35-20020a05600c3ca300b00418c02133aemr6984192wmb.19.1713775696453;
        Mon, 22 Apr 2024 01:48:16 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id s6-20020a05600c45c600b00418244d459esm15962650wmo.4.2024.04.22.01.48.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 01:48:16 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 22 Apr 2024 10:48:12 +0200
Subject: [PATCH v4 1/3] dt-bindings: arm: qcom: Document the HDK8650 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240422-topic-sm8650-upstream-hdk-v4-1-b33993eaa2e8@linaro.org>
References: <20240422-topic-sm8650-upstream-hdk-v4-0-b33993eaa2e8@linaro.org>
In-Reply-To: <20240422-topic-sm8650-upstream-hdk-v4-0-b33993eaa2e8@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=952;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=XWViwFClyPoSqKIp2sLKe4pbbvpkPWu9OeRT9H3W1oY=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmJiRNMvLqQcadxyVBRIYuqIV5T1b4xUUcpYARAnuY
 rpFC5LmJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZiYkTQAKCRB33NvayMhJ0ZRED/
 4mgSdAzjIwarwx/RN6ijPJgnNDVi3wvjwJJ5waiA7A3ufRBlVar1ndOroawO6Z13kzbEcfP7bPYheW
 PBVpAi4L5BiC6IsYMmVEoRauE5xE3B31aZPukzcfHV71C2Jl65ua+JXg6JRPDw1ln143khGKCkmQES
 H02TJVZx5zVYDvc7ZK70r0kMYj6Z2GwqcLgAPYqLQgGcZjetM437uyXx9SlWwyPzyVwrH/0KqJ+gzD
 Fckt0v+Aux3gBDmglrs8MBTauJht2HiVsws7kRi6yFAKpVZ4rZmZTVd+AoKNyKR0RiWiH70Z5M63U8
 S01ZdeqFNY0xRcnSFVPfOR8tkXu8bJQzSoQfhRVYAHEuwuy2sfKl7zMgVeBI7RjNf+WWtpSTGggK6y
 r6Jlt/4KyrBQzrIDfPp6VJurDXyioZ+PV2REdu7bQG8IYoPY3ei92WGb2/5r4GJRH/UUsjSG8hHw7Y
 T/Ez1v/JkhL9wjMELlMy149YknbbwA4OC+YWmcC/iFBWXo0C2M/sLhij58Us3FzHDkXsM+LIQ0thhM
 N4OdD9jnrXxhDqNH1M0wyrTunxpg2d2rMRolD48W4auzA+s5CCgCwmdzvczC0k0e3bO3Jj7eL9cceo
 J+iQecsNU9qChi/d0Wj4GTFFAmETpojSjvqLeLFG7ar8S5myEnd1e+3D6Bsg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the Qualcomm SM8650 based HDK (Hardware Development Kit)
embedded development platform designed by Qualcomm and sold by Lantronix [1].

[1] https://www.lantronix.com/products/snapdragon-8-gen-3-mobile-hardware-development-kit/

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 98b4187f2aad..52be11d33935 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1002,6 +1002,7 @@ properties:
 
       - items:
           - enum:
+              - qcom,sm8650-hdk
               - qcom,sm8650-mtp
               - qcom,sm8650-qrd
           - const: qcom,sm8650

-- 
2.34.1


