Return-Path: <devicetree+bounces-130605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFEC9F086E
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 10:50:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C88728293B
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 09:50:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18D381B3943;
	Fri, 13 Dec 2024 09:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="deQFMrAd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A581B21A6
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 09:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734083426; cv=none; b=JlFhgj9/dK0bkErxZrgWZE1QKbVWwBTr5jxPCl1bOAALGzAHFvLrkMh7oWJhT+BgZBJ4XMhevH+A/U2KHgRyAQVQDpn2HZ/MENQhVd4idIERXwTgMsoWQVFoHXpnqJLcaJAmpx8MHjEfjIrets+21f4U6BzGUTA9TBSeMwcWKlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734083426; c=relaxed/simple;
	bh=jv5vY0x+o5FF4JeiUM09GBWAmCzvymPLriVPtjpQ1Z8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Dz6RiHKB74p0jmaNH5vqKMI/X47qDppQhTRLEAhb4oP8E5DZKvzH0Tg5KZn6ZQrnUxfqUJSCkn1IEPuioFHOh2ZgGI+L4O7z6SAkPbPEmYJpJavtS0CaZZAzzsy4qCR8ElaJbOS8rpOVnfkwTMvcFrXv3jm/Tzk6uJmpIGGwBnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=deQFMrAd; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43621d27adeso10714475e9.2
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 01:50:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734083423; x=1734688223; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2BrG/YdfyMfJSbNwPUyHp+NyjkXJ3CoxC8wyqAirNVg=;
        b=deQFMrAd7Do5iAbESaZbV9oK3USltiCcW6XXlPpV4NPuZY+5mmhjmFd4Sypxs1g86n
         2VH79GvOCEgakFcsGuhECpzPsb8R79HOD0IMf9huyeuGJIqLvmvlAs3Za1rtqVWWLAGc
         Gz2PWUUE0mnhFGkK8qRhW14LS+YYYKWzGB54bVlBVtmOaEui3KwpCaRZsXcwHhNxIeA8
         tkFLnAj9Wcx6k0TriK4pZ2XCRqJgq+S0QCFklwSI7TmyRk6IxfBNw03CsLBz5H/YSD8S
         chWgBko8nK3RJreLAavmT9Eu8k6/u3VU+GBaJCdvojbTblQ0l2EZeWpreVdUtQAf5RLn
         IGrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734083423; x=1734688223;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2BrG/YdfyMfJSbNwPUyHp+NyjkXJ3CoxC8wyqAirNVg=;
        b=sLBzub2n8vRAtF0pBfJdt9kukcpMtyQwgteoUxPKjT6N5UW9TTOOpcJCtNhxza8D4F
         AMTvySAEB8wC/SB7Ir/x9/X+4D1d1BxlXlqdILtPYxvnjE0YJRwnJuXjg7NWTsjkm89D
         EhnwJmQkRqQMHXGNfcFiZbn7/jUzb+uCNWmEQLwbK3G7UXA3s7oB5NibQqfjUyuD/kxL
         OEUrgzYIFkHiJVp1cxo38jXQ2eFodbwhTuXN6lr0QamtdZydQfzXBPTrp3JbEWHOf+JP
         xQ5lVrirVQl3X5KzKKSqceBvr1OWxuHLSG4BUV+Vw09yPHG/RkJ8tYdP2sIq1CRqCUcp
         qaDw==
X-Forwarded-Encrypted: i=1; AJvYcCX0l02TuI36unA48OZt11TrbOfcJ5dEcoflDkVStWfC0VC/cNxz0KZdK2drgv8ViVm3DqgRyDuHGHZl@vger.kernel.org
X-Gm-Message-State: AOJu0YxXKqtAhSq/Z/w9zml7aTGfTwlGgpOr2YTxCk1fYeCZDp1sX3Ky
	bqTOUKRtEAxsAhLvYZizIo2Ji2PAxeMVTuCcvRguQ9ydj09VEHssdAJ4wQzSahQ=
X-Gm-Gg: ASbGncuaPPOyhdML1+wtc9XFYDTHCICWLB4Vt09OjK5iYqJ1KvzDB4Ks0whfuZJfE6V
	pz4VKrGa9ZLBT502yh6uPuQoibNJIvdMSW2fEXk8yl9+JojTizO56yvC4u9wKbNtpWqEqrnWVP1
	YryiJIFhQh5R+dE04akb7PmI002UzT4zmGV8E1qTG7qtpG5CVyiGW46i7wU9RjmVXNaVlnyr1Rk
	eH2MuKiTn94d4gPv+SA4vRZauVqr4iX1QKZYEZqcISdbvgoTqEoxYzFQL3RFba1VNKXi9tQuZW8
	dQ==
X-Google-Smtp-Source: AGHT+IG9A/KVakoN8guITzQ9eblOlzfndf3qs1MoLosGMewWA0MLS7+7RXq3a6QkML6U748MbVt8iw==
X-Received: by 2002:a05:600c:1e28:b0:434:f8a0:9df0 with SMTP id 5b1f17b1804b1-4362aa3d988mr12741175e9.8.1734083422743;
        Fri, 13 Dec 2024 01:50:22 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824a3e38sm6521670f8f.23.2024.12.13.01.50.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Dec 2024 01:50:22 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 shawnguo@kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
In-Reply-To: <20241210105705.116116-1-festevam@gmail.com>
References: <20241210105705.116116-1-festevam@gmail.com>
Subject: Re: (subset) [PATCH v2 1/2] dt-bindings: display: panel-lvds: Add
 compatible for AUO G084SN05 V9
Message-Id: <173408342200.146926.12035228317678634165.b4-ty@linaro.org>
Date: Fri, 13 Dec 2024 10:50:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

Hi,

On Tue, 10 Dec 2024 07:57:04 -0300, Fabio Estevam wrote:
> The AUO G084SN05 V9 is an 8.4" 800x600 LVDS display.
> 
> Add a compatible entry for this LVDS display model.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: panel-lvds: Add compatible for AUO G084SN05 V9
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/1c64605fd976cd2c7e4f30d826818a8c27924c32

-- 
Neil


