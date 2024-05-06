Return-Path: <devicetree+bounces-65181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 565BE8BCF6A
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 15:48:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 888E31C21002
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 13:48:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C4138062B;
	Mon,  6 May 2024 13:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="tHmY2rea"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC257FBB6
	for <devicetree@vger.kernel.org>; Mon,  6 May 2024 13:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715003312; cv=none; b=MFZAcImpfYokScHi6o3RA/qceSZAUVoIQkrpZRL7rRxGsTDby6BcU71h8KhfsbEfFyDwZU4/Su/G01aVOYXfGkJkQcvU6DaD8pcNapL12IPf4kaSzB6ngAbnYfiiPmUvvYVIS95P9tP/+4NGDa8g5FdsRL4SIAJL+sP3XTIsAR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715003312; c=relaxed/simple;
	bh=KkTKkbItVaoNaebdlZbTplZomRRkcshA7Z5iO0bO4bU=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=KuMRs2i4ZFSx839oOS54rxJHC65YLxUdaory2pRd+9kCJDm/w88i/alVBf/yDGkZIta1FPZ83I6za1yEqo3XOEb5J3/3QfBVd50XfScN+PDzBNWr1oSLPOQYhX/yY227FffEvDZvIaDMIQExfEKkkMwpC5Fxd8ZGQnSicTRSqUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=tHmY2rea; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2db17e8767cso24254071fa.3
        for <devicetree@vger.kernel.org>; Mon, 06 May 2024 06:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1715003309; x=1715608109; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jmr0hfgWJAF/7VHtSyTJsAvmgssCMuwvQVaPUW5EW3A=;
        b=tHmY2rea40SZGtV3urQvOGojFdJ84Xu2RZLL7uYIwm+t7JvRW474Qx0Su5oetg4It0
         18KAGe4Y8tlBcRjiV5XgdXxyJndv/j3uTLWqHk4Dmz5cH1JgWvC8YFWTLja1AKPhe88K
         ZXClSkDJ7oxWjP8VGljiBnSfLw1AYluOJsVbLo4VAHJ9Gl1tjeabS16FXom1IN2EK3Bf
         JGG725cs41wGhilnK8WrrVfuuh6lDOCTo38lg3Lp5xwJ5wrKKU65VDm8ViGc0JpK8lnT
         DWrIW+jrBXX4T11g8zdTxkOqSdLFPaLEZZh19T8s7WIPMFFlcr287OnSd4hbPwWC4bhq
         H7Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715003309; x=1715608109;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jmr0hfgWJAF/7VHtSyTJsAvmgssCMuwvQVaPUW5EW3A=;
        b=JGGQ4+QKW7q0L0mg0PHsMaDBBZjFT9qkWmxoFYuXsn2zIO9pfYA4RDDqeReLdynN8T
         dKHvBXYMgwJqyIrdg+BhiXKeiPw7KadhRbfz3rodEr1o8dTQRg64hbLKge3q7GhaK6uf
         CHrOWXOFhwMhZJrEvUZfPJkCV6aqe6jaKXspk4eCjqnltcloAc5um1OP32uPZ/x5+4A9
         u8BmCg2CIyZcYlfFVhv8izUtdcasMOY8naI9EhabvBLnb/P83FhVh8bcW1HjlDZAaTPy
         VnaKWb879c9Rd1BaT7NtlED7WOMHZt7gsrjJgt3BzSR5FDPcpwDjjQ1es1N4wBib9om/
         rGYw==
X-Forwarded-Encrypted: i=1; AJvYcCXJFjAVlEsc75bgr/2aDdYvjbzhmkN/px3oiEVSzuqVkeGMVE8mQ7pf0bAZGvWsNt0w76A2t/pzac6rVfXhZeZX6fivpSlIjsZK5Q==
X-Gm-Message-State: AOJu0YzvwreVfFR+4egGo3I19lZ7SzynBDRWVmBfoHo5EIXFSIvENoXX
	N+XBXKzNLRSz+bpj7G/PUDh2NvA1yGNfyl1H9oYyxgIpbG12PwutqdMXECrHLjA=
X-Google-Smtp-Source: AGHT+IEHDHR77wZC2Yk5IorPluWW0YYOwrto2AB7fQsL46fWUFMec9hqmWFCuw9eYy7Pr6Rv+wJhcg==
X-Received: by 2002:a2e:a550:0:b0:2e0:12f1:f827 with SMTP id e16-20020a2ea550000000b002e012f1f827mr8328144ljn.43.1715003308828;
        Mon, 06 May 2024 06:48:28 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id je8-20020a05600c1f8800b0041bf28aa11dsm16131973wmb.42.2024.05.06.06.48.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 May 2024 06:48:28 -0700 (PDT)
Message-ID: <b3047c0c-16de-4426-a781-fa9239c42856@freebox.fr>
Date: Mon, 6 May 2024 15:45:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH v3 1/3] dt-bindings: media: add qcom,msm8998-venus
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
References: <72860c1d-7434-4be6-8c1d-9ea177602802@freebox.fr>
Content-Language: en-US
In-Reply-To: <72860c1d-7434-4be6-8c1d-9ea177602802@freebox.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

msm8998 has the same video encode/decode accelerator as msm8996.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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


