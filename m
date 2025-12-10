Return-Path: <devicetree+bounces-245507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6A9CB19E6
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 02:44:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C374830F677C
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 01:43:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7671023536B;
	Wed, 10 Dec 2025 01:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="pcvSqt2n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B62233136
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 01:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765331025; cv=none; b=bVW+ZYjX1C2GZ8lPEKgstlz/I/sJIGU561W6TCn8b1N3pmRzqhrG741yWLzJOTeRF5Z/6UX/3NWNFQ2uA8vRq2bHRUHVN3NrpvV/3nvGnJSwrzK1BpEdrjshVlrw751Xs9qheOGu+nBrMILCW0chKc5LqG0lEAvlJ7XEWiNvcXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765331025; c=relaxed/simple;
	bh=i2fJ3oSJhw/ySwSUDxCvlBN2veS0HqsGf63LfSGR3lY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PVrIALLYdnatj7s4OZguTpZe51LYxANTThsn+oZFlXipeW5vAwxs15qLRlKtFBeo8NcrzhA9TnUINzNXwnejMFyQrnKKigxmou4SPZLSse9R0hYakaugpK7y9Jfr1pRsIBS3iKIpo/AE8ViExHe12RUw6qrawmpbaswASVRr8pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=pcvSqt2n; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-477563e28a3so3078285e9.1
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 17:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1765331022; x=1765935822; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FT1PuSSF/qNGP2vBlW8tIhEETokKmkXeWI2rZb/bUJo=;
        b=pcvSqt2nEgmPDOuZArN5hwfZIGgp4izgc2qvQU+/d5PaiW6z3sfTVwuB0OWNp74IQP
         pmVlM+tk+YaatGMoQrdhjiEyeba2Ha8rLSKP84qxQtfzWcWamN7umC8kbz0t+G1R/zQO
         roalzjG8LEe0kOAKpCQO+YAWMUp4+n87WNXQ25a2ncPyhEArTjO9Ok7m46o5skACnl8T
         5kDBhH6jqt2QisPyn0nuzYq5yFFVvcHa6Keo/Gl8ABVJk0MKotH0S9ZN4TDoRG9EkMAB
         fXveOV7dERT/0eL6WRgVQFQ3FItMm6uBZLOmEspHiVFQZi3XqgafGYs9eD1EHsi0UtN+
         j40Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765331022; x=1765935822;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FT1PuSSF/qNGP2vBlW8tIhEETokKmkXeWI2rZb/bUJo=;
        b=dG2h2fyyp0A9qioLNSPH1S7jWsiFknNCp9l7fLJH9i7QE83QOqJ+y4dqozoLlXiYgh
         ERWoYqQg3FOr8zO6r6OpbXKirzjSurPbkwnqNrCtoMhCh+rUT9gxl2ySPBNiJXWqz3He
         n5djsa5Qg/8AF4NMRl2SMgMZUmdFl69SqXF1ySXD9IOgqw562Forh6l5P5/91a2VTk0j
         OSOKLgXQze/he/a5xEGpZq8gCHxy9cphw5tDlQLaL36DNaMQfSZLEePo0QZ8KcOvT/LG
         dY9iFRIQYdPUTLt1fowoXJM6Gpz2P5MkZH0L8E4ACXYLKiaLemM9r1HTfIWo2AXqR4XP
         vNpw==
X-Forwarded-Encrypted: i=1; AJvYcCV9QWOpXvUbzs5WjYC2lZFauKh8pjjNds8SqnqkSFOC0hcW6wyyExfZlIqbGe0Z6HgmpDxkC1XMYJoO@vger.kernel.org
X-Gm-Message-State: AOJu0YwaNYdo/wUN0ckuxUP1rdOEEHVDVSTrFaj5cwptwAa64cHZ4pEt
	R+idp0eMhJgvhTfEY0tvGggOIOiRDxrodElNkL6nH269N6M3MtdgGKlouQAuzFN/N7c=
X-Gm-Gg: ASbGncv0xlf2JuWLS5XsDRujhi1Q6i2yz7Z8jWfS61+BAyEvMQjISTOPxxRf7eXdtu+
	r9+++QQampFspkhwHmZuRd84iTyi6YS0Ye3O70hWiW9XeUPFMJURiGpLyN4LZCb+JwIxELFxoIN
	AjU/jsI/vSPfxcIb2twCbPow46rEkcaYrwAGAcSLH5lxuoaGZnQv8bTQwI5feyUoOXB+H4gHWO9
	UJ0iL8+An9BpJxCbT6SyC6T9JCAr/ymyg3j18RVxBzP+gUA1iTF+P80pM6mVrz3To1zvDysz/w8
	e1AQmwPg+P9XbPJF1HncqGL5zTzkHxgVTuNAKKJXA1NPyQEJ8o+3U9YPw0wZiocrckwTw+8d6PH
	rbpYvE97g0TmhazbRifc0wvKbpIwsFw4ielC3XZeFCmxKWNXN14OgnQC5dGxDkd3jjiQI5ujqLb
	dm4aPY9FKlvrwczVtGerLqH7WEjljwmZD8Bn9aHom+RhWHOxLUtw==
X-Google-Smtp-Source: AGHT+IEBw/92gO6sgjRnYsvO6wdv2q1g/TUhOcjenuTs2Zh7ccxVbKZSVrtyYytk2eSeTYPplHLThA==
X-Received: by 2002:a05:600c:8596:b0:477:7588:c8cc with SMTP id 5b1f17b1804b1-47a7f91933fmr31692325e9.7.1765331021761;
        Tue, 09 Dec 2025 17:43:41 -0800 (PST)
Received: from [10.200.8.8] (p99249-ipoefx.ipoe.ocn.ne.jp. [153.246.134.248])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34a7000c984sm705234a91.6.2025.12.09.17.43.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 17:43:41 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 10 Dec 2025 10:43:25 +0900
Subject: [PATCH v4 1/9] dt-bindings: cpufreq: qcom-hw: document Milos
 CPUFREQ Hardware
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251210-sm7635-fp6-initial-v4-1-b05fddd8b45c@fairphone.com>
References: <20251210-sm7635-fp6-initial-v4-0-b05fddd8b45c@fairphone.com>
In-Reply-To: <20251210-sm7635-fp6-initial-v4-0-b05fddd8b45c@fairphone.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Vinod Koul <vkoul@kernel.org>, 
 Thomas Gleixner <tglx@linutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-crypto@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765331010; l=1206;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=i2fJ3oSJhw/ySwSUDxCvlBN2veS0HqsGf63LfSGR3lY=;
 b=B6fM0qV+kskrVmWrQrdWrdJegC4lscc5t5rGLEmjxKdgwtQcYnqbU6yJ2+Vpsji8OYmgZzx3Q
 zOxdKXnTJnFALGIximQ+/5iJfIDmy7CiRbk3LF8mMSrBGYwC2Pw+dYY
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the CPUFREQ Hardware on the Milos SoC.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
index 2d42fc3d8ef8..22eeaef14f55 100644
--- a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
+++ b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
@@ -35,6 +35,7 @@ properties:
       - description: v2 of CPUFREQ HW (EPSS)
         items:
           - enum:
+              - qcom,milos-cpufreq-epss
               - qcom,qcs8300-cpufreq-epss
               - qcom,qdu1000-cpufreq-epss
               - qcom,sa8255p-cpufreq-epss
@@ -169,6 +170,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,milos-cpufreq-epss
               - qcom,qcs8300-cpufreq-epss
               - qcom,sc7280-cpufreq-epss
               - qcom,sm8250-cpufreq-epss

-- 
2.52.0


