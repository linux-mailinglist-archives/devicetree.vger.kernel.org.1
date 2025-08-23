Return-Path: <devicetree+bounces-208565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E4EB32ADD
	for <lists+devicetree@lfdr.de>; Sat, 23 Aug 2025 18:33:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D69B21BC71C0
	for <lists+devicetree@lfdr.de>; Sat, 23 Aug 2025 16:33:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C11D205502;
	Sat, 23 Aug 2025 16:33:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gTmAaLwk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F111BCA0E
	for <devicetree@vger.kernel.org>; Sat, 23 Aug 2025 16:33:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755966786; cv=none; b=pjLT80uvSHpoWehqRLcRgQKOoCM/z3wJDfdosd0oJLmvGww+zN2c46S3GfCYIa1UC1qimfh2LGVx3Bz09BiGvcJwbpiSBR08Vm3qptELkJuZC6k2y2JehE2E2Da9NXw8c5EaIsG2oIMKm+RY8Hz1yfcSRRR7yGzL32PL3Ox6Y1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755966786; c=relaxed/simple;
	bh=yxuy3oDJ08FCrS2YoJDAqGlTn0pBViRwW5im30kIBpM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TxmSYoP8QIakgCBtLJredy4SaumLe77v5Ualbwl6BgqFSOCv8CzPoqqgs4dXpDCHNsnZbmOuER4NEiOtu6SLi68tQTw6b1EmOje28//EAk9R4HF8dfeqxUdz3Tc38Z08sHJt0a9YoCpqlYSB42H6BVNKFbJgFN8aenqKo+AHX20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gTmAaLwk; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-6188b7895e9so470432a12.3
        for <devicetree@vger.kernel.org>; Sat, 23 Aug 2025 09:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755966783; x=1756571583; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=STNSS1T+h+xo04Oxr4E7Wd3mL52PcoQ8ncvgJmGARK0=;
        b=gTmAaLwkWChz+NX6/AOFlK0vuvp+a74V5sWhyHPqvM5tv4yH8tYvtG3mttcwjsu6s/
         NfI61cVvYu6XqF/2RqVPvG9H2cip78FS5PlZranI0sIsrgEkZb5wQI4bbjtg8hKPmmc1
         CwL4fPkmiVu5HQd0K66q7L+m91n04umS6SHHqm6Rag9I5izstfyYZrd2Hr+tJvwMoZBl
         sI58yG5Ri05ptDEiyFRblaQ37pRY9KBbN85r8Cm3L/dHoePYeHwO2l+eeE0CMa0DSR61
         aGBeh7MybHXgLd5pmaD0Df6Bxlj6NldvHLA9JpQuf0oMCwLJnL7knsr1ZYIKgXTBCWHN
         IbQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755966783; x=1756571583;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=STNSS1T+h+xo04Oxr4E7Wd3mL52PcoQ8ncvgJmGARK0=;
        b=RmrNvdTmPgkmY2dB19TL8Wfm0rtX7VoFcpFIvKT/ydvXDPTwqtteoAYSHEDuhekYcd
         sujQ0cJu4rlIXrYnGsXwgRjFRhrJ8DO4WQvN9t/nuQyGEFYVP12tlW10ZdmJyC+ji4vs
         rHmGxu28/eVfutOUfgZsAXTXTWw1k1wNhooBoraMU99+yOBO/v2V4OErTJFbzI3/YFZ4
         kmCC2QrywyD0DMrPtJj2EQmxvUfirwxW6Z51uZlVgLXjzzgayuTkbXtXubwqOfkwVcNX
         fqPNQd5uTeyw006q5nAFIFndYe3iO2lm67bNvoHCrx6RxGYLBPfUbXQfQl579abpyKKz
         TSgw==
X-Forwarded-Encrypted: i=1; AJvYcCX6pA8wWOK7cmSYlY04czHxfgx1KnwTPctt+Jmt4fro/FiDlnc8+yBsQEeZuqYOVcg+kdu6Rwr4Z3Or@vger.kernel.org
X-Gm-Message-State: AOJu0Ywx8VgvRCIKJNps4sNmnmoxVqY1xnUYoRY/qAEDspXDt7WCZhCB
	mrVn03ibp+TDQOBzv15DQeXmRKyvOmusx9FlFEFd4gAOR48JBOImjH49umycePyuHJY=
