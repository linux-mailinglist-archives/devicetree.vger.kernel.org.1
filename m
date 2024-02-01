Return-Path: <devicetree+bounces-37553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0C3845586
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 11:36:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B358B1C29836
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 10:36:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6949D15CD5B;
	Thu,  1 Feb 2024 10:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="amGEAsfQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F34815B993
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 10:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706783777; cv=none; b=n+6uxk0f5eh3LFYs9BZ9E86nmydyu+BS696maNJ3Ta2roz5VHKNrPl1r72lgvzwb7B5j2sfXNwMTRmQLDe7AwjT1SkyfS9ZvevaLg03BrULI72MbeLtPIGuEYUdX6qIw5S+9cEiLeu0Z8N4JDWVtfC682d4V8+V7MYgQhRAohuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706783777; c=relaxed/simple;
	bh=kT633pXZ6PeGzzZ0uPZcSdTK/Zp9e9YmnuuGBolgvUU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=TXaBNcWJfxIkqeouSLaQDCLjqiFrHkJaSXnCxawYSPpbrf3dxk8s+GaHjJrk5obelyRdilAgXScycKSWt8O55XJmBsAYNWhQtIRwD9v8CTpG3U7bcvxjFuok0iaLnzOEVJLf32sEq8ofKH92i1LxIyVofh21/vvfiBB8o9GtJk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=amGEAsfQ; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a3122b70439so99222566b.3
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 02:36:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706783774; x=1707388574; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OSntlhSN13SEsVS79fbXZmbO7DLvEUlU7LEOJV1I+FA=;
        b=amGEAsfQG7MbMc5wzqED3OrMSGNivcVPbOewm0Rw96x5Fl006g+v1sKtXKSNlzYEnR
         G5iXL039Q3tveS8Eb/si0BnpuWZ67w9nU4D8c2vlXyJyTqI85qWhpRcnNn8GMROafkqV
         92YaAv+FM2Qv6s/cHokhNwUI4mosOXC9bOjSagy70y2niryxMRQWWcernyWIUf8KCTPb
         49gIOYaQJxdilugHjTl48hnLbrprg1OmHOOgygsjdI+hJ28PjrsWWI8dZheRuF+srrAr
         fcdDDJOTmDIiwX4D/aa0oEE/YXUTudfz2mzp5oOkwWjI2eEpEW2kZc8Ymgg/KiCOPcSu
         mU9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706783774; x=1707388574;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OSntlhSN13SEsVS79fbXZmbO7DLvEUlU7LEOJV1I+FA=;
        b=WO85KVZU4EOxzrUL0c/Dsj20xgfqtD0b6l1rWpiezs4t1vOMRENtjc991MckU/v7E2
         9yaxNBjZSg3/eGSxOBe/NeYM/jUECItzhRveqABQGac0aquyYXVQ4NUpjFCTiYP65NjN
         1rsvhzmPEjSHWNzHpc325yaa9Wdt6UkmfOCCn46Dc89hep1MuLPw2Txp/LmRxgwGSGbs
         J40M3GwBtpyQBlPVknPQKDHAeDCaNnGXm6mcIL2bbxcy87OhlbNzOhWXEWrEGHGcEfBR
         D6ND0ckLaS/h3pkGNfDTw73LWpC4VMweQAECokI/rlUiK4aG+h5vuq9u7OGGRolbhTYG
         WvTw==
X-Gm-Message-State: AOJu0YzLIa7ZKioC2rMgwwXpqhlyFRaAbuGHtSp/MAQXX8+sowbFOG2Y
	s+jZqZ0tO9NG+DwwUmAjPp7NKCnUpxM83g5eaxDi/AoclWO6rUhjAfRElnPykkk=
X-Google-Smtp-Source: AGHT+IHiYpcFRPzd30VJGaU3/OElCGOOerE5VXgMtICPxKJHYqOEiGIBIsyU0tAh3b8c/sseZkVthg==
X-Received: by 2002:a17:906:5ad3:b0:a36:8d18:4c25 with SMTP id x19-20020a1709065ad300b00a368d184c25mr2665607ejs.16.1706783773951;
        Thu, 01 Feb 2024 02:36:13 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXkGQ799//KdbipwsaTINuQq2Mv/ggYUPH13AXTJyTUYWJUebp0w1Nb6U9BZ25EmVDln5oYym5xATj7E8DhAuBenGUgqWiv/3e31g+zxzsq4PwsrnJ5eCkABbd39X5cxS0SgVv6HqkATsicDoTMrOEcOV5cMkQTppdHOJL5i8lR7NgmY3SuuN4dc3Jrq+NiPtsRjWgN1geaaBxle2aJJVg4ck+Copk6xJtVr2JTOIUrFL1aADIthXpjufvMe0uKna+G2Ww46FPFWHl6yEAJw6dqTvMqkgYiCrvbYCTlwgn+DkMGX5zZj6yxnC63C/uxVq7MwM3FNUWpPAgbz5rMKVZl1zXECJHW3XD7oLhdRzJZfMZNanHBEMR+gjXiIcxe0QLoZkW3SBvBz6cMpH5nJzKWLSo4w0JHG2xJ9SzUUSfwCmQ1/V8hINVHRiflxXLrtScWpKfJayx7ePJnlcPUrr75jjxepKsNz1uF96CcDadZtQ==
Received: from [127.0.1.1] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id hu17-20020a170907a09100b00a3603b49889sm3041749ejc.21.2024.02.01.02.36.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Feb 2024 02:36:13 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20240125013858.3986-3-semen.protsenko@linaro.org>
References: <20240125013858.3986-1-semen.protsenko@linaro.org>
 <20240125013858.3986-3-semen.protsenko@linaro.org>
Subject: Re: (subset) [PATCH v2 2/3] arm64: dts: exynos: Add PDMA node for
 Exynos850
Message-Id: <170678377214.179918.10215466663876855155.b4-ty@linaro.org>
Date: Thu, 01 Feb 2024 11:36:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Wed, 24 Jan 2024 19:38:57 -0600, Sam Protsenko wrote:
> Enable PDMA node. It's needed for multiple peripheral modules, like SPI.
> Use "arm,pl330-broken-no-flushp" quirk, as otherwise SPI transfers in
> DMA mode often fail with error like this:
> 
>     I/O Error: rx-1 tx-1 rx-f tx-f len-786 dma-1 res-(-5)
> 
> 
> [...]

Applied, thanks!

[2/3] arm64: dts: exynos: Add PDMA node for Exynos850
      https://git.kernel.org/krzk/linux/c/c0fe557853f3d4b61c4e2e729061482f4da901db

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


