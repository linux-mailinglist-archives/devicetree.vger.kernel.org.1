Return-Path: <devicetree+bounces-212835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 829A6B43D92
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 15:46:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 462881C85342
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 13:47:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDCFB306484;
	Thu,  4 Sep 2025 13:46:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CXFlau1U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E34B53054EB
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 13:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756993576; cv=none; b=S+yeeZymDbeuy4xe34s2FR2cjJQ088YV50MbM05xhQOKdRs6+c14eYxDtx2IPgkt5MAadUFuipkgOesfhg9JiHC0yGGCiSzcRTZb2JOq+SNMhH0MCPKgwvVjo79fZ3AUMoaKmSY1o+iytqKxekQvDN+3ZWaQcOQkzywdTUwtSM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756993576; c=relaxed/simple;
	bh=gXxTjmeDzKTB71t19xBb7Wxglec5+6mU41Xm0qtDe5k=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=rn2iVxB/iIxYzSPJfRehaJHektqk0tCObl/DwKNP9fSAoWTf1sey1GVnaM3SdFAUdIgvrNyDm7+onBOnldDGpB0dVuDu/EJ720dXP5vYYWuQoLzNHNHLsqPsy+6VrloQSDCq4H/VUVGbCxGgqhnm6ya9I+7d9oaKAgtacFL61To=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CXFlau1U; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b017e4330c9so12760566b.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 06:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756993573; x=1757598373; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AQ26RmHLaQWCbZPPgHAZQdVbT/ghy6v/A0FERV/jWuE=;
        b=CXFlau1UNt/Poc6gW4Z87Y6m7IFh83zTb3QHxjsXqPJP3vuw5FSJv4BhwDOd6L6p4y
         8bElfH/ctsxmfvjebSYnpZ/gTAeeGVrskS0tT/M86O9p7+PkCnaewEtI7/KOctchR78K
         zbH9K5QfI9dqHFy7hoMBqrFcItQbmQkVmXB0xJVT+LC8/hxOiTMia5WE3W3BlbP03Q3J
         jHKshro3NY9BN5b4gkSIgoTetUaBRYiPT0iITII2fwrQZT8Xvcelg5psmjpXKvYVffnG
         wfg1DJAWzvQBYwxDz9spgGHKMAGaC6JlvCmu4rWBgeGMT1ez0rEat8o+oMS38vk9eQZi
         cWtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756993573; x=1757598373;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AQ26RmHLaQWCbZPPgHAZQdVbT/ghy6v/A0FERV/jWuE=;
        b=m6O2pYdi4/pclYy/41n7XmtsWmGCJpmGmEgsnUD5upVKapXW1lHAEANS4ajHIitNo6
         dgJn37IFunJunxf65Rq3c8GqyVekAdKpm0aI03aodHN2VK0tjEv1ng4XEXXlBgYOBOeM
         Ge4W5YuXxSHjXOAdw+WDzq1bKate9UDyrdaJK2nUFp4Lu51aDiysHeW70xn/r8/1UY7v
         +rCaD4DdfdmqoOg5z8TS+Wl3dhtIM0mpPkjirdoLDOQ7L7zOOJCS19qPkPxQjgSyQq7c
         8vn/zwxkEnH1ZaQFgZ9ZxjgwO6UZwkjRIb//80QlbiK1rr/tnsoYf+UAfYd9GIGJerhd
         Owcw==
X-Forwarded-Encrypted: i=1; AJvYcCXNjGog8KuZZDp9CIjQ3K5iQpvbS4uAKYGVyzwokOzaNsIe2OhaBrUMPDEsASGX7J+pL06GZvkxG9s+@vger.kernel.org
X-Gm-Message-State: AOJu0YzLsyfLZMJbqvEjOb+kLkUWGiXMCiyZpQEz1KXI/icz9UU5ZdNt
	T07FyEvljem5af9bvAmLNS5UxKoFGqxqJHLfuUTvtEUCnf2bQ1tK6kfsDPfIlBly81w=
X-Gm-Gg: ASbGncvcglnyzFaELvQq9loHNny6cvIse1o3173a8AkyNpaNptl78MFidet/ieP1AKU
	uC7KylUPWISnM+qQ9ozai1ljxx8h0Z851KTuiA+nk1SAitLt6yvyrH0zidEb1ixlMcAksSmZSE7
	5jmFOWUyUHTm5feUHQL4bw8Hdh3oATrX0w6bkaqtXhERZFY94pa27p1bGGPs/woPqradQQTTyNV
	5azcU8hc5FmwyJwCGFjsAw3FtCQxOpyNR9HNiu1ZGPJzPt5W3Sq6xjUZ25zeqWMpnRLqK00MUJI
	2JVOwMc/Nwr1L/RqlU7f8xF9CKb0/G7t5mL+K2m+iKvWtnzuihFFqcZL2KHiqI8Lk12a6Tyq7b8
	KV6tu1/Zk7rFM5jFx2L8h32P3UWQ+7IGeuAi3okw2rGEQ63bpqg==
X-Google-Smtp-Source: AGHT+IEQoqOwB2yGHXtT3U5ow0C3hw1fUocrSdNOZukUnko/TRqHkgL5aBTtZ+Kkhn/YxvPmHZWsUg==
X-Received: by 2002:a17:907:7e99:b0:afe:af91:2e54 with SMTP id a640c23a62f3a-aff0f15c2c2mr1210879366b.9.1756993573122;
        Thu, 04 Sep 2025 06:46:13 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0413782b94sm1180634266b.35.2025.09.04.06.46.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 06:46:12 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: jesper.nilsson@axis.com, mturquette@baylibre.com, sboyd@kernel.org, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, krzk@kernel.org, 
 s.nawrocki@samsung.com, cw00.choi@samsung.com, alim.akhtar@samsung.com, 
 linus.walleij@linaro.org, tomasz.figa@gmail.com, catalin.marinas@arm.com, 
 will@kernel.org, arnd@arndb.de, Ravi Patel <ravi.patel@samsung.com>
Cc: ksk4725@coasia.com, kenkim@coasia.com, pjsin865@coasia.com, 
 gwk1013@coasia.com, hgkim05@coasia.com, mingyoungbo@coasia.com, 
 smn1196@coasia.com, shradha.t@samsung.com, inbaraj.e@samsung.com, 
 swathi.ks@samsung.com, hrishikesh.d@samsung.com, dj76.yang@samsung.com, 
 hypmean.kim@samsung.com, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-arm-kernel@axis.com, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org
In-Reply-To: <20250901051926.59970-6-ravi.patel@samsung.com>
References: <20250901051926.59970-1-ravi.patel@samsung.com>
 <CGME20250901054259epcas5p13dfe6ccb7759af018a07403ceb1e86f4@epcas5p1.samsung.com>
 <20250901051926.59970-6-ravi.patel@samsung.com>
Subject: Re: (subset) [PATCH v4 5/6] arm64: dts: axis: Add ARTPEC-8 Grizzly
 dts support
Message-Id: <175699357104.171312.5414348160649999670.b4-ty@linaro.org>
Date: Thu, 04 Sep 2025 15:46:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Mon, 01 Sep 2025 10:49:25 +0530, Ravi Patel wrote:
> Add initial devcie tree for the ARTPEC-8 Grizzly board.
> The ARTPEC-8 Grizzly is a small board developed by Axis,
> based on the Axis ARTPEC-8 SoC.
> 
> 

Applied, thanks!

[5/6] arm64: dts: axis: Add ARTPEC-8 Grizzly dts support
      https://git.kernel.org/krzk/linux/c/9e74b88c0a57f78dfd3017de435ae400d9b659d2

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


