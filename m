Return-Path: <devicetree+bounces-244435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC14CA4DCF
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 19:10:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C6035309192E
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 18:09:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D28536A009;
	Thu,  4 Dec 2025 18:00:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I15BF1H8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f41.google.com (mail-yx1-f41.google.com [74.125.224.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88197369996
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 18:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764871255; cv=none; b=W+MG1mFzFjzTzWT/d30tt2waBkeiX/Ug4JnjBeHOCaZQFED5C/bxejKpJuK4E0vKSQ8Y4mebnnVhIvkhoMIvr2fyhtrvRJl/dAa1YcXWrxOdwb9w0EKGgCUhRlW7oTOFa4P3LO0sq2kR4foOuaYTG+C/HXvNc0ujU53UUPKDOMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764871255; c=relaxed/simple;
	bh=wrUOSAWKU2+4eHuw0PQplu30ZrAwFfNGX6rR7EKHuPk=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=Sy+m2auyd6Q7ulNJhyMj01XJg7tYn7gKBR4/rK8uzzrOTI+qsoMAhsrK8CUacFjYyooX0B8enVfh9LuFUMBZLfzvKDLHEJz25GaeO0ipNRFmrMGwBo4qXj1MD32ICJI+aCwvAhRkpqNtI+BfbHNb4EmPJt6k1aKQh6J5aQZ8+xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I15BF1H8; arc=none smtp.client-ip=74.125.224.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f41.google.com with SMTP id 956f58d0204a3-642fcb38f35so1048230d50.1
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 10:00:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764871252; x=1765476052; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wrUOSAWKU2+4eHuw0PQplu30ZrAwFfNGX6rR7EKHuPk=;
        b=I15BF1H8NPY3VLmRvn/LC9+bzhLKVUzKNSHuM88vzyHuvncnMom4qg2JzTsTnDmi63
         ITA97b4sJisitirgavV29zjKDjmikFBEBx6ER1oRzP+rCfKkElVm/WX+wWC392wC4XSI
         qbIemzC4rWCSaB20d0zB6M8HTRNAqTk/vggCBsxBUmsl+gsiSGFtN1k9JG8DUs+DO4g7
         W636a46q58UsNcXuVcFOhhLhYMspxqBkrGc9uiqMBQP47X9LxVTclSHyrZly+d0ii1Zt
         74CCwRbvuWFcH+2drGHoo6XbaIGtruwi6jrZFB+y66a0pb9Wb0e+c1j9IawnlOItQ9Sl
         u/EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764871252; x=1765476052;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wrUOSAWKU2+4eHuw0PQplu30ZrAwFfNGX6rR7EKHuPk=;
        b=e6M4TmPOELbTLFjgf6sOSgrPlFHTwQ6Yf56pv09tF+/fIT3L7FmHEwd3HM1yfmRrCg
         KstZXb2mXiH2NrCPKZpFDY6WCXP3Nv8j6jLkKMwYV+fN5tyXGRYrP6R1CLIWPuE19bvv
         V5XYiwk8rjO/Ctst4GtbpdIx8K1vRU/cHBvCKUZ5ReTUc9jlLaqylMmChQlUv9EtvnQy
         CpljOtuQHwzNmKbBYmDPkvFWBccoFOtSmVVxFhrNp/BlXdSfB8yyHWpDzBAlUDZUNa02
         EMkTqGRobf7VHqJIjyFYFI2WUXE+UFf9ZmdO/WCzqAMI7fcgdh5LMGPbQ9JP42CbG1qb
         DDdg==
X-Forwarded-Encrypted: i=1; AJvYcCVbCSyJhu/lK5aGFNMuVzg2E8gyBu3fl1UCG386PgPPAKosq/zEi9wHnbEb43RGxUVfk2VkDt5CuT+H@vger.kernel.org
X-Gm-Message-State: AOJu0Yxv9GBOvHkQY5zEf46AjnkYGwpe7AvTL4luYyIiIxGe3VFSKyj4
	rXzffDw5YBKmTXREsMexolkdT+vx89EVmujaRKxuG74mLWEzxJABfgXI
X-Gm-Gg: ASbGnctG6MfADmleCp8SpqekjyQqhc+CzXDZFjcvZdM0Jty2JLzOVU6hDx3P1F2HkVc
	xcZnm1l2m+b71b2pRVkFchypA/rqFSM8qqi8cGLQNAbHvi9ceqVdhOrNlSlYNnoE+nf4NZPhvYF
	F0HhuMo3iSdvLRal3yMrQM3pF7RPxt5GGcvvbti+why/XusYSNcTY9KCxVfj/WTbgyWolIn/RBL
	8qnJLZaDSuynik9yelgsY9nwPojBlJLqVnDvxxOIevcM0cz6XES+84REhFIQ8M5pxnGQrYSC4JU
	3uSIs2mEZu9BkhgKJexq5ZoSMNvo5JDw285vrf6QWCAl9XK7H1JYS+da/ZozDvRqS8eqLEdv7Sf
	a0TdYGicDh53kZUoLhRdujuympqm0Z1Gz3TrOKUppsE0OSkC66tMbNY81zO3etIBAskqPjno5k5
	WhZsDmqw==
X-Google-Smtp-Source: AGHT+IExPtnd5d3U703GNk29/3hRif4bhRG/9nZEy+8B3PyMEvej6G9sES9up6D5q/a46Q3F6FE8jA==
X-Received: by 2002:a05:690e:2459:b0:641:f5bc:6987 with SMTP id 956f58d0204a3-6443704c428mr4785425d50.83.1764871251874;
        Thu, 04 Dec 2025 10:00:51 -0800 (PST)
Received: from localhost ([2800:bf0:4580:3149:7d4:54b1:c444:6f2f])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-78c1b7a72dcsm7751637b3.52.2025.12.04.10.00.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 10:00:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 04 Dec 2025 13:00:48 -0500
Message-Id: <DEPMN6QFWRY9.21N6RX5DMVEHN@gmail.com>
From: "Kurt Borja" <kuurtb@gmail.com>
To: "Kurt Borja" <kuurtb@gmail.com>, "Jonathan Cameron" <jic23@kernel.org>,
 "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Tobias
 Sperling" <tobias.sperling@softing.com>
Cc: "David Lechner" <dlechner@baylibre.com>, =?utf-8?q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, "Andy Shevchenko" <andy@kernel.org>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Jonathan Cameron"
 <Jonathan.Cameron@huawei.com>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v5 0/2] iio: Add support for TI ADS1X18 ADCs
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251204-ads1x18-v5-0-b6243de766d1@gmail.com>
In-Reply-To: <20251204-ads1x18-v5-0-b6243de766d1@gmail.com>

On Thu Dec 4, 2025 at 12:55 PM -05, Kurt Borja wrote:
> Hi,
>
> This series adds a new driver for TI ADS1X18 SPI devices.
>
> This is my first time contributing to the IIO subsystem and making
> dt-bindings documentation, so (don't) go easy on me :p.
>
> As explained in Patch 2 changelog, the DRDY interrupt line is shared
> with the MOSI pin. This awkward quirk is also found on some Analog
> Devices sigma-delta SPI ADCs, so the interrupt and trigger design is
> inspired by those.
>
> Thank you in advance for your reviews.
>
> Signed-off-by: Kurt Borja <kuurtb@gmail.com>

Ah - I sent this by mistake without making any changes.

Apologies for the noise :(. I will send the correct version as v6.


--=20
 ~ Kurt

