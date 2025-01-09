Return-Path: <devicetree+bounces-136970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 26728A0721D
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:52:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 84D801885B75
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 09:52:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73FCE2163AD;
	Thu,  9 Jan 2025 09:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b="LF9I+Da4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ADD5215071
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 09:47:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736416050; cv=none; b=HtrBOjYs/Ha7c5s4IFoVjYh4AoD8Qfo6Nz2P2zdqDHwRZBT9U5Xtk/E0mTmoRjpjRRga4MDcwruVI/2HeNML9pUwGLairUdtWJfCJVHLDz6LPQIoVgq3Sw0Hm+vAy00MlxX93BWbUueQZ/eHUXLQfYTf2NHpT45ub7yLYMY9jgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736416050; c=relaxed/simple;
	bh=YwwxyFbVp9ubIV3L7upBp0vXKsn8m+dSbxfnVrARW4M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Qh33vRP9OY+bGYJ8eipfcAkQIUwlDgKbX7kzpMTYPHWwBNwjnpf8EVNd8dFMqpnVm6R6q1cc5ztUMrxt4xSGWTzacsVP6eBrAPVvIRol2GkH4Qx7M3EdOQGO2UzsmmegaHh+U3AsNh04FLLwOG9WTyLrD97KX79StOXa3aWFkCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b=LF9I+Da4; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43621d27adeso5225555e9.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 01:47:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1736416047; x=1737020847; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SNbH3iM15P24tabab4r4Hq7fEcHPzSMR1Jc7980FDXI=;
        b=LF9I+Da4JnAQxM8JDZ6wZxuxcZbUiUL3/Kkzxlh62d/JWa6ZiZkTUKkqyDhZCu51wR
         KETRwt5pcOIYDUbk+G69VE8oi/zjRZMyMb1xeiOqzclxDBAP1dPJ2bZAYD57nsEigeQG
         G+5AtVhh2OAR+WulfQWkfIIx9OvOBXZtsiGD8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736416047; x=1737020847;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SNbH3iM15P24tabab4r4Hq7fEcHPzSMR1Jc7980FDXI=;
        b=I520pZmyn21XN8Z0IKS3C5H9UxIsVsqgTeLfU8kMy1pVpjSFsYNNuUidpnafh3GAWB
         o9SiCVCWml14IqZ7kxp1nWg+IC4fRv52WX5Qj8ycHaVw/ELLqYL430yJfHGe5TQmrzuE
         i0oHglqtDA9cTYSPFHvwXOI97iN+BnsZjMqucLTTnqDIOzWz3H31hBYXqewqe1AJjWYz
         jodyPiediqPZmlc/fiwn12gII4E+JkkHQRuSN77HPCxgb5JQDLuVW4NNGinXd1ZQPMKh
         gieW/udqN1tuqpK7QAtosIvnXW98dDFTyX8bvzpx2ot7xHhXcLnqfV2t04SO0CIEX7DV
         UfJQ==
X-Gm-Message-State: AOJu0Yypnnv8XaF8IghxwuuG39DHriHQYorAOtPH/sRr2o3HHuzNhhsh
	GVfiNLZ/EFTF1E3Iek6/dkerelElJPI76R6nUXItaNuZY/FxqLotBHk5TgMqImA=
X-Gm-Gg: ASbGnctXQ3lMkA6XgxuRrhdsgY6ga7VudE7oeZc42Ta4hC5tgAuv5zUCuZV23jSB4If
	wRKIk8c0oVPIFD/hgM+y9ld0lzIUKiQCyjvhDVZUF9M5tZYSIVDdECnTh6Cnl4ekqmXiZhjFs4D
	KHvh3xmPodOLiOmsGwXAVahSlKSGNI0lnjaH3fH/lg3vUWU9JPuS2REYXqq4lgD0Vyc/lxlTOun
	Flx9+Nr48YofC6S1ZRE6rAUF1BKoPkuuJiBhQ3BGeuJ2QhwXxl/qQrFgHJ4l5y5DBvJGw+iClqk
	RQ8dQoiV7fjf5ZkTE3EcXdPNZKnKzIAKk342UaAcdyaHA5XCCgLaTYxWIr+Zo12IEu7lhbrSFnC
	RW8PQ2gJvIspw35nI
X-Google-Smtp-Source: AGHT+IGxeeEpa2MSG1HmncReA6RTWEyrPQVHEZhLn7pD8r5sQuTCISWUhneBbPalmpM3tNQNUSfMrw==
X-Received: by 2002:a5d:47c4:0:b0:385:f69a:7e5f with SMTP id ffacd0b85a97d-38a87308ae0mr6196848f8f.38.1736416046797;
        Thu, 09 Jan 2025 01:47:26 -0800 (PST)
Received: from ?IPV6:2a01:cb05:949d:5800:e3ef:2d7a:4131:71f? (2a01cb05949d5800e3ef2d7a4131071f.ipv6.abo.wanadoo.fr. [2a01:cb05:949d:5800:e3ef:2d7a:4131:71f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e4c3428sm1285643f8f.87.2025.01.09.01.47.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 01:47:26 -0800 (PST)
Message-ID: <48075e22-3231-4169-99d4-20fee4ad9b7b@smile.fr>
Date: Thu, 9 Jan 2025 10:47:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] dt-bindings: mfd: syscon: Fix
 ti,j721e-acspcie-proxy-ctrl compatible
To: Andrew Davis <afd@ti.com>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Siddharth Vadapalli
 <s-vadapalli@ti.com>, Kevin Hilman <khilman@baylibre.com>,
 Romain Naour <romain.naour@skf.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250103174524.28768-1-afd@ti.com>
 <20250103174524.28768-3-afd@ti.com>
Content-Language: fr
From: Romain Naour <romain.naour@smile.fr>
In-Reply-To: <20250103174524.28768-3-afd@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello Andrew,

Le 03/01/2025 à 18:45, Andrew Davis a écrit :
> This compatible was only added to the list for compatibility with older
> dtschema (<2024.02). Add it to the other list also so both new and old
> tools work.
> 
> Fixes: 8dfc4a014086 ("dt-bindings: mfd: syscon: Add ti,j721e-acspcie-proxy-ctrl compatible")

This commit is no longer part of the kernel git tree, I'll resend the series for
the j721e with your fix applied.

Thanks!

Best regards,
Romain


> Signed-off-by: Andrew Davis <afd@ti.com>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
> index 717b616349e3d..1f3e67f432e7b 100644
> --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> @@ -214,6 +214,7 @@ properties:
>            - ti,am625-dss-oldi-io-ctrl
>            - ti,am62p-cpsw-mac-efuse
>            - ti,am654-dss-oldi-io-ctrl
> +          - ti,j721e-acspcie-proxy-ctrl
>            - ti,j784s4-acspcie-proxy-ctrl
>            - ti,j784s4-pcie-ctrl
>            - ti,keystone-pllctrl


