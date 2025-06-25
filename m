Return-Path: <devicetree+bounces-189439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B85CAE7CED
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:32:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DCD241708C8
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:32:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 795782E11BF;
	Wed, 25 Jun 2025 09:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="zHQ7NemL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7670A1C5D7D
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750843396; cv=none; b=gBnMzF/V13ElH8bNI9iUioMsUnJk5X7LoUdG7h/Xj3++IlAktliGk7T8BbG3T9VB8oHXh2WFFwenyf1q7cQs07tcqPGQHZiqbnj1Rl6kiZ6ZTfVudVGAfdg8w+n7MZq0GKwlyXBpPTZ10DRYuteRJ/+L0f0DrhF3xZolY+Tl4Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750843396; c=relaxed/simple;
	bh=ARurSlf9cAaTHf8riWzBxjObIWFoiMC+3sc1W+uG3PE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p1b20Z0d5kSo1oUqjTjtZo7uhutABpj5pbVj459VbQ2n4E3yx+LCVqcL5mUlJZMEbjGoHsQSz5E8uUT+Olg7PpeGW070q5YEf5HRBE9zTSk+dRUcTWRPMZN7Z48yVAYUpu/Gkv3dk4MTWyLk61Nux66kEUXxqeYIMuAFzOg7QF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=zHQ7NemL; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-acb5ec407b1so1057098566b.1
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750843391; x=1751448191; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vRCR5w6mxJl9kOE01aENY7pdoYD3D3UcZSaG9WSr1E8=;
        b=zHQ7NemLGprK16IYwX4KDdsaSR1xoql0BkQUEhOLjEFNqiJH2ehH9NJlelatqKtuqc
         n6KsdMZTxbi2WG6p/NkpmYRBGlHZGRGxndfK+FJJDi2YtRYYSN0Agh7xpu907WUWrmKc
         r6UC1flFHILWAmczFc2zDniHpQnw62H7mbVXqMsyA0AO59PElkOtND66Mk1ler8MPaM2
         PyLKFqe+zdo2guN+xISaaNupg8eFbhUzYnTC3rEd/ain5ys57ei5eYb3jwu2B+TIfj4N
         Df8mymFd/f+1u/BpYY3RgGyGNW29lnruzX/HX/OFo9JdwYoJliEVyZSmk0Zqoh7SSUhj
         RvEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750843391; x=1751448191;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vRCR5w6mxJl9kOE01aENY7pdoYD3D3UcZSaG9WSr1E8=;
        b=LsmhTtaJ2TJXcU6lPRi7kXG+mwy4YViA8hQjOPycusJwC1UIorGkb/f09908iIOB10
         B6e+lFChEAXPkSWNWFP0vCt9p8PzL1tqbVzqzvWE4TZYL6ewaodVYCFBk6CGBmeTT3ul
         WtzbIss8wAJvf6CVw+KH6CBN8lfNr6sQ30MgMxu/IxgMusrMdNhKV1uttNh9FeTN69+z
         FIm0cOJfc3k3i/5aa16UHHh2Ak7F8RZ1YF1RoD9UYaZGrkR6xcKcozPnlHOpGj9Q7WXY
         Yhn5+SDP/tZnC96ex3i32BDBjq0Ihy84UuKQb3e6xxYmYgRIjBxHQ+qAnbr7aLqjshpR
         sKdw==
X-Forwarded-Encrypted: i=1; AJvYcCXze0gi3bZIDKBugMh+C3OlgfKPOTIPAlygP+YfY73op3OWQZpu+8GIGrz2NNsqJL+0/rNuJyVjWE0E@vger.kernel.org
X-Gm-Message-State: AOJu0YxK8wIhJwlyobGgJrYTx4DwThFGNzexEMLlqmhMbC5gm+wa6+sc
	VTQGQgJDzVZvZVAEHOJz9a9xT4babfsUuRWInS8IquNLcaE9Rq5JnXNGbtALWu4bb+U=
X-Gm-Gg: ASbGncuxyXyfOCwPX7o1nFzjuQ0mTcutoC0unwGtW19HPIkcKPlg2/G8NpMrlbzQ8Tu
	ntF3C8kw2g9gu0MAg66FB6Odkmf90t0IX5SZ4jExyiQinnfb+HPbrera7IE4fZ0zPcQwI1E/T/8
	bSLUqDHWj0JkjKbbMAo0M1J1Dj4lyQUGUM3i5lOnjupUFnLFhsDdD3XqfH1Qark96ciBpWG9zS9
	VdvwP5KWYSIrcKaO4ReEDqnPUSFUUVCtA0MnHUp2ZuKQ21vKpSmWwj+1XqxNM2FVA52yY/iOdbe
	G54+GhItp7rPzZ/OssocS0dmlwC04KD9dO/5BkcwSjq/KuP2DDEp3OqIgVAOhHuBi49sGG0hJba
	3A5N6eIS7DYM8rumSfLeomacXDBcQQ7qA
X-Google-Smtp-Source: AGHT+IFCI10YnV57Cjp2sR+UxOV3FgvVKAqwit3yxRvSArMNgi+VmBiwj5MjTcE7iiy2oz3pOZCWRA==
X-Received: by 2002:a17:906:7953:b0:ae0:66e8:9dd9 with SMTP id a640c23a62f3a-ae0be90cffdmr205488666b.8.1750843391467;
        Wed, 25 Jun 2025 02:23:11 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0aaa0a854sm270277766b.68.2025.06.25.02.23.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:23:11 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:22:58 +0200
Subject: [PATCH 03/14] dt-bindings: crypto: qcom,prng: document SM7635
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-sm7635-fp6-initial-v1-3-d9cd322eac1b@fairphone.com>
References: <20250625-sm7635-fp6-initial-v1-0-d9cd322eac1b@fairphone.com>
In-Reply-To: <20250625-sm7635-fp6-initial-v1-0-d9cd322eac1b@fairphone.com>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Vinod Koul <vkoul@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Robert Marko <robimarko@gmail.com>, 
 Das Srinagesh <quic_gurus@quicinc.com>, 
 Thomas Gleixner <tglx@linutronix.de>, Jassi Brar <jassisinghbrar@gmail.com>, 
 Amit Kucheria <amitk@kernel.org>, Thara Gopinath <thara.gopinath@gmail.com>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-crypto@vger.kernel.org, dmaengine@vger.kernel.org, 
 linux-mmc@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750843387; l=870;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=ARurSlf9cAaTHf8riWzBxjObIWFoiMC+3sc1W+uG3PE=;
 b=s58rpWvVx4KEw/gWNPIbo8A+oAxUDMuwW9s3oTq9LY5OoYgLguK+Onhp3DmRNdPW9BsH3qKmf
 59mx2TZBcoYBb+w1bKOg/GL7crYXeJ4Hl7R0nL42pqDOwmT/DDnmfr5
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document SM7635 compatible for the True Random Number Generator.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/crypto/qcom,prng.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
index ed7e16bd11d33c16d0adf02c38419dbaee87ac48..c34a4267a0d5292e89f61c766c08e7071bd2ff09 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
@@ -25,6 +25,7 @@ properties:
               - qcom,sa8255p-trng
               - qcom,sa8775p-trng
               - qcom,sc7280-trng
+              - qcom,sm7635-trng
               - qcom,sm8450-trng
               - qcom,sm8550-trng
               - qcom,sm8650-trng

-- 
2.50.0


