Return-Path: <devicetree+bounces-152078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A28FDA47E55
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 13:56:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6747D1892783
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 12:57:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35B4A22DF99;
	Thu, 27 Feb 2025 12:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yWz7TU2l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A93422D7B2
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 12:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740661008; cv=none; b=vAo1u9eGi+1MRj1s3Z9twFg1UWfuq+gkWyU7M4dx13TBIQNxOblTARlc5djCRhQ4W6MpDJXwNeahDHl/2UKYafIlL4wOS4+tw7CaoADOr+BPIFKg4kfp37HRCdIgYYmOsbjutIwYF1ZgCNG0zvqfhdj500hDp1Bh69boOzaTzJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740661008; c=relaxed/simple;
	bh=fGUVzR1B88At1tVx8Gm7GT+20MR8uqyEANIRvn83vWQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=TCcHok1Ks473sc/3cBhnSKb281u5jPuVwXFpKD0RuyiugSSzicgS+V/tNKvEqMWOZClU9S7cx3xe/falORt/d8xvjXDwmY9nVQ92v6yIuGD+6HYsWskzBeIjH+ZLhYbaj+a5fPpJ4sfvpBY9l+InCLZZOloMRs+62LYADfIk6Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yWz7TU2l; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4399deda4bfso6173035e9.0
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 04:56:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740661004; x=1741265804; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fGUVzR1B88At1tVx8Gm7GT+20MR8uqyEANIRvn83vWQ=;
        b=yWz7TU2lhoTGdvjPsFwGS6Qfi1BGhWmryyNLLx5BiSCm9mi4fRDLrWKFa5DxhOLvaI
         b174a5YxWFZE9SLbAVBJpgDO/tKkokRc6ApHcHSN16uJNI/5QfRSzQwNX7y00vAjfqjk
         SwEpLX9sEAjw7PkdK83UDZSQfYFwCyRPOLc/3drquVeWlxW7mko2r8WSSXBQHE323rbJ
         FwXcc+z4/pdAdx/eS1HSjE0of2B4hVeYHiHp6gFeGzHBNyxUISe368D/mOlhEDZ3Xtun
         tBKkmtH8VAm7UKJ9Vt6D48CFxdQ6rBwdoWnV7d4z7MwpIZukQeuuyWguWyr4A3PL6e2T
         yuTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740661004; x=1741265804;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fGUVzR1B88At1tVx8Gm7GT+20MR8uqyEANIRvn83vWQ=;
        b=mSMRi106BurY6qa3RMnumv/783dlG+hbFkf8pAwCahTpuOlqeyVExOKQF1yjzWVHWH
         JIxBTkoUzhYf+0rO4bJbRUbMqrUy+6TbcWA/WLarKe/9mudN9Ihk+eplOxRlRwwYsD3s
         REhIId0SeO8l1KOYekgKnZuudWPDD2dMk7Y+lB2Qw1kol1hxFIdLaxLN+HXX5A7Df9+t
         dI0uIDNBcaqXrIKC+D6JcsE0nLmxYkSQmCy3FVgcBcwkLvzE4ARuaWkFoPOCrG4moiVr
         KDol4xARzdLaq1lebh2pAYXEVeKpa4wVdfaEXcW7FIoe4tkd6AuFP9TAuqeTOm68Gi4V
         zbiA==
X-Forwarded-Encrypted: i=1; AJvYcCVM6cBH591BIASNc6ioziiUUrA3Qv3jUk8SoIBFwMRw0/c4a+rABdktrmLCl9b/ik242ZORsyAQypo+@vger.kernel.org
X-Gm-Message-State: AOJu0YyMMn1nqR7FBvNoqqUfFhG4c2b8l17c6tEkGEH4C8u2IX1gvqSb
	eJ3J1dOEd+h1cwnhwlYLBntw+8rx1cfSLpNUxSxA/uacIyjZrRbqdyn/tUV50LM=
X-Gm-Gg: ASbGnctx5cU0NyrOwhxbXr1ncdNQpD/h4hXqJksgO+2WoLA5XaEDrfCp/eOpaowJ/7K
	b2D4JPs6eut3sVmQEpbkxbwgj4hD06XxTzA654eIyh1DyF08fJRcE0c3mAADQ/j0EwN5VDWFw6I
	9Gl8oECHLDufwrQEw1G0LK6Vzdr3b4Hj7CiIPI5ff3hCY4mGWqAWlcGX1C7i1JDtfeL9BqgC16m
	RZZ/BAUZNezfMQnYvJ0oc2/Poc3WBw7wJSEoYySS5jthGjBZnltwOv3VlHQOGGBWefI4GrgMd1v
	QRd4xXrodyzUlZovaJoXUF43jDczSg==
X-Google-Smtp-Source: AGHT+IGgA8QlJ26ze07J+YhYIMSkHS/YQRwZ6iJpXVMPjcqdJ2RpD+8zTEtTBFTsbNdl8L7SmDd0HA==
X-Received: by 2002:a5d:6d82:0:b0:38f:2b49:7bfe with SMTP id ffacd0b85a97d-38f6f0ae7eamr23284725f8f.47.1740661004532;
        Thu, 27 Feb 2025 04:56:44 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47a6739sm1953462f8f.22.2025.02.27.04.56.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 04:56:44 -0800 (PST)
Message-ID: <77a8982401fdd8e986255a70e22f4fef290669cc.camel@linaro.org>
Subject: Re: [PATCH v2 1/6] dt-bindings: gpio: add max77759 binding
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 devicetree@vger.kernel.org,  Kees Cook <kees@kernel.org>,
 linux-gpio@vger.kernel.org, Srinivas Kandagatla	
 <srinivas.kandagatla@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>,
  Will McVicker <willmcvicker@google.com>, Conor Dooley
 <conor+dt@kernel.org>, kernel-team@android.com,  Bartosz Golaszewski	
 <brgl@bgdev.pl>, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org,  Lee Jones <lee@kernel.org>, Peter Griffin
 <peter.griffin@linaro.org>, Krzysztof Kozlowski	 <krzk+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 27 Feb 2025 12:56:42 +0000
In-Reply-To: <20250227125143.GA1672649-robh@kernel.org>
References: <20250226-max77759-mfd-v2-0-a65ebe2bc0a9@linaro.org>
	 <20250226-max77759-mfd-v2-1-a65ebe2bc0a9@linaro.org>
	 <174060184807.3654907.17826939583833772128.robh@kernel.org>
	 <f3db83179b405ca056fd55abdd6c38adaedbaea0.camel@linaro.org>
	 <20250227125143.GA1672649-robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.53.2-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2025-02-27 at 06:51 -0600, Rob Herring wrote:
> On Thu, Feb 27, 2025 at 11:19:55AM +0000, Andr=C3=A9 Draszik wrote:
>=20
> > The error is because the binding's 'description:' references the
> > mfd binding using the complete path and the mfd binding is added
> > in a later patch only in this version of the series:
> >=20
> > =C2=A0 >=C2=A0... For additional information, see
> > =C2=A0 > Documentation/devicetree/bindings/mfd/maxim,max77759.yaml.
> >=20
> > the error goes away if a relative path is used instead:
> >=20
> > =C2=A0 > ... For additional information, see
> > =C2=A0 > ../mfd/maxim,max77759.yaml.
>=20
> No, just ignore the error. I believe it gets fixed with the mfd binding=
=20
> applied. I'm not too concerned if refcheckdocs is bisectable.

Thanks Rob, and yes, it does go away then.

Cheers,
Andre'


