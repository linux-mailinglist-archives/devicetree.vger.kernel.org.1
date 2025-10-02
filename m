Return-Path: <devicetree+bounces-223471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A04F1BB57D0
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 23:38:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 590914E32F8
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 21:38:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7B0A261B64;
	Thu,  2 Oct 2025 21:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CqbNY72q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE7215687D
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 21:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759441083; cv=none; b=JN/+UFR7IoTxGzllsFtlCLkmPI6CYwDJOvM8GZe6Y6DfhSHxiG0Tw6fZyED+lPl5YlBBKZLx7eoEsCOXw+ieIkOoBvEYaYrkChC6hmwGoVhCIkzCPLnH0tIPAfhcHrdnmltL5AxdAG/OcVpsdnNDiuyw6U7WfN95M7+wFm00IQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759441083; c=relaxed/simple;
	bh=Wa3MaIt2OTfDMAacePpuDpp+xPuK/PWuzyclDSFj+t0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RUCBsRVbHlIxhIgdpUkpQQ833zcBSFGw96lIg07SejJHgf6B2XKOrrjtsyIlMOJ6zUQoMUrITIlttL030mfWcfaAyOuFOQZ8/LJxjD7Db8lVN+YrKwdSqHueiJnJ9RDb6tCu54O9N6b0W5HHBgYffGGFf/zpLUm9l0gQokAiz9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CqbNY72q; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-78127433a32so1219763b3a.1
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 14:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759441080; x=1760045880; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3UYjs/DjWtPFJ9SkgiQewKjh9UT4jabvAen7EJXFzrU=;
        b=CqbNY72qE2w3zNKipvYfu4gbH+WsSVU0jPrnZ7lPyqJ5sEUbMA+S93FfUSPW/wGrgv
         yHd/PvzWVwexTYq+yTJCcZLyufzOK/3LpjIu3HluIhs9HVn2wLZkleBCIQXsNveaSfhK
         QV9497y9rCsWmZMK3VBIxytH6DnHYYsMq0BHxDl9PIbRCKbuhBI5VJZAXv8BpYh3n705
         LzgYyJp6FQWB3xCehIly9OycrMpd5U+68M0jIn8bJeEG+5HP7sgvdipBem1PLxFf97U4
         LAqCY+mHuUQEoK7dajhok0XHX0882CogkILYiDb6gXlAhkgWeBmqQNcfYGvZv0udvi0t
         +yCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759441080; x=1760045880;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3UYjs/DjWtPFJ9SkgiQewKjh9UT4jabvAen7EJXFzrU=;
        b=T8Kzkwe/WQjonUanu1p058LOM+Ok4TLMg9UQp/iTXPRRw645+ePK5AxBDiNQ8ARXAx
         WI4zHYpB0gvF0sChZGsE9tPaXdsE1YJeBKTKZFcJg6uZtEEZ99sUidN/9ZelBPvswwuz
         huel5G7IvJ9oN3wLJaFOb26lKIIemFO5/wCLEqPX2r3otiynGlTlyPNNpKlLffKax3j5
         pcX/vaUVOxKxHIqZ8/5IcIzUYZtYPn5hC60/lXo7Fh8fuo50mQescgpqbPlofvnLDKRI
         t0VHtgKUt38FjAkbn2FYT13flOfTDzsn4giNJQX5vQY9t/R22BiKN2wXPhQkcIpsJMFF
         fpWg==
X-Forwarded-Encrypted: i=1; AJvYcCVWR7YGL83TZxXcfQYq8EI2vqK5fwXH/ogZWBZQZD5YzhqWBVuzEryNrUqkP4sAOIF7PVQgcrKyOzdW@vger.kernel.org
X-Gm-Message-State: AOJu0YxN976VitCluuZ1WaoyKSLHieTHbMx0WuBIM9hkaUgH2f4GXbYk
	aannqH6vRmUMhciXfuEMjH9PxJR3S4W/hhdcclQSWuUnxXn5kuHbs/TV
X-Gm-Gg: ASbGnctoy9HKwGT16Zz1L7FmxmInUC9LIR65nGnP6kj8nX0/kr///avnHs+oNI/r05t
	sIA6JsVZtsZydMF2EitILg0fMJbDwG2wSDzYsr5CKgzk0C68/qB635hkBE5y8r9k4a+2OCeFOGz
	IAy14bn526TEoktsN/R97LH42uDIdVFlfHiPnyZrpwfUBOo0kUZjqfDKFUnyBu0qJIgpJhtuSVc
	GOg2dJSm7r6mHBrVuwzqbP6pydSdwYcNfGRC8f0aFQxfddVhnBKK8gobnEHmAdcXXVrR54gYKV7
	GMRika+9MqjnPmqSse3xVtdSZGLaxb/ESVyxhVDiNLd7lyTzAXFIsqIJkZzWWxVEXlPEMnSQls7
	Nu5BMkGbPWqJwSVHzoMVUYVEjP7cHlLXiO9KhLsQtiJhiE7gyIjbbsnUbze4=
X-Google-Smtp-Source: AGHT+IGfpeSt72PLiRG8302u7jW0eS5cM/tPuBTjoCfYGBR7WBrL3m9GghHnqqRwzstji5FK0/L81g==
X-Received: by 2002:a17:903:2ad0:b0:264:70e9:dcb1 with SMTP id d9443c01a7336-28e9a6fdf1bmr8314995ad.56.1759441080436;
        Thu, 02 Oct 2025 14:38:00 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d122d96sm30394595ad.32.2025.10.02.14.37.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 14:37:59 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 2 Oct 2025 14:37:57 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Eddie James <eajames@linux.ibm.com>
Cc: linux-hwmon@vger.kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-aspeed@lists.ozlabs.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, andrew@codeconstruct.com.au, joel@jms.id.au,
	chanh@os.amperecomputing.com, jic23@kernel.org,
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org
Subject: Re: [PATCH v7 RESEND 4/7] dt-bindings: hwmon: Move max31785
 compatibles to max31790 document
Message-ID: <4b617318-f76e-47b0-9744-6a79803a149c@roeck-us.net>
References: <20251001144441.310950-1-eajames@linux.ibm.com>
 <20251001144441.310950-5-eajames@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251001144441.310950-5-eajames@linux.ibm.com>

On Wed, Oct 01, 2025 at 09:44:38AM -0500, Eddie James wrote:
> The binding for the max31785 is the same as the max31790, so just add
> some compatible strings for the max31785 chip.
> 
> Signed-off-by: Eddie James <eajames@linux.ibm.com>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

Applied to hwmon-next.

Thanks,
Guenter

