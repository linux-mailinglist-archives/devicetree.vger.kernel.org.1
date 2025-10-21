Return-Path: <devicetree+bounces-229499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 73425BF8401
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 21:27:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 62BB84EAE7A
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 19:27:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F497355043;
	Tue, 21 Oct 2025 19:27:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sOoe/dQO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5D20351FC1
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 19:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761074833; cv=none; b=Fs/DZ8vjYx6Q516CY77l20hcIg1ATk6Y5rMUPDLVf5LuTVgRK2ZMKomem66izbgJ8dXvgaVbgk7n446wQ7IY8HbqgmYzGGTI91jNOEOCLxdYucxVKz2JLsX+RnViBqwbKpGK8tiZAow+FZKWw7XyWgpHy9TBG+qMQOWIBUrmiO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761074833; c=relaxed/simple;
	bh=80lKMAyCvwagR5exBQfzbE8bJPhC05JQJ4q2PDAq1Fo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=LBKUCehz8uQ9FYAAt/yBpPnmCOM/kb1HzFV+M+1iz0sU+A06rm6O8l7/nKH86DLkkcUH++5BdLS4K5zAEz1WfUTuvx+alC0GAigDQwOhsnj/9BoUcbf3kGfC6qprL3RXeE4hh7msIRuwGT9UeLrqVSjpkmKZgm8+SrHCCT9Ya2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sOoe/dQO; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-427087ee59cso636925f8f.3
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 12:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761074830; x=1761679630; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d5/SqlA3X/ZkVhbqceO5ccBn+9e7HcyK50UX+eusqGE=;
        b=sOoe/dQOi1vedCzQnCcKxUCDdZiKcemRWrNDPq7LUBVYGMz4kBCumvHqA0IMi3IZIG
         wAxXCAxmeIoBRzRmc/sbw2BKbiByqz/3smmLq24lskpjsf9e9jc/HyB1eU8FPdTiY2K4
         PuTJUBLrNtov0qKXUSvBwGKGZIRETxr7jNESYv91xec1cP5tUz0jBBUnI5oCJVVBgk9W
         eEcZSxv/eoxH8zgYKHDbDmV/38DrlFhziaccDlNf+jKP8kAL/vU9N877uvCPnQPARlPC
         ByJcwneih89fRUxzT/FqEXzBR+jUGJ3l5n4XDEbGx5sNgvGCJVOKaB5terYi6LA7RbB6
         PR9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761074830; x=1761679630;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d5/SqlA3X/ZkVhbqceO5ccBn+9e7HcyK50UX+eusqGE=;
        b=PXN85u0rpMxt3GYS1QuCd5pUyj9ggUOyxK6CkAnQEanA2BFaNQaaQxeD82IcG0qFkI
         1knNagUfDhe1mSAnsHGnHIIsil5ddlvBYiAQn5n13jk0In6mhkGgMDKcEPEv8JZFfZVT
         jXhetq8bN9wAVuZYWme8bvUN7HwD2ngJyzT8uHRFoI2Nm7/xIAisWg7iiyDRjBUTXve7
         daqG4B4z8IrNytxXl91aTfUVPECbQ7B2g/fIw9t+arUsr8hWRAvuGVgt2U7bX2UlfDN3
         SFp6qdEGuGzXP/cdFXSsNqC6GSjsqmEtw5a+9BwFbz0RnVJbHBlsG0LHYUmnN7/zMO0z
         9WFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVUu87XI1X1R04qwF9nPou+okSHO6D9tB5Inb/LIcPu6f2mgaaT3Cj+L4/JdAyMvNKVSEzRrkQFvtSK@vger.kernel.org
X-Gm-Message-State: AOJu0Yzc2tAaQ1aJBxQNF59L+kqViiKn1zHJnFug+J9Xoq8iOTTfiv4N
	CKTFQkvb1p0Zry2tCrlPJ9P7RoilV7tmzXsgokJsvRyVrjvo+cXGKof+Y/LyM8C4p5Q=
X-Gm-Gg: ASbGncshxyQDoK1XxWD9AETLr2UBP0YQ1v0VAqkmLMiUP2IRUao/K04/qKBGObt5s2N
	wyGkoiXfYEAgzuchXRHXKOfDpjxDGC7Lz9mxumZNVeKutOHREBxjt8SEp3bdfiGhPsE5ZkQubzJ
	mgJAwfMncvrM8QVgqlwUHM8lYC4ESPosjHKF3ZMPh9UX0ijpdzPF4B/6qNxt2N6BaKCKnF3++E0
	/FrFP+a13i6+2DcTQ3P+FCmmNksa9HImXF11Ot28EJTuPvTt9f16pn42Wp47yt8UY/+UNIvxN72
	+tXL2c4Loe7b7jj8nremX/TPcGbnkkvyUb/OSlHemEy2w2KB0RDey6he3zwfqN72CEEBtMoK0kj
	2JRZsEtOgXJEdjywf1qpPqVGPrGi05kVfh691gVHC2fWrzzJQdA1QZ3KtyncpQGgSK7H0BhXofC
	Qtge3xnGwl5WOlX1YPg/DYplgrcFM=
X-Google-Smtp-Source: AGHT+IGAOoUW0XD9+qwwI+PbL9VG+MrdXs4rR2dEuVGyu8dEGa1T5rx/ZK+RB3yRzWux75q9C21zPw==
X-Received: by 2002:a05:600c:3b9d:b0:46e:5cb5:8ca2 with SMTP id 5b1f17b1804b1-474942bf7b2mr23336545e9.2.1761074830178;
        Tue, 21 Oct 2025 12:27:10 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475c42b48c9sm7839115e9.15.2025.10.21.12.27.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 12:27:09 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Sam Protsenko <semen.protsenko@linaro.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>
Cc: Will McVicker <willmcvicker@google.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 kernel-team@android.com
In-Reply-To: <20251013-automatic-clocks-v1-4-72851ee00300@linaro.org>
References: <20251013-automatic-clocks-v1-0-72851ee00300@linaro.org>
 <20251013-automatic-clocks-v1-4-72851ee00300@linaro.org>
Subject: Re: (subset) [PATCH 4/9] arm64: dts: exynos: gs101: fix clock
 module unit reg sizes
Message-Id: <176107482865.33931.12362645662957210185.b4-ty@linaro.org>
Date: Tue, 21 Oct 2025 21:27:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Mon, 13 Oct 2025 21:51:33 +0100, Peter Griffin wrote:
> The memory map lists each clock module unit as having a size of
> 0x10000. Additionally there are some undocumented registers in this region
> that need to be used for automatic clock gating mode. Some of those
> registers also need to be saved/restored on suspend & resume.
> 
> 

Applied, thanks!

[4/9] arm64: dts: exynos: gs101: fix clock module unit reg sizes
      https://git.kernel.org/krzk/linux/c/ddb2a16804d005a96e8b5ffc0925e2f5bff65767

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


