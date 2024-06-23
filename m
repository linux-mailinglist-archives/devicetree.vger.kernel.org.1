Return-Path: <devicetree+bounces-78926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D6099913A90
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 14:27:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 06B8C1C2012C
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 12:27:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC56618130C;
	Sun, 23 Jun 2024 12:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nAK6wImj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0641E145B0D
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719145655; cv=none; b=uC2Xw0r0zmfcemxBmieQXtMiK3rIKJkVJzrskT7Guz+r5JjOWY6o5TZUjCYAIU5jeqZvycrBHD82AudxBVPSKaOneEDs39Vc8aupEROlv4itK3qOCwz4n4SkSJfDpujSD2VPBRTpARWVhFVRttBDy9M2JG58eQT50cJFq/sawKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719145655; c=relaxed/simple;
	bh=P7dsvTUA4YUh+7tSKWTu3UMljDWilWupQKsu8DRjBjQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ItRetqBtPeXtMfdKScHQQDEfw0EkBz0a86uNwYiTg+2ROnDMbzHvmqCF1pWT1zBUvo+jJArmeVJeke19zx0+bzuIKTnj2TwoGAocRShRkSCy++INZKu8PCqZYHgCOjjo+YFDYwHEqpqkxHmALK+v8VRSnMi0yrYOxkdsWrcqsug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nAK6wImj; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-42172ab4b60so29606255e9.0
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 05:27:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719145652; x=1719750452; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sM/HIbYS8IU3VydJrQc0pHA7cUkngnOqPHS+gHwqYus=;
        b=nAK6wImjOIK9IdMsHh6licUSWyJqgNmXtC2YL0Ul0G0rqTXlRHY4WSq+TxumdqhUts
         hMuNAIhbAa/H91UUXyejqB7qjMwm742VtdXvfEQ23L9m+2WG7zzoCq1pb0UNIokiisgI
         Lc2J/Ds5J5y2k3JpTqQ5/UEX8muEGyFvAoAXv1/AGLYMvUZdd6x/IPMzLnmr3F4LGVLI
         DrmIQnrXNSLpjMbj/2Y1O3gBTx3mXVPGjWGGsVbYZ+8XI0XIl5NW4VWB4eLSOdic7V+o
         RqjQttvN1xxlhMkP9xEm9BNtUQovW202Cc7piOuw/woN5y8U/Ara+psVG6oaeAlR0yCC
         Bs/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719145652; x=1719750452;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sM/HIbYS8IU3VydJrQc0pHA7cUkngnOqPHS+gHwqYus=;
        b=wZAqaKp30b0gRfs3dZeQmfNAYy4UNVuvC92w0Z6JIy6gY7wTFYaRzi+DDw1Tap4v5s
         ZwmwBb/RXVScOI6nRUSCQaKqeagCeiYZnNWIrsmPoslP49HBdTGafHqOsaSU36S+ReAc
         Ct1MSJxT322O+q1nmUW1H3jY+mWL/wQetLHLjiqsHAX+zG+YnLLBUnkn4aMzOnLt7QZG
         OHtC+RLLwd6Kgft8TvG1w6CScv2bTboAPJYWVpQqnmhEwM/nt3fP7iacwZjCFWMI7qj+
         a8V6qdoewM5xtp2QWR+hvH5QDGvCPH3r6lngJdS6M+rcoWN1Oho8NI0f/CXGI4v+H0uM
         bFRg==
X-Forwarded-Encrypted: i=1; AJvYcCXpA5GRCOy5R1c7teBikn99dZT0SnDvG617Qno8YehLf3GDlkF2N3TnTN00VPVj7AWSVBEVXlLztB2kS8Ftwzcdrcc/VT8VqW+bdw==
X-Gm-Message-State: AOJu0YzGFoSV3vtHLBWKP7edJQjFzACuNCYO7uZc/rGHg/iLjiBzbKMD
	5Wj8eBOhNcmpuHuDhbsYOwORqmE7m2XJD34JuGZUp7vOVCqiDi0I6kfIIsTc0ik=
X-Google-Smtp-Source: AGHT+IGSFCiKSTdUQpUI36KRoPgkQA5kApUhvD9p2CA+eVUtYHXkRmT1BOI7eiFj2h0vugjSnQ9xrg==
X-Received: by 2002:a05:600c:42c4:b0:422:123f:4b15 with SMTP id 5b1f17b1804b1-4248cc66c7bmr13320335e9.37.1719145652384;
        Sun, 23 Jun 2024 05:27:32 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-424817a99fbsm96996865e9.16.2024.06.23.05.27.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 05:27:31 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wei Xu <xuwei5@hisilicon.com>,
	Carvalho Chehab <mchehab+huawei@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: Re: [PATCH 1/2] dt-bindings: soc: hisilicon: document hi3660-usb3-otg-bc
Date: Sun, 23 Jun 2024 14:27:28 +0200
Message-ID: <171914563307.48201.2100106894701016613.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240518204443.122586-1-krzysztof.kozlowski@linaro.org>
References: <20240518204443.122586-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sat, 18 May 2024 22:44:42 +0200, Krzysztof Kozlowski wrote:
> Add dedicated bindings for the Hisilicon Kirin 960 USB OTG Syscon,
> to fully document the block and also fix dtbs_check warning:
> 
>   hi3660-hikey960.dtb: usb3_otg_bc@ff200000: compatible: ['syscon', 'simple-mfd'] is too short
> 
> 

One month waiting, so I'll take this one as well.

Applied, thanks!

[1/2] dt-bindings: soc: hisilicon: document hi3660-usb3-otg-bc
      https://git.kernel.org/krzk/linux-dt/c/7613195d37d69ff92c9bc55599037615212ce19c
[2/2] arm64: dts: hisilicon: hi3660: add dedicated hi3660-usb3-otg-bc compatible
      https://git.kernel.org/krzk/linux-dt/c/bc9ec165d066af29661ece91f9cbf74e18ec0a5a

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

