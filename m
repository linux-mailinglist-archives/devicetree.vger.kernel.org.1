Return-Path: <devicetree+bounces-177551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3C5AB8076
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 10:26:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1E30A188DE08
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 08:26:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CF7E29375F;
	Thu, 15 May 2025 08:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CsfZpOqB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104FB28DF08
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747297435; cv=none; b=Elf4rDXI4JzA6oyNCEWhYCW0jWXvkeZ8DBPO6y8MNJ/KX61MOfTOAz0zfkPZp4pKkGpwrIqvRnbzsC/gG6yZ0ZKnDSYOw/a5BhuqKuAtT+4dMas6ruio3/XIe8W+SCrrZVlwWFXl23/t3kJq+8Gphi/uWj4wPnRjOv4ZExkcKdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747297435; c=relaxed/simple;
	bh=ZoN7WUrWTT1EvP6wGsSudZOTn/CrPVijo1zustyTmkI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U5xza867Yq+6MR3mOTtW3hi7spie5FysmMrwG2IZHzyANOuBIHNQtCimWts56COWbw9luJrU8G1mp7QHWJz4XoWKDiBv6MpPhNKflyWYyRzaXgsUgRZ85Q1YCxzKyWKGpIsRmHF/QDqGChXwDkf2eNWBAN3FZdKiExWXPPsQoc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CsfZpOqB; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43ea40a6e98so6366345e9.1
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 01:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747297431; x=1747902231; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+HLbkl6AZb7BGR9qo8J2ScZzZaqgPdxm8C/99kZcqbk=;
        b=CsfZpOqBP5DrcC0qcKlKIZYun/D5ZhMBjFn7SjzOFfkkKyzN39EkABYYXfg0B8+HlK
         kZhCH9KScdzYWeL98N0QrUAPiosBhKx3W22lEI6sdQP5bunX+GGljPmGz6qN6CLzmX3U
         jbxEHk7HxIw/KdnAccOLQXblLASJKef9l76QU8CM7Y7LsecZU6lZQif/h+L1ipKFql5Y
         0Oxgo2jMFjm8vOxgxWLtRRgw8V0FACqNw6S+X8GpZMlUkTNGZkiuaMJta+NlwW1f1eky
         SkpRUmpLyy4Do3p/l9rhgYhyNu0PrXz8fWlsyMmh2tUrkhMf0mf3blkU6a/lj3L/i5dX
         2rXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747297431; x=1747902231;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+HLbkl6AZb7BGR9qo8J2ScZzZaqgPdxm8C/99kZcqbk=;
        b=mMDCUAULovtNO579l0M7hfT595utIFzXxS5b8D8OCJvW9MhN/CExVXy8sK7Rpi9AWs
         4i84r0FWJDA//BY9SORcytp1OofEfMl3LqAr9Oc4cSpRrnJL+DzY2SK2QKWhK8kFYxY8
         xwwrktYbdfTv4/xL1bKFJ0f4owfBJkAWhupZQdNGCBh6doPSJeunJOt57EsKIdoNsa9r
         2+JjlMEhZMGQeVyz6AnlaIoM/VjyAbTrnfkQFYmlKA59Gzs9cn3qWx65sKbT/XdKYU/i
         ta8hlRVUswsU2OY8fCeIMO7q+X6OnUwBYRiZos07dMDNS9VJb4SzAi2mny9kKzaPaHnW
         44KQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpflUk4JiwTbD+jatnUDO+8c94EfPdSlVb+fWWZgUYH/jTGLOcFUu423lrIjf02yVxekuGUbXQxnaf@vger.kernel.org
X-Gm-Message-State: AOJu0YwYSyCEpjaayTgc6ZaJFFL8ZR5YOhJs7RX+eNT4Lu+3rn7A9+ob
	N4QgFd4GSE8VpJPfmWYcJ48HutRLd1GZlHQM4QGTrMvwMdZkXPNt95oKnfVbTBs7/nN4IcFEggr
	HmlFIog==
X-Gm-Gg: ASbGnctK1yVVgXB+x+6DL0OOUls+VfFMHDy/1HV6XoEsyhYcPdm4tWeT0dGk7RV6s8T
	3nzB+BUlnv1siJ+IGqG6RL/NkVj2h0JkRBeNfuc8jYypPfO+w/1/JBNAcFqeVriMz+rEJ0V5Xd/
	eIzkyUdnGwZdqDVg+tdeHw8RbqjDpZvgQomJGJ6CBsrvkTczs02ePnaFMQP7PLgRvXMT2ZiyhE+
	bFqPUb7/Wjat7wpuPrKln2boOuHErdXX+8KkiYoH5CvkKOQe6Fm3c0SuePqSoNW+F34LRNTn33n
	v3vLiyXl3LT0SWwEinzseJhi8FuG9QpI3bDC8bFoD4j4W+EC8NeGA/Dxu3d7CRe8tJWf8M+zlNy
	6QmKeKw5b0sTWQw==
X-Google-Smtp-Source: AGHT+IGGpcJqyo2chd/Qt7FhZAddVefASCm/rGvTnzANcNrhxPatD3FKWX67AQKztgRQcEReU47KIA==
X-Received: by 2002:a05:600c:4447:b0:43c:f470:7605 with SMTP id 5b1f17b1804b1-442f20e80cbmr60116595e9.12.1747297431280;
        Thu, 15 May 2025 01:23:51 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f3979355sm60876865e9.37.2025.05.15.01.23.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 May 2025 01:23:50 -0700 (PDT)
Date: Thu, 15 May 2025 10:23:49 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ezequiel Garcia <ezequiel.garcia@imgtec.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: timer: Convert img,pistachio-gptimer to DT
 schema
Message-ID: <aCWklbIgCbQOOkj_@mai.linaro.org>
References: <20250506022249.2587839-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250506022249.2587839-1-robh@kernel.org>

On Mon, May 05, 2025 at 09:22:48PM -0500, Rob Herring wrote:
> Convert the ImgTec Pistachio Timer binding to DT schema format. It's a
> straight-forward conversion.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied, thanks

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

