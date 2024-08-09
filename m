Return-Path: <devicetree+bounces-92305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E6A94CA46
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 08:13:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 03676284B16
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 06:13:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E974316CD2B;
	Fri,  9 Aug 2024 06:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ahENB5z+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DA116CD23
	for <devicetree@vger.kernel.org>; Fri,  9 Aug 2024 06:13:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723183995; cv=none; b=m2X6RqbG0mszj3L7OTECmsBxJfu6GqH8GjhFw1kdJmc7E/iNW2c5ltMm/vxY/pxdWpwlLmn1svH5kl6D86ILeqBzUewba6ACV+5IwBvDuDcO8vqkmVS/Q162BJY5XaikmRBL/gVN0xBRuMX4oE0Y5s8fN2sJP8zHApXhESmAouw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723183995; c=relaxed/simple;
	bh=LUfpBH5hJq5mJAgbujuJTG3p5WmKGZYJduZ2mr1FAHc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uXILkT7bWKYBvbb1MMs6E1EWoFg5jHlxOGCBM1U3a7TmxSo5GKBBhgu6r1U8kNRu/71bQylsK79gMJkAxiT74Et6z4j6P52bAptYw8P5NK5rWichCqA9e7fnoPAGLjsSYXnKuvYlFnZHu3otnc6OqJVAn3ZynoVYhc4qo3ZwsHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ahENB5z+; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5b01af9b0c9so1816956a12.3
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2024 23:13:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1723183992; x=1723788792; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v/PjL/AFb85dVI3DKWfWI3LllKjRgfnxTMskidgbimg=;
        b=ahENB5z+MloBxmOqNh5o1QYSYvHYkF5dx5+tdDiCVP9L4xEx4wrmiAl/juwjLX2mpw
         wbj8lUSHlXHlWn2r7PlczDt6uygdFYsB6vVM6S2Ta16pTyxFjJg/yrnz9ZIHPUOWG30r
         crinTGHDv4LAPhjqz1ZardPluk/VYGaguGTmTv5Q0LwWE0lWSEFvPol0cn97P31PblV/
         q5OpI6W6NnHGKbWfpuI5bKbKHUbgcipQLrDBzAD8Y5H3UoQG/cjt8/n7rG4HTDZ0Jqz6
         dM+4RBBr9cw8KYPesARAcXpxzERv3h1pdcoYUTuiU/qtuMbKYg9v1iTPbG5pc+mqU2G6
         e1+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723183992; x=1723788792;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v/PjL/AFb85dVI3DKWfWI3LllKjRgfnxTMskidgbimg=;
        b=Cy2a/+gLryxpyOQqF8O0HFzhZcxzExszuaT/yPcuXpx/1IWavlzjCfa/I4gtn1ab8W
         mkfuh2WfRpxPftRzIfcewvdG71eIP3yryU0+1fLKP37J2shLPhSsejHk/e4Hjb6kswXl
         IKQrIySyDOR8qwobeYRTm+Efbbcr6Uq6M+fXYY+wDfOAp2ZQmDpeeR8DFrUdJlZ5hxjv
         fB6TydQd9aKNid+mNZiZS5un2gdlGne9UqXHJzW7Ui69jjd5Gp5BVYjmp3aIfx78D7Jk
         PQM7uIcOF1silvRB3fHHrBnSKkp4oDzVBTN4rcQ2E0bGiHrVSP/HWrBLutrBm6jv0Ri9
         qAmw==
X-Forwarded-Encrypted: i=1; AJvYcCWq2AHnHJVu6IvEA/cLAjQMASnbVNY+z46NrTm6J4YwroRDvFfbM1yc+uZoFEsGs6MGXiQEH3mqln05ACZDjZJQ0fCv5YG956450A==
X-Gm-Message-State: AOJu0YzuWZCOrZVkQezNP0xNBByKm1SoFMTGK0yoThlvQibNqWO/UMTA
	H0/AhUpk/a/k6ERquUKRR6BGVw/LXh5mAGhMhV5jgQl3MUTHhfxztuwdI0+8uHk=
X-Google-Smtp-Source: AGHT+IFnQDB/G3rJ1NYoBODYoPhd1Hk0v4H/4m5gWvj74OkkfQijLy8DyS3EE72gRgVcvkWwHXN20Q==
X-Received: by 2002:a05:6402:280a:b0:5a3:f5c6:7cd9 with SMTP id 4fb4d7f45d1cf-5bd0a65a9acmr429414a12.26.1723183992482;
        Thu, 08 Aug 2024 23:13:12 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.180])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5bbb2d3518dsm1319431a12.78.2024.08.08.23.13.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Aug 2024 23:13:12 -0700 (PDT)
Message-ID: <b2b3830e-5399-4c50-8676-b21479edebf3@tuxon.dev>
Date: Fri, 9 Aug 2024 09:13:10 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] ARM: dts: microchip: at91-sama7g5ek: add EEPROMs
Content-Language: en-US
To: Andrei Simion <andrei.simion@microchip.com>, brgl@bgdev.pl,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com, arnd@arndb.de,
 gregkh@linuxfoundation.org
Cc: linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>
References: <20240703084704.197697-1-andrei.simion@microchip.com>
 <20240703084704.197697-3-andrei.simion@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240703084704.197697-3-andrei.simion@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 03.07.2024 11:47, Andrei Simion wrote:
> From: Claudiu Beznea <claudiu.beznea@microchip.com>
> 
> Our main boot sequence is
> (1) ROM BOOT -> AT91Bootstrap -> U-Boot -> Linux Kernel.
> U-Boot is the stage where we set up the MAC address.
> Also we can skip U-Boot and use the following boot sequence :
> (2) ROM BOOT -> AT91Boostrap -> Linux Kernel.
> Add EEPROMs and nvmem-layout to describe eui48 MAC address region
> to be used for case (2).
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> [andrei.simion@microchip.com: Add nvmem-layout to describe eui48 mac region.
> Align compatible name with datasheet. Reword commit message.]
> Signed-off-by: Andrei Simion <andrei.simion@microchip.com>

Applied to at91-dt, thanks!

Please note that I've adjusted the commit message.
Please have a look and let me know if you disagree with the changes.

Thank you,
Claudiu Beznea

