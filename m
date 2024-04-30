Return-Path: <devicetree+bounces-64060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 797068B7BC4
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 17:36:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2E10C1F25ED4
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 15:36:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFC3513D26D;
	Tue, 30 Apr 2024 15:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="A34xbSPz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0EA143735
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 15:35:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714491318; cv=none; b=Pr8WpzX7R6n+Ue0A2P/RAT54rDKjIUbcdXZ0SydPFauH/bK+XIgrN+kEhcBAMV07fsc39ai11zC7AJwe+Mvgo87mlm5ldhYtHEqHLV9HbpSiHjc0+29WrJ12MmqyZgj/bor8THMAFlA/FUircp5Z2cU0InfTZTaT7lylCUqEPso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714491318; c=relaxed/simple;
	bh=mwnvfTHxI+WM3M5fTYL+QVR5JSOESE1VGRRnr4BsCxU=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=ugkgAP/1g0LFRo9vttGlk7soZiSFwwywrIEYepJWrJYr9b8yFF6UVV3arM2N4R3Dxk4gk0LqLkKeH+R+OyvwgPM7MkLC8IzCI+tJ2z2u2UdW+2YWdEuUGMJagy553jqdqDf40ckcVBF4zg9hr3LTnpAfSt9nj0/JOZ247PSRTgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=A34xbSPz; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-41c1b75ca31so19110345e9.2
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 08:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1714491313; x=1715096113; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/hovZS8BlASlfNj4coZ1dMwGGp6FnU0h8KsE6yg3+Ow=;
        b=A34xbSPzyhC3ekLZQ/OnDkSUYjCDB0x4XUgBW5sSvyOL+rW8UJ5qU4bFcb5VcI2cLj
         WJEm0MoHKctCLFVZysJWsY6jRvj4c1WNaw6TswVBhYCM8FIcWQjD9LoYf/4dRoP3ljKu
         itrV6teltRmXoPx6jZrBM0jggFZpbcuIDRIVOmW306k4ut0SYZBVXfj//JQ0XMPYFgFX
         /YyhWfMDUPgtfwCRYvR9kN5ixEGXZ0P3+ZjaqLgwEWdEKPHc7Op4YnjebrdDbUBUJlJU
         K77rVaMycjvlNhJ0XIUaIHr4ZPFSALkhLiRXYjaNiOAGy20P4P3y/hlVg/0jigb4VUUw
         Td/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714491313; x=1715096113;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/hovZS8BlASlfNj4coZ1dMwGGp6FnU0h8KsE6yg3+Ow=;
        b=vTi6eOFGww4M/iPFOjbCsTzO+zCiXFx7AePCxbt/K0G0fvye08tgYAfJQ353KO7n6h
         eJsmgfXbQSs1TilmdBNjDNM8d+LGVUnNaEsv6C+zb6qjuA1grRfrejY08c5RmUphQzVP
         LxDPpTY4rKwVS4RoORa7e54hl+N7vCyFg/fW8OQSFSEgF8UxXdC0h1F39ZUzjk3bnxd4
         Vb4eAC0jgJLFWlcu+IfUnHj9ZhKHDUYeuDgQ554LA7RDIcRCzEUDEY0R9Q4km8QwfrhU
         XEYYNIG4W5ORYP01BCkv2DW67iU5L9WbpRog4GuMCY1H/KbzKs3cNhOtS3Io8oKR/xN5
         3tVQ==
X-Forwarded-Encrypted: i=1; AJvYcCWAiOk1J/NJFT3trsEEIRFJRSxEycBxIMGeMRo/QXits0c84KWZ5LU/3bUnhxDhIV2JAYQoFHPpbt/XQ5q8kpEfXmKux4ZBc6T/zQ==
X-Gm-Message-State: AOJu0Yx+/gOGT8kldE7lflHW1fAMFhRr3minVizUjdqPm+DhLLOKZtvK
	2gWqul+4DnE+7ZmpanENVU/DguosffbtrI2xspgAv+scj8xl+xw/MOmb815pQ2g=
X-Google-Smtp-Source: AGHT+IF+tKSffkAZmeUiRinjn6rsXwKDIGTeuYhVOb04lxk3/+aDTHyFXmft2n3g/qbqEthfB7KQAQ==
X-Received: by 2002:a05:600c:3b17:b0:41a:c592:64ff with SMTP id m23-20020a05600c3b1700b0041ac59264ffmr12659980wms.35.1714491313365;
        Tue, 30 Apr 2024 08:35:13 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id h13-20020a05600c314d00b0041ac4aafd3dsm27045674wmo.12.2024.04.30.08.35.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Apr 2024 08:35:13 -0700 (PDT)
Message-ID: <4f99f0a1-1fae-42cf-a8ea-0f859e9818b9@freebox.fr>
Date: Tue, 30 Apr 2024 17:30:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH v2 1/3] dt-bindings: media: add qcom,msm8998-venus
From: Marc Gonzalez <mgonzalez@freebox.fr>
To: Bjorn Andersson <andersson@kernel.org>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Bryan O Donoghue <bryan.odonoghue@linaro.org>
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 linux-media <linux-media@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <ff646f97-68e3-4fef-9b56-2bd98f0cbe7d@freebox.fr>
Content-Language: en-US
In-Reply-To: <ff646f97-68e3-4fef-9b56-2bd98f0cbe7d@freebox.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

msm8998 has the same video encode/decode accelerator as msm8996.

Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
---
 Documentation/devicetree/bindings/media/qcom,msm8996-venus.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,msm8996-venus.yaml b/Documentation/devicetree/bindings/media/qcom,msm8996-venus.yaml
index 3a4d817e544e2..56c16458e3bb4 100644
--- a/Documentation/devicetree/bindings/media/qcom,msm8996-venus.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,msm8996-venus.yaml
@@ -18,7 +18,9 @@ allOf:
 
 properties:
   compatible:
-    const: qcom,msm8996-venus
+    enum:
+      - qcom,msm8996-venus
+      - qcom,msm8998-venus
 
   power-domains:
     maxItems: 1
-- 
2.34.1


