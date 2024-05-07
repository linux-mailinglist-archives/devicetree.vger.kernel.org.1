Return-Path: <devicetree+bounces-65352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 801788BDE42
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 11:31:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3C6C8282FC6
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 09:31:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1644B14EC50;
	Tue,  7 May 2024 09:31:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="LVFae5Rf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6744D14EC4A
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 09:31:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715074288; cv=none; b=Eu3UFP4zStft/1zETTNRpWe/FfanSj4jY4afA8+SV8fcVszHCHtnJvn8KpQzz+0d8qHUrSdktZT9Ffbm4Fo3srM/4uUZJhfDecUdPsEf6P+O2vbBXcOZFw+tjNgliBws29rtUPJ3anz0eP5G4pLITDDzsifbpBAAcHpTuIHaYVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715074288; c=relaxed/simple;
	bh=KkTKkbItVaoNaebdlZbTplZomRRkcshA7Z5iO0bO4bU=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=Wg6YnXPUNEdMa0SkC5s117QdEfY1vyL8EJlBYNXm5nm6s/QdQXN8C2WLxUZHduP6PiFCDaWTmVJk0/N9Uwx7K5Jyd17M4oKCC4JlAXwtp5y/+MeEFBYUw9kKnuuFtNXnUMnTcLBOgiK/i2Qb33c+DVYH9TBNChLFTx+E+mNZung=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=LVFae5Rf; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-34d8f6cfe5bso2015612f8f.3
        for <devicetree@vger.kernel.org>; Tue, 07 May 2024 02:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1715074279; x=1715679079; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jmr0hfgWJAF/7VHtSyTJsAvmgssCMuwvQVaPUW5EW3A=;
        b=LVFae5RfpGMv5LTob1g/mFGi55l8vFLcw3mWgEDtaWWU17oj33b4fkyrvO9Cl1X5+R
         C3niGl2aT5RQyN9KNsPG8nMfcCEgB89PF96X8INzqR5rwEQoH8FpdB8fFeeBbLldHjxn
         ruO97iGJcCCd8ldRASmuKhPYT9M/xTExu0XciUaO/L3kES+PSb1QSa8BwXc0krzdtakh
         snAd4uuMhVv87oA+b8yDCqJ+cXAR/IKx7pLrbZF4Fsm4nR7943ZOSxeN+OmMzHWhj+QK
         yYEqcjs/16TCqmbB7A56l7KwwQeqCQCJhetMakFRA9PqEctlWJpvDh6D8ML8fhGznUvt
         /LqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715074279; x=1715679079;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jmr0hfgWJAF/7VHtSyTJsAvmgssCMuwvQVaPUW5EW3A=;
        b=FBMuP14IprH/O8Uh//m0EsgKQ7yTddXqo4pwO3a2XXUcDZHEioXAsZtPwl1XhPb/LE
         6bGBW9L4i6Ex1Kk0NNmoEIZJdadhko2cDeJolFNf+iYmfgusImVeJjazfcePqmedUbKQ
         JBr+ii5nyvc4YVOY+FwFbcWjwgH8eHSXB2OPyHxD3v67YgvF6Z8UGhIAEe+U6Z3knNHn
         tjpZO3JBrjUdSQSc4qd66gYVelKwTsb5u3gSFwz2UY8C3zaZxSFDhoa71MqECSikQWst
         FtkBL3SOh6lnBR9aP4cRuyzpg2TFqN+hG0usvkplqYi+2ailXoh9df5OHbSosa6EEteg
         cd4w==
X-Forwarded-Encrypted: i=1; AJvYcCX+5IfNl2zVPOHNFr+hZnVOrAxrBviMCBMMBqxNLYmAS6gtOIqgsRCn6JVMIOVVar2148VCI5Ir4HS+gM5PgdB9PSeZotVc7cG/VA==
X-Gm-Message-State: AOJu0Yy0LZs22WbcYVF6AH8SPmcCbXN3fDr0z9l55LTogQw60tOrOukL
	Cd6B0NhX+wiWkXM77dlSUUWmyenTi3UPHHiTNqEwqHvjEF3qZTb00+zAijhu/RU=
X-Google-Smtp-Source: AGHT+IEvHZqrO35Cj7iFDpIZwkGv71Jk7pChDTuL9+k9WP9x5+qLDkeol9+hXhU87pe+EvybRgC4zA==
X-Received: by 2002:adf:a18f:0:b0:34c:b31e:18de with SMTP id u15-20020adfa18f000000b0034cb31e18demr8591141wru.35.1715074279066;
        Tue, 07 May 2024 02:31:19 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id f3-20020adfb603000000b0034dced2c5bdsm12517710wre.80.2024.05.07.02.31.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 May 2024 02:31:18 -0700 (PDT)
Message-ID: <a5a6b080-268e-4643-b652-76b220672035@freebox.fr>
Date: Tue, 7 May 2024 11:28:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH v4 1/3] dt-bindings: media: add qcom,msm8998-venus
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
References: <1cf08b56-a247-431b-a24b-69f563f49240@freebox.fr>
Content-Language: en-US
In-Reply-To: <1cf08b56-a247-431b-a24b-69f563f49240@freebox.fr>
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


