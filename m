Return-Path: <devicetree+bounces-233526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EC318C23423
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 05:41:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 23D8D4EF726
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 04:41:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B417F2C0286;
	Fri, 31 Oct 2025 04:41:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b="kKaC/5yd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B352BF001
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 04:41:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761885666; cv=none; b=cS9zNuBcA3tUHa8mWJXJ+dU/qPmskQ6wAiCXzxM8uQ68DIdedm+MEgEGW6b9M1jGbqojMF0GN9f6U4oouJeGFOXgy0jKr9/fueK1RLIgDcc55BE7/N70OMsoV6FY7oqRjwOmB8Z2OCwLJrpJtiWj/ZkHrYMHpS66xMZ4ROjme6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761885666; c=relaxed/simple;
	bh=xm1kLLlZ8QYUI6qMFsmbQ2UeHqCoMYMXfw7ZjEhfXyM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FFqmtgyEKgVXBzh7kf+W69kKhZqd8FdEsH51anjWN4+v8cooyBFrBFt9791M3yp0NkARzfiTNwPxvYiQ1Oxyarp46xQBg5CwLmDkHP9Znvig8GxX31INVR1bvVUMnZBzZ1rXjANqYmJrjucYwytvQQfi8OtmVWB7Pd2Wk5TtSqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net; spf=none smtp.mailfrom=dpplabs.com; dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b=kKaC/5yd; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=dpplabs.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7a2738daea2so1803678b3a.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 21:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reznichenko.net; s=google; t=1761885662; x=1762490462; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JdnadwcTawt/UEGEIma6luMK+Xpdo3yqchdI1J3A4DY=;
        b=kKaC/5ydquGRyFaMKZLA2hdpxOy5uSQVuoj5nyPPQIvGn09CdOb+g87iTv4C10zjsX
         zjgI02RZijDbsK2m7n0/HXcssHbVZWyPpkubRmw5+10WWsuAyf+kaKW7S5h3LAJOY8E5
         vfBLAq+loJ2DNFxyIiRogZZljJ6CHpkX7l1YzHtttH1qIfMavCwsqmzolQwXoeedO80z
         iB4S8iYdA0jJ/dgiwSMKm25k2WsSk/c1BOKuLjnrza0kkc1FJQc6SKWaLufttq1Hqbn3
         qZ4B6hDDwXg2Mel30elLgM2EOjaSjjd6Ur5+arnUmtb6S4Puq+eo4qlAdkX6YSAQmEvs
         eUGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761885662; x=1762490462;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JdnadwcTawt/UEGEIma6luMK+Xpdo3yqchdI1J3A4DY=;
        b=LvZwX+1BRLa6hT2iBYPduNpc+HCmsN7Mq53nWTzlEzWju01GokH2av7F1G1PoN5egc
         CERqYm8ipa1A9eIXRmCFTT2dJ/zJidU+GeOVz/i9rv1Gd2jFQV0duQpqJ9F76MrJ0w1z
         mIawV4pREbE+1AhBQxVY4UvyxpijWObonjcAEYFvaYFuuG7g68JBadN3036S9KDoGzRJ
         K1+Wa0Xy6Zhl019J6vEfESbxDRqGSvA5iP7i1Gyq0xK3RjuANkjPnUrCN3UUzxkXLPyE
         opGQAUVV10tom5/AF4MYQUaQ5tnj470/pPd0ezvuWUv3g6vRaCkorm2CXR/TS8CtAcKc
         d6jQ==
X-Forwarded-Encrypted: i=1; AJvYcCUi/kf6UU3F6fHerlMcNVo7LaB2tjo4iBPBU1vGPulDtZqRCe901+w2kXqHokzYTVzjoTjA0Sc58ltC@vger.kernel.org
X-Gm-Message-State: AOJu0YwX6pws8/ur1A6DgT4aB3/SPE9ybmkYTVZ/aZOYWPJONZVH2Hbk
	O1nYMzuMpbfuBzTsZzsq43Oqk+fQyiEwprMrtPPOGzUU88px6rJYTihujVmE/AVpLL0=
X-Gm-Gg: ASbGncvkYGw0Duu8RRPi23fWwrNixiRsWy0c3gZ36SuIydbpxtB6ibqa/fY1+lhoTqN
	1bnbbHGHXyj4cRbzVerpT+dMVRehPuCQskT9W6pB5CSoT+66lvrwwi00bGLw8K/K9eO3dziLWnU
	BhbTKHjqFIeRa8B8j02QyMNlFDKfeuwlSTL0/u2FY6HDH835G+d09ts+EUuQAYdjfsJnjniIoSh
	wK5claDFa3SBqr4r/5ukuuIuAXsFRb573AyqgGMFnddp2O0phx0T7IPpVI+Eamzl102YAdzvwWy
	Xwg0u+bWn4ge5Z28CePJYeOiVIcRJT7Qx1M+EwZuszTPeNs4X7jRkInSOXjeqpJH8/PQQk5Olo5
	DnIgNQiGUbu/2nDaXET8yZ4selwy3oq1EkifLPTO8FRv3gk8gfNrkgZ0A3mrJeIeRsKT7EgPvKh
	GChl41LQ==
X-Google-Smtp-Source: AGHT+IE01ibbxoTk4WwnS0PNINpOsBGL2W4lqWf8ORWbKUs1964WrFpG3w7OEqs1++R2JieyDQyk7g==
X-Received: by 2002:a05:6a00:1826:b0:7a2:8ac0:7ca2 with SMTP id d2e1a72fcca58-7a7799adc31mr2393559b3a.31.1761885662008;
        Thu, 30 Oct 2025 21:41:02 -0700 (PDT)
Received: from z440.. ([2601:1c0:4502:2d00:ae30:6f8:71b7:2e95])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a7d8d7273fsm616450b3a.24.2025.10.30.21.41.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 21:41:01 -0700 (PDT)
From: Igor Reznichenko <igor@reznichenko.net>
To: robh@kernel.org,
	linux@roeck-us.net
Cc: conor+dt@kernel.org,
	corbet@lwn.net,
	david.hunter.linux@gmail.com,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	krzk@kernel.org,
	linux-doc@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	skhan@linuxfoundation.org
Subject: Re: [PATCH v2 1/2] dt-bindings: hwmon: Add support for ST TSC1641 power monitor
Date: Thu, 30 Oct 2025 21:40:59 -0700
Message-ID: <20251031044059.714744-1-igor@reznichenko.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <85e83f3e-3509-484b-8cc8-110156d5a2ab@roeck-us.net>
References: <85e83f3e-3509-484b-8cc8-110156d5a2ab@roeck-us.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

>On 10/28/25 08:17, Igor Reznichenko wrote:
>> Understood. The bit in question controls the alert pin polarity on the device side,
>> independent of whether the pin is used as interrupt or not. I'll drop the property
>> for now and revisit if there's a board that actually uses an inverter or needs to
>> program the bit explicitly.
>> 
>
>This is kind of unusual. The requirement used to be that devicetree properties
>shall be complete. "Only if there is a known use case" is a significant policy
>change. Has the policy changed recently ?
>
>Thanks,
>Guenter

Rob, following up on Guenter's question above.
I'm not sure whether it's better to drop the property as discussed earlier or keep
it for binding completeness. 
Could you clarify what approach is preferred?

Thanks, Igor

