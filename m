Return-Path: <devicetree+bounces-175061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FDAAAFAB6
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 14:58:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F14383A679E
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 12:57:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C79A5229B16;
	Thu,  8 May 2025 12:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f8fhPjbf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA28450FE
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 12:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746709076; cv=none; b=fSTMfk7vuPogglOCnQkl7G4T8xFsoTbaZYm+EZS+NBov99xG8i9HpOEzpmQMjUAj3V+RgLr2KflfboGT6ENSQFAJuWJNic6t1nOinmtDzALDBft+DlTkMi8z4gjfWIgEQs387mVRjbdbSME7ItHsD+Ps8+YfJVJb2MK+U8rUetY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746709076; c=relaxed/simple;
	bh=h3od/OZUMN3oh5T0hUXF8qsNbZ6GG1EY18oqLAL5I5c=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=dttY5aOw7yiaIVEqjyVLz4t8Xw0zBWk25mrF2Ngx9+6Za2jgdrDPypVuuMvqFe7b30pINUbRcV3qr+tGheN74YU9kzVlUVrGoqJowE0/vCtoA7kr1a1kYAQrtcdidMmPS4oXGUnUGTMHtJrkXeegpshFedNJ9kRb7vRs4uLdA0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=f8fhPjbf; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-39c2688e2bbso119311f8f.1
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 05:57:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746709073; x=1747313873; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=41fQ9P7nrmZ9gEDUpXifgmNoxRJM6C9jPn3nPNbCsy0=;
        b=f8fhPjbfnn2ANzdlY4xQ449xb/u7gjfEm6ervwAXJHH/ohSsauTBQxrnBK9OdhxbC/
         dw7M23DqSS4hb3ZJhmpeqFsg5oSWPlM9tQh0MDfPu8W5Jzm3DTnc8puPFoq6CRcNIZrj
         Oc9LSQpqkzUxsQXXht4UJ5nBxJuKhvoVRwT30OrMkmUtFEpN7xBySXuwdxvzrLoykh8l
         KIhzjSde/CEtw6R9YEq9l4YyWoSmC69BAHJj853hkTPToDXUNLIC1k/Ate9sVBntcgbz
         g6/asn/s8eBcW00PNlwnVaCWcJ5+ok8NHGLrSZCYJxd5W+EJRj/sqFbXJLYOeJb66CJ+
         hhNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746709073; x=1747313873;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=41fQ9P7nrmZ9gEDUpXifgmNoxRJM6C9jPn3nPNbCsy0=;
        b=SGuBIu/Jrko2tJQV+ANZ4+p2PMvSrF8CewjvSM1i6hRqN53Pmc4Ms+zBmWcO9EAwhS
         4ZTVGVHWlSIXcUWZe9WzT99zxzZVwkveQA+RAMFKuV7yXzVz6oBjx1VSgqd14Acs5lic
         Kx6bBqP35xjMuBQJp7/3QDf5dqg7NoHWDrBEBRPxaH5n33g9wF8GdnyEZyJgKF9Eegde
         eGWAJFljtVRAat9xT3/ON6XkVD0aCXXN4ST21ekbTAsNX93SPAky9Agp39pVrgxLHqOf
         Njg++zmwlIG+0TzSBA7X6jrREZSQSqaUjL5Tmi8pMUuYu78EQAGWBftIfcG5NxYZl8VE
         8DAA==
X-Forwarded-Encrypted: i=1; AJvYcCUl2r4Hb95MdQ58/TmuVMaveZUlJDpiwEECxgsU6Dgy/CnfQV3CTtQI32M60H+gvPCCwBSRIpES8ckN@vger.kernel.org
X-Gm-Message-State: AOJu0Yydnl9gbKat9hEPopfp7QpMzxtqUfdsOHo6MxIZDT60yGg/WjEY
	4AsHpwj77qSD0Tx52OZfx2NcTHLetuHidT2UZ8mbbEzsnc14H1baE/smW1HcMuY=
X-Gm-Gg: ASbGncueNrOc6Uk2D4UAYRnABvRtTauE/urPcw6XfJZhcnSsglpFdrwJZvfUWu7NDgE
	PxJF2HiPTpQ87IaxcVVt0NAGILTtuhJJlUfAkAg4M9a55uwjC6/VLrgRHWxSkhvd9dq7a8fEkSN
	EakFIb7H7wfYvJHTxO7bgyhYrEcLmedVge8YjEkrVQmeo16JAn+ZEEjmZv5po7WVKFFEQvV7CQo
	/aOY4kihUbSGJ24i/oXvAwJp27XLZMQVxq/WEbwK4Gqn+OEdxUV2YyrEUwyY71Ey286jcnBbKsX
	J8sRKTAelvv1Csp4Pp1XcmYjThncRfX1W8dTznd31y4sKIsfe9uS57K3szw=
X-Google-Smtp-Source: AGHT+IHkKn5DpCm2MDSIaZEFKIGhgLbqZ2SLsDQ/T7AcbdUeYu5WwW/A7NgfILFa57g/wXMpeGSoqg==
X-Received: by 2002:a05:600c:3d0c:b0:43e:94fa:4aef with SMTP id 5b1f17b1804b1-441d44ed538mr25318955e9.8.1746709073277;
        Thu, 08 May 2025 05:57:53 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442cd331221sm36183705e9.11.2025.05.08.05.57.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 May 2025 05:57:52 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: peda@axentia.se, broonie@kernel.org, andersson@kernel.org, 
 krzk+dt@kernel.org, srinivas.kandagatla@linaro.org
Cc: ivprusov@salutedevices.com, luca.ceresoli@bootlin.com, 
 zhoubinbin@loongson.cn, paulha@opensource.cirrus.com, lgirdwood@gmail.com, 
 robh@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org, 
 perex@perex.cz, tiwai@suse.com, dmitry.baryshkov@oss.qualcomm.com, 
 linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 johan+linaro@kernel.org
In-Reply-To: <20250327100633.11530-2-srinivas.kandagatla@linaro.org>
References: <20250327100633.11530-1-srinivas.kandagatla@linaro.org>
 <20250327100633.11530-2-srinivas.kandagatla@linaro.org>
Subject: Re: (subset) [PATCH v6 1/6] dt-bindings: mux: add optional
 regulator binding to gpio mux
Message-Id: <174670907131.90037.7280261510052841645.b4-ty@linaro.org>
Date: Thu, 08 May 2025 14:57:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Thu, 27 Mar 2025 10:06:28 +0000, srinivas.kandagatla@linaro.org wrote:
> On some platforms to minimise pop and click during switching between
> CTIA and OMTP headset an additional HiFi Mux Switch is used. Most common
> case is that this switch is switched on by default, but on some
> platforms this needs a regulator enable. One such platform is Lenovo
> T14s.
> 
> This patch adds required bindings in gpio-mux to add such optional regulator.
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: mux: add optional regulator binding to gpio mux
      https://git.kernel.org/krzk/linux/c/e9c695067b68da6b39e0d70cd4a061d0f70050d3

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


