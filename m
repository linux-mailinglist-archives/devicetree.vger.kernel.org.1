Return-Path: <devicetree+bounces-78273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A904911B6D
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 08:20:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A8AD31F242DC
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 06:20:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2B7016C84B;
	Fri, 21 Jun 2024 06:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ofgm5gtE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63B814E2ED
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 06:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718950685; cv=none; b=SZ0iDSEX3Mx4usL4pGFYRy/g8RmMBIP4UvnSWpZCvsHbkarVGf5mHK7AveOQQbYTZi48peYUKuk+ZLubd3pOCD68qjQGDnY78a0n/5+OyjjoD4lasE1XgVZOHzHtlBbDf/WHrC/fK/RyhL1d3cFUN2u7+hDeIOjpwyfER1/+lJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718950685; c=relaxed/simple;
	bh=gsCxHz0NnDo414oRCn1OhO+A1Kd5SBw5weSt1z8Z5xk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=K30LjWgOQG/lKcWv9lWfFNcMv1sMbHhdTsmA5Oi4RfZxGEgYIelS2depRkAdUa9kA/+oWH5OQOYfNgrrBDwBrj6jY502l1yVsT7GeusaKgjzztb/tmxO8fLUKiekSRnB/xwLOxSeXlo0HD0+Y/jYbK+ESE584Xj9Z4Jx/yt1t6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ofgm5gtE; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2ec3f875e68so19191441fa.0
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 23:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718950682; x=1719555482; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8v/aKYe+JxVI3CfS2FvYP2HrkFepPdOtUXTcrjF4Iy0=;
        b=ofgm5gtEYUTfXQNaqYyJtUoNghcyX5rq7o6gpyTxqePpoPKeEVxEx2b8lFk25qiyNN
         YsEGb+J4fpXg/sCVH4xVITjT3Kj0p+b4jirPE30Exn89c4aZiyZYPFIGrBUbSq54ukuU
         K65/BLEfCkdmKasOBmobARyDx7quJ5g566Sl88oRzH4YLJQOYaFB+wbss6M5+KX1ErTw
         vgPu1NOlUnepuP7grHRQhIp7vw/QUTn95alTepTiCdmv8kEhRhZCLgwTw4ZZW8lovuf8
         jZYqwjvCHU3RdFDEiHoFv5/oK0M2mdzOHbryGbQ4pfneIPwmKDKe/CXdlvMKhWu014xv
         YLSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718950682; x=1719555482;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8v/aKYe+JxVI3CfS2FvYP2HrkFepPdOtUXTcrjF4Iy0=;
        b=uDCw3cgcH6eJ9OAIXVURaDGGFpZbCi2nkxLdygNA3vLJu4bmJ3GG+rNm38/EcK0+60
         nZ4QVxuG/+pE5kT2bkzvkPViUyjftairs+gFwS1fbwk8BQxleLOEQU1o7pGxvYyE3BnC
         EciHLF9bWc6pOUWfIB3O5UvMIdIfQD92eXWxRanxPa0qqblMCBQ+ECkui+vIUljuTBar
         Ex45fh6DeyqVe28Jtt5P5wAELrlGFjnqOxq744lMrlzGhZeco+RG+iTNwwpB1aiu0NKo
         K4yknrgQyfZQ2K0DcLJ5T3k42ev6xSeCRecNjDdQjCecjvzxtNnY0xkDLFDhWSIJF9gZ
         yrXQ==
X-Gm-Message-State: AOJu0YysmQ1v6ak6u0uMm6kkexkwUSqnkNL4ZSQTk6syMkWWdXb6o93w
	T5M7iAPCbdCKR/fbxRRaIyGfNw9sEDUpLLl3zAnWc7Nc0GUoro7qtDyNtaXL4X0=
X-Google-Smtp-Source: AGHT+IGponEudPSsJyTnvE0/1vxRs81b4VCjNl2TJlLRqh1PuPPhoub4NIgzenIurozR+Yc7M8Yv9A==
X-Received: by 2002:a2e:a710:0:b0:2ec:3d2e:2401 with SMTP id 38308e7fff4ca-2ec3d2e27dcmr38061871fa.40.1718950682006;
        Thu, 20 Jun 2024 23:18:02 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42481910fc9sm14075635e9.33.2024.06.20.23.18.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 23:18:01 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240605-topic-amlogic-upstream-bindings-fixes-power-domains-nvmem-v1-1-ef6f10c86a63@linaro.org>
References: <20240605-topic-amlogic-upstream-bindings-fixes-power-domains-nvmem-v1-1-ef6f10c86a63@linaro.org>
Subject: Re: [PATCH] dt-bindings: nvmem: amlogic,meson-gx-efuse: add
 optional power-domains
Message-Id: <171895068013.13708.3381966388951279908.b4-ty@linaro.org>
Date: Fri, 21 Jun 2024 07:18:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2


On Wed, 05 Jun 2024 11:35:22 +0200, Neil Armstrong wrote:
> On newer SoCs, the eFuse hardware can require a power-domain to operate,
> add it as optional.
> 
> 

Applied, thanks!

[1/1] dt-bindings: nvmem: amlogic,meson-gx-efuse: add optional power-domains
      commit: b654441eed93946538b5cb3801a5a6dd58b5d692

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


