Return-Path: <devicetree+bounces-207970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DC554B31401
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:49:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4B3701D22223
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:43:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1865C2F28F5;
	Fri, 22 Aug 2025 09:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="foxDDdEE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E199A2EDD70
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:39:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755855571; cv=none; b=XwG5eI2TUOOCbL3CyI2HNxfGKVa9URHNvIfTwTSEBM/b3HZyh89JFtiuG+NnlBzoUX2z3qa1R6243KyCTa2i2wVtRR/eFynrIaNQkg9PyjyGA4ZlW3Fft+NQ3rEMFli8TwA85fShbqo7qQsHGJ1gHtGAbikwaGJu9YhTZ8DHR20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755855571; c=relaxed/simple;
	bh=33V6vO8dY2xO/0hImlUa4h4K6tSixB5izhQ3YWGUhF4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y/FScN7rMi9k3VY+N8g500YTnxnyXEZ/7qfT/9saLjBibOSaeLbKsyYZFfGQ86rj7m4oHKW13d9MbfHMss0MUYt4o92CeFOz1qNjIxj+25/wNirVlNZfmbqaiZuh9A6U8Dc1SZ6ochgeYV2axRsoxlxFRMp8FzNH2+iy1lXqqLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=foxDDdEE; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3b9d41c1964so827232f8f.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755855564; x=1756460364; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FN3M1ELHzNZvl0HLZKgIMT8AvEW6zwa4QCuopr7VTZI=;
        b=foxDDdEEYRRT2jDrf7PAZ5+ed0ryMWWsmnLkKxIBJ4Vtklwp8ptjo1zquDrOv3zaGF
         7xy4HJPKcX5SVgSBgla6pzTpz2pKqIynufTRW4nPZDx//My3xl2ShEvBNNwQ4/sJHtaO
         FC2FBf1ZzM3R/PLN46UvJYP1Qu99tfLZbTyjGeYcEdLAfXeP5u0udtACDytReGxa9HBb
         /GaG0M/Ood2vYHzT1T8b44EoU+04rmLrZHatRm6rkqPZdNmWFiyUYRPpTheYBbutt96Y
         d/t4GkdnVgI0UplT9ezx63R4fnkuxdlEFCxIAaH56prZdzVmbVdPvfQ0v9igAto1Gt8Z
         O+Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755855564; x=1756460364;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FN3M1ELHzNZvl0HLZKgIMT8AvEW6zwa4QCuopr7VTZI=;
        b=c1b5ephyMJZDiQ9iqUMhGyBa7eE/ib+auTsRepM69a4/2oinCyGFaDYHuPDOFKViHN
         MC4MphHPjVUjRmguoXJa5Ul9U3vrBQJgrVv1X1TI05z3egZoK+Y5cSwbjfUIrkgpB7I/
         9CabVEsWVU1QbOBSRqgSGOE2ZF0HC9tzTdejZ0fSofwJ7p0KVXLbGiguVNoG5lkUXSku
         pENwKJDIm5KQ/09UAfY1TycY3a92axrWBQ1BBum/IndWKPVSU3V46MJVFGewZnTfAfh7
         nNo2X2Dn2mShuwf/prFQAurqeXufcme+yzPP2EJjw0mpK/OfRWHXdvGQmIQrNMyx+7np
         ChVA==
X-Forwarded-Encrypted: i=1; AJvYcCUPX43qJ9i1111aKj1yfJeTlI4h2PJtxLtgc5G8IgOUyYsSpVwjvsi/aPnzbNNI/kdagnyo88itOosI@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5DjbzpEhOoWN+EyYTqBgvZzChADKOHYWQJ32Ky2TsulqzIxIF
	iNz6mg7y1xOh8wV8WgcA7s9gp8qRcLZfU5RSgISs8ArSb9UCpDSF1sBPXppSlbEUunM=
