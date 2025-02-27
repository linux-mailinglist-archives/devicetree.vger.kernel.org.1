Return-Path: <devicetree+bounces-151846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3399AA474B3
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 05:39:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2BEC116FA3A
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 04:39:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2544D1F5822;
	Thu, 27 Feb 2025 04:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Bk1eQrND"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E3921B9F5
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 04:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740631064; cv=none; b=dbQd8pkzIR5VMGrqeZI68ejn8v3Yf9km9IM1NoyYL4ZlATSMedu6Z3pouqPKaYPG7sAw2NkRcH80G2kBoLU24UAHQg4pfz2ZUULyeHsrdM4PSeMLLU0vBgW54TIJkJ8REU7PrOxD8g43B+WhL7w5pP2AEXwjvdAEfB0s4JCWg5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740631064; c=relaxed/simple;
	bh=mzPhRSU1K0z6zdHezeX9nAkdqjhhiEvRvVnPJfmgA5s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aE4nEAgVz2pvjlBAiq/BRGxiXoejOJ03wYKRxAfAxXWnsl6IH0F3ItahMEpOELeoEO1T54VvFQjmBdpuUfiRDq5sPXweaP/THFmP5DnEDewQqLAP+oRl5ohCBLKKJ3fNt9OBiZ4RIBL706ygUP5YxBLGYWuKKNYwgX8EF2FvlwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Bk1eQrND; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-54622e97753so555539e87.0
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 20:37:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740631059; x=1741235859; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kYSgKUYrO2YlmDkolp8bEhCgpgQOBl0qveOjHBhwpts=;
        b=Bk1eQrND8qWbGuY4bBriEYXWm8dr2Wlkd5k2MqegmeEpvKXmFZLw8CSaMDyub2i4pc
         gnLIZXdir+YzxldiX3km2iaqOIbkae/AosvO1h3MTv5wTnWR0GJ0L9CCJNqQUrYi6/26
         owpZMooJDRqRlj6IiAZLZP0+rYFQeOeAdevu+95jUS+cASFCrCWk7mFMZ/S6klEwvzHJ
         DPuXyEXHaUz2QhT5yEtUHRKxaxkO2XRWAFU3mssNSFHCpiCk2mHCQq1wv8b4P3WsYvsv
         UIg177qxygZY7txGw4uv1CSwBzCct+0oIGSuJUYspVve2JuQFR3qP34K9blDQCFLo8rv
         LBWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740631059; x=1741235859;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kYSgKUYrO2YlmDkolp8bEhCgpgQOBl0qveOjHBhwpts=;
        b=pVOoAqXgD1ybD5ZUIsbG00wIpdjgbPc+7nfe9q8yPoUr/84kEKpUsZFumb2Uc5foeH
         rbuepW5xRczb92fs4ulheCQQOKU02Cop7GG88z+Lpj/re6dkXf3YkVcIwgxPq+cekcwD
         oTJdD4le1fAl03YWOoq90vNRBP+U7WlGbaOm9zqOrwFyOHFuwHnohTaMGp5sNL9pz1A/
         clj731uDgVdbu8QUYNvN9VfSyFS0KGO8s9yKxMpBc3/Il1SIadL8WFYkO5dGLB8ThhYU
         w6+OyHA32tlihXIUG8xpnU6ANOoYTeCu6gldyu1tP+il+QIb2rspznQ8JXnn1xR5EqT+
         /v5w==
X-Forwarded-Encrypted: i=1; AJvYcCUgGrYNJthP/X8wWxvTj6yORh890X6gE7A9Hm+/70fD2BsXLeecm9q7GeQuBmkgdhfQ/X2fxuVxQHp5@vger.kernel.org
X-Gm-Message-State: AOJu0YwM3Qlx+t4OXodQ3RLaNVHPUoy5j/X8Q7IHZEatNMYSKY6B8lm2
	qidrAMfoT58lnrW47xGKnPDxIzu9TwCDvGiFijEN0CRQ1llE11OYw4h55apvXFo=
X-Gm-Gg: ASbGncvSZWubH7BrkJo7J2KAM0pUCtm149p3qjIYNVtnt7Zr5nN+tWD1Hxqhs9ntUuK
	j9T9+NkGcA94CMlbsQWAOVOOMlo2X4YDGFSbjBFFsxwg3xFk8wrnewed6qnxpfa+Inq2hS5BfHM
	lpd34tq4KWiLbpewKGqsqVBskY67BiZhR6MmzGZ4iXR2kSPBGD/TlDr0MZO4HGcYQ1jK4tC9Hp0
	nXwtg/oaWJZ0OT23ku71rDcpkpSb0+JW1149qTCUcLXwhuXJXCHj1Ggs3jblZIXjGQ1TFIIZoED
	wExkeFfCFxudubfDyjnJpAT9D0Jftmz+GAMepVmTTw==
X-Google-Smtp-Source: AGHT+IFJTbOhodvzE89VyWlm98mXeqCjUzL4IWC2ENgI8KAMI2IbCSRQGTMlBENkiboZNnQ5ghsFCA==
X-Received: by 2002:a05:6512:3b9b:b0:546:1ca7:81a1 with SMTP id 2adb3069b0e04-549432ccb18mr616846e87.3.1740631058787;
        Wed, 26 Feb 2025 20:37:38 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549443ccf45sm63485e87.229.2025.02.26.20.37.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 20:37:37 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konradybcio@kernel.org,
	robdclark@gmail.com,
	quic_abhinavk@quicinc.com,
	sean@poorly.run,
	marijn.suijten@somainline.org,
	jonathan@marek.ca,
	fekz115@gmail.com,
	Danila Tikhonov <danila@jiaxyga.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	freedreno@lists.freedesktop.org,
	linux@mainlining.org,
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v2 0/4] Add and enable the panel
Date: Thu, 27 Feb 2025 06:37:22 +0200
Message-Id: <174063096229.3733075.14794380891862567011.b4-ty@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250217222431.82522-1-danila@jiaxyga.com>
References: <20250217222431.82522-1-danila@jiaxyga.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 18 Feb 2025 01:24:27 +0300, Danila Tikhonov wrote:
> This patch series adds support for the Visionox RM692E5 panel, which is
> used on the Nothing Phone (1) and then adds it to the DTS.
> 
> Before integrating the panel into the DTS, we update the DSI code to
> allow bits-per-component (bpc) values of 10 and 12, since the Visionox
> RM692E5 panel operates at 10 bpc.
> 
> [...]

Applied, thanks!

[3/4] drm/msm/dsi: Allow values of 10 and 12 for bits per component
      https://gitlab.freedesktop.org/lumag/msm/-/commit/b0e71c2637d1

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

