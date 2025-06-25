Return-Path: <devicetree+bounces-189424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 090B9AE7C9B
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:25:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E5AFF7B5B7C
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:23:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C3692BFC74;
	Wed, 25 Jun 2025 09:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="uNaTUOOR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7014829B218
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:18:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750843102; cv=none; b=PU8aBUhiJztc4dYwI40hqs8QmM17OyPWcVpnkAxbRbfc3nWbJw4ZFo5+gNf7CqJ4+N6ThdwZny1xOsdCHjSIk8MZyEGYxCmZ+aeeMHvYJg7lv0aN8ZBFsZB00nKEl6iMxAa2OOT2W6iTEIg3T6QeWEvDhCpGcNKU7f4vQQuKLlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750843102; c=relaxed/simple;
	bh=FFyi2TTwWD+QPai6pEi4JyevuUJcOl9Vi7QGCJ3xztw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kFmEHTKcqGmv8bQmfKw+x8ivnZ0L46RTQ+VGOz1z7lfe6/jA1/OMyfg3Jew1KZmK5d0H00MQMQR44CucPlDbQ6yo8IK9RPY50yATwZVyjABxZWQxCZ2gUfn3dfGW/h1V5z6lvD9ul2zmbPoblthcc72Gz1CTfbr0iGj0pniwDTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=uNaTUOOR; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ae0b6532345so136986766b.1
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750843097; x=1751447897; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f2RSqLPZu23r28/yDYeK3iwSZkpIKmCaKnn2t8cvfxc=;
        b=uNaTUOORyt699w1SXS1CH76sfqNrxw8t2G721zWMKUg64cNvebxu8wBiaK9pjYZ6CX
         7lVBTaouM/NXE8f/sQlh5Xw85+kNIXy7GYIT9Zchphrn0nLsMCEPzXM165nAs6xQ66UF
         r1ZNDkNksoQmdfe1osabRWzW99/lY2gMcJPHcTptlVl3GUZzuaHslSTiWLIDvYYx/fM9
         0jeo95qSbmyKGmHY9jSCZxvPn8BAbvfMKLuW5R7cLZF8ZeNjUUhZ0g8pCNujn60xrX4r
         YJqLKA8qJ0U9+VHa4fgyIqtb0O25gne9FKzEMg1hi/+ZhgyhfZVgxi7WObg7ojCHwb+f
         aZ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750843097; x=1751447897;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f2RSqLPZu23r28/yDYeK3iwSZkpIKmCaKnn2t8cvfxc=;
        b=cXNNdouzRWAGovm3xWOQ+eQ69+1rl8OHEqq+TozOmt/glpv1UvnB9xbg1sf0O42yBb
         AlUaZU7EJ/QZn2T8PzTY9ZTMygPsIDYuu1I3Yxf+HrbWAAzj6mB77S64ly05a5UcJV0p
         nATao1owkDKE4aY4NaztKOrKjcPaegS/tEIu3dWV/omzSGeiriT0tb+JCdzt+y2UQTuD
         tnqt7wTj54sBirvHFG6T6uwMnMy6Tea30/dikHmm9LbShiegXDQZVt5hEDfYRoIaKVfw
         YkIYAawdOog/Nm4qnvqlTY2JZqfcdKhsDB5GWsMp7eFocdLD4eGBrf0DHq2dzfEEub8J
         vpTg==
X-Forwarded-Encrypted: i=1; AJvYcCUpjkHZ7eP0JpSbxtfeXxtm7usbDPHjM9EIXWTaJcxBCH1Xw7RmPwIC7jAS4iEDD/jTkfaBcoHGwBEj@vger.kernel.org
X-Gm-Message-State: AOJu0YwyZNsmYbreFuyK1EbBJVFPuomY8Vp778Uh7B6l1CXcjOFxVXgg
	pcfx03eq0y5u1MDTfRonjUhzdIRGaj/Q+lSrb3WOrMzcQHFa+UqtpyJIIN4n484h6TE=
X-Gm-Gg: ASbGncsYO4KGqsGk6TYk0wMAp39DU82g478KxVXZTYQQRLQFiY9ffQg5bcfhBq7Zeh4
	okd0fn0Mtj4aNVEa12gZeSCI+ImN7uqIeAnfk6y2RxgnO5Ptd9irLkwJuuHDyS6uyIXVJS2WYYy
	Pp2eZJQTw8Azc4oqLC7bcPnCbEwcRA5arBoSsOx+npeTufUEMQEuFCq36m18SEldRIqhnZES9n/
	vpdbhjLF54xO6plAsRIEbwn3C37Job5iBNFNpbrBmV4DyTGvSvR74jY05RQQVgZymXqkLtQ2SbA
	wZ0OGjK16IaE82zv/d1rH0mMIBM7LrFNCfktleInGGBYrax1ldr8jHoRoqAMSzKoATtWkvoVwEY
	//XnsWO+uOHrGDXWVpaEG0l6ZYbxw4/+5
X-Google-Smtp-Source: AGHT+IGYD0rC/aYIVmAXapkPflNDUng9xnrOy/PP1ovsYL3Pr4WT+utJBYAgP6x9+IrqYJvL1om8Hg==
X-Received: by 2002:a17:907:d860:b0:ae0:c4e3:e2e8 with SMTP id a640c23a62f3a-ae0c4e3ed50mr133302166b.28.1750843096666;
        Wed, 25 Jun 2025 02:18:16 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054209c85sm1009952366b.160.2025.06.25.02.18.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:18:16 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:18:02 +0200
Subject: [PATCH 1/4] dt-bindings: mfd: qcom,spmi-pmic: Document PMIV0104
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-sm7635-pmiv0104-v1-1-68d287c4b630@fairphone.com>
References: <20250625-sm7635-pmiv0104-v1-0-68d287c4b630@fairphone.com>
In-Reply-To: <20250625-sm7635-pmiv0104-v1-0-68d287c4b630@fairphone.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750843094; l=829;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=FFyi2TTwWD+QPai6pEi4JyevuUJcOl9Vi7QGCJ3xztw=;
 b=cfWhIW16u8AU3opUGXPjIMEz+f97knPAZaejc4RLCxX25LbhEo2hfOqSlizWFGlJWr1mlUCuK
 Lvms8zLfWujAlr9MWTSzk/YxpC+JHEZuQYOZF2Sbd/FZsDPal1KKBdI
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add the PMIV0104 PMIC which is found on e.g. boards with SM7635 SoCs.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index 078a6886f8b1e9ceb2187e988ce7c9514ff6dc2c..c416f25c90d6d9f8404947d1fadef91cf664e666 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -84,6 +84,7 @@ properties:
           - qcom,pmi8994
           - qcom,pmi8998
           - qcom,pmih0108
+          - qcom,pmiv0104
           - qcom,pmk8002
           - qcom,pmk8350
           - qcom,pmk8550

-- 
2.50.0