X-Gm-Gg: ASbGncsUSjrGuq09u5iKQpO7pAqS0MDjyJOCG6UTynpZ0W4POBy0YFr8e/OpuZz7vl1
	K4ebGAI/+GHJxJpuehhxYbuLb6kgcnO1VC3Xd77pG23QNR/h5x7ygBZjM6m157kALwyfE+i0VmO
	8MX8hU2EIqsNncYrf3XI5+b5l5scaZMh2vmMqTZwKm4Ld0Te8qfblGD7C7JNgnU2k6wG/lJMi98
	evaJmGdsZz+GYpzmHBc7YGYSNa38FF7MH5Mkb+f8n6koypy6A9YOF2sEf0KwrdnjgZkPSBCjW7t
	w70jKQNBDNz2B15mzHtXZNregWYyaqo7cQQQTwdVrK1XnJXI/5CCbVCOqwijbMsw3kJmxaG0oXK
	AaZJase7KvW0F8RBZXeYkIwS/UW1wBT7cq0kWykEslIE=
X-Google-Smtp-Source: AGHT+IGJ68yT3uMWwjghe50nYfb6T/a/MnWwRI7s6dwWoQV0Xc0niE7+5hqohLZT08H6TqIsnjN1bQ==
X-Received: by 2002:a05:6000:1883:b0:3c0:4f30:acde with SMTP id ffacd0b85a97d-3c5dcff535cmr1600624f8f.55.1755855564318;
        Fri, 22 Aug 2025 02:39:24 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c684524163sm609890f8f.61.2025.08.22.02.39.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:39:23 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Aug 2025 11:39:16 +0200
Subject: [PATCH v2 04/16] arm64: dts: qcom: sm8550-hdk: Set up 4-lane DP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-topic-x1e80100-4lanes-v2-4-4b21372b1901@linaro.org>
References: <20250822-topic-x1e80100-4lanes-v2-0-4b21372b1901@linaro.org>
In-Reply-To: <20250822-topic-x1e80100-4lanes-v2-0-4b21372b1901@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=734;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=33V6vO8dY2xO/0hImlUa4h4K6tSixB5izhQ3YWGUhF4=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoqDrDwRAUGJaa81iL/NB2pGU41mbKbaUmf8aCkXET
 3wFcyPqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKg6wwAKCRB33NvayMhJ0VigD/
 0SyMp9yz1Jm/Js73SUZISi20pNqIqKhOzCEhDnVqOtep8ags2Ph147Clksqv+0u/4Z1OEnQ5zchHvb
 Sm4WXLBfldwSZMP1h7Xz/PrNSCujobPBmj3YFojt+bw4bHlVJJVLBlOEzwwGUnYTeoHF17BRTYr5Km
 j/VbQCT7Jj0v5lOamNjQAhDfQb6V7s5tHvULcZRebbe9e6VUjO3WPJRHYaG2whn7MgnqccakvmUkTh
 AhBkpz21nW2podAgXZQZ2CJ3OeSGNGZybfCVV3JqfO4QZUu/KN1WhR4kbqzw4lFQVjQPf/7WUxW1og
 YZle8rduQmpKQkB7MaU/kt4fB87IEMVmHy56+hsCgqCf4xEvRel8Ikfpz8+EUOEjIBiNp+iZZ82Ldj
 IhntBIcYSFZ4diCda/2yr2JlSdQz6JhiEIKg4zf5HNBzLzJeQtXB+2le9BHkJL48C044zDL7vobZgO
 l5oqzUc7r18FDgIztyCX3WXVzSCr2SItCrdbtG2wb+R5iau15IQWY32WBXJg4VvpcoW23oA06w/f65
 8HVwnPeS2zQ2WZx7UsmWhqBQTygzteV3MUjswW5v0/p7/muq644RCt9yv3Vyjw/R+7l4c0KWpANp1r
 Az2Vq411naGJ7h/z8q1IV/vkqF0n/aUCyI4GMDaG5LbI3oaxbaOYYQESnBjQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Allow up to 4 lanes for the DisplayPort link from the PHYs to the
controllers now the mode-switch events can reach the QMP Combo PHYs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-hdk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
index 9dfb248f9ab52b354453cf42c09d93bbee99214f..6c2c9514a7396a8b75ebe24585b47571c74ff568 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
@@ -1003,7 +1003,7 @@ &mdss_dp0 {
 };
 
 &mdss_dp0_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 };
 
 &pcie0 {

-- 
2.34.1


