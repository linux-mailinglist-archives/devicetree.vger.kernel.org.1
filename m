Return-Path: <devicetree+bounces-233879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A883CC266B5
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 18:42:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 36FB54FB38E
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 17:37:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DAEB33DED9;
	Fri, 31 Oct 2025 17:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b="aDsGvjIB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 899BE28469E
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 17:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761931836; cv=none; b=dl3WiWfGDn/UCyMa9G0XC+0L0WWmM/tZ1M4a+Np5mEtQ2RbZrvAAjgk8/UvPrvmzCDlnlKDl6RvaNzZPQULtfIjyQrsC6MMD4VXb0kHvrSP049Ni2DGO5dA551du0+pwPofMIx71aPllEC5ar5UI029V4fACA1E8R2TUmYGXyKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761931836; c=relaxed/simple;
	bh=/4NUosojYw14l9RP2wTbIe+vINI+8c9ZZ+FQrVCN4hY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZOUeulv9JlRGgJrVxQsHIgr4X7GBuyzcHy9CIptTxzUW8WJP0keMYHzZx3XgT14uE9ji44TcEKqlh8azEFPW0kmVj0bJ2JeQxa7K0U5/8wGag06q3Lh3sQ+b6Sg+RTHudx2DdgBt+o3qMcr3WDB/8iCZOyvBZiqKHNMtlSrSUrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net; spf=none smtp.mailfrom=dpplabs.com; dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b=aDsGvjIB; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=dpplabs.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-781206cce18so2970587b3a.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 10:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reznichenko.net; s=google; t=1761931832; x=1762536632; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V9IaWectU89+Tfdd2SWxnAs2i8ZZ82BZgrVmURYyxk8=;
        b=aDsGvjIBStJFdhyBHjbFrRYGPuLwTvMi84iTNFwXcVOryGad+fjAWS4evHuDh3lJMB
         qmGzKq72XYJgsdxJIcy8TbPN7HbEWVMI4tatUU6Aapoyt/oTyup+yOOHx24i9isxUA7j
         7n2mVO010HBzf/DMOl1v0RAM8mTD21krFIHgUAgvVOQm0Psekl65qINTMIzeH3LDlMwd
         fgSgqnX4nvRXVCWeAkYiHQuf9W06Zu5zwyiA5cbA7///2CnzWFb8g3sxDG0hCK/X5+hd
         ksRlITkIc7hR/44lgchTbK19BGwZOPEQO0zTMRb+NZB/PaxQWkUfy7TGcvwUR1aYH++u
         PzXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761931832; x=1762536632;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V9IaWectU89+Tfdd2SWxnAs2i8ZZ82BZgrVmURYyxk8=;
        b=pDvCw3ppW9P1nn7nqevYxyQrE0BcFmRBk80cmz8YKbVbZsJrRVJnzD/2OeQX7epaz+
         n5W8L/rYCb/R+qhpnOECMPp+HNxLpgZHpjYRugKD/4lhk0ZCL27akMa3r5b6h6G5yd94
         5H3AC5JfEeYPYAogI5KtYh1zqUDhyEYj8fa7ryNh7ERAfIG1YYQXS6/EEFf9sQIiqkNb
         liIa1ADi0YOKbK+qpiwSLUvBMuBOAi5CXKO0hqN2DnKm3cNkNr3meqvjCB9q0IjR/vjH
         FEgjfj5ql420rptZ8X7jRy5B2V1uwvGrNRnhJQJMwtfI7xw4S44P2BlB4WCLxxd87hbv
         VaDA==
X-Forwarded-Encrypted: i=1; AJvYcCWdtHQKn0ierqj/SqawYsoJi5wFOe670gFoukh3EMHszk4quL7/ZaJFTRAiw1rWHAnnZKuAEWht6ALw@vger.kernel.org
X-Gm-Message-State: AOJu0YzJ2DURmqIsyDZ7e5/37VN28Q6tYkVPJoutXHyBVjTzUOjFNfK3
	oB+GOKiDsvyOMnPsH0ETK+FTrksnOZo+kg3QSCk2BvOEyT1J0eej22dyw8icJZSB2N4=
