Return-Path: <devicetree+bounces-216069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAF7B5389A
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 18:03:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D56053A8BEB
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 16:03:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FFC132F747;
	Thu, 11 Sep 2025 16:03:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OuGc9pOE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B411120ADD6
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 16:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757606617; cv=none; b=nETm/+FxD1R1DgZGpkXL3j0GDhtWzx/oEizHjLC0aOcaH+yG7Ia3wxM6RLNiVOpidO7CqhWF0zO/BJ1WxLDCXcTkvvjLxwSfmeBOgZ3Tx5VvsNcS1HCw93Z+8MFQQfEZROracgK8R2xn5Rt3ewf0vdzFmP+19AvcXkbz+NyT+d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757606617; c=relaxed/simple;
	bh=feg8uvcoH+psbJKogIt1Fi6gMzseaI/tqHa7Fszs4kY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qf4BNvzIlj3KQOX1/j1J5Dynjunq+vGw6KsLRNOSz+SovHnjLnHlDdk/sSm4UqNP2xVwXg4CfMhALmtOhAxw9gC5Z+RUvHNPE9BFic7NzdbCtoVcunRJJqD9aDHGI//JP7xRIs/DXAJRy4RyZkgog/pRt76FapBaukTHcn27700=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OuGc9pOE; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-45cb6428c46so11161715e9.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 09:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757606614; x=1758211414; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B/CVt0Q8ERlL/cAPy2S1KrYJmxZlcG/hzk0QI53bNrM=;
        b=OuGc9pOEjM7OyEZLwLsrShWbXKSSK52MravEooHk2nGBTXcOTzxv4mVvS1zJOJXZPE
         sRogypGLTo1ojGNzydmK1blep9JXwrhQPodDmGgvISHr3+MJPr5/hTZX9QjQXKCpgzR+
         KyaUukH7L4d1dz22ieFWcyxuL8axum5oh83GnnzO3kHNEpabo0L3dvZIMiFsLleTjLhC
         XVmJNTAw0iMlUK8rlBquCJaon3MHULYq0RBMXQpF/TmWjD12yWXk61n3pGRhl7l0z5MU
         seVpz7++KQz8gj7FPpXr15DLJRrM90ccaJrDEp43rp0+gC4w51fUF5sJzIUiMZ3M5DDt
         xW6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757606614; x=1758211414;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B/CVt0Q8ERlL/cAPy2S1KrYJmxZlcG/hzk0QI53bNrM=;
        b=v1dyCZoz7lB4a+svOEcuYms+UpCJa2RMJh3v2VsebGXfj04cbTAiC7besx89YF1yeG
         2+vsyOeHhBaDgyS6dNO258vG1NxwD2QzlrlhJsOdOCERz9WGKxbmaz8q6OryxMu7xqCh
         /coxRPuZkFonaCZ56dmrs2nfXnRsOah2QgnfaA0m49j/2b6c5hE6b08Qrtnd1j/uJ6sJ
         S3dpvx8RxXzhLgYGiLte6ZrpYNgADfhnpuRndn2mDIreA4Trp6tPOHxspK/V2m2mNKJu
         cb3l7u1LcjNajdVyLywjUfqpAgskc6BeXixNi3OIZtsw+BfvAIHXhG/LRNOVE+bF07jS
         xefg==
X-Gm-Message-State: AOJu0YwIS5ak1/CsNuT2XlNYvLAD/REiX+cMR4xL/UM3ZsLFqA0ILwSq
	i9NHitpN8zAOTIb+j3XCmENldg1RqjoORExX73vfOM20u6olx9zN1wN/
X-Gm-Gg: ASbGncsX9+kLiD1+VRsLQ2t1AjeV6q1bZJfpDchOeHGvS/ZsxY5uRcjcxb0QrE6s5Ix
	jBmPVfkQBg1QUQYZ+biow/ASKajW871dn1p/jhVbU1PX45tfap4dJpcCFCWldO95bLzeNzHxv30
	Or30oYXNYFyA0NC8AsNMcmMivzItyTFI2C6N4asdOVkBiuTNxiOTmrIo+gIShMRFueNsD3i7r21
	65gkteludBKxw4jhZ0Qt8J15STswApOE8PNS19IbfRlxnqHDiQDq6epWnRfIsTsaciW408/DTKy
	7bAozgXrMRqgp3gOHRBTGxgAR3CBpcjpmp3aDFZpXm9lu2BD01QdU1i6GP4e0cXT7iXbFuIfO/t
	kh9KAP88xgGr/7CbYaz9S33+tfbq7AKN00hwTpTJlH/rTtpUv5/HFvanyLvrFiVcwsR2xARb3uo
	Zqj/ufcyKr20m0+fRezSl72ENs
X-Google-Smtp-Source: AGHT+IGpmTcBKfpAGCaS84hYrX0OlyTAlSu5KtPBPDSfSIbv52UrNIhCRbZT1XXdpy8U6ep5y8gjXg==
X-Received: by 2002:a05:6000:250f:b0:3e7:46f1:dfcb with SMTP id ffacd0b85a97d-3e746f1e310mr16662659f8f.26.1757606613807;
        Thu, 11 Sep 2025 09:03:33 -0700 (PDT)
Received: from localhost (p200300e41f1c4d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f1c:4d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3e7607d822fsm2993951f8f.53.2025.09.11.09.03.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 09:03:32 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Ion Agorria <ion@agorria.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v1 0/2] ARM: tegra: add support for Xiaomi Mi Pad (A0101)
Date: Thu, 11 Sep 2025 18:03:28 +0200
Message-ID: <175760648467.2794963.16075568384592969223.b4-ty@nvidia.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250909074958.92704-1-clamor95@gmail.com>
References: <20250909074958.92704-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Thierry Reding <treding@nvidia.com>


On Tue, 09 Sep 2025 10:49:56 +0300, Svyatoslav Ryhel wrote:
> The Mi Pad is a tablet computer based on Nvidia Tegra K1 SoC which
> originally ran the Android operating system. The Mi Pad has a 7.9" IPS
> display with 1536 x 2048 (324 ppi) resolution. 2 GB of RAM and 16/64 GB of
> internal memory that can be supplemented with a microSDXC card giving up
> to 128 GB of additional storage.
> 
> This patchset requires Sharp LQ079L1SX01 panel patches to be picked first
> or at least panel schema to be approved.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: tegra: add Xiaomi Mi Pad (A0101)
      (no commit info)

Best regards,
-- 
Thierry Reding <treding@nvidia.com>

