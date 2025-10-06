Return-Path: <devicetree+bounces-223914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 190CFBBEFD0
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 20:37:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 10A3E4F10A7
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 18:37:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E8032DE6FF;
	Mon,  6 Oct 2025 18:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vDDr1mH1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4B02D7387
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 18:37:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759775851; cv=none; b=XqF+29CsCeYhKFVBTKkEJG+d+H2xQlM6xyT7PlQT00MvW7saqmberiKGNzR9x0HCcJJbzqhhQJdA984ZYqlt7QqMk1hGp8Qcl+ywW+Xvau8qIcLBgDoqhMYv83G0ozUQomHEW3b1hxv3vMCXyg2WbuGeYHyUt1IIcbN/anyBziY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759775851; c=relaxed/simple;
	bh=Ab4sB+Gy9bByQ3KMwViBWKs43ahwrX4X82dPExLVPMs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RXdERV6QAVGirPx5BE/jdqgPC5qcD7DMe/9eH5nxeYVdcAvit95a81e07v9Ulv/E9OeC/L9AbDMVVS6Po1JL90vSVKe04gMQ+EvZFGnX8b/XaPuu9kZVJqipIK2AP/wk/Vf4Vngw/vLYg4AwUCfDEvZGLoKQR0HdRzC6FDXt2Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vDDr1mH1; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-46e33b260b9so51444785e9.2
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 11:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759775848; x=1760380648; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gsvdBaXnMo9ZV1t6Nz72zBmLT24LbwFczkk6xaDii9c=;
        b=vDDr1mH160NaU5i1wHtn/W4o71xCgILLPTtiGiiETnadwA8Fp0qNKUyY6FSqZB6RXj
         fJX87glsjikyW05LkJtGkRGVUS2JIlI/nSmUCWr/efk+m0NGuBIQjPy6yG55xGM64s0q
         lCxGg3ibXGUHFJ2T7GkR30ySLSPSn3D1SI+LxWf+wgJrtCoVXdpBis71zXFH2HAWdzex
         8YMov7SPUQWOmLtKNDNMIQt6hcM+dszVVWEPNznLdZKEqqIFigDL8ieFmsOl1uY0tZng
         fLhzJ6iDe0maE6cmYRvM8JTzxYV4pOQ0f1/Ymt5XHV9cO4czfS58M4zfcc0CZfhO3ybo
         w2ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759775848; x=1760380648;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gsvdBaXnMo9ZV1t6Nz72zBmLT24LbwFczkk6xaDii9c=;
        b=J9x5Foe9FVf4dk35k0urOAXKPhbwwnWHn6GcoFnrRffrFcgMmk01kOiNcHwTYZf1yl
         TS9t8KHoguj++L/jwLHNggKir5VOPWFGe+SfjUJsai1tBqxMwopiwM6lGibMkBVrcyHb
         AGXlOFnTO9xLYPvJsueZcWNlyjRO2+JW34e0CgdZ7Cge2kmkgxVpTGC98Qpmot9bmg51
         CAitAHXaWg3SVUmETOii4iWyZHZS8cyKoVZaN+rJDH+1TY/bFPleNIwQ6u8y5/+H8/yL
         ZN/7A+GLuQHcqlWfZaIiK+EkGjbc6EGrkfP4Jmm/vs3Jj3XNB02PyBshLiPmCBfsWoG5
         t51g==
X-Forwarded-Encrypted: i=1; AJvYcCXkgH0slDU+lqBWT+eB/X16cZxWaiPN5kw/b9EdeejZnI+2M+HCPXoaYC/Anw95tI3rjrvvoCjfabbk@vger.kernel.org
X-Gm-Message-State: AOJu0YyJNB7P5AyLp1WBGxCkuYeoPOLg1fcGAmbk7mNWOP277YbDLTGM
	9WJ7WNtCWoiFaqQdW02pnErKnlboS833+qUBPnJbRT1Zll7bqKKmXV/TfjpWNs607PKC8Ye31HI
	/f69+8WY=
X-Gm-Gg: ASbGncsrySyHWl7JcO+35A+00EMVFQWpBkc8m6maeNeZsWgYrBS+zEnxNKu/7L0gdQ2
	THNO0HDA1k6hwdApND1EOy7TCXRimoWjM7bGOMwADWFMPf5if6wKV+S7eUO3dl2L74h2MdLx8L4
	CmgcTWutVWhjyUJ9EPhuqWgmhk6HIA/j92Yhn1ltOYBVIv81pkSjJGBbh55QdDZ281np76BbokH
	a1UCEzVe1VQyJRhYwNF9YcammTLo4pvxv42xp7Jjj8ySfButJpVljdg5VAoEmpQFZzgbPIVjzL1
	Rhih45CSqe6Odl7xC7CW3bvpbtJOhMsmoJ5oSaXIYAVx/T1gE4SgJ96sR9iMRT0cY9mJgIVwVwi
	ra3mHN6sbF2ssyzxeSskP4eZU8au9pUMYh7Kq57HURjSBe/EBW46rTN0LL+Ly2vubKLfJh5i29G
	Q/AWW+3g==
