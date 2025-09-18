Return-Path: <devicetree+bounces-219039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDB4B86C60
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 21:51:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 10C3C1CC3D13
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 19:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F5682ECD2E;
	Thu, 18 Sep 2025 19:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="uhTVDOEL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AECC2EC0AA
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 19:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758225089; cv=none; b=K9MRh1y3ObXu5VJkTUnS4hY9aO+SWPUlJiKywnsrxjmrpY+ynpTnloBnC2kQq4GfkkE7JsxqUlCnh04qaYR9tDg18r6v1fkVJ6xv76FtW+rj19tIcD6fXTQWnGeF56KPNpKV+f4P0tBwtAifPxOGQGb4uJp0zeUmWwUkjNBA7EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758225089; c=relaxed/simple;
	bh=+vCpNQP3gmwChNJcUCWInLDRRa5HHP5yLhQ1psOMqTk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FWkaDsRpgKBrtzETzlz0Tpg/2fRA0AzpLEFp0EB3O8Sb9r/onmWF65RPowQVNPoqQcNe8pbhcbKRpvlCHzyXHCoWWH3l6EZlQpACrG2Je6SyZVzImb3rM83bni0/4l0mTjcbYwDr/HH0xjiNVfYNtwdsC6Z9diY2Pptn97guYy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=uhTVDOEL; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-621b4d2b2f3so1080727eaf.0
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 12:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758225086; x=1758829886; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ycb6BrVm3o3tgecg3NZ2b8GKaDVhR9xxtrfWCgsW3GI=;
        b=uhTVDOEL13vWSEZ+PHy9Gpzci9lgihjB94UiPff8m4ZgUOMFrr5L0r7eMZae+JHgHm
         Owmm7nu1rKxAgMtXT101hm6pTxVpL64qQObvWJ99wzS4ysBmGGu2ke+o4aeGLmDtWL0w
         6EoPS660WndQ4blKQujTf/FNMPzqsAk9sg+ZLKWUx0lDp3YinE1ajinBxjC4hCgY+dW5
         V6IqF7Ncryaafpgc6WTcdHN0PLvzp98GYFOW7TeQW3jORpjR1K3baX5NNbMULS1y56Ac
         fPMEm52zXPcIb5saHVoZbTll7zFao4S0n7n+T6jgjEacSeQqUe7Z/k14iE/sOgv8D2lv
         sRqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758225086; x=1758829886;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ycb6BrVm3o3tgecg3NZ2b8GKaDVhR9xxtrfWCgsW3GI=;
        b=reg9WL9H7E74pIUp1XIljgI3ao2i+TA3Z8kwKFfeUppVO/KWCrcZ1ZAiYqhKsicVTg
         44RUqh9b9UuDobOBSRDL3dOdLvRl9ngk9cIxRYiGHPgaz6j13aYgwcWjKihSuMvjCjCS
         NXZCKj1sDETozLMqbEJhKKGEdkRevi+daeCPHFKYYtVx2+K3moh7Hy6iA850ZL1v9jOd
         GYn0fRyKYFVS9WWibxuXda9JsQRyjbNTc6b29073BMA8lv9pbgX5++cWw6SXSpgGBJcy
         yJ+iyN6fBMWn3NG4q5YS3h7mZKcSxYuHY0OIe8XWYXPojiwmt4fihZFWJOyi2EyAWEGJ
         EgIg==
X-Forwarded-Encrypted: i=1; AJvYcCWuAmIpDoHjP7SV+3KZrrO7xQIvtS97b1aYxWyeXJJqPEj/8czCav5Q+GtXqpYqav3aPXbonDObchB/@vger.kernel.org
X-Gm-Message-State: AOJu0YzthJmVj/f6NttC415oIy018IXjNKkY85I/Y1ufHXLA6GhQgFDL
	t0M3s+4SAmyi8O/fEIpplOMcH0tUlh96TSDcR4XPy7TibZgxtSTsF9B6RONwoKP6e78=
X-Gm-Gg: ASbGnctFMLc8DQSoUOiz1YP2V6v8Sv+utCUqGK4sBNqVjJ9/FUpR0Fy+5gmWLu/QOtj
	eJjjvhbw98qN9JgmJ+XRsckP1AlneGJf1Sd5Yro9AwZM1eP9L650Ct8uNNe6ur4pRCFaP5OWX8n
	ypVtdQNF04e59UPUmZ/eKe1E8DZgNIViYhUyFNTqPPLbLthVWUnxaDKH6wjM4f2VAgbR8WZw/Gf
	j5NULX5OB8cQspb02Z4ErI3BD16pETtGhMVek6mjW/LI0RUlVeK5MYu60AF8Jzwlj11USwOtFEo
	TWjEjjIj5B7dwzgoplBQUddx2e25YUInW7MqXo0U2I+DYuwLGsQNLiOkn4e+DNCrw0FTCc292xV
	Es7Wb2ESuqQVlpsx4RxNW56dDoR63IOIOcom9qAeC2aWja5+AlXgmEOP3opOAUWLJKVI43Ksxwx
	1L6BOtB5/vgcXz6P9EIkRyjHNP9BrH
X-Google-Smtp-Source: AGHT+IH4gnu5ZviVz4ulNiX2L97wXpeu2HQYjfDnnt0qWqu/Pap+ivM2yq37UDqW5VBY04FXNOqo9w==
X-Received: by 2002:a05:6870:8088:b0:315:60a6:c28f with SMTP id 586e51a60fabf-33bb3aa16afmr568561fac.3.1758225085748;
        Thu, 18 Sep 2025 12:51:25 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:55b7:b662:4c5b:a28e? ([2600:8803:e7e4:1d00:55b7:b662:4c5b:a28e])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-336e3af73f5sm1892886fac.6.2025.09.18.12.51.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Sep 2025 12:51:25 -0700 (PDT)
Message-ID: <46575acd-9e7b-4462-989b-d74de4d86311@baylibre.com>
Date: Thu, 18 Sep 2025 14:51:24 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/8] dt-bindings: iio: adc: adi,ad4030: Add PWM
To: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: jic23@kernel.org, michael.hennerich@analog.com, nuno.sa@analog.com,
 eblanc@baylibre.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, corbet@lwn.net, marcelo.schmitt1@gmail.com
References: <cover.1758214628.git.marcelo.schmitt@analog.com>
 <7a1a68a33769c69967bcffbbf7a0bdfec69516ed.1758214628.git.marcelo.schmitt@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <7a1a68a33769c69967bcffbbf7a0bdfec69516ed.1758214628.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/18/25 12:38 PM, Marcelo Schmitt wrote:
> In setups designed for high speed data rate capture, a PWM is used to
> generate the CNV signal that issues data captures from the ADC. Document
> the use of a PWM for AD4030 and similar devices.
> 
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> ---

Reviewed-by: David Lechner <dlechner@baylibre.com>


