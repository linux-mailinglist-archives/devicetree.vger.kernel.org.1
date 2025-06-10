Return-Path: <devicetree+bounces-184211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F898AD340F
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 12:52:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 434F1163D61
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 10:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEBC027F72C;
	Tue, 10 Jun 2025 10:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b="MG5aGefb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A310A1A2564
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 10:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749552716; cv=none; b=s9jZ6nAaES0vp1TRPKTb+Cu6hpwSixdWQUBt1qV+ow2bjLfn7Zt/TfjQ02I+6PNtKjoA9DmHruORfuJv3sVaiJLd7jg2CWX45H4B53uJFgN/WEWvdnU6uXIgU4AnXvnHuT1Qqmx4pr6vPkzyyyfJiGzrFzvNVZWIJm9/xCpLtQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749552716; c=relaxed/simple;
	bh=BpGOCGjfMVwXLTb7pDRDKwkdHxA+xvVJY7qPvU3osOQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=PQ7G9/oBuwDOH5wrC/66v0b4KxvnbRFfg585mpDlX6PssQJm0e0El5IEvUCNqjicKCCm5ZgnupnUDQIZ+LdqhdLIZMOGuyFsOD0OAEuunfO5QXhZV2niuwTJGB64Ehg9714a4HQEENmV8mwQL4ZU5EiNXZhlKQQQV1mZqLSSN4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com; spf=pass smtp.mailfrom=inventec.com; dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b=MG5aGefb; arc=none smtp.client-ip=209.85.160.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inventec.com
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-4a58ba6c945so88629521cf.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 03:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=inventec.com; s=google; t=1749552712; x=1750157512; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gBzbb0j4JDUNUzQL10G0m3L9NxDCF3vqx3Mg0oudS78=;
        b=MG5aGefbKJzfz5oyxLpgq/smIBCJe60qJTZuXl3p4wLaEWLzMNeCHc276ySFZRLPWE
         bWHidNgjJmp3aW4+HUzUDE/yFmyI4vtbmH/pDvJkqB94+hy2jbKH17DuzrgYci6VNyr3
         3kaeA5NCrDPaG/EkjiujAf50ziP/jHXDKwYI8FV2LrsrCqhxz3b/9ttp4jkf4BjXGtmf
         cv8nhVcEH066Rrg43/E8suRF7HWis/ytscOmqtrQQKJgjmx8djSoMvW4VsgT8Ld6hRSB
         S6vrhigmo/7wSGBUMHFHG0eqe9iLP3W7t1XSHIv8wrtTdg6RtzVi31WpUv6XbhMQo/JY
         daSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749552712; x=1750157512;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gBzbb0j4JDUNUzQL10G0m3L9NxDCF3vqx3Mg0oudS78=;
        b=WE+1hXTjnl+qBZCOZvjJ53aA+sHl7Y14taYnsoE61p8TrVKnaC0G+AP/0BkYUD/A8t
         ffsvsJ83ONGBOXieLhsthfP3HX/wspLOeSEWYPKf7tSsNBZEcp8nLCBa6AYaoyGn93Nq
         b1PaT05IOHxLDQ1hq6+3b60YRmprcInhqM4m3AfY/K+VmwR8tUu6N/FcIPhJhLIFGxhA
         Eqq9H/THr3E/aMe3Gc/4WS1U5tyKk0X1T2lswlhhjLDN/shWAQUQqYA4V0D4MMzg6mXi
         w7/nsZdmOHvLCop8bcF6aG7su17F3HI1aRM3CbwovyJEK7uPq7T6B2emzyDQ9Td68r98
         vQEw==
X-Forwarded-Encrypted: i=1; AJvYcCWKRgISkSTljf0mLhlwPe++mHU+Xu2xfRHYB1AUyHk+r/aaUyvNOkP5vAfCgTfHOm52is/UJqoRLt4F@vger.kernel.org
X-Gm-Message-State: AOJu0YwwQJ+GDVMicgPccRjCGJVey5OQiYiskzEzQ+ZbP9/g5a9qhxJi
	fbcBYG4tnklbxlaySOJ1pcvIgRoU+teKE7mBHykv7UY0eCx9QVZPMSLhxKOh2CKwIM2DWgOljTf
	MlShI
X-Gm-Gg: ASbGncsbB3l0xwih1VjCG/9S65V24sJyZle636iDkZqa4651gWdaa97ICg3tiFy9Wj5
	Vmt3xDSWbQ0BWp169gNaYAKV40XsAkapJ6y5lqje5dp1WRO3SkvMSe4oGA2s05BDJ5Fuu5gA2Y2
	u7sdLIYurdwfTWG9xoav61LeeE7MGyINm4RwyOk5nlY2annFilY/YGDXhFCK0fZoFeJCSJrC+M8
	EJ9oqExhhcuWe2EN9dgnHSSnfHeS4KI46CIX3WFs8mLAGPlGnXhaAOwTM3pUCEL4+SA590pLZGr
	7Yp7/Kz66/WDnmNzas1ddOpId9vy2XcoYn+sUGB0sdDYtvWG0ODzoX9kOKKlwNJLNdXfvSnhY2q
	hWk6ghpYBmVFGBbq09Emu9EZ5Kwrj1COHEVUk8AdXj8c=
X-Google-Smtp-Source: AGHT+IHsRIE9+ok5ecCFJYm3GaEvcQAvlGCjKV9hMDLuhdOPy6VEujh5/w0caWC/jaE8aj9tt3UXTg==
X-Received: by 2002:a17:902:e5c4:b0:235:ecf2:397 with SMTP id d9443c01a7336-23601d70bd7mr240122475ad.33.1749552701532;
        Tue, 10 Jun 2025 03:51:41 -0700 (PDT)
Received: from localhost.localdomain (60-250-242-163.hinet-ip.hinet.net. [60.250.242.163])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603405e7asm68484365ad.171.2025.06.10.03.51.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 03:51:40 -0700 (PDT)
From: Chiang Brian <chiang.brian@inventec.com>
To: krzysztof.kozlowski@linaro.org
Cc: chiang.brian@inventec.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org
Subject: Re: [PATCH v9 1/2] dt-bindings: trivial: Add tps53685 support
Date: Tue, 10 Jun 2025 18:41:46 +0800
Message-Id: <20250610104146.250692-1-chiang.brian@inventec.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <99f846c6-4041-4d68-b2f7-c686aa8c2bca@linaro.org>
References: <99f846c6-4041-4d68-b2f7-c686aa8c2bca@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

> On 10/06/2025 12:41, Krzysztof Kozlowski wrote:
>
> On 10/06/2025 12:25, Chiang Brian wrote:
> > Add device type support for tps53685
> > 
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Signed-off-by: Chiang Brian <chiang.brian@inventec.com>
> > ---
> > v8 -> v9:
> > - No code changed, correct the order of Acked-by tag
> > - Link to v8: https://lore.kernel.org/all/20250602042454.184643-2-chiang.brian@inventec.com/
> Stop sending this to me 6 or more times. Every version you send multiple
> times, that's way too much.

But how do I avoid sending to you even though I need to send this patch 
series?
I apologize for the spamming due to familiar with the workflow.

Best Regards,
Brian Chiang

