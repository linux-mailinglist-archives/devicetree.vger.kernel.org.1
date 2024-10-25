Return-Path: <devicetree+bounces-115867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7439B0F4B
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 21:43:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 015231F21908
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 19:43:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A926820EA56;
	Fri, 25 Oct 2024 19:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="siQQdafL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACF3520EA4F
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 19:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729885423; cv=none; b=c4TBJzRm7zUdpeh7SkrNH9r9VA+nMOHdswHSvedvqERkDZ3L1SzvD7jpQl8hzoY1FrczPxZ+jPbkhOLTPqJoY7o3F0yAE9GsqRJSZDLflXDtL9TaU4YX7iw70ZyQXkGFBMwMV5gWtJAa7QHqObFM2/hKgekYJIStJXyRgFCYh2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729885423; c=relaxed/simple;
	bh=lSsZDvEhOeZyn9VaJIiTtvyjKgumKCFxoFXoQeta2sM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lXq/HLak/mr05HZ5uNO4x5cBocCro2wR2GYjh7Lm8B4SEFI3AbMrZ4HBVxzzwyL4cBq1PhmJwY1v5K76TGoeGrdMzmtoizFJYot0qWwAHrmQScy1Na7Vz/vPXOpG26veJFtH+9KP/nVbRFuN9XsZzQNwGtwjd3GmskSsiBvrlq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=siQQdafL; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4314fa33a35so22884055e9.1
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 12:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729885420; x=1730490220; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lSsZDvEhOeZyn9VaJIiTtvyjKgumKCFxoFXoQeta2sM=;
        b=siQQdafLfr2b26TzbRCNEFeNl6HuYZy+5xwOiEHjKNpUlUo83GKf8R4s6fmbMl9s78
         ExoxSsbSojQlvLgE5YZrgcDflqH782Hehwitn2Hj3YaMgl+blfaXav1j0ivVpi3tNupY
         psyU8wqjUmneidMaaJt1iRgWfBl36Ki8dh5NcSk8DAgYf177FDcWwovwlVgskMSFsHJ+
         YMv+3b+b7gIg1AYAHwG1RPd3TIzbNaEjk2iXSw9rbFeADUYUS7vNcUYvDEiE53XZYOiT
         h6xYqBBTQOpojYMc/aEivkwDkVQxWkqMedKp4/I5ErECZ6nX1+efzizmeudSnZkViEKd
         8Pxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729885420; x=1730490220;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lSsZDvEhOeZyn9VaJIiTtvyjKgumKCFxoFXoQeta2sM=;
        b=Rmudf5EvoP8m1S77sv/Nrab6qIh7e1l/C1nurUop3oNcO29996QrSxuxZOa45nW/tM
         jGbOuaf0ykR93GVp8ZB7rgNhxbOlWbl3e7T812RPv/70J10q1/iZiF1TE1uZPfecBM8s
         GJpbXYjBbYT+M75TrvsjdjyHEr5o7D/+5NGKweJ+qsRlXjze1EtbwXs67pMpojST4fRo
         Ky3JJZl0suG/tomqPMig7atcEVZdYcmnXeFNgo0wJUc+qiNdcQtG7b/0jBo68QeL5vnA
         S18FWvM/vLgZfyWsQC5wK3e4aJGY6krIuN05ROl7EN7u8p7e8aF20Jlft/BzER5PRB3o
         zmoQ==
X-Forwarded-Encrypted: i=1; AJvYcCXK+w7gLoMOVVyZQD93ecJ8jmnXtQqAGLd9mJBu4OrL4+Blw0WdGuegzxVBuO+RSJnZ5e13WF0a8NbY@vger.kernel.org
X-Gm-Message-State: AOJu0YzSwP1hxxjFfWGkgiy9lZL+LeCIxdLDIMRpk24f4h49aDIeg1R6
	VY1+mkNkbQePfZS9MizB+8JIgIL+S+Ovm3z1/8KE9xbKgPbWkv9VAduNUwM0ED8=
X-Google-Smtp-Source: AGHT+IEzPuLj09sW3XJSXTYzYRkCzcdUHuV5hctMILxMB/GePRDvwaT9iOwJTJZ47PpX92GjYN8nCA==
X-Received: by 2002:a05:600c:4f51:b0:431:59b2:f0d1 with SMTP id 5b1f17b1804b1-4319ac6fd9dmr2332175e9.4.1729885420036;
        Fri, 25 Oct 2024 12:43:40 -0700 (PDT)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4318b5430absm56939735e9.6.2024.10.25.12.43.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 12:43:39 -0700 (PDT)
Message-ID: <94eca595-6ac2-40cf-9437-cb6695c45344@linaro.org>
Date: Fri, 25 Oct 2024 20:43:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] media: dt-bindings: Remove assigned-clock-* from
 various schema
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Martin Kepplinger <martink@posteo.de>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "Paul J. Murphy" <paul.j.murphy@intel.com>,
 Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
 Tommaso Merciai <tomm.merciai@gmail.com>,
 Martin Hecht <martin.hecht@avnet.eu>, Zhi Mao <zhi.mao@mediatek.com>,
 Alain Volmat <alain.volmat@foss.st.com>,
 Mikhail Rudenko <mike.rudenko@gmail.com>,
 Ricardo Ribalda <ribalda@kernel.org>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Umang Jain <umang.jain@ideasonboard.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Todor Tomov <todor.too@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20241025-b4-linux-next-202041004-i2c-media-yaml-fixes-v2-1-1b4535174a5a@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241025-b4-linux-next-202041004-i2c-media-yaml-fixes-v2-1-1b4535174a5a@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/10/2024 17:21, Bryan O'Donoghue wrote:
> Remove extraneous assigned-clock* from media/i2c/* schemas, retain in the
> relevant examples.

Ah, pardon me.

I've neglected to update the commit log.

https://lore.kernel.org/all/20241012172430.GB5212@pendragon.ideasonboard.com/

I will send a V3 to make it so.

---
bod



