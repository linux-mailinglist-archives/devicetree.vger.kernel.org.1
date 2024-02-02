Return-Path: <devicetree+bounces-38165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B29DD847BA1
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 22:36:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6AAE0283FC0
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 21:36:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DFBC85924;
	Fri,  2 Feb 2024 21:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SsU3zMF3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4B9C83A0E
	for <devicetree@vger.kernel.org>; Fri,  2 Feb 2024 21:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706909756; cv=none; b=Y2VI96VZdzr6Hl6z/+Llsunk5yNYYRdmV9Ueajt3kli7/ybYLczNTGQfpxGjy50rIanNOGKIVGv7q7UqlPQ5SmPiaPNNGkc/5/uiaz59EmED6mRT7ZalV6sx3Ferdc+zD8Cvqx/BNgxZG5ULWRExncqWg7HKf+SnDAMLurf+HaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706909756; c=relaxed/simple;
	bh=coRVo2deGpNosX7im+sATbWpmMvvQifI1wiO/MoCurc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=uaaCRRDAmMPzvQgRW/pLSQ5s+nn+janXVtnm59f1tYZLb4Ipd0BgGNvVi6eEXy3ThrwcFnfYMNeiAZ1+bufcF7sfkkizldW9HH4Gw7AblrMUFmc3FYzBfR/flzuNXgdEdQKMUG09UHoUX6mpYezMROV6ecYnbzc63Pr6EMdi2U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SsU3zMF3; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-33b0f36b808so1487106f8f.3
        for <devicetree@vger.kernel.org>; Fri, 02 Feb 2024 13:35:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706909753; x=1707514553; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=upbbVLfpfkn9xqaS0gsTHwR4HfhogOcvQXfO2JT/dxw=;
        b=SsU3zMF3jB3ikuiAtAkyQ4/t/sxaaGUcE4vb3/yoGv334MnU4Yzkvt2dXpEHIZK/fD
         7ur1eSQ7uLQoXbVNzLpqBPw6vsSf28QM1B2oZ9QLS3w8RucaHTClRkvB2qyA1snSF3mR
         TcuzrWa+D6EGEw3bf7ob17wTMyUfaWmyKstS3SeHCJm8/tE10DG17aaoXRWXnce+kUK1
         tRuS4gqK+q4hb/xO0DUoe71FtLDuAGh5COaJ2bRU5gZBo4yfr26jJ5IioxBeCRs2Hy2r
         lxNgGgPgT8H41Ej2xUTrG1Hy7F7LlgDmQz/tuWWcp2OyFL+vxfIBQK7JWMj5kM5vpgod
         L9Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706909753; x=1707514553;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=upbbVLfpfkn9xqaS0gsTHwR4HfhogOcvQXfO2JT/dxw=;
        b=xCAp/IOeF+ftMk1Gbd5vLT9hpBJPvg337dWeG5v7u8D5NF+GsIofMMyoQ3JvuYphx1
         ekEmJyRBWzR4dbQNR/X7hueNkv6O/+MXjWhcacBJujdpr9sXPcDxtZ4AgpwJrJ+of/iA
         MZDVwzEQ2DMYpDiPgnRABSaHYSvWRGwjV8KCZWZbNRooVpvvNtP/KVofA0/QkK0dg/Iy
         5E8mFOpRh+SY3dOYOlRRcZZRTNzgjug+n82LTw7KChPqLErZzMqD5Xrmkhq8Uxz4KW92
         byr0KmGAGZCLhyHQsM0KV6Im9+20hUzOvAEZ42vJ6Su+1Mey5KELJ8GzawMf6p2cA0pK
         nJXQ==
X-Gm-Message-State: AOJu0YxL15f8rD0iF+333H++C/CWnysc/gBmKwVITU2f2WP7X0vvUm+/
	L1aDkrsHlj6V3ujGDLOXgy7IAuPZucT1x0BculpKp1xHqdhd69OR8Wy7GB84O4Q=
X-Google-Smtp-Source: AGHT+IHFSX/D0r9equZ52VMYMcBXvHcPIbyPKiVRSWcMM1ZcF0DJ83B3hve+2MYoXzI2q56hziBa3g==
X-Received: by 2002:a05:6000:1887:b0:33a:e746:4ef0 with SMTP id a7-20020a056000188700b0033ae7464ef0mr7951095wri.46.1706909753084;
        Fri, 02 Feb 2024 13:35:53 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVYgRwC5N1ylK7bEDYbopy5UmpBBDckvl7RqeaQlFU+AL6itLWjAb7E70lConJLUPj+yWi0+oeoqWGVtOfGhrmykjY/g5DWK4zCsLuQNfcYrQgMNXQM9Fq8oonwcfl/fzBL4dy//5LiBCCih/CdSxZeJAHXRmAPPCP+GOCPqKUltNF9i+WdEOyUh5X6GlG3vlHhtkdFjnnUyQEFPXRWHQy5N548FBHKNlz1WHhOX6Nz1XWhRRLYCYQjrbA9DCTqJrflsGTIKmCvRGh0E/rQ8V3gDKrbsXFtGuJDBuNaVqvy6/PZ5EYIv9eh8psyxhxJJNHuIN1oGKIF6WoTeJ4QAI7zKnyolq/qpTy71JcuGozQZiL1GZ8LsH8XV4729thamqCszCNVBK426rbI4ui4jN+FGZoQvliyX5SI45+mcLiWWji7R/XDpquhA0za08Srr+Az53VWUp9yG6Z8uJ2fks2RfKmHgaEkSwikwqSNN5ZtTbACN1R8DlQK
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id q17-20020a05600000d100b0033af350fb88sm2687201wrx.25.2024.02.02.13.35.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Feb 2024 13:35:52 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>
Cc: quic_abhinavk@quicinc.com, Bjorn Andersson <quic_bjorande@quicinc.com>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240202-rm69299-maintainers-v1-1-423aa40f344f@quicinc.com>
References: <20240202-rm69299-maintainers-v1-1-423aa40f344f@quicinc.com>
Subject: Re: [PATCH] dt-bindings: visionox-rm69299: Update maintainers
Message-Id: <170690975220.3073109.7977446273055179028.b4-ty@linaro.org>
Date: Fri, 02 Feb 2024 22:35:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4

Hi,

On Fri, 02 Feb 2024 10:03:11 -0800, Jessica Zhang wrote:
> The current maintainer (Harigovindan P) is no longer reachable through
> the listed email. Update maintainers list to be Abhinav and I.
> 
> 

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/1] dt-bindings: visionox-rm69299: Update maintainers
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=3d94e7584486f7ac4a44fe215330ae6a1094e492

-- 
Neil