X-Gm-Gg: ASbGnct89kyzDFmkIllbXdJzgCudswN97zK6GN1teDN0nHC9R/AxgNtR8/iJwXP2EbH
	bPKAUCGalgFJshJhn2yS0MG2zig2yl5dmFTcT3xTIqpM51JMGVZkEYynbgzlj0Wv3VZr7pWbUl5
	bO6eSO2Bm2lcr27nH7D19anYYEl0Cw7TmuF1I+7lulnfylBsC8HaF1DjPfjTAmGckO+9BXzDx1n
	TzA3Tq6ZXN1PBmZrhQHPeLfTkmqGbmZHi0wM8LY7OuDGKopj8xxBvRCbSHzbXR8x1K4ts4WPIi9
	gSpqY0FB/wTnT+8arOvsbUrGxukzOOchhecgdoOre5vGcG6Qgsw0DcFwj6fgmqz8QNVCv1+TVhx
	jRV4Ob1/Vr5iYymLUqnxT1p2AcnYEB9b7PcDk5n3MxojL
X-Google-Smtp-Source: AGHT+IErPaYZ/R95hNRLUPhZsS2vquoXzXo7P0FirUWFb/QPx3CCkmkS9LQTJIIb4KUb+7m1ka+ieg==
X-Received: by 2002:a17:906:c116:b0:af9:6580:c34f with SMTP id a640c23a62f3a-afe2943e3a9mr312096366b.9.1755966782918;
        Sat, 23 Aug 2025 09:33:02 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afe492d8713sm197936366b.67.2025.08.23.09.33.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Aug 2025 09:33:02 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: interrupt-controller: marvell,cp110-icu: Document address-cells
Date: Sat, 23 Aug 2025 18:32:59 +0200
Message-ID: <20250823163258.49648-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1096; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=yxuy3oDJ08FCrS2YoJDAqGlTn0pBViRwW5im30kIBpM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoqe06CKqz7vUiMX/kbfeMtXcTP08L2/emP36Fu
 j85/zUeakuJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKntOgAKCRDBN2bmhouD
 14R+D/4pm/ejDJYyjI2JDvZXREerlPNO9m1qSmi0mMowWiIXkWWOWxKHtQDHCRn8bpYMQqvedoY
 5qT3c2EIqLROQg/54kSFJDSGDgy5gEDK08FL2uF27HXMD1PyMWaDEmyhpC5daRfjpf6H0dN0pMR
 abKotXNpGXBr8Xvvh2NPOoxRK0dp9e3Fzo971IhRUREJo7YDI1XiUpn7oqnMe6VAXePKsGF1Igi
 vMOP9Q+DZamATcJ3DyWEy+QeLHjXkSXisKlnTzdRssoHl4JoKTwPbEGwHFMYOWp2YlID7Of1mIP
 EP5EGdY/kwIms4ZzZcMN0lv4p/FrOMAS/rjvG7cqb7i+rd/IjlzscYYK6wkVb2hVoPSC+vuCl9L
 /QWz1TDq/Wd6nbkjd8QujodZRZVEMGTr5AypicnOVAfAg5Sc6z90vzaZDvs3ZrVJ49XgK8tnG+d
 eW3XRb1mMLfFg7xV1LR1tUF5ez2aqaHkj0DX1y9bbj0oZVsB3QIKWJ8Z7OU/ImL4eHFjDJhubuU
 jSgaH2lJFT2wfE+mNxa3BXQbm2TLjGTctZuyv2Z32MQZzbLt56IvWTofi263L05psauT4lOyawV
 HF/b1MGUXfYwKi8195yFpTQKxyx+v6vTdN/fMIggDQg5wkjgwCcfLEJlqweIZ9VW8+OpY5Su8q2 f91fdG/0GpnTbeQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The CP110 ICU children are interrupt controllers and can be referenced
in interrupt-map properties (e.g. in
arch/arm64/boot/dts/marvell/armada-cp11x.dtsi), thus the nodes should
have address-cells property.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

See
https://lore.kernel.org/linux-devicetree/175589786306.518460.17450425303264875357.robh@kernel.org/
for reference.
---
 .../bindings/interrupt-controller/marvell,cp110-icu.yaml       | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/marvell,cp110-icu.yaml b/Documentation/devicetree/bindings/interrupt-controller/marvell,cp110-icu.yaml
index 9d4f06f45372..ddfce217e119 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/marvell,cp110-icu.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/marvell,cp110-icu.yaml
@@ -49,6 +49,9 @@ patternProperties:
       reg:
         maxItems: 1
 
+      '#address-cells':
+        const: 0
+
       '#interrupt-cells':
         const: 2
 
-- 
2.48.1


