Return-Path: <devicetree+bounces-78915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E717913A73
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 14:22:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C6C84B20C53
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 12:22:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFD3A12E1FF;
	Sun, 23 Jun 2024 12:21:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MjoSeGa5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5DE4CDF9
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 12:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719145319; cv=none; b=bC7Y/vXx5wce6F13qXecwxchC3go2hbD81uZiMzJ9vd+cGEr+wq8gD6SUiEBuFPxmjTHhio5AB4QRW6rk0lkPGZsotnu08gEInP5mwcNJiE08wxqUhG2dhzsdXzck7c6iO+yfsQe3iJOKUkaZ54b/fQSsofu85KOhotaczzLVVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719145319; c=relaxed/simple;
	bh=MFUzD0/KdFnQ464AqzGL00/7QkTXY9CeUtEYYEnA2Rk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dX+KZfFAHNMQyCtaYarrsm1aRAcWq/HFZ+WWqw/gIuYN0b9e+ZN5ev2sLZ/k5rklMVmx26Ub68MBHNbMXUG0Q6CilGALkBynywSmdHNfSS+SHT7DWfKCZ5G8UOpFNqoJWXSj9p6SHDe+dygeI4UKt20eYoqEF7cM1HkhS9plqqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MjoSeGa5; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4217dbeb4caso29333095e9.1
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 05:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719145316; x=1719750116; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5PZY/Iy3uaQiPl2ktFu3lGh5vdTeVSZZ/gvyI/ZzytA=;
        b=MjoSeGa5SXHcUv6+UICL/37+c5fDYbJOiNV9HLTgB3Y8z/MURkt6TvPyWm5uJNFxp6
         UT3kOi5425FCqTmW4ZXVXpJFiigWryGJ+1L2K0FKXTFjhYfF1ubD4z1dEv1H6pFUv9ed
         D/c4QPWVR/UFUdiYGixTdbREqkSkpZg/CAfQCojupFByU96N72lj1KoTQ5ZlGcfj7CWj
         pllvvf3+P4gAXix1tlhsUaS1Q1kYVJ6xQMwJ8NzmwnHyg5FD6IwJxKqSK3AYUFDM7YVP
         LOoNeQl688kkdJkbF2s2t1htsOhOLdUtBSwJP2mQQDe9V3y1KWtJiizTfrWtXOVb2Zh+
         GuZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719145316; x=1719750116;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5PZY/Iy3uaQiPl2ktFu3lGh5vdTeVSZZ/gvyI/ZzytA=;
        b=a4KsAwXCKh5xjhPrtsHIVdLLK6SM3ANDLk10FaO25BFti4tKn2kFVec0yi9li6OXK9
         HbIE5lZkd1pBWCUelw5mE1UpPmsv+bOR1pc60WlPUzDxRJpNlaM2pNRN/poIVM4Zup1g
         ZSchr0jLAncXNidH6sNZKziQZK5HdN6fPsaf3mfzMsSB5r4KE8kf7hMtMXycx8srHUis
         WvmC4Sa++NOH231X1wK74eR4hqUd+4Ap1YXuTrXxuoWAIOn3H2iZMtxU/76Xy7vse/L8
         yh1CRxM43vt8OpZs7coXsLAlxMD9MoG4qLxXruN8tuv4ilGobLqp31CjdmK+BLoLNXqz
         EDkQ==
X-Forwarded-Encrypted: i=1; AJvYcCVLCWsrlPhrfAmyfvNpmLFfUpoaKb0Uy0iRuV0T8E64kJTbhG2EZv1X7wx8zXXgkWMa435HFXNCqyxpUNTgP1TDAztqMxiaQrd3QA==
X-Gm-Message-State: AOJu0YxD1BOkSc4F22bstkM+LIp1E9iI5C1DeeahR7B7j03XDCroO2CI
	UTEfAPNQU/IHqi4OZ7FGeS9TuWDvyLXO8plKbnYpKBJa5LAeyIe0n1LhNmz6vdg=
X-Google-Smtp-Source: AGHT+IFwxtyju21J+vk97bXoJln3Azhbx93pTT8C9AEwQ1xhL4iSQkX2sR7qbsNZc48Zhknjqb4AtA==
X-Received: by 2002:a05:600c:458d:b0:424:781a:188b with SMTP id 5b1f17b1804b1-4248cc58a63mr16715385e9.31.1719145316376;
        Sun, 23 Jun 2024 05:21:56 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3663a2f693fsm7197553f8f.69.2024.06.23.05.21.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 05:21:55 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Daniel Tang <dt.tangr@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Davis <afd@ti.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] ARM: dts: nspire: Add unit name addresses to memory nodes
Date: Sun, 23 Jun 2024 14:21:50 +0200
Message-ID: <171914524816.46635.12115355129399878010.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240612151314.27967-1-afd@ti.com>
References: <20240612151314.27967-1-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 12 Jun 2024 10:13:13 -0500, Andrew Davis wrote:
> Fixes the following DTB check warning:
> 
> > node has a reg or ranges property, but no unit name
> 
> 

Applied, thanks!

[1/2] ARM: dts: nspire: Add unit name addresses to memory nodes
      https://git.kernel.org/krzk/linux-dt/c/af88df12762dab540d02c13324a0767473322f1e
[2/2] ARM: dts: nspire: Add full compatible for watchdog node
      https://git.kernel.org/krzk/linux-dt/c/c322d10fe52138b2d47e3b8dd65c20d705e1c313

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

