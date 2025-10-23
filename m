Return-Path: <devicetree+bounces-230235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CC6C00C90
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:37:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 757763B1248
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 11:33:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B424630DD39;
	Thu, 23 Oct 2025 11:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="4fktc6SY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D97602C325C
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761219168; cv=none; b=SbOjXkqH+m/g82l+GJpGPOaohO8g8foDQQaEndx+FC72dUPmyAjvTlp6G+weSELjdmyU9rdKG0/6ZRh90H3bP/jMANve+Fr0YWBID7bS/AgeU+bOwC1Fy04h/NkyNAFvrHIeghHisZGMtwG1JvK+AmC88VoRoLPrUjch5TU4qWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761219168; c=relaxed/simple;
	bh=3vO33C4prgEUuBZnqq5YTa/P4+mnJCFLtkGeOswFDlk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ixece0+69/JsBuQdLxOObRIzL/+UJ5+95l2UVP5su3nkosTx2hbgfRcLD+0Lr4C6NLpIDngBG863BG3hIgBns7B4HlcsPXOOUlV2IVHRQObCEjDINy2hOx8vorJp/5CfMLLXokY2DrPALa1HWgypD1RgaWPfaqN8XCcpQ04hS4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=4fktc6SY; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b6d402422c2so171701466b.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1761219165; x=1761823965; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qX6cAic9M14UMmPECgjQFR7mMda0Cr1cGqbVwyyhOK8=;
        b=4fktc6SYNOhO1951KVSv9Yyv1Slytq70Km0JZtnk8as3vXR7bV/VQB3ReVus+CrePe
         MnthU/NN58Qqpp4kMaoj5ViobTcFfo6YGo3g3Fq+3B2RIayduvJX1Ik6cn1pBS+p5Vnh
         ahOpaQa7VlQF8xsgCyUaUBWUqwy7ZziA29HP02vBr+Er+YjrYG/nOB/BbN4jBvpKjQX3
         mU2uoInOz9Q5fkQGH2V3rQ1UO6Ts49esCIHEJ9Fw8C2JV1BElU3kxE6KCGIaoHTJ3T0t
         TX/vEhqKJWQLLSzKigQgxqB+Ing0cQsqZ2t4Pd1XbgNxdHTBCLwz06ZA3tGJRksN1SKl
         xnXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761219165; x=1761823965;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qX6cAic9M14UMmPECgjQFR7mMda0Cr1cGqbVwyyhOK8=;
        b=nsqlCw1jdTFQQAe0MHeIWkQgDU0aKL8Aoh6g30phPbIBRc9ZJSw79lsY6dWQwGk7sq
         8cC5qhyK+6YDaM6sJGmrYpqzUaiXMJPVizU/E1TCpDDe6WG4thE5/7txw0CywWJSKgWO
         fyUOPmb1nX/uL1YkpYQbphPeZObmfCpXwLacqK0owCsaTsm90nUIpWw4I/nScJ9yyGzr
         Yj6r4JsDZC5EFbM8BXW08R/j4u6kWLryHS+WrjMBdSAw4aiGL9dVzZxdL8LsvEI7xAZV
         BGLUpIZSCrZ9rMAUwzPyQz9cgdrtN3K2gmJZSwS9Z9gi8F6SGBui/ZABvT+Pjuq9Dsuz
         9ikA==
X-Forwarded-Encrypted: i=1; AJvYcCWaG/dYeGiN6rKa2/XvHHMKnozlFPVi53fsvAZXdyOQCzuQqxejVfDj5kFytAGCe8rrtgF6VzAp1QZS@vger.kernel.org
X-Gm-Message-State: AOJu0YwTqonIy1YjAhgMN0a+ZHz7BzYCth4TkXzkFwhfMqi4+M1C5DiV
	yn6z2PHqA1kRuWlmHn1RaRHpB54IcISNa3iHDJyft9NSpdW8boyGZE/eIvd80BVJQSU=
X-Gm-Gg: ASbGnculXAV9s4l1wvtU7J9X4Xswd2XCLXOlftitT3kl/N3AZjV/+b4qaJ80MENhj/A
	ggSlPH0hHDzjP+DR6KQLeGmPeF109QSEDxxGWj1dy9HwYBJbyEU/V6Cvtl5n+2HRWNf978bHELT
	JBavlmYD5SaAdB0q7zQEBWageZ6iZflLBYEgSocWhmyg9R2htlNWytmBo7q2ymzl4kJEYeSCKjy
	m7g/R74R0D4oST8EmB9zbSRIND4kLvDnneR71NjGMDO+R0dCal4Zl6BJXW+F3+W05ublDphnoVb
	UrflyX8JI/AAMitQib5RXiBV/52nxV76xWABOTJ8pE1X7IljBAd889zxoBfGZNYbw4FevQdyCVr
	Y90CKhMDoEGG6XYvhyEIAHGRABd2YPb5kJJxS+lPN15G8E/aTbQbzMSzc6T/zywvYLXa7FvcLAY
	XMzSw0q7AUViLiv/n3a28twdljxgGTz7IZ33QqF5BJxrUnrg==
X-Google-Smtp-Source: AGHT+IFeMmUZAb8+BZ7S/5mq8JGmfL733kMk+/2+3OfwZ4fzPVXJfBgAIEpqIhkY0LDxauZHEkWl1Q==
X-Received: by 2002:a17:907:d1d:b0:b3a:ecc1:7774 with SMTP id a640c23a62f3a-b64742414a1mr3091546566b.53.1761219165148;
        Thu, 23 Oct 2025 04:32:45 -0700 (PDT)
Received: from [192.168.178.36] (046124199085.public.t-mobile.at. [46.124.199.85])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d51471ef6sm183087866b.72.2025.10.23.04.32.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 04:32:44 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Thu, 23 Oct 2025 13:32:26 +0200
Subject: [PATCH v3 2/3] dt-bindings: mfd: qcom-spmi-pmic: Document PM7550
 PMIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251023-sm7635-pmxr2230-v3-2-f70466c030fe@fairphone.com>
References: <20251023-sm7635-pmxr2230-v3-0-f70466c030fe@fairphone.com>
In-Reply-To: <20251023-sm7635-pmxr2230-v3-0-f70466c030fe@fairphone.com>
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Fenglin Wu <quic_fenglinw@quicinc.com>, 
 Stephen Boyd <sboyd@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-leds@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-gpio@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761219151; l=796;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=3vO33C4prgEUuBZnqq5YTa/P4+mnJCFLtkGeOswFDlk=;
 b=76fW4spLjf7RNyBrxeu194Jp/rr6uFxjDGE6H0VOOQxTM9LtGH9CG6F+pNst1snLtJ/a4iDDO
 IO3Be+jDDWXAFlx4KWtCm/znytapYUj60QEsAtNN3r1MEo2cnVwYPiX
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the compatible string for the PM7550 PMIC.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index 078a6886f8b1..d0c54ed6df38 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -43,6 +43,7 @@ properties:
           - qcom,pm7250b
           - qcom,pm7550ba
           - qcom,pm7325
+          - qcom,pm7550
           - qcom,pm8004
           - qcom,pm8005
           - qcom,pm8009

-- 
2.51.1


