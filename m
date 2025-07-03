Return-Path: <devicetree+bounces-192784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E77AF7DBA
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 18:25:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C1C0518991AF
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 16:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8747524DCFD;
	Thu,  3 Jul 2025 16:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b="nU7vv0+C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6AFC24BCF5
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 16:20:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751559609; cv=none; b=tKM1xL+tvZVSrMzp/zLHa5UlHbZdSs+I4bgHYjf+UU2NtC3gAhMhPhBLkNbb1aV0TqOQblOPhBSPQRUnAecLfN9YR5rMbijs41FqEqr4CPB1GhjLPDSTX4xX3Y25LQLlaWRYR9Uzo3l42hG2z1j+qsi8AZBIPqHJXiSPLqqp+b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751559609; c=relaxed/simple;
	bh=jUo0bz7/9VqLbmKnuHSilXj/iz4VcO9C7Bb8RNU6+Ao=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FUpODrYf4PMnUMhTJrn5D324N91nr3gQtj7b2zsEqcLOIaTOG2DFdJ2kkCNZGMhCpZO97+MZ1kXdxiuwHgbq5u67Wbbj9l2DyYsOKhrMimPlcZcmCBvRJECsISqZaC4Chex45BGTiYRHc7/4ibaAVMo5yk07U0NhWdUknlJ5tXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk; spf=pass smtp.mailfrom=thegoodpenguin.co.uk; dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b=nU7vv0+C; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thegoodpenguin.co.uk
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e85e06a7f63so5083691276.1
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 09:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thegoodpenguin-co-uk.20230601.gappssmtp.com; s=20230601; t=1751559607; x=1752164407; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=niF8wOn9GTKmhQIt/vu6p0p8Z3gSuCH+GiDxHVgqCEA=;
        b=nU7vv0+CWvLUobYkII3uyc+kOF6Eg6O+W7Nllp7+pBahwq0xsliUy7giwMQMNvWgGe
         tGJdpsRaiOH1RQjYSNw/J+Msr/NjEY7g7kpKzjOK0b6M0njwrccLWE3SoW2iKhNj8IBV
         79Fd2mbZBiiVDDakxDSewKydg8DLzxVqp+1kKXm3HeJVU6KHCrjNwUDZrwieibSLAXu8
         drb0XZ15pfrhqfqu6BazEDdxe4jtwNpAANE7lOw1T8BcGW4vLd0J/qTu3GyYfQKZPFkY
         IeZCZmO8wlnqXXExLzOE0xRgoDt3v4AZCgSE4o6NyOG2FYU5XN9Pf3g733NLDLX3mzN4
         Ijfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751559607; x=1752164407;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=niF8wOn9GTKmhQIt/vu6p0p8Z3gSuCH+GiDxHVgqCEA=;
        b=FUwLbjtkmQJNg23SpIYqvQ9RNZ20vV3+0gAx5ynTSs5e/fojTVD03ieqJEs+j80GZH
         HfGn0xo0A+aS2e39N6otBkmv8z34eLk/tJSzGqB7xFhVfw40gaIKzGwR3r0oAxDKvOAb
         u6zpTPlHMzI2AEH1GaXsDBjsOzwXNyxA3Hr9epxjYHcg1syK+vGj6LlcO2fXKWmFaj4v
         GXblPJNlsc5HCDepehHI/nUcYuRxV9EJ+cUbPE7jHkyUpkH0bv1u3qKclYOWrb5h6Cvb
         I+rNMJ/oS+xO0S7rzeQooEA38xR+6zSk7ddb674skPLG4u/hmgpDh9W0x2vGo9ebZ1gj
         DBfw==
X-Forwarded-Encrypted: i=1; AJvYcCVOJBMFjNmi9hOH0rhT0Oj8dGSuWW95QxAFBFMC/Bf3+fM1t8QDcutsECdKZ61vW+9IacIYorlNUknb@vger.kernel.org
X-Gm-Message-State: AOJu0YyTH0mOXo5TFXbpvpfy2mkdlyWo4bDSQ17Rk2OzcQqJTi4PV57e
	m6Za04+gekMKNp+1lII6xLkuxwFsOzaPhLYPjsyaVeCfRIcwhHwMQcv7yKLmL4Bcf6zLBDY4Hid
	a2ObZSUH4IbC5Ecwv7HP4+HJPxTHl/G37xg5uwM8FMUGoVM/D+7FEwR429w==
X-Gm-Gg: ASbGncvYCjqasOBP61RTvkxNCnPbA2h4fACF35ZzPfabxHZ8gAZem2nyNZe5yZNIGdl
	lezkjL74EnJW3algbRMy6HjUqgp3/vWmW/baTLtn2k8CoghYlYWDPNKGdLqgb1Gvhf6t9RI5iLB
	Y3Q4Q1tipywWbZzVPdKwUer1XtzsX+Xp5cRUVNqxaOudFxApLetECtVkWHDvyQX0qkYrLWNnM1z
	053cg==
X-Google-Smtp-Source: AGHT+IG9wu0uUr476DbA/3qZswqv3IWybYnshmLMaeMC5NZB1lprrIjfyK4Q5zzWoXuqVSaEu2jCsm7XUNSyqiP3lMI=
X-Received: by 2002:a05:690c:315:b0:70f:84c8:3105 with SMTP id
 00721157ae682-71659128263mr59933107b3.37.1751559606842; Thu, 03 Jul 2025
 09:20:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250627-leds-is31fl3236a-v2-0-f6ef7495ce65@thegoodpenguin.co.uk>
 <20250627-leds-is31fl3236a-v2-1-f6ef7495ce65@thegoodpenguin.co.uk> <20250702162230.GY10134@google.com>
In-Reply-To: <20250702162230.GY10134@google.com>
From: Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
Date: Thu, 3 Jul 2025 17:19:55 +0100
X-Gm-Features: Ac12FXy_CDFzKjm4AokW8a0bG4a5ZEtQ-LJTabWie8Pk2p6JfFDWqEKdOo_LGZg
Message-ID: <CAA6zWZ+KE+4bMVzacVB=EYMr0YrCbFWia6Y6LgCs8GZTTuMRHA@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] leds/leds-is31fl32xx: add support for is31fl3236a
To: Lee Jones <lee@kernel.org>
Cc: Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-leds@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Pavel Machek <pavel@ucw.cz>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> So close!
:)

>  This should line-up with the '(.
Spacebar to the rescue it is then.

