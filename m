Return-Path: <devicetree+bounces-92492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F29194D595
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 19:42:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 04B602823E0
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 17:42:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C77327316E;
	Fri,  9 Aug 2024 17:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wE66LET6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C5B40BE5
	for <devicetree@vger.kernel.org>; Fri,  9 Aug 2024 17:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723225333; cv=none; b=NZY6TNfLuQidMD//r63CzOeKwgeoUm5JZpG81GzQtiA5bTPCyDV1ltlT9OPmse0HsQWEZQbif6UsijKyYX2tIYYJKaXaw18hRLkH5QIimMd9W1s0loVqM5DRoVgvhZMzbnukEV2IE+h9MYvI47fLjslUPJjN8MkAYBUV/PidK8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723225333; c=relaxed/simple;
	bh=unOikXZ8Y81JsN0FVzHGpewC+1L1DF3RT3WmstAS/AA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=W2P+3nKkyH5HR239qPmgj8WxwgWGmF9iO9og2L3IbrEwQ6IIG1pcp1sCfbHoHG58biPVEdImRHDUAOOukrmMWKL/zoo61vk0pR91z8JSoyFnu5AyAsyyDan9Yw5jxWG/5F1Tr7Yz/nsTgPMBAKBZlCetaX9xaiB9eo9Puk7IeJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wE66LET6; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-42817bee9e8so16915765e9.3
        for <devicetree@vger.kernel.org>; Fri, 09 Aug 2024 10:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723225330; x=1723830130; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VamUtaKsdnMO3Xj/IeNiDDarpPSNzAwlcfOY5Y0XulA=;
        b=wE66LET6/50JNqszRjQfaMtJ0PlmAyIcogyMHm9CesLet211WZIgIBpxPflq9NH4rU
         4ms6Snn8FVKJ6hklIuZ/RspKm6oJHO14qWrLz197sArdLv8ANAUK24s9ZIHiJj+oJFl9
         IFb7CwI1ZY4KIa6mtmmpz4SuFaxiIT5INr59oHQv+e9t80K09GsTMabmjmX/1j4OeIee
         Sh6jLA/KG5gHkJ9Hfz1/ghizgPOyDUf1qKurd4oyKCX8WCEinyJbzZDEdDiTGnKMQzkP
         qSQQvdHhdcihEmo1wnwZNOIT2uUUXAcJW1gHWFRy+OINXL+KDdjzhPSGZoB6SBeo8CP5
         GP5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723225330; x=1723830130;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VamUtaKsdnMO3Xj/IeNiDDarpPSNzAwlcfOY5Y0XulA=;
        b=aMVw1Ue9ZU1bd69pZ5C3OZeS3qpNausmenyecNNrhP47PMDsqEyHF6y3cxmiLCuNy5
         IGeBYK0uA33eibXL8bQeSKELesxOe9pqt9oB9zb/4BNz3LB+Agrbi4wO0RBT6EdjYFov
         meyBn3vW555kiAG003Zl9pfxo/VAwsLVcO4CqHAO7c5Rtkf/jWsl8fIkm7NXBGWQGC6k
         LHTnl5LqANPtYAC3iisOn9IAL2YxZ5/NBI/MFJPuRFGC2hJOYZn5M/n3/dc08tr/J24K
         TDtmsycbCTtkuT4P74P3qMMqNaCay+6IGp6VH8GQn8UeNfSmqMHT1fXGSyA0OL9fPvI2
         ajpw==
X-Forwarded-Encrypted: i=1; AJvYcCW/Wmf7GTDsIH0yZ5d9EBa/fg04sCjOnW6z0FvDscH/Vh+G/eVoNbBlhwNQc+JEjMgZvQuNOzG1oT+W@vger.kernel.org
X-Gm-Message-State: AOJu0YyPmeu8fxUbIb8p0DSStrX01oPdrFD+aUh83qGKRBgeB2zzVo+e
	/IMuvC0GZ2w/ul8sRMga/r0lcdqYyQaEpBEWMg0Z5YrGpGXCijMh+aDxgnxCA1M=
X-Google-Smtp-Source: AGHT+IGx9DDT4b4iSnts3ZE5LnnsizuK3egrq2q0nfjCRLIg7gJH+YoQ/HeD8f5UDBhmZse6UJatjQ==
X-Received: by 2002:a05:600c:3b89:b0:426:62c5:4741 with SMTP id 5b1f17b1804b1-429c3a18df4mr16561655e9.2.1723225330233;
        Fri, 09 Aug 2024 10:42:10 -0700 (PDT)
Received: from [192.168.68.116] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429c750ec0bsm1080765e9.15.2024.08.09.10.42.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Aug 2024 10:42:09 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Michael Walle <michael@walle.cc>, Miquel Raynal <miquel.raynal@bootlin.com>, 
 devicetree@vger.kernel.org, linux-mtd@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, u-boot@lists.denx.de, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
In-Reply-To: <20240808055710.19292-1-zajec5@gmail.com>
References: <20240808055710.19292-1-zajec5@gmail.com>
Subject: Re: [PATCH] MAINTAINERS: Update path for U-Boot environment
 variables YAML
Message-Id: <172322532687.402259.7753078917073034445.b4-ty@linaro.org>
Date: Fri, 09 Aug 2024 18:42:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2


On Thu, 08 Aug 2024 07:57:10 +0200, Rafał Miłecki wrote:
> This file was moved to the layouts/ subdirectory.
> 
> 

Applied, thanks!

[1/1] MAINTAINERS: Update path for U-Boot environment variables YAML
      commit: f6d1cddd76b2da190462d84546e5202d3b2aa92b

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


