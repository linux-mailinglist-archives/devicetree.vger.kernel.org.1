Return-Path: <devicetree+bounces-126635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C02059E2030
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 15:55:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 105E81654AF
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 14:55:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F19C1F76A7;
	Tue,  3 Dec 2024 14:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WEszCSdy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5691F76A1
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 14:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733237681; cv=none; b=qJMvr+imy+osXo7CdfLheFw51XZyBGVETopBk5nozueAxm8ralNJt31TNdWGT1+eY6lg+vcWWc8HSuaX3zgq+gPgV8LoPO0xSxHWTZ3fXdQPtoDJbCIpqgmEvHn1jpqO4E7aAo3VKthUB4mPzkrZ0l4aUsus/TjCsLyhrTzNP54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733237681; c=relaxed/simple;
	bh=1IAIN/8H5junEHBZ26iMTzfLpfhHD6gUNd1uIhVvdUw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=l5ZAyrkaERGiWT1e0MzQ9lTCHIXhp9KNAoEIME0xTK5b87vYQGa1pjPMFkowIFC1iQKR/406yarJkKw4X/qUKCSBS36QJHq0eQoAcbvunWzLiuJwvJSp3Pev83mZHeKkCAZHwAl1n/L6j91zp78I+BHXAUZMid9iGFOm5Wj3inE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WEszCSdy; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-385e40aa2e6so206388f8f.2
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 06:54:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733237678; x=1733842478; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KVQnKfNjMPfmMsvNdciOTib0L8uKRN+DbCQBwL/l93U=;
        b=WEszCSdyb/quMaY/xM90z0vbReOThk7ymw8H2b8CXqyZytrnoncXrTaS3iyO4tfJp5
         0oUmDVFKuNFpb0H02/3/Bx80fE2P4qXHZqSA+2Pngba7anNwWdV1W7kUHLKTMLv2eD8b
         07nOQLsosDRp/fJACnPmjMQlzXoNWXrkamo6n4p1c8LpMlu5LqA737bB0vCP5zHQMVDX
         G8BSLNa1HYfQWnFAcSI7SIClmMFOvcCBJ4UmyRBn/tHfek7LPaieaW80vCAu35YaTBrQ
         gu2UGUp/mJJp9g3qNcABz34cZDLTxF/Qf/xDIA2LAJNk31fdy8VB5qCOYm0DtYALvJkd
         21sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733237678; x=1733842478;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KVQnKfNjMPfmMsvNdciOTib0L8uKRN+DbCQBwL/l93U=;
        b=xTdyeb4U5HC1w8kVGJ3/vw1UjVys4Iy0k4EWZrWiOSMDjYEp4acTmEM9Gc93eESOyS
         5Pmxc3X0azGaNE0jy+orFjv4IC7HlaLWnz5HJ1CQL3LYHJo12zkjnAgblm1YGTyeHzma
         2nIHfebp0nYzfi+7bzOJ0rVRT2m0FbBt4uQS1dXNIALmKJZXd3XDPNVChbwrCZOjqdg9
         bPOT3iwOlUTDHjqju75wrhn3mjruNyX+K5p2RK2iqEdxP1/7Suj+e9gt+EPgXqQMdcbz
         +lMaPhX7Q+swSyJtiDZTDCzGeUHBiEgY4RF0K+XakmIO7c5FMa6AAnlAa4Y1eLNLIphD
         Ab5Q==
X-Forwarded-Encrypted: i=1; AJvYcCUmxYXLyI+ChnwKtece/HJWvlRlSlQ0FFH4tTcOXqhkEFbO9KgNiCeGnOVT4HaoYmKt99DdG31mrclr@vger.kernel.org
X-Gm-Message-State: AOJu0Ywmv+RzEstBDNSweYmClMeKM5C0QqqmoOS/vizHyG+/WbYO82OJ
	4LnPoopqpJ46qmWtaahJoHDXOw/HjYO0V1NF2JqstNP7j60h76CyR+on9JOcxRk=
X-Gm-Gg: ASbGncv7r1otP1s2Xk5m6SFo/HzyuC4qjKPBVYjZlQICg5pviJCDjMxMY6cR26aXRMF
	FhXbjUT/pTWox+TFNhm3YdrzWghob973XMsUMZrRNcIrZ7Gxe3auRGOqlzfm+OOA3+X+o2jv/wP
	qbdTnVZmkmYZJx3Ow+eOPyjMfYKeKljtnElLlt72XHtKqrZ4FN9/DToxcYLWpy1Yz/Fff+wAdY5
	KkqNt6/3uM0doY6F1OPZaDCppUjuF/zDb8qfhN1Pvgi3pw1TEFcDwUvBAm7sfiF
X-Google-Smtp-Source: AGHT+IHjNqIwgyhBQxftpcXHAw9igzv0feJ/dyVPh3zNKBEM6I1JcxxoasxFhTbuCSeSbCfEViDLAQ==
X-Received: by 2002:a5d:5988:0:b0:385:e374:bd4 with SMTP id ffacd0b85a97d-385fd3c76c5mr949206f8f.3.1733237677714;
        Tue, 03 Dec 2024 06:54:37 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.23])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa7e4df1sm223440855e9.39.2024.12.03.06.54.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 06:54:37 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Stefan Wahren <stefan.wahren@chargebyte.com>, 
 Stefan Wahren <wahrenst@gmx.net>, 
 =?utf-8?q?Kry=C5=A1tof_=C4=8Cern=C3=BD?= <cleverline1mc@gmail.com>
Cc: Ben Gardner <bgardner@wabtec.com>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20241129-ds2482-add-reg-v6-0-bd95ad171e19@gmail.com>
References: <20241129-ds2482-add-reg-v6-0-bd95ad171e19@gmail.com>
Subject: Re: [PATCH v6 0/4] Add support for attaching a regulator to w1:
 ds2482
Message-Id: <173323767575.74728.10700048422477290412.b4-ty@linaro.org>
Date: Tue, 03 Dec 2024 15:54:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2


On Fri, 29 Nov 2024 14:25:52 +0100, Kryštof Černý wrote:
> Kept the exit_w1_remove path as requested in the review.
> 
> 

Applied, thanks!

[1/4] dt-bindings: w1: ds2482: Add vcc-supply property
      https://git.kernel.org/krzk/linux-w1/c/be197d90def4282af7d1f7f1210ee1f9342a67d1
[2/4] w1: ds2482: switch to devm_kzalloc() from kzalloc()
      https://git.kernel.org/krzk/linux-w1/c/19c6d8bd88652936c43f5c53550d74563829a15e
[3/4] w1: ds2482: Add regulator support
      https://git.kernel.org/krzk/linux-w1/c/6e0bb206c6af6c8775b447b2fae9209f02f13143
[4/4] w1: ds2482: Fix datasheet URL
      https://git.kernel.org/krzk/linux-w1/c/5f69c091a6c0001ffade8bc00c1d33e1e224a2e7

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


