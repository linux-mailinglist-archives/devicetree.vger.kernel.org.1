Return-Path: <devicetree+bounces-91729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC4E94A4A7
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 11:47:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 902B61C2111B
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 09:47:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D900B1CB302;
	Wed,  7 Aug 2024 09:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l03lpOE2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277B51C9DF2
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 09:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723024062; cv=none; b=hkCnHeemhbpN9Qoh+/5qm7+NVNizU9tOj+mBuP75Rc9wVrs0PgJDGMWoMcfDXREUneuR8wFoJHPQMPSutpfM8semkntNm3CSHb3j1BxLiAk5F1WD1nnuUQms0c2HGzEfZdyrqn4a7ZLxoa8dg5jQaaOslEM9hGD31PG1jMxfkuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723024062; c=relaxed/simple;
	bh=6x+6CNfz/QRmD89Wo+qlPjABVXpMon1ANdDhhrDMjQQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=DGyEuRu6Ixx6e2XejXsRHul+EVbRrPZ5UM1Asff8/xD6cEV0RLNVp4DcrB3B5kK/8PUFSSb1UDqDvYBrh1u5riyKLiUuRTKVyjE1aB7prD16SvIlTkOtLi15Jtc3vFUd42qKPSRbZqr3f9rXGyoG4N1NDUHtgDoKmP6o/R6UfxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l03lpOE2; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-36bd70f6522so915633f8f.1
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2024 02:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723024059; x=1723628859; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bJQHsbfoE7TFW1nk5Vz1y5TQhi7f866NwaqHk3t7uII=;
        b=l03lpOE2ipvuioRhHuD7qdVpknQ+UldzsSKLo7HNnJei2AjgP/bdo+zFe7YIS5oAUZ
         Zo4O/yhF1aT7Fo8aflmBNGppRKKmN0UTjCGwGmlrojASOm1TQtGeZ6DxUV5ncRuSc6lY
         zRBxZWqYaDC9Qs+RSrJJBh7bcaUVZpvlFwS+PUXIQxBqukpKNvEy3n9nj8zf0DCO70xw
         vTgSBAfG6cjDi80mmw61q3qmhF5oI0w1kqHJm3f2dZlr86M8tfXLGqh6I+V/mPFBW7mv
         OhfiukO2i7PeP0n88kQStT3jFQu3ybQtU/16meCQNPEoUncCjTlvweajWXRKw8OufxKM
         5wfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723024059; x=1723628859;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bJQHsbfoE7TFW1nk5Vz1y5TQhi7f866NwaqHk3t7uII=;
        b=gRUwtkULzopBHL7PPOd01i5VCJ1ViacdVbXOl5yW5sQ5PWe7+HzLj5Ra8VLt9Bqm5B
         kCmwmJudj+ULT+aLBQBCbO80ZgcYvNtqT2voN1yPappLHo1pfC/8VQ1g6sxhaFetIQbh
         6xB7k9mUiDfqWYImMfCRCYRwvWuHwATq9PCfrpUK/M1gD1t8ogePOtIT4V5sjWyX37t1
         YTDAIGeS/qTWbmEEEXjyVdk+7XEr3r3/dU0IB9Y5tz9g3cdvqlTfPeZ7AvAAamY2ej1Q
         RpTdB3lzpHfweHdLPhaiTyz4bK3NgJiq4V587sCBztqaTmxP6BjH07xthS/zqII1eooM
         XF5Q==
X-Forwarded-Encrypted: i=1; AJvYcCVmGmBM6W6TuGQ8OWCnrXzF2eQanj4Lv0mFGEqOKwPBnphkTORwItF2eVzQa0kxfDZgBxVK4r3Le7YD0QG2/0DPxupb906xgFFVwg==
X-Gm-Message-State: AOJu0Yze83hQnrC60waf1iFKdb0Bv2oevQJpLRbRvBHSUSF+MH/nSjcv
	IEG12XRuVqCYzSaqw3ZbIYg5Wu8Qs3BiGYRUDWKG5w/59Z5sBowDSFQMg0CEoV8=
X-Google-Smtp-Source: AGHT+IFBtj9Dr4+asYh2JrcgIRkmKZzgumtHsO0v56LqeHKjzeBYOvDsAtsQ+HR7b0iDb/7ewj5FOg==
X-Received: by 2002:adf:f08c:0:b0:367:f054:7aba with SMTP id ffacd0b85a97d-36bbc14aabcmr11073921f8f.41.1723024059373;
        Wed, 07 Aug 2024 02:47:39 -0700 (PDT)
Received: from [192.168.68.116] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36bbd0269ffsm15444437f8f.58.2024.08.07.02.47.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 02:47:38 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, git@xilinx.com, 
 robh@kernel.org, Michal Simek <michal.simek@amd.com>, 
 Michal Simek <michal.simek@amd.com>
Cc: Conor Dooley <conor+dt@kernel.org>, 
 Kalyani Akula <kalyani.akula@amd.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
 "moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
In-Reply-To: <5eeb68b920d1ef186c4f623698eaa0557e0fadc7.1722325870.git.michal.simek@amd.com>
References: <5eeb68b920d1ef186c4f623698eaa0557e0fadc7.1722325870.git.michal.simek@amd.com>
Subject: Re: [RESEND PATCH] dt-bindings: nvmem: Use soc-nvmem node name
 instead of nvmem
Message-Id: <172302405770.381779.17877643051844659651.b4-ty@linaro.org>
Date: Wed, 07 Aug 2024 10:47:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2


On Tue, 30 Jul 2024 09:51:12 +0200, Michal Simek wrote:
> Based on commit d8764d347bd7 ("dt-bindings: firmware: xilinx: Describe
> soc-nvmem subnode") soc-nvmem should be used instead of simple nvmem that's
> why also update example to have it described correctly everywhere.
> 
> 

Applied, thanks!

[1/1] dt-bindings: nvmem: Use soc-nvmem node name instead of nvmem
      commit: c258adca4fb41965473fee30e1821040f925da8c

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