X-Gm-Gg: ASbGncs0vA6iZQms+bMN5zkrYOR1mKnm4mMTaEPstcC2iv3RKsg5zHGz1WXPEmq2tyV
	3i0BQAMfpEb4dRbbCkqNMQ/fu9V94qAzMFNGXhtvhkLEkYjPju1il4n6tVrQyA2zCQuvCPZ6i+V
	odbivvcfZ1c16Z35whyPF34ociB2qRMw6ur0/3FMMFwqpCR8QS3QND2hO3CY3BT3Jl5wAwtlOkt
	Cj33wtBZTjGUupv5dVW0szgraEOm9rH7m3JSJJy8cf5phpS/GzXcpv2BiwutL17spGSLwjyQW2d
	kas4cKE03X0caFmeBvsiu/NnBrcRbUWNQFlwxONDgugLKdH6e3i5Z904e9oSXKBmzF0EyINmfyM
	Zve5gCSElfkV8neanbqNrLWy+ktySLjUWd0U1ftrMJ82fTKvoBctnG9avLuX8tswKYk/tv+uxiB
	Jf1BlG2zbn6OfqYWyl
X-Google-Smtp-Source: AGHT+IGHZuSNPg64weN7MygzE+D+JmL2pDp9GEsG2OfutOUVQ3cd7U4bVtqYoUkGlzWxt2+UcaITRg==
X-Received: by 2002:a05:6a20:914c:b0:341:471c:9392 with SMTP id adf61e73a8af0-348ba87a6ffmr5874081637.10.1761931831675;
        Fri, 31 Oct 2025 10:30:31 -0700 (PDT)
Received: from z440.. ([2601:1c0:4502:2d00:2da:2c8a:f651:af34])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a7d897e862sm2857660b3a.8.2025.10.31.10.30.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 10:30:31 -0700 (PDT)
From: Igor Reznichenko <igor@reznichenko.net>
To: krzk@kernel.org
Cc: conor+dt@kernel.org,
	corbet@lwn.net,
	david.hunter.linux@gmail.com,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-doc@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux@roeck-us.net,
	robh@kernel.org,
	skhan@linuxfoundation.org
Subject: Re: [PATCH v2 1/2] dt-bindings: hwmon: Add support for ST TSC1641 power monitor
Date: Fri, 31 Oct 2025 10:30:28 -0700
Message-ID: <20251031173029.904313-1-igor@reznichenko.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <35d41d46-5bc8-43af-a84d-6b118fff08e0@kernel.org>
References: <35d41d46-5bc8-43af-a84d-6b118fff08e0@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

>>> On 10/28/25 08:17, Igor Reznichenko wrote:
>>>> Understood. The bit in question controls the alert pin polarity on the device side,
>>>> independent of whether the pin is used as interrupt or not. I'll drop the property
>>>> for now and revisit if there's a board that actually uses an inverter or needs to
>>>> program the bit explicitly.
>>>>
>>>
>>> This is kind of unusual. The requirement used to be that devicetree properties
>>> shall be complete. "Only if there is a known use case" is a significant policy
>>> change. Has the policy changed recently ?
>>>
>>> Thanks,
>>> Guenter
>> 
>> Rob, following up on Guenter's question above.
>> I'm not sure whether it's better to drop the property as discussed earlier or keep
>> it for binding completeness. 
>> Could you clarify what approach is preferred?
>
>Don't you have there possibility of interrupt (not only SMBus Alert)? At
>least this is what I understood from previous talks.

Yes, the alert pin could be used as interrupt in principle.
Datasheet calls it "Multi-functional digital alert pin".

Thanks, Igor

