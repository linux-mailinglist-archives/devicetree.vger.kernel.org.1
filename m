Return-Path: <devicetree+bounces-207484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E217B2FB31
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 15:51:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5EBFAAA37C5
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 13:42:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50DF534DCDD;
	Thu, 21 Aug 2025 13:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HTuTfv4a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE6A13469E0
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 13:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755783460; cv=none; b=iwt+FFFKW90pWZUttR6f3S+zkP3FDP2NbmdUz2T76+UCiYmLE8esMLgUQY43UCbuJSB1NleI9NVQsRvoP9jlvwrCNOXeFp31HmuoXU2n6lDhdO8/SVwKkW+KC4lwdQ1qcArJfqbjTE4hUmbQ3bYOdyG4T8jtrCbSwJSUjP9Rdyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755783460; c=relaxed/simple;
	bh=CBHmMHHtxlm10+qeAMc8aYam3qMzlCk22/bbwKvrU/Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qN/QZ7mImtBYidyllTAB6xyHIVGm/VucGKrqrNG1XJZQOcx/IRunaLzJtlq/aLDW7ulq1fQC+y36RZq7a/QZtgNBPgtSVnX4zAjFU5TEW/w0khX2hBQ310i4JyBob6rmAgK2jt58SCaYfCkUh2r55JbFF1QMBQ6bKd7Y+SxbSKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HTuTfv4a; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3b9edf4cf6cso769932f8f.3
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 06:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755783457; x=1756388257; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9wtFtCOZAL2gp20b+62S3Bdf9VL3D2oi1QDgtuJyRDc=;
        b=HTuTfv4aYuoiKCF7QFp6APO4jjWv8C0iGerOsBbMUKfNPsftYpoy5Rv5CsA7L6kHBZ
         I67a8OoxBcrkF2NTiZq0y3sXHw+EHiQHNl2/RbOWzjuMYyoqISf7OTeKeFrvn3KbuC4k
         reHh3oycEblp1rJuUlEZ0Zek2mNcS8NZT7+znnllHNS9FFUYSbzhtaHSjTdHywL78kjB
         DyuksBuKYmeafhDb0oPD6iOq16BVHFg2sjRYFZa7wD4iQmRwL0BxPmNCTsPtPqdJjhYU
         qeBloqm1iC8VBm2IwbB4FQWGFxB/gbIem/6yDvB6xLC//jYBGslJxc8iMZo6ix7Z9Te5
         +pyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755783457; x=1756388257;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9wtFtCOZAL2gp20b+62S3Bdf9VL3D2oi1QDgtuJyRDc=;
        b=tqurqj6gKKXewrY+fK5eeV4NjdFR5lSFmDBQXQLGbwYid+3OclQr6LNjrmZsMYjvsf
         CRCx2E5/CK5xxYx/O7dN6PPIoqcfXlMEjDGw3SRk10W2NzrPWt/3c2YpJ0JzvNfyAhgC
         oQ0icgZ3K0NpTB6FQJx/MoPiphmbgkmn48o9lY4S/If7xZxkDGvUnv76i3a9jYQnjsai
         s1jfM9qs3ZiZdZmdIFP3wUgNMYDs2JrsaIkIP+WxlcEbRsmhxwyzK48HyGq3N70UtY/8
         m+s2NfVcLBNzR487kX8z3PGrlg1afhoenH2xuUr9WFEQQHBfMmdXjbJL4xxuSspAn2Ou
         p3vw==
X-Forwarded-Encrypted: i=1; AJvYcCUA88MYnVsltlkalyUlpJmBxwlHFterLT0cXSAYa0d4mqV4tLPYky7qvctuXv9tfkdvpCdCWKixfT8Y@vger.kernel.org
X-Gm-Message-State: AOJu0YxKk/STzfZANLTxfZs3FzC4nUqEAxPwpF3qiw6ZHsbUcn30Bvkh
	QOHeWAxup/GbqfP12vJjGT/+qv+0QORxSZAfpqBwH7Wuvzj2Hc/m0SpHxFCPJYKjSGk=
