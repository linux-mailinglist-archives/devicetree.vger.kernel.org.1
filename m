Return-Path: <devicetree+bounces-216392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7B4B54A13
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:40:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 896FD188CF6D
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 10:40:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4603E2EBB8C;
	Fri, 12 Sep 2025 10:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Wpec/RD9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4D802EA14A
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757673627; cv=none; b=Ji1uKPF05PIjAid4i4CHqle19JwxW2a3oqS927O5V9s5/GkDBKQSsYXiC/+Gj+hzkgQ7xGN2hcV60+YHYrSoo67ugNDEctGI5Z3Qf90oywmJbrJTEkpyrjnpeMfcNSKe3xWWLEGnHmdt+6Iy81Xkpl0oPuK8hXJEdp3g0CcVHyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757673627; c=relaxed/simple;
	bh=3e0QDJ5KbEQSENJLgEWoOKXZbyZ1RrVyN7WOTZvbwFo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lt9QlSPhpCLvNSh2DjVSS7OPBBKJ5nyCqyxrYc+ABj1sZySXUIKUW2Md53jNxav+DXGd8fc5Sr6b6dVYbNC87fGyZFAU7OABcrmRKjE3EyFG+yDM2XWNelmSphHr48j4RDGMw8sWOuYiUZP4ch2jRsoBmmKHGFDC/4t1CIAtCWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Wpec/RD9; arc=none smtp.client-ip=209.85.161.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-621b965a114so997110eaf.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 03:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757673624; x=1758278424; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3e0QDJ5KbEQSENJLgEWoOKXZbyZ1RrVyN7WOTZvbwFo=;
        b=Wpec/RD9qi4TbGQy3FJL1NA95+USMHmuMtbEHsw7oAhhUEYMS4urGz5OrcIxeEIrAn
         2a/BibT7iJtbHbxMYqn2i5IlUC2aXIVx7OaMabZzZw6kEil0SMpXoXfSX+H3iw0JJzL+
         9luibtddZn9SwB4f3Poqzhvh6pgbGlvOzwfG9iF2d38mqL4vw5sdnX6yFrQYXz5bBDD4
         hF33YdF64eDbjEF0ly0m+Zd5tl3NtDbkzpCAYlDyURiyrfnBG5bFo1Jv6/vrCqvvBMSH
         IdKT40H4Zwg5ynbNmByiOm0tuA0354YVoHkt/mHI2Lg0eIxoOD91uulP9i881j+EXp9M
         3SdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757673624; x=1758278424;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3e0QDJ5KbEQSENJLgEWoOKXZbyZ1RrVyN7WOTZvbwFo=;
        b=Pgit4R7ZItBCo1CVAvhNz7pZ81waUEqmdi5bYOJHJhOPnmu38Qk940cF7Mj8MMfO4i
         rTa1w+Djr8UZt5WyZdwUbnXG4KTLZepA0izWje+UfyeJi1f8noAzCe7a2fIqFxJfdBLW
         xBBb8z6uU0ZYub24zYAJZT3RGwYqD4WpkOirk0qmVoWrY2Sj+YMfNauHP9tUYIo1SoXq
         x08757j/5zW0Yrcr5OGivH2nSuYrJQgQ4DwAQKC+Mpg0PBC4siPGkE0hjVRExLG3ewWP
         Gkp/mCJ8rJer6HEgAdH+6Rr9EcTvLs09lImCIYLUKlZ6ZjYQEoojeiIveGboC4/i43da
         Divw==
X-Forwarded-Encrypted: i=1; AJvYcCW8Xn/9v+bAa+WThhkGg0oQ6JCiZFluzbmx/kakkWtZmKdPWkW5yhdumEGMKLBRjSVwmKoCTCVUTFhL@vger.kernel.org
X-Gm-Message-State: AOJu0YzJLXLcZejNZlLe6yTcw095kGXqhk+ZzhPYvnq3Gts8jjw+Q8KR
	5fKUEZ9nXXTB1ML2j4arnOsSbhNr/ddtx9RBc1dMuGjpLqKPqPD8pKLTXod8H+PN0N/DsN+SlzM
	fOG81goJmStaSVRf+ZsssTwci+hY+jkLd4Jz8AFgAKw==
X-Gm-Gg: ASbGnctIV/2nFFgEJyofBsAYOTlp95pdaYxhYlgbPqJHQkqgRVU6lg83oiOkTNicX3k
	ylHIJIhOBPTDqcobua0sG0XDhhPwgMsIAW+It/QIhTrvfDrn/1AAUg02jH9V90BL25ERKHDEwSc
	R4QWRMaIKKXgnSxVBPZ94wmCLQAs8D/BY3lBIRMfNa3fuC6G/+Ulrgj+3/RICikCZ6yk/ldDykx
	8N/XVWu+Q7lWUQdrA==
X-Google-Smtp-Source: AGHT+IF6PYieNgXpIa6hYHoBPz39MBN51Z0tSk5VpF01b/bxMjrI+5a5IB+fKLhWJ9leyknO44l7JDgMdXYIXbH0W9U=
X-Received: by 2002:a05:6820:553:b0:61e:154c:5b01 with SMTP id
 006d021491bc7-621bedb8f94mr1279631eaf.6.1757673624624; Fri, 12 Sep 2025
 03:40:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250804-b4-gs101_max77759_fg-v5-0-03a40e6c0e3d@uclouvain.be> <20250804-b4-gs101_max77759_fg-v5-3-03a40e6c0e3d@uclouvain.be>
In-Reply-To: <20250804-b4-gs101_max77759_fg-v5-3-03a40e6c0e3d@uclouvain.be>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 12 Sep 2025 11:40:13 +0100
X-Gm-Features: Ac12FXyvumHdbJffBuyBixni6c5DHFCVdSez0KdSftksCT_bGFTh8Q4itCgi8Pg
Message-ID: <CADrjBPoA939OwErqjV4OT04hgAfDNgmG2o582Q_P6CN6iWQgCw@mail.gmail.com>
Subject: Re: [PATCH v5 3/4] arm64: defconfig: enable Maxim MAX77759 fuel-gauge driver
To: t.antoine@uclouvain.be
Cc: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dimitri Fedrau <dima.fedrau@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 4 Aug 2025 at 15:25, Thomas Antoine via B4 Relay
<devnull+t.antoine.uclouvain.be@kernel.org> wrote:
>
> From: Thomas Antoine <t.antoine@uclouvain.be>
>
> Enable the Maxim MAX77759 fuel gauge as it is used by the gs101-oriole
> (Google Pixel 6) and gs101-raven (Google Pixe 6 Pro) boards.
>
> Signed-off-by: Thomas Antoine <t.antoine@uclouvain.be>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

