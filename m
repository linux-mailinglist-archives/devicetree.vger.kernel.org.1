Return-Path: <devicetree+bounces-58918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D63188A3C29
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 12:11:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 732B41F21A4F
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 10:11:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D65FC39FD5;
	Sat, 13 Apr 2024 10:11:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uEHkBTUy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F2C3E48F
	for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 10:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713003080; cv=none; b=WjCk2FWwuiPM1BZarx/tsUq3WGCH6PWOKgqjwonnU3WY39lQioMT/4KS50Bo4OFeJkV8HcLQBDDeG9eoMxDptze6RTH6BGfp0sNdvOKqOaY5rgrrNdOvc9SAyld1l35bSyJtfAmilAW6ecHkJO5LhyFF6RuJsAgC48F0OmP1aIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713003080; c=relaxed/simple;
	bh=sGq2vt4hpinOakv4UMFupuwnSHjXSjeJd2t8c366JkA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=keMY+nSMmrEeBr+/w/VXcjCElYOBkyAWIgs0Lhzws6QX7R/6Dc3TptCZ58Pn4MT84SOGy1XC5Q8nPi0UvDnkENRnka7XjIWOFs79xr/yB0zzTfD1o5/pTjRp/0ifXpPt7SwluTvnhTBRER6oUmfQux6/jALNfarto+RJXZBhQTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uEHkBTUy; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-518a56cdbceso557784e87.0
        for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 03:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713003077; x=1713607877; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=08eW85Etrft9X0n/WUaIygnjVJSaB8a4q9ap4LO11fo=;
        b=uEHkBTUyZ+g6KMw61yREDzuJns1tsmP6c3tNSpj41UvaU1TDakf12Z4ORADkuXfs6n
         2ktZjkwMXAnDjtkdIXAESKo0BONkjhR8vBkSwxHmxAfjlP+L8secjjTvZKedA7cWgWDV
         hl+cb9yozhr75H9CAdkxDwLkywxGJX+rR/WbwWQ+S0kIUfjbWS3dYlhuPDUqPcFNLZcX
         oQYV2GKOai6F+iOPFufftFVCpf9xfgNG2w9zrooC11HJu7lucrEL3JZuoyKELLzXNK8a
         Ox0isqDCKOYXReQWuoGQseA5kHet05cwvNMhUGtBj0BGUEfOXRr24CzQGDYx7OmVrYGL
         KPQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713003077; x=1713607877;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=08eW85Etrft9X0n/WUaIygnjVJSaB8a4q9ap4LO11fo=;
        b=C9wDp3xC92tO1WqyE+R4lxQCqDk8uti/shUFZLS/3mbYs79kh/r677whSd/5YBSnul
         r38cZu5o+RYGN+7etpJbEDGQPgzx+x5zt1wt4ddNuVBWAcS7kESYCh478fHSiR+G3BEP
         +WIHmCsLk9abYA6kLRWw08CyEYyXgvFIBZPL5kVwecP8wCMOZvM7g1rUni2IKVTcAncp
         WNGumrAJeMjWMK9aATs8HFo3+08EhfLx/ZCLn3FUAGyHEpAvSLw/k45ckVzAmwhOO4eu
         aX/PSGbwQU3iQLv/ookaoE5P/TvljOp9wokzQtrBUphGl3Ik31dRe01pEYnSh/gxl+7O
         LMMQ==
X-Forwarded-Encrypted: i=1; AJvYcCVs2/KCtwL8IfshWHlI4/osU0/kPmUIWnFvKnMEE/sFv1LMSqgA1RJCp+wHFBB5+wbYX7SEpfIA39CyhU2i7mYiqxidjFifRSwkEg==
X-Gm-Message-State: AOJu0Ywz5gIdN9eHdcV3wcJNU3wIGg8cttmeEC3pGHOWUcsVvCSNQ1e/
	vwfmKGkUBzX+5a5IXzl/abQI3f3zbBUQLqr4gwv0Uaj4sTjGElfe22KgeBVUUcY=
X-Google-Smtp-Source: AGHT+IEms0YIgIMcnIcpl0jIwnci2qZ3P2turZUoIzmYhw5qxHxTlUowyfzVvFcSiukNSdYWd2BsZg==
X-Received: by 2002:a05:6512:2247:b0:518:b294:5705 with SMTP id i7-20020a056512224700b00518b2945705mr617646lfu.12.1713003077357;
        Sat, 13 Apr 2024 03:11:17 -0700 (PDT)
Received: from [172.20.10.4] (82-132-212-30.dab.02.net. [82.132.212.30])
        by smtp.gmail.com with ESMTPSA id gw7-20020a05600c850700b004146e58cc35sm11773696wmb.46.2024.04.13.03.11.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Apr 2024 03:11:16 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>
In-Reply-To: <20240307-topic-8280_nodes-v1-0-4eba20e08902@linaro.org>
References: <20240307-topic-8280_nodes-v1-0-4eba20e08902@linaro.org>
Subject: Re: (subset) [PATCH 0/4] Random 8280 bits
Message-Id: <171300307599.22846.9944189315740976469.b4-ty@linaro.org>
Date: Sat, 13 Apr 2024 11:11:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2


On Thu, 07 Mar 2024 21:25:53 +0100, Konrad Dybcio wrote:
> As the series title and patch titles say
> 
> p1 for Srini/nvmem, rest for qcom
> 
> 

Applied, thanks!

[1/4] dt-bindings: nvmem: Add compatible for SC8280XP
      commit: 2ce7240c076fbd9a4c9c787c8c81596644199196

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


