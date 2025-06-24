Return-Path: <devicetree+bounces-188864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6582DAE5D7F
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 09:15:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF60E169E54
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 07:15:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FBE51AB6F1;
	Tue, 24 Jun 2025 07:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Pggnku7b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D115F8F6F
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 07:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750749352; cv=none; b=S+7mg8GXjGlTzFNb4vhyc3q7e00WMsUPAVUKA26j7LiOJ4H2cZjqmF/K0Put0ehEdVYWZOBg9iNmUjQqum2+tak1zdz/ObUH5XhGV9n4pIfeNCMAc4dymUqhHg0rELnZl7iWZN17tNNQIBMGfWH9nORIAqO9ip+7Y3rlOCFQ9CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750749352; c=relaxed/simple;
	bh=vqkUGah9elbwOI0XlQgzSWmgTt3SBC+TfYVqbke4AQQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rm/HwZYjEkikgxkrc5POi/kAZjL+y5NagGxl1R+lFxtssaCEhdu+gvMSvsGj7ajBcXilMkXBz+O78pHiqeCnYsYMJyAaUy5X1jniZj4zdXy7ejQQBOBYjPIBN9327QfsC5fnAroNH+0kZagK9Eun+qc7LULLwd4H+McHgzRHr78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Pggnku7b; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-60768f080d8so8700583a12.1
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 00:15:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1750749349; x=1751354149; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UEQZoH4hrkexTS/DVmXNzUg1vEOwlPVaJJs9/52SXD8=;
        b=Pggnku7bGPz6BRS4/X56oLUdpqkpxovafLL7fO79RPh1fzKnbpGL/4TmqHSJzIu/Yj
         EKpeaioRS4kdkxtDXH71KGOiN9s5Ez2qdXDclU5DWXYMSITdsfhfGDFRyuTu570r5vvX
         KkEUTLZgaKYHaV9ko1Z+qpoyPdjSHk0HKHBpagJKqUh5BCRnNqsZK4c4VWkG2XuoH9Qp
         xedCLSCwunxfignAMXc73UkTYgii1T/V66bjmSSIsimpX9edKLYlVRpkIjWJ1tgf18es
         xLb83KSmHMJJUJhSfWzzSEOVdkdGGpm818/amSg1zQsD9i1478GO0rtbTyP8D1MjSpBD
         /2eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750749349; x=1751354149;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UEQZoH4hrkexTS/DVmXNzUg1vEOwlPVaJJs9/52SXD8=;
        b=Pt4JGJk92O5XFj1VX5JblAKNLWAwid5ARdI02scI7HEumAXyLFnJSG4y+w/kcy1IGd
         9SStUxcMQpx2fGl/yi7bC61+QVodrOsOBmJ3hVyalgk5aRXCB69cnqQffr9ZCzWgcod7
         7heLapwj2bmeKI1BRl41ptnAOHqNrAK7iqLLg8cOry+yNuzknSvJHjQ3EXT5so2eFmY1
         X+uL0d1giMNknws2WpP3NP0vfSysCRZWiye7zui+zMF1UbtlG0e32jEnqMv/niGvmOxs
         mqXG4oxOQlIFqvgVubsSn0GwecUPfgM4Y68+j9MUMUm55+JNB0A/+0753I7QTFe52lki
         wkfA==
X-Forwarded-Encrypted: i=1; AJvYcCXeCqPUsvTdPn0SrMhQbI9IlBey74CkPoZmVd/usoEjGEes4vk+ePlVhuNZzyPaGM2Uxv2HQnJozMNE@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7woozRN7xJIqOZ33C2J0kvN7ia+bEbzeJ82SgHzaZT+XKEEIh
	l7M+Xijnqmba6SQZr+PPw7Dn/VGWGf4b2BRCgLfzmhpcf5ULNOv70WQXs5xiuwXUqBQ=
X-Gm-Gg: ASbGnctAO+QpTT7mK5+0UiilvY61XSSl5qpNjh0GlShJeBg5IkdOHvxLZKAi3v7vEPV
	r+kexqN2V/t8V7CjZp4d0/rJOfPszRWu1H1erJ6rcp62hHa2waoXrxRWLhLNJr+JvHDZkMbeMfe
	ZJkT8nFElv1qO0cL+atzsc48aBcYALIfyHjsZytn9dxL6QgoC3y5Pyoa/wH2yNkLa5Mp0rvZh0i
	aJ0bAjLzbUGWoncbc2XHpC7cyENeYPH+cQib2zrc3WuSCcEL62AIZKkoxBrjRUluoxfQkB922J0
	HlpxlfXFbNk3PNXLVOVnDjBPOc4fsNTRM/u0tKqrrluB9CjfbmObYrYOYNpY5Ds9Axke5bs=
X-Google-Smtp-Source: AGHT+IGOvM+PW0iWDdlohtn2Rgc0AiMqqp3sbNstZNYo4HDuLqYgNyYYm6sUppGh8IGUq60tsNcbqQ==
X-Received: by 2002:a05:6402:3594:b0:607:ec09:d462 with SMTP id 4fb4d7f45d1cf-60a1cca909cmr14674524a12.7.1750749349101;
        Tue, 24 Jun 2025 00:15:49 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.110])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c2f196fa7sm588684a12.2.2025.06.24.00.15.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 00:15:48 -0700 (PDT)
Message-ID: <aec7438b-f5c0-4fec-adc2-5d763b1ef366@tuxon.dev>
Date: Tue, 24 Jun 2025 10:15:47 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: microchip: gardena-smart-gateway: Fix power LED
To: Ezra Buehler <ezra@easyb.ch>, linux-arm-kernel@lists.infradead.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Reto Schneider <reto.schneider@husqvarnagroup.com>,
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 Ezra Buehler <ezra.buehler@husqvarnagroup.com>
References: <20250612074737.311346-1-ezra@easyb.ch>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250612074737.311346-1-ezra@easyb.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12.06.2025 10:47, Ezra Buehler wrote:
> From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
> 
> When starting up, the GARDENA smart Gateway's power LED should be
> flashing green. It is unclear why this has not been done earlier.
> 
> The LED frequency cannot be configured in the devicetree. Luckily, the
> default is 1 Hz, which is what we want.
> 
> Signed-off-by: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Applied to at91-dt, thanks!