X-Google-Smtp-Source: AGHT+IE8HtaEmxZKyVDB8Fe6Wo9kldEjY3g8C0S4sDI5wHSp5Y21Sr1sIfnUCeq+V+Crm5qgopPFpQ==
X-Received: by 2002:a05:600c:1389:b0:45d:f83b:96aa with SMTP id 5b1f17b1804b1-46e710fe329mr100728725e9.7.1759775847435;
        Mon, 06 Oct 2025 11:37:27 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e61a022d8sm254997085e9.12.2025.10.06.11.37.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 11:37:27 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 06 Oct 2025 20:37:15 +0200
Subject: [PATCH RFC 2/6] ASoC: dt-bindings: qcom,sm8250: Add clocks
 properties for I2S
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251006-topic-sm8x50-next-hdk-i2s-v1-2-184b15a87e0a@linaro.org>
References: <20251006-topic-sm8x50-next-hdk-i2s-v1-0-184b15a87e0a@linaro.org>
In-Reply-To: <20251006-topic-sm8x50-next-hdk-i2s-v1-0-184b15a87e0a@linaro.org>
To: Srinivas Kandagatla <srini@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1730;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Ab4sB+Gy9bByQ3KMwViBWKs43ahwrX4X82dPExLVPMs=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBo5AxiziWYdGMoTESpubxvDryul8gi4WsZdIme2OVK
 mPg8POuJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaOQMYgAKCRB33NvayMhJ0V5XD/
 0U+nmQUnhJSG3oRTPxiXV2QGarF9uJWYOrfOdSXphsNhz7y7bQ3eY1qfSiLGnVhl+OJw3y4ouKejZ4
 4uJoQFTFF9Ad5rubdEnEYB364qY2NdpNPh2N+SG/1PBtaDcVcnlQxktoai1Rsusy+D07XZ6vu+7POh
 xHK7kjGgOGwMxUogo/NLEbkj7zzwEBxV/ErNevylowH8t8rKNrEJ89TEkUh173dEiuBIzxd+3/O78O
 xOPNicQ7Y1V3vMmSDLQ/ET889xYD0s4EThQJAAphiK0YdqT4vqa8Jl4HmB8lERKG0Yd+9IQnOTa464
 a3jiJNIQtxF/96xzkuV229ZWohIldS6Hfn7TSTqOR6Yq3O20+V73hywffNJHbbut+FUhPjgwUIyLWF
 yQz1+kos4YKLhnpxN2L09chr/wjdgbqEGt7q18LSwtBKH560yBeO7sTc3XwJ2h+eOODItc3v6Ughaa
 SLcXq2c3NLbE0L0tv5cJGmsEWyosoiM1mRRlUB2/sKKqfvROAgzz3UYUcO2ODy9py7WtXBOqPr73vG
 GmpN24Bfs6pEXhyi3TuoxAuD6Y74q9jwu4OEqzGjw73mWqQmIPnVyR9MlQOMd+woXjqzz4v6XLE+fp
 VooVGucdgqNFcVW9wsycQbZVyzrnIVytFKQlTT/F4q42ne+dFaXWUTbMX4Og==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

In order to describe the block and master clock of each I2S bus, add
the first 5 I2S busses clock entries.

The names (primary, secondary, tertiarty, quaternary, quinary) uses
the LPASS clock naming which were used for a long time on Qualcomm
LPASS firmware interfaces.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/sound/qcom,sm8250.yaml         | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
index 8ac91625dce5ccba5c5f31748c36296b12fac1a6..fd0d7a7ddc7b363a66e1e7bd72c7290666efb511 100644
--- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
@@ -64,6 +64,24 @@ properties:
     $ref: /schemas/types.yaml#/definitions/string
     description: User visible long sound card name
 
+  clocks:
+    minItems: 2
+    maxItems: 10
+
+  clock-names:
+    minItems: 2
+    items:
+      - const: primary-mi2s    # Primary I2S Bit Clock
+      - const: primary-mclk    # Primary I2S Master Clock
+      - const: secondary-mi2s  # Secondary I2S Bit Clock
+      - const: secondary-mclk  # Secondary I2S Master Clock
+      - const: tertiary-mi2s   # Tertiary I2S Bit Clock
+      - const: tertiary-mclk   # Tertiary I2S Master Clock
+      - const: quaternary-mi2s # Quaternary I2S Bit Clock
+      - const: quaternary-mclk # Quaternary I2S Master Clock
+      - const: quinary-mi2s    # Quinary I2S Bit Clock
+      - const: quinary-mclk    # Quinary I2S Master Clock
+
 patternProperties:
   ".*-dai-link$":
     description:

-- 
2.34.1