X-Gm-Gg: ASbGncteGrNfhKAiMrwW5H+49X+Qk0mF67wlFjkn28c7LoawLM7wBTzs5TLwoBbbjbU
	R+u0MvqWZsxCXaYaSTHa++6CO6zMIaTz3nZhJXIC4Z0p48zTmCNyZvJATb8OWkvLfzo0aJGN+QU
	KCmXWI9hnQTK073tyo6o0W5GiczpNeR/LjCXqRxrKkdCPY0A6nRtTMYpi6A1eA3HdPkAzO3vXf4
	d6vqN72YzihH7RXFvSq5ExBtaNTG4VrKb8HE6bX/+NZy1KPlO3eEl2G2bp4C9ZnQJg7Y38hehu6
	6wcJsnUeXmpr8n1TrKtThhBfwrEdy8ft6H8ifGRP0GpM8J1vpottvcPV5cvuq5px/vgQET4Ayhj
	B2izTNvE9M6ZxBvJoHXMPDepnf36ZAIK/VjizsxA3R2U=
X-Google-Smtp-Source: AGHT+IEy3el9dJ6T0DOmLFIF1DS7krS8sHRU2HPR3XquNbvcEO8/WCjXHebCzaRTbLThFau/+7Qbfw==
X-Received: by 2002:a05:6000:2c0e:b0:3c3:ae31:7189 with SMTP id ffacd0b85a97d-3c496f92d65mr1680240f8f.30.1755783456842;
        Thu, 21 Aug 2025 06:37:36 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4db2ab4asm28937605e9.8.2025.08.21.06.37.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 06:37:36 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 21 Aug 2025 15:37:25 +0200
Subject: [PATCH 06/14] arm64: dts: qcom: sm8650-hdk: Set up 4-lane DP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-topic-x1e80100-4lanes-v1-6-0b1a0d093cd5@linaro.org>
References: <20250821-topic-x1e80100-4lanes-v1-0-0b1a0d093cd5@linaro.org>
In-Reply-To: <20250821-topic-x1e80100-4lanes-v1-0-0b1a0d093cd5@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=732;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=CBHmMHHtxlm10+qeAMc8aYam3qMzlCk22/bbwKvrU/Y=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBopyEY7+kEh2F/gI63IFBpyGRw0jK386+oe1ZgDyRp
 n2S4b/uJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKchGAAKCRB33NvayMhJ0el6EA
 CSG3PPSjObo/BDCu7kBBD1blql+NMchwlsxrrPQ6IausuRpPfPht+qcQ232xPmejhpdBIckZmIjqcZ
 Uuk/RLkBB2vZaPElNgMqOaW4ETvpsmyGMRHwV0zf5xLuWW/8X0LEcbz61KRwLO2YNoPUZttTO4LBe/
 LdOXKslWGG/kvWVXwRUfy9s2W2elESOiQbYicuhV1MfMhRBglDeNrzOTGp/F2uiW0wxT/MjzA/mN04
 /iT9K1pUhRINB22SHBFtZoCifhHlgnTj31eSesWTDgqwle+ggoiheSa1aINuVL1GmPiiboGrFM39sR
 NppwgBq1kMQd3NlYbJ/TwDmP53g2EsjBZ+kqKPqArGaTywujl7cMifDG0iOSspMkSf596eOb5Slskw
 V/pd/vdXfT1esvre5smfjU8n9X0zxk8MtmLyBNiJmCtBwLjy05a7+gth+onA6WGhUFiaNGRtSwmTjU
 iRTKiiPko8HGWqaERtDkCVw28+e+goDUzJiGcgqZ8OW2VYYK3zBBsGp9wAVHTG2lT0eoMnZZvNstFO
 sGUdGUmP3mNs14DRxU5SOVvVFta+8HlThH7KcFAY0ytv1Lk0y0iXD/rHTwptL0pLXXjAKeO/NY9X30
 OszhzEQ8wXvgjKwKLwVGTtZHgerVyzSp0m/dwhc8SIUOoP6E9QzE6+r26Xww==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Allow up to 4 lanes for the DisplayPort link from the PHYs to the
controllers now the mode-switch events can reach the QMP Combo PHYs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650-hdk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
index a00da76a60620b998973cab189f12eeaa0a448fa..5029c8bfec5921074ae6e1171bc3685ed9407278 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
@@ -942,7 +942,7 @@ &mdss_dp0 {
 };
 
 &mdss_dp0_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 };
 
 &pcie0 {

-- 
2.34.1


