Return-Path: <devicetree+bounces-125275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E10A9DB627
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 12:02:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 111D9163A16
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 11:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9B7419415D;
	Thu, 28 Nov 2024 11:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b="rlrLEGV7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6ED018B495
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 11:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732791775; cv=none; b=KfYZPWxR+NEYghBxhxzDQgFsaf7UDH86U3N1YqX4kAtT/mdD65NPymyB7zB3rQ5l7R0NNNaQ0foqfTWjcgd8w2c7d+KcN3lEZ6n7TakIkZBpUFbT5J/DBXiGcbQ4eJDf4Qn3AFNHcqqgMHO25GzSUbX2K4GJcqDpP92nytdysXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732791775; c=relaxed/simple;
	bh=HkVtIayR9foQ5xZVMRAYZGNzyqx9gy93kknz1x9CCF4=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jz+g4LcRrxG9bOO3kRBLIL8ZfMMMkP7F/0XhaTey2HjbALk0MOH/BPzstL6C5fQG0SOb0t6xItDMqmcwLUqlE8tO1wcU1EVp7DB1LEuH8xEpKjI58+Fa8i5su61Yu8ZYTZLPs9Zm+P4ePXN6bBeLA2+JtRvgokLjr6exssaKMsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk; spf=pass smtp.mailfrom=remote-tech.co.uk; dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b=rlrLEGV7; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=remote-tech.co.uk
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5cfd3a7e377so806036a12.2
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 03:02:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=remote-tech-co-uk.20230601.gappssmtp.com; s=20230601; t=1732791772; x=1733396572; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=N2jwobz0tUiTEvoVAQRqFl5xUiWCnjuXqJcLdQu4lR4=;
        b=rlrLEGV7J0Hi1G6VETZBW9SaLe95Zcy/SNuTmz1ptRbEgsA5h6361gmQMCT8qtOqcG
         5nlaKHrTPQtX2z7qylUWJYdo9k/PScwSFquuovfAe4lHPYTVEeQgSsV/ku8c9U0yQ/pj
         AJuwxdz/nadyi0hnKjb9pvD/h6pyhPOHlagrfECXy6XvWlNlfwzQ90LTD1ldqv91FEMZ
         0AfF9r/Ck6uIU3uFAyBcBaU9BtSQyx84Iy1WAX8bAVbq6R0Gf5GecFkZlBMtfVgZn4up
         wFvjY5Oef/3hPC+bi+Tw2z2hUNYvIZ9qWSrhkvSM35SfnEvXik35QPcBoSaTAGFgCAMa
         XPhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732791772; x=1733396572;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N2jwobz0tUiTEvoVAQRqFl5xUiWCnjuXqJcLdQu4lR4=;
        b=Rc76dGpMcdEin9+IVAMX9S0jf0fnOALK9v48KYdjtScvlqB7j8fTf6LdlgPPr1TdyJ
         xz6lMVvwKGlULfPSB3HXgAF9DgCVwKZywgxqleyqrMmW6Tgc02a34gyY746XL4GRJgA4
         +vC7ZDSpmVBNU1yAM9zK8b24/Ral5TB5GXoB2LUcDrH+5coy1q2bOGsd48CHYw7Yb1eu
         aAui/oAACovIu67cC01VVdaYsGQN8JvSzEaRY1vylOAVh8HDsjUXaY4vjloYCo3/dmC0
         9vmQfF4pJFWNRm2KcK+XQMczz2Lkf7crK6b3SfiYFCQRb1QtcsQlTkn3lEDAMDyV5T0K
         8k8w==
X-Forwarded-Encrypted: i=1; AJvYcCWZla2glXBcXpKLkXYjMVeeCqfGJBmyX13PeL4qSFBCreyPL2umJ73iFA94DaMK/hr6+Ag4ssUHAoOq@vger.kernel.org
X-Gm-Message-State: AOJu0YwvHPgeBygKhmpO14kwkknQwI8TINIAzMT+p4UPbnN/fYUdtIIj
	z7LvE0pMOGh63+7hM0ie7ZjysCB0B9gjcOh1AWTNuulAAFhQJ/fYKjsqXh1ZbN31T87eD9xZ6vw
	YNFN4mMS1/Eruhd/uoOQC/8uf2E6DrvAQU6L720bTrkkx88eALcOfOafB3dEu6RUIsS6wGQFz/A
	DAy7zfvF1QIgiEDtogKgr6CX8D
X-Gm-Gg: ASbGncs4OkIFVQ/Z9+gOygWUw9S8hQrlLY3dZlwWn0jO0/VT2CcFRthf19aXDmIHZHX
	U9oUbeTWgC/L6NZ/GNLB0zOTUhwTwJmXSdiv9SFsB14Ej5PL41MgiMbMyIRFGMx4mEOzZk33+bM
	sdlcGKlmyR4bunAqg9WE/mMet1GSPB+mOyVeO0vBh/AZGKxGrE34cAatIioBeNCDkL0I8ty4fNL
	dHohIrVFa9KxMbnJI/PrVscbGaT4HV6mtEw+1+pZtRBpqAi4j6ohNVODEsSlMQzYdhfsEEk8Wru
	7m2lpMW8kZxXiWKt
X-Google-Smtp-Source: AGHT+IFX+FbOsE2yr5AmUhyG7Thr6Holt/fq6gB5PxSluSHCix4v+HkEd87hynKdzyr22pwGJOpyIw==
X-Received: by 2002:a05:6402:280d:b0:5d0:a43:cf40 with SMTP id 4fb4d7f45d1cf-5d080b8c9bemr6225787a12.4.1732791772129;
        Thu, 28 Nov 2024 03:02:52 -0800 (PST)
Received: from admins-Air ([2a02:810d:aec0:2a54:184:ec69:1c84:8a04])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5999058fbsm53856766b.143.2024.11.28.03.02.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 03:02:51 -0800 (PST)
Date: Thu, 28 Nov 2024 12:02:49 +0100
From: Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>
To: robh@kernel.org, lee@kernel.org, linux-kernel@vger.kernel.org,
	conor+dt@kernel.org, pavel@ucw.cz, linux-leds@vger.kernel.org,
	linux-doc@vger.kernel.org, krzk+dt@kernel.org,
	devicetree@vger.kernel.org, corbet@lwn.net
Subject: Re: [PATCH v9 2/3] dt-bindings: leds: Add LED1202 LED Controller
Message-ID: <Z0hN2WLfIOEx7x8l@admins-Air>
References: <20241121165829.8210-1-vicentiu.galanopulo@remote-tech.co.uk>
 <20241121165829.8210-3-vicentiu.galanopulo@remote-tech.co.uk>
 <173222307644.3811087.7654504224510124517.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <173222307644.3811087.7654504224510124517.robh@kernel.org>

On Thu, Nov 21, 2024 at 03:05:14PM -0600, Rob Herring (Arm) wrote:
> 
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
> 
> If a tag was not added on purpose, please state why and what changed.

There were no changes in this patchset with regards to the dt-bindings.
I wrongly, did not add the Reviewed-by tag.

> 
> Missing tags:
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> 
> 

