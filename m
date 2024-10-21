Return-Path: <devicetree+bounces-113660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 016009A68D5
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 14:42:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ECECAB295F7
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 12:39:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F10CD1F4FA0;
	Mon, 21 Oct 2024 12:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sTjtKO+k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D731F12EF
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 12:39:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729514342; cv=none; b=qYfHLy+eRqy44DoaB3PPeTJbY8d0ZuZL9k74hNSJ9mpd2ZYXTWDiPMvCsAqGBNINOM9TvOJXe5t2Ogcu8h59KJH8m9GACImEbzdILb7V1iHbhoK/55VLz3PK7B5ZR0P4VB1K7HBT+kzNOMabyPZRYCNjTXqZfkJUhicCvO72hZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729514342; c=relaxed/simple;
	bh=AXp9R9SIchOWcn52tYxCXMRJHbP1cxB3uaJJrIOcnfc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gc5EIL8vjThUMDXxKrEyXFd1SBS2w11lI4wG/dZt+IADlOODle7gqNGMbaFLf4aTY5lGfi0J6nMKrq6zo6WuBjDMLyqLorb+YcIDUJhHChBIGdQ5+laF60Nr2WqM73pPDBFLWyGPNLHR4+WYAPAHphNZB1LWRt75iHmH2loCw20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sTjtKO+k; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4315eeb2601so50449385e9.2
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 05:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729514339; x=1730119139; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zRMi/UaCb3Fk6BdW82ihmAT7XSEnqkfXgGS7TLc7snw=;
        b=sTjtKO+kCbobp3yyjAKIEAam6EZ1lDjKOLGZNtvlK+U72dHDrbWdAujL/O2A657zIi
         aja4abRPs07NCsLoxi74Q2f4OyjEx81jj73Fr3NgVsPR58jpGTBwUFZ0SlEbR2yR6gL4
         V++DMHGn6XelA9X2g+fK+ZuaPRkxlSAHMlnrgDl+RqHwPCmBb4N1Fj7/qJ0WvYIo2W9v
         Aa2fuPVA+4HYN4yJ1ayjKq9E//JK0CdKYRhxwTINZzqDEAHdny9wSZEAcS3KxBMNdV8t
         M3XCp5tpnYqWbKg6OTvZTx9ufg/k7FFjdI3xLACTMX7ifIz+53fCjk+8L5C0zyBFQpGI
         ckXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729514339; x=1730119139;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zRMi/UaCb3Fk6BdW82ihmAT7XSEnqkfXgGS7TLc7snw=;
        b=r5aQE0FK6XXIQhWXX2jIjcy0K783k1QAa/9TH9rntjVS8Dhg1jy/sk9prfwWtB/0+L
         w+z3qT+Q74GiHzqg2NSS8NBBgzuh3nsud01gt9BtMsjlwF5GSO3jufVuhSV3CdrKxn8R
         +yIkwhagSB98uxKMe8DZKj3qR1JOmeX7uJuG7pgl2SjPsVx7I2kPTgZYqlYd6rqclatp
         xwQq6Uy47cHbKSFPvTUd+OzawAmsuQCN3LYhpyUshI3MJs7714wnWPSlzDGcK4V6JdVO
         k4Aizfu9ENLDbbISwiX+0XjDtDpaaCl8YcG8NL8hqM3INRia1EbUda4lHE/cP12oDTnk
         vmaQ==
X-Gm-Message-State: AOJu0YywCqWKg6dUgOACUle8Uj7GeMDuyqnsB+PUBdqv4gqjwBNqaanm
	JmUlMHyW0SmZy1xEWYuEUvDD7oWv5qeGEk5f/eWbjpyRlZc1R61JtpIsySdbroY=
X-Google-Smtp-Source: AGHT+IH9juMSIG2iguKfZx3NqHLerfkSW55tSNbMb0W5KqYxYxD5M3WZw1BhThz6CCcnZNFOuMvz/A==
X-Received: by 2002:a05:600c:4f10:b0:431:52cc:877a with SMTP id 5b1f17b1804b1-4316169151cmr117995835e9.34.1729514338855;
        Mon, 21 Oct 2024 05:38:58 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4316f5c3023sm56273955e9.32.2024.10.21.05.38.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 05:38:58 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 21 Oct 2024 14:38:53 +0200
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add Allegro
 MicroSystems, Inc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241021-topic-input-upstream-als31300-v2-1-36a4278a528e@linaro.org>
References: <20241021-topic-input-upstream-als31300-v2-0-36a4278a528e@linaro.org>
In-Reply-To: <20241021-topic-input-upstream-als31300-v2-0-36a4278a528e@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Cameron <jic23@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=912;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=AXp9R9SIchOWcn52tYxCXMRJHbP1cxB3uaJJrIOcnfc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnFktg6wmeN0HhMbLuPAyfB0BvLbO7+wG7j73hX+6j
 Kv37pP6JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZxZLYAAKCRB33NvayMhJ0RygD/
 4ySemz1wXhmIzuSCVJMzPeitEYoELuY0PGwq6XnuqmHKSj24cESK/RIZb5S+kAkJ0NOi/OnkqevPkp
 YzCXlave4yzhyRyoSDIGOP9XXfXGsJIM55gsBDBxpE53gBq88DcvM9YnaVnqinqep6xxPjVG8bcCs+
 IrHQK5xsLgnIrMj3oISStV7yRBhfl4qblQ76FxorPD5v4cixy0JYq41INYLvr71nhDpZjwArbggRxs
 WJnZoDLGIkt2orsLcbzeClVQZOyA9lEM33IJ6J4mGwO1hBcTW+Jjul6RrpIa3M3OupECXnjnp1DXhH
 FfJODpxfAxVxEsf14ReJYivM16xfkxrFZLnfp1FuJF+Tt5Yvd0CVVMY/XKexCPGGO/T+FeH91HHDbC
 koEXYPnqhMcRkRST0BrArFAxgmOqyUfdtA/8Bzluc/kv+bZ2hTOkK5gokT7mzbt2FgfyOKk62B5TIn
 9IR2Vb2xqXP1ELpYy2sjsHtCN07+tLoOjca1zNAeZl3RZJjEuSZ7AEC7tdQm5ZEG4Y7OMWMoQlNQnQ
 JAouasgLTJYkkjaH7HqHx39CUsNS/vzI3KImOy+CFhfNMOTmkRPMdU4CLtvXG9s0PQI3RhFGogGWlQ
 2OKiw4n7tZ1+KwkenM57a/BUOwZBVzg0NYnvP/4U56FqmDPqzeUWchqPPe7w==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Link: https://www.allegromicro.com/en/about-allegro
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 15877574a4172cbd9395bed531555cfb009ff010..b90355c2b45ada6e20335cd5bb2aace9410e4d3a 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -83,6 +83,8 @@ patternProperties:
     description: ALFA Network Inc.
   "^allegro,.*":
     description: Allegro DVT
+  "^allegromicro,.*":
+    description: Allegro MicroSystems, Inc.
   "^alliedvision,.*":
     description: Allied Vision Technologies GmbH
   "^allo,.*":

-- 
2.34.1


