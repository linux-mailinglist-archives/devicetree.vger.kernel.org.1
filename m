Return-Path: <devicetree+bounces-79345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B554914ECF
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 15:36:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 06C20282088
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 13:36:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E02251442F3;
	Mon, 24 Jun 2024 13:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nOpQ7G+Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B7013E40F
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 13:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719235966; cv=none; b=fSMYA8cIx/0lJLuOUm8euVO/ws8sPXUdzqMUJvMy+siovzDMMRVGOstSYX6xnnSoTgZg4iBxLtH1/xKhgbUsYrW9n2Wkia9xw+faDGDnoweas1nMO/q7S0lczRh9DnMiN0REMso+jUm0EtwGZE837MvXgGxo8wsN2RwXiyi608w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719235966; c=relaxed/simple;
	bh=jhU/6yDjyJYWGTqUWVg2XPphvb0dTAsi4lU39WOhL1g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ncicoavsmxpT+Fu1GDkPTMLPIF2wMrn8oPQzDDD0pZeQyZyum4KxYa/I8J1VLIayX9HZLwm0g4OwHWjuEhzsowPQ9VoleKCoVDCW15ndvi3utIg1g1CJl5TwYo4yRW5X4Rt+EZSevK349X9oLZn1XG2y9Q7F8mx3d2sFsvDtAmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nOpQ7G+Y; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-36279cf6414so3419668f8f.3
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 06:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719235962; x=1719840762; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kra9JGRpSxBVIKp7oQdD0C4Z5FgAQZxJk/v1WjpOlPA=;
        b=nOpQ7G+Y0pP4sseNbzsVHY5WADLLfEZWwOi/mK1H9Q4W2uPTMuvptIp5P3eguR6FmN
         JVVvQ/CplsN4fHJ2bbBedkhvG13XiwYKkmufuGkdBVZCZOH/u+STmy8D+W+XuhHxYf77
         V2wZqL89pd4ILElfuzliYSkjvuEXtTi/FDbEacoJ1lyrqzUEFKQ0RgsaOci7T/fAfTWT
         eaTwaJg5dMIU1CKezsBtwxsCiQSLXA9/q0k0HzrZIaDGqvIDnGMQSq5zoJrE4HRcypSE
         ezZ2bA1qjJ8Ixz1t97AKc2PirHGKMgKQDTAYoGuKk2VIOttMnZKtXgRMLCYlGJVBQ1Nl
         saBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719235962; x=1719840762;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kra9JGRpSxBVIKp7oQdD0C4Z5FgAQZxJk/v1WjpOlPA=;
        b=RQrFeviQVl6vQxcML8LO+UvFqRNsAMeL70odSHPQtwpBUYa06Lh/bZY7NkKIgzm5OF
         D2A8JZcsus+17+UEXSwhLqH3I56LqkhMUbZQhakWB6Qyyq9evrDXZS5Mh3VdoDRyyJUX
         VRB5Evl62XrD9KMOYYwbekPnsA9i0Y0THG9Qgd0l/tEHT9wIRukCOSV2apfSMWqg1mw6
         zV0J9PhIDzRSW01ku3KRm1V1PTZbSU2xPRjU6W5zCFa1YA2i5uhbq5RDEIV1+uugjY5/
         GpxYWMeF8uLhOpHVfDRlQv/0cUksDE6ctNEn16ueyTcZuVZQYR8eJx9VFBdtwtWGt4Rk
         /Y+g==
X-Forwarded-Encrypted: i=1; AJvYcCWKLGdxRVuEf7xLzHVdcguNKTQvfb+4KqlvXl1GfazN//eWdKPB0KPwIqHyQXbJPZxwtHmYOmijBvpDikrYNUS15tb8EL+MdFr9FQ==
X-Gm-Message-State: AOJu0YxnWd26hQOJ/FlsfNG4oZoa1K0ZScS+cGC1wHphikNdYiZi510r
	io0fMfn6ZoLG3YOu5a9DM9auDMzTZMTX+jpuGKrT8Uc8v5BTV6jS2NxJGwC1cH0=
X-Google-Smtp-Source: AGHT+IFA7uKwMTfiQPBkdwpc0xs8ewQ+M/u3QJXVAvmVIbz3/PLGvcbZAOXfy/0vtxit/Oc7MEZ//Q==
X-Received: by 2002:a5d:4343:0:b0:364:8568:f843 with SMTP id ffacd0b85a97d-366e964789cmr2759288f8f.59.1719235962693;
        Mon, 24 Jun 2024 06:32:42 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-366f7406f4dsm1888274f8f.114.2024.06.24.06.32.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jun 2024 06:32:41 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Date: Mon, 24 Jun 2024 14:32:37 +0100
Subject: [PATCH v2 2/3] dt-bindings: clock: Add x1e80100 LPASSCC reset
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240624-x1e-swr-reset-v2-2-8bc677fcfa64@linaro.org>
References: <20240624-x1e-swr-reset-v2-0-8bc677fcfa64@linaro.org>
In-Reply-To: <20240624-x1e-swr-reset-v2-0-8bc677fcfa64@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1066;
 i=srinivas.kandagatla@linaro.org; h=from:subject:message-id;
 bh=jhU/6yDjyJYWGTqUWVg2XPphvb0dTAsi4lU39WOhL1g=;
 b=owEBbQGS/pANAwAKAXqh/VnHNFU3AcsmYgBmeXV2k4wueejltctDBrRNGaqFefRMYFxjZosOB
 r4xN+/IXVSJATMEAAEKAB0WIQQi509axvzi9vce3Y16of1ZxzRVNwUCZnl1dgAKCRB6of1ZxzRV
 N6SlCAC8PVIrx5tWgC2TczSQCMfNV5osy7rmGwHAi9AzqEV1+dapVIZcanpu3roGaY5bDRdGL5W
 8wpY/G2WxpKj+u/5aj+yOnO39qQJH7L70kvWjtuoiF/ZcChFmvEPyiFDiKg7c4NXGDPHO9Njl7R
 4+97zbJLr9jOOcHGyzJ+4IU08TO9JrJxUoC9HFVDdpkglSOX37Q79vlv0VVM7EZc6XZfaoHQuQq
 CepzWZzCkRsB81jZTqKpRj5C4hpJrbn/d7r+790S7fzqydENzh5sT3kepywAbe4QwTJvz+jokXe
 Fa7xUZbMRmOZqy4Opf8QgTp8kK3hQH3YYRteyrWhp9XrR82g
X-Developer-Key: i=srinivas.kandagatla@linaro.org; a=openpgp;
 fpr=ED6472765AB36EC43B3EF97AD77E3FC0562560D6

X1E80100 LPASS (Low Power Audio Subsystem) clock controller provides reset
support when it is under the control of Q6DSP.

Add x1e80100 compatible to the existing sc8280xp as these reset
controllers have same reg layout and compatible.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,sc8280xp-lpasscc.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sc8280xp-lpasscc.yaml b/Documentation/devicetree/bindings/clock/qcom,sc8280xp-lpasscc.yaml
index c33bf4c5af7d..273d66e245c5 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sc8280xp-lpasscc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sc8280xp-lpasscc.yaml
@@ -25,6 +25,10 @@ properties:
       - items:
           - const: qcom,x1e80100-lpassaudiocc
           - const: qcom,sc8280xp-lpassaudiocc
+      - items:
+          - const: qcom,x1e80100-lpasscc
+          - const: qcom,sc8280xp-lpasscc
+
   reg:
     maxItems: 1
 

-- 
2.25.1


