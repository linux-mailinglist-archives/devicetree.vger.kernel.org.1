Return-Path: <devicetree+bounces-38547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 585718496F9
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 10:51:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8B14A1C21243
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 09:51:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42A4F12E6F;
	Mon,  5 Feb 2024 09:51:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="32YrcUlW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB7D12E68
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 09:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707126706; cv=none; b=e278GAs2sDrucjfMKNSMwPGMMZx4Y7t4PvxV1UcUiwSyUF30w5z+qDJjI/m4wDpkgEBDiQN3JaPbxuFFrzE3j3w/KjhVwwpoRPph1rH4iorzxtxJMQujzGjG9mnza8BUgJhADLIt5AxH4feb5JqI/JVYbiQ26xt/spiL1wSsa1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707126706; c=relaxed/simple;
	bh=U0lCGqAiVZ0MUuOj/Ntn5VO2EyqHJ4nwABWlgulqCiY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rohp3g+0Vgdz0quJGhc6IEcK58zVcf/6Er15Q55ZW1wq6dJWX28ExERQ9JMK5gAnXzdI3sqvIhLUy7sIjO9QAGKa6frjYJ5Q9+dOcvYnlGMdM58NOLqGSXyws8SDVFcTUWP5nSiyFndmoY2hT2PuReDiPFwQnKS+iuRysEOtKl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=32YrcUlW; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-40fc22f372cso31979625e9.1
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 01:51:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1707126703; x=1707731503; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hcJNhUjayAUsM5eRFTlrFt+tY9e56nsFDm4dq82UCu4=;
        b=32YrcUlW7Ij3a4VLzs4zZjxYbgKhlWZ3WftLkFRfhM/a+kk1yoInYGfgD5vRc4eEMK
         6cN6HLR63yn5Gxboze65U3FVGaQjXO8RTaHM60fgw5ykR+sjyahqqaH6V6ZxTK2L1JEr
         Gge5QNCmV0dHDCgp/rZAr7l4l+XfSlWCcZryBsjoEyc9fv5sca99d3SrD1BPcFHiUTjN
         +/sQW6EAZMGKxo4VZqZO3hhyhNu0qKLMAgjepQuLcZzP8MorDQ4Jlyw0mQa9CLXlEUXq
         zPI9GS+hBMgSsxxmlC8txKIXrdLkvxe16Tni78ZWEjAfCxhLvT7FFm6BaU9mWdd6NsLo
         AE7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707126703; x=1707731503;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hcJNhUjayAUsM5eRFTlrFt+tY9e56nsFDm4dq82UCu4=;
        b=kbSTj3bFxpIGzwV2Eu7kcE4bGgr3aT4TwCadFh/dPDcr0kKQBp61+eADfrk217StQz
         C718awOuJcFlhaCvzFB0s4mG+wI0NYwajMamrfMoKgrWNSbx3DCM1AoB8Gk4+qS6v7g2
         xt6Y1Jh8bGGVDgKJlWQ9Wo9ooMnNXVdvp4FJ62q+iulO7Stigq5tNOfGI6u0v3Iw1qS/
         dGwFfZFo+HfVfLkFPaRcmRUkitaBT2TV8z1XYLYK80u/KwUC2pT4y7QLaT7XFkbYagF/
         hriu1EKahcMeQ1woxPSDqPBotGepfUoHKxw2yQC8sVzvYhL/l6/3UkLCNv2syiYU0BVV
         ujNg==
X-Gm-Message-State: AOJu0Yz4GvriAHvZ62hSbrur4SdG+viBfSeTdjZfvp8G7PZUj/q2h8DD
	ysxrWSv2k1yDlXtEaMy1Is0NCpHhRgAm2VbH74jhDeXLUS6hRWB9kdUUJf/CEjk=
X-Google-Smtp-Source: AGHT+IGJNGXgGRhWnDTIl18B7S/gLRQzIqMumvtRsv75KcKlRhGNsSuINndQOQMWQ+KuXkotxfn2TA==
X-Received: by 2002:adf:f24c:0:b0:33b:1eba:e508 with SMTP id b12-20020adff24c000000b0033b1ebae508mr4972081wrp.71.1707126702772;
        Mon, 05 Feb 2024 01:51:42 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXc9+1NB88U+T/6dlXjXGsP33rUvOvn6ogYbLwqcOgZkYaZW/vifSBP0GN7opXWwfpPYIy0RDQSpRu2C9wzMjuQjDWlWpQQ0NZKGx4A0k+lns3zvhbXeTQ2n2uQp01gy3drOt3+CtDJmT8rEEQPhenuvBjv1nmPj+UgTpjF4ppWWlKvOqTvnQuCg8dtdQRfKHkRivBriLpo/ESwfwnLLKNC+6j1sIH2fjlWATZ2PDCy65cWMSI1vODG4+5fJLi+YzuAOC31LUCnvZMROxcs2lSvIY/HnqKymNaKw3ZomrMRluSd5SvCiJwAmUttuXcGsc8YBshM2A90A/Dtyc2OmHRJdoi2v8TvjLZ/MlHI91t/lcVyVcJhyIEnYmbCkCy3/9Y09K1NmzObwj3IfUj851G3HGwxFN1KYXuvhmhrjhomurljVq5ygz6iJVYlb/HRgi1/kwoft7Dfk40hQ/RE+LJg5XX+S76XuKRevTGPpfGa29MTH1SGf1Jo9VJ28VV9/bIBKIZK4p0lxZIeAuA457SspAsL
Received: from otso.luca.vpn.lucaweiss.eu ([2a02:a03f:6aef:6800:2f37:ce90:b91c:e85a])
        by smtp.gmail.com with ESMTPSA id n12-20020a5d400c000000b0033b3c2e73e2sm2278283wrp.113.2024.02.05.01.51.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Feb 2024 01:51:41 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 05 Feb 2024 10:51:38 +0100
Subject: [PATCH 1/3] dt-bindings: mfd: qcom,spmi-pmic: Add pbs to SPMI
 device types
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240205-pmi632-ppg-v1-1-e236c95a2099@fairphone.com>
References: <20240205-pmi632-ppg-v1-0-e236c95a2099@fairphone.com>
In-Reply-To: <20240205-pmi632-ppg-v1-0-e236c95a2099@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4

Add the PBS (Programmable Boot Sequencer) to the list of devices.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index 8103fb61a16c..b7f01cbb8fff 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -160,6 +160,10 @@ patternProperties:
     type: object
     $ref: /schemas/nvmem/qcom,spmi-sdam.yaml#
 
+  "^pbs@[0-9a-f]+$":
+    type: object
+    $ref: /schemas/soc/qcom/qcom,pbs.yaml#
+
   "phy@[0-9a-f]+$":
     type: object
     $ref: /schemas/phy/qcom,snps-eusb2-repeater.yaml#

-- 
2.43.0


