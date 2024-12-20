Return-Path: <devicetree+bounces-133163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 881929F975F
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 18:06:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F6EC166B05
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 17:05:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACFD921A437;
	Fri, 20 Dec 2024 17:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IKTWSL72"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D55D42BD04
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 17:01:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734714100; cv=none; b=TRH6bhwYCIf7KcTiftam5fZoXqdzIo7mUPUay7x3kT5Q46+PbziH4RflU+k3xE5flZ37Dg9oscfZCdG739nugKPDoyB7AaLBCSkE22C1M9KBa2WdZqHOaX1/9yugBwrQI1JTiTN1XRWtIak63AwwkIqxhQYN7q5jJf4K2aaGIXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734714100; c=relaxed/simple;
	bh=0/3O+YP9fVmY0m4oZ8+SL6ozkG8z4ornaf3hd6s5H2A=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ki/6EV3WHuRxSVynBcKg0hKn8I360ZRUFiy+vTQG7MKJkyjy7BUyHRZMhkwzDjYVq7wdibAYLNFKiqMIIMzKnEIp/kUHCUI0r+PaP78qO/kD5xlAbA4/8Gx4OMFlpSf9AZtbtd7LM1hg34EqQDvr86BW0m1hbFKOiN5BB7ydBiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IKTWSL72; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4361fe642ddso21466425e9.2
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 09:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734714097; x=1735318897; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NwYwXtAXGqZrv09ePjRhH4qAatV/xDfmXWSb9loRF9A=;
        b=IKTWSL72JpbLhTExk+ItR3tqj2kDtuX2xMo8vJ2+B12SxgUVZ48LvvhWKREjt1yuhY
         h6zwaPZrsNjIUwfh2btUbQRlYBYZcUvR+24L3PaVFhpv4YyPQX5WtqAg/JCOB4XoHjjo
         posSANQbuvIcbdLQRSqS1IDFmwdqiMlQaO68szVKLRh6e2a8Qg20GRyUz09/9uhyq0jq
         8crM/QLgABukqZWXnXnF4e8Z95sGTrAIZuUB3RpkndpFAgBDDUiil8yf1U6ZkIUhu/Dp
         44m2bjYVF6VDCVT9WxG6eKbsanvEZkIZ2j0I9ISixbA/mDxt+q3r06kDthq+v+nYNMy+
         NhtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734714097; x=1735318897;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NwYwXtAXGqZrv09ePjRhH4qAatV/xDfmXWSb9loRF9A=;
        b=cI+PEY2vhNoe/CP4pX0Qe9uhuyhD6BdJBl+25aV2x9l0vhFMSc1jfMIDPftZLfbOs/
         XA6PrBL5jFBno+iviUKFHhFrhnw9o95z60tOHfFvaMVM/lvO7AVazVxmyjWlDiZNlokd
         XUVL+rp3fMDIXQ/TmWajvp4FaTdKRTpc9gINnou2JQq3gmFBT8W8drnsDksEw2BtmL+p
         k0VyYBUyPgLMaevJNHXxVe5rAHBj0p4pgZozyMIS9c4BICYv+2uH+L2MCBRLksLMF5LT
         WZXRKtxOjTCzlG2Y0381MT86elZnpg1nTgh4wZzH55NPULM7JI0RoCjSyMMLG8JaqrAw
         ZAQg==
X-Forwarded-Encrypted: i=1; AJvYcCVjx8tkKxYZxHyv1N3OOge7KgX/IUll0DaT8gdalrx9svxspffswCrihUxFYgTPbUV9mGNXaU4Ag2IQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyCnpjohElqdNujR8WEEi4SJLcQSRaizku7dD9s3iMjljkyQUu3
	7S0uGG1onAhwAWFwDr9BupX9QxooOBC8SAms21Tjn7PX3pvKGKUnniOuGgbDBIE=
X-Gm-Gg: ASbGncsORlFXMXMwWxHD9udHKgsyz5EHK6xRJ4NFjENkdQXZhi8qNE78MLQxQJFuC2p
	PoHxXeP+GxQjSVnbdDXi2UX1ODK6X3TXH9KKz6YCWFD8ssdOnIHAu6SCfwlgQSurW1C35jLBYNg
	k00fBc9bwM7UIkKXdUrnWtHHuGMjzsh7NyUYxualh7FqHpXw6PntyXcf+LVyN5m19spRmGq9tg6
	GU2ylBAYAKuiYNSJy7pJZ35wRfYlo+A5zs7+iXPgk7uXH8GoJnwy763u4o8uMtad+HZ9M04wtk=
X-Google-Smtp-Source: AGHT+IHd0vR+RC8OFfRpVvbjiLi42KWXeebih+hOpLiD9ItFcNdcQgnkTSg9IGudLlzm1QLtGCrHkg==
X-Received: by 2002:a5d:6d07:0:b0:385:f2a5:ef6a with SMTP id ffacd0b85a97d-38a221eaa5fmr3920087f8f.15.1734714097074;
        Fri, 20 Dec 2024 09:01:37 -0800 (PST)
Received: from [192.168.68.114] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c828e3fsm4540535f8f.5.2024.12.20.09.01.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 09:01:36 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jingyi Wang <quic_jingyw@quicinc.com>
Cc: quic_tengfan@quicinc.com, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com
In-Reply-To: <20240911-qcs8300_qfprom_binding-v2-1-d39226887493@quicinc.com>
References: <20240911-qcs8300_qfprom_binding-v2-1-d39226887493@quicinc.com>
Subject: Re: [PATCH v2] dt-bindings: nvmem: qfprom: Add compatible for
 QCS8300
Message-Id: <173471409590.224880.7329202916635453422.b4-ty@linaro.org>
Date: Fri, 20 Dec 2024 17:01:35 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2


On Wed, 11 Sep 2024 15:34:33 +0800, Jingyi Wang wrote:
> Document QFPROM compatible for Qualcomm QCS8300. It provides access
> functions for QFPROM data to rest of the drivers via nvmem interface.
> 
> 

Applied, thanks!

[1/1] dt-bindings: nvmem: qfprom: Add compatible for QCS8300
      commit: 717123d96f7a6e4aaaaa7a62ac8c489e5f7f923c

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


