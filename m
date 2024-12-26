Return-Path: <devicetree+bounces-134128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DFD9FCC76
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 18:33:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F15D41624AB
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 17:33:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E03F613DBBE;
	Thu, 26 Dec 2024 17:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="NrBJawUE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F8E2BD11
	for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 17:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735234414; cv=none; b=FopCoGEh+IiB0T+3YftXcDK/IfHRKyx1f9fabt527AJKAFmCGS439ikIExSk76DHzkz1pDxtWBl4IB5ScX1129aez4GZMv8qCI+L49419S0yFAukNuqPLol283xbtrBmM/qcX+SmLDRkCtOn5gk0J/aalHooGCUjpNW//S5j0H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735234414; c=relaxed/simple;
	bh=Y4Jg8OpRUoTzb1ctZa4nQnQqaMhZdkcDgu3cCuJxTZY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qIJ2VjmtBhEI+ZtY2Q+FA3tzpCir2j1OPMpAqFjwbFp0fCM4WvckUHCarCESM++tW9K0NxQCpLelCt+wtXciXyxXbtc8FN4GiuAokog9F099WKw9u1O8D5h3RGaImnJKQ/4Q7Gd1ZBV8CxK+D90tU11mYNMBaPwzJ1AnD+XXDf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=NrBJawUE; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-21619108a6bso70248735ad.3
        for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 09:33:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1735234413; x=1735839213; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tU2DgvDvdkYRJ/UA+n5FQrbOcfdyXNL9khgRhEzfCzg=;
        b=NrBJawUEwPfuzluZUFzJow/LlN3FvbcZaUsDAF6ppNV3qosITZkgsIYUBIHVsy+jUX
         U39u6W3qwbcM+RwgjkO78bHR43eYBvoMvroKNtQctAXimnoxLB/UpInWnQoh6ROoDH5A
         mf5E6obkBVLlnLQF6sz9lS/zL3JS0NI9sy9uujHEBMU6MikEVwOXamQa3k+MljpBfJ4R
         FxxcYekwrfbthgznNCQC5j91bq4hgHBRYcLmO0lGM17W2iNuqq8ofUA3PnkXaFovQgly
         KX60eC6gMfisY36LgCjpZh1dx1CIhpFZ+VadMwYVHNPKm9EJ6UBnjGo8IWCTs6EDlFBL
         Gaiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735234413; x=1735839213;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tU2DgvDvdkYRJ/UA+n5FQrbOcfdyXNL9khgRhEzfCzg=;
        b=G/bmpg1GONXHa0CNGnJFe1mti/yLp4p9klkKv0K75aHcC9PQd1OOB8xx3IV4oxUTiG
         o1lTBBvJxNX4LEJhV2RuWxUnGKuXUrPY8TmoQlTwBusJB7jaBA5a7EkC+T37Nes/2kDB
         WrSzCJVDYJ+SUeXuvBv3nRaWydAbefW9auOKktB+yHeFX/8uqO1krWf7oDgNfcjqvAUc
         BNbNRXN6jwh2xua1lhh3OSpdbNie0eFhelaksk0PfRt0L2+mqw7nCB92HOm0PUIbN6op
         yk3FEaBxL3ReYjkgl2xs77P9UNtXRu+LcRCfaW051qBP12xc6wWob4jxTzDQyOTHauPq
         B+SA==
X-Forwarded-Encrypted: i=1; AJvYcCVvH7hED4qKwotMxCS4fXYMKOPsqRH/ZhFaISLtiF79zTQTwUQpDZ4D5IrSp9P7th0izZnC5lhtTvxl@vger.kernel.org
X-Gm-Message-State: AOJu0YxpuAY5lBQkmcfeEnchhTZ13ysM3Bll2dUTq/3MQIrLz/6tcmWq
	Q3eQZ1Got+N5L9AsojatOh48OO4vwMfQzZ56klTW6JSuJJkA5EfjhDsC0TiomQ==
X-Gm-Gg: ASbGnctWaai3g4CE9FR+WXkfsSeKhtm6a8/X/j4v56bDA/S7ShhosUF31ayMx8n9ht7
	cm6Dy5wccHyeOULBwJ1uwjAxKUiSFcUcyFli+SIaW8twxs5AOGLNJ2XDfVE2XWMluEi8NnOghMQ
	JjqX/Vx+OBMxkti5mtbO5RFCaoBuSkuQDei4oqbK1l7n300jf3eyzJX+I3yCiNytZXo+W16FQOe
	YJ+agQzOmdZs3eCX3bG9Q1CL3lZbgHCOiPxjHdPrTTnzOtbUmrxHEiMlYGxKwelzMQvCiiQe0fV
	ssXr1041dsMoV6OWEbFmF1pU
X-Google-Smtp-Source: AGHT+IE+RbsmD3Zf9RNfUiqXZbLMpBzhTHXlQkE7VbdmcxZNIAB/IcMMJ416yI3GXCiiIa7UXuAU0Q==
X-Received: by 2002:a05:6a00:4ac5:b0:725:b12e:604c with SMTP id d2e1a72fcca58-72abdd3c467mr32014218b3a.4.1735234412566;
        Thu, 26 Dec 2024 09:33:32 -0800 (PST)
Received: from google.com (123.65.230.35.bc.googleusercontent.com. [35.230.65.123])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad8fb851sm13146587b3a.132.2024.12.26.09.33.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2024 09:33:32 -0800 (PST)
Date: Thu, 26 Dec 2024 09:33:29 -0800
From: William McVicker <willmcvicker@google.com>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Peter Griffin <peter.griffin@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Roy Luo <royluo@google.com>, kernel-team@android.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v4 6/7] phy: exynos5-usbdrd: subscribe to orientation
 notifier if required
Message-ID: <Z22TaVlsIiMw6jwk@google.com>
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
 <20241206-gs101-phy-lanes-orientation-phy-v4-6-f5961268b149@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-6-f5961268b149@linaro.org>

On 12/06/2024, André Draszik wrote:
> gs101's SS phy needs to be configured differently based on the
> connector orientation, as the SS link can only be established if the
> mux is configured correctly.
> 
> The code to handle programming of the mux is in place already, this commit
> now adds the missing pieces to subscribe to the Type-C orientation
> switch event.
> 
> Note that for this all to work we rely on the USB controller
> re-initialising us. It should invoke our .exit() upon cable unplug, and
> during cable plug we'll receive the orientation event after which we
> expect our .init() to be called.
> 
> Above reinitialisation happens if the DWC3 controller can enter runtime
> suspend automatically. For the DWC3 driver, this is an opt-in:
>     echo auto > /sys/devices/.../11110000.usb/power/control
> Once done, things work as long as the UDC is not bound as otherwise it
> stays busy because it doesn't cancel / stop outstanding TRBs. For now
> we have to manually unbind the UDC in that case:
>      echo "" > sys/kernel/config/usb_gadget/.../UDC
> 
> Note that if the orientation-switch property is missing from the DT,
> the code will behave as before this commit (meaning for gs101 it will
> work in SS mode in one orientation only). Other platforms are not
> affected either way.
> 
> Signed-off-by: André Draszik <andre.draszik@linaro.org>

Verified on my Pixel 6 Pro.

Tested-by: Will McVicker <willmcvicker@google.com>

Thanks,
Will

<snip>

