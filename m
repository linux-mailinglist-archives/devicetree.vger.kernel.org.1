Return-Path: <devicetree+bounces-46860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 975BE86B042
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 14:27:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 279D928A82B
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 13:27:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 913AD14EFC1;
	Wed, 28 Feb 2024 13:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="C2utC4WR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF0BD14AD28
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 13:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709126839; cv=none; b=n3Wg/LCslF1bDVNbI6qsBVttq85Up7qW4gMb42xGEQWiLuBz6X/lY2bGpTeYCOm8nTPbFI1lph7WdzxwPKS4m/0UcjitWV49aao18mYYqRNPFWO+yYSehb/5glK811Az7A4LWmQ+ZpZUQvUyz1pzQib8gLa71lLWc4MqbVLBZ6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709126839; c=relaxed/simple;
	bh=6qkae6OUAl8jFEPYN6gLtzuHKLd7G9FT70ngn60ogBI=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=VCTvgnLJGy3Mnb3//QiRW0IgYV8cCAg0qNrYSO2+UEWKg+zfhIEIQhowlB3OjYvC+oQAOP4SqJgw1bw6akeOMpBJmyt7qxN3fKGYQOHNwFfgUoanT941z7wuWkTtJLGlLYSbuif0jzUrSuZ4YupBdSTFgW+0HycHQSkdOK0or7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=C2utC4WR; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a3e891b5e4eso713065066b.0
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 05:27:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1709126835; x=1709731635; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OlBHlzSiEBPWtuxmFn9XxBU1Hq+/oIayqPmB/zamnCU=;
        b=C2utC4WR8Pr7u23rVYKPKQ7UIqZu6rXd6UcqMe0oyElZmmHGIJbt55G0fhe35nw0bF
         HKlLjQwRu+gA9aqumMUXWeHaFj/B+5ObAQqe4u9lHaesMi1bJVOLRCh4plbu1uPUuxUu
         5fukNOPfu4JXUG9TabxVVjpFe6bsYN/DE5U7PQmsPdvTKq3u/f0acZm2I818zk3zNRsn
         0pXftFmqJN5G7+Rk9Up5CdOKXvZBCmQjeTFF5ZXil0NLhezZisp2f526+YQish4wHrfd
         d3+BEwamaZUyeav9lLEdpTGboU1kYkF1xu9ALaNxWXdTTeM1ls7JRL2epNLOiAxRbdGb
         PUAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709126835; x=1709731635;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OlBHlzSiEBPWtuxmFn9XxBU1Hq+/oIayqPmB/zamnCU=;
        b=Len6J2mHy96X5ZjPtkOmbvkMsxoNB3yCxqzDeb2SGK0dvq3CLVwRf2v4SlJWfkTR9/
         VUcV0SEfigWxQYymwrx4SLW8OAEpv9xa8XEdIX4ijiaW3FI5J6a7q9u2r0FetzkfPsVf
         S4o4XLWfQJkHFLuAIItw1DeGGYv9/kAkS4S+F7FTGmyjRzk7QLPGmNoSXoYqQ7kzVP/L
         FMIG3i34zXllMIDe+Q3nAxkmmRqegRllx/sGZnwlkS3xpfnZfeJGlw5uMZPoQwgblPwC
         DnLORPMFCvxnVdFDxa2e51SHUPwIWzmtsfTA4M7M5TRjs8dGo4b4n2SaT8RM7xY64wXE
         3bng==
X-Forwarded-Encrypted: i=1; AJvYcCW4MytVmEfrdaM2xwm6f/Tcj1GBxXoJm/owFU6mYxbIB3WA58731gTuoLijoNzlZE2WOGrmxnpk1lVKY/WkgP8uCkZpyV6Q3QATDQ==
X-Gm-Message-State: AOJu0Yw+T2I0GyD8oeXcflqvylZyVgVq6Yz7qbwCrHktaj2fWPU/EwEP
	8YvQYNGxUzsROjHIHaRhYLW7pucID2Hmqhddwaq0BmyZ05j38QAVq6Creczz7yU=
X-Google-Smtp-Source: AGHT+IF4ieAz5emSpqpP0jXkK0dEP3gJWfciU/k+bcViFKx5CN5o4HyJySr/DIl9xf+wQmFbTG+lzw==
X-Received: by 2002:a17:906:fac5:b0:a43:a7:c67b with SMTP id lu5-20020a170906fac500b00a4300a7c67bmr7566322ejb.28.1709126835143;
        Wed, 28 Feb 2024 05:27:15 -0800 (PST)
Received: from ?IPV6:2a02:8428:2a4:1a01:6dfa:263f:dd7e:9456? ([2a02:8428:2a4:1a01:6dfa:263f:dd7e:9456])
        by smtp.gmail.com with ESMTPSA id s6-20020a1709060c0600b00a42e4b5ab00sm1839417ejf.41.2024.02.28.05.27.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Feb 2024 05:27:14 -0800 (PST)
Message-ID: <b8de96c7-cbb6-4a09-a4d4-2c11b3ab3e01@freebox.fr>
Date: Wed, 28 Feb 2024 14:24:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH 1/2] dt-bindings: net: wireless: ath10k: add
 qcom,no-msa-ready-indicator prop
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
To: Kalle Valo <kvalo@kernel.org>, Jeff Johnson <quic_jjohnson@quicinc.com>,
 ath10k <ath10k@lists.infradead.org>
Cc: wireless <linux-wireless@vger.kernel.org>, DT
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <14daa98e-7fd3-4ebb-87bb-5d2c1fba679f@freebox.fr>
In-Reply-To: <14daa98e-7fd3-4ebb-87bb-5d2c1fba679f@freebox.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

The driver waits for this indicator before proceeding,
yet some WCNSS firmwares apparently do not send it.
On those devices, it seems safe to ignore the indicator,
and continue loading the firmware.

Signed-off-by: Pierre-Hugues Husson <phhusson@freebox.fr>
Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
---
 Documentation/devicetree/bindings/net/wireless/qcom,ath10k.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.yaml
index 7758a55dd3286..145fa1a3c1c6a 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.yaml
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.yaml
@@ -121,6 +121,14 @@ properties:
       Whether to skip executing an SCM call that reassigns the memory
       region ownership.
 
+  qcom,no-msa-ready-indicator:
+    type: boolean
+    description:
+      The driver waits for this indicator before proceeding,
+      yet some WCNSS firmwares apparently do not send it.
+      On those devices, it seems safe to ignore the indicator,
+      and continue loading the firmware.
+
   qcom,smem-states:
     $ref: /schemas/types.yaml#/definitions/phandle-array
     description: State bits used by the AP to signal the WLAN Q6.
-- 
2.34.1


