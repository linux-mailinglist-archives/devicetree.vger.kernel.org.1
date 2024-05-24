Return-Path: <devicetree+bounces-69002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7470F8CE4B1
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 13:08:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 30DF3282959
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 11:08:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEBF142078;
	Fri, 24 May 2024 11:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Jj4bSNlN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ACBC126F0F
	for <devicetree@vger.kernel.org>; Fri, 24 May 2024 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716548897; cv=none; b=qTBQ3HK0NhNj4iKjW675iRDn265n7vQjxmWM5vKCA6uhQ9/HLmKZnW4mkpcYDGn2wZ3i4vLU54DuhSC7Uaz84EshJ9V+9JfuhvhwioVIqr+380IzaE4ZhzW+8tNzq1pVYviidZiunGkNF7Ix97aeDuYxCJ0Md8T6v1EwmPzwLi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716548897; c=relaxed/simple;
	bh=YIKm1y4gY2lJsOegqZ3pNgy8uY1r/NNidQZmyALCU+Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MafCND+ngqaZxu4LuaGonunwf5ablDtYIqcwgCXRdJ9pjwnzIrk3cGcOcPLdpFknMHxuiZYXVpmEq7NJpLKm3Vy8fznJ2gDmpzN3y7DHIaLxvE7kJPKqDt/D+YMsgsKgt7LdctaefEdXVivZPvZEHJrOmVovStYit3Tet7liS7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Jj4bSNlN; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-df771bddc0dso728070276.3
        for <devicetree@vger.kernel.org>; Fri, 24 May 2024 04:08:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716548895; x=1717153695; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YIKm1y4gY2lJsOegqZ3pNgy8uY1r/NNidQZmyALCU+Q=;
        b=Jj4bSNlNof+LSEV0zo8JYm/x5nDYPEkEZK2/esL9Pk41It60cH6pBS39qjYNOQlaZO
         LT+Lgl+8YxnQK+daYASN3IFHDqO4yL5VFNgsqT1SJrvkQrf1IfJVfxqe0eUlHVoKlHI5
         srBDO7DWYnQ5Or4Rd5x6H4jBmyiEbhQoC4OQDChrKjVnBPE3egM5y2Dlh1Hdtddhs/Sb
         WFX4awRCvdVxb+DX3K6MyA6iTKxDmjt8r8cH+Q3dena2C2M553cOsI1yY3CrdlhaXcFd
         RtBoIXSqtX3O1GHbhZBpk9Bzven95T6Lu+lmuXdS/W+wStfeHbDAdZ2w8dZtXFBA7dS4
         T6xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716548895; x=1717153695;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YIKm1y4gY2lJsOegqZ3pNgy8uY1r/NNidQZmyALCU+Q=;
        b=kTFfA6zgwAo4HEeZNbQ7xjg3yOkA76kUvPd1/OkZ9jtnbgC8wWrT1ekRuDugxgtAOj
         thrVrmRsKQpu9ji/KNeM6OJcF04cvehfpX/BQYm5nB+1f4JNqahDn2qQMIb4YLGGQ/Ek
         mJcLlZbe6u2j5KfG3tqnIhvpiSGK3RspASe3FPPygYoXwH3vHBKBJFfbaWhzaK23VmEn
         7Tr51ufiUxZqcQaXcnCfgTkNi988pjM7YP8UeMEIkuNKmAypldxGNbWIUm9YeZ3SZfaO
         JZPnVabjTbcWod5wzTEbJOKLpOBdVCsffJaAPGvYOOHNzmMN5QpwG5sO4aG0CPyRGhOW
         3c8w==
X-Forwarded-Encrypted: i=1; AJvYcCUJ8bYWiQfF7BkrkWqDhAVnhVs7lFBF405qKWxeowab3Df9CHZJsaamMhTUxRXK62Ojl6nUG3uPws9EA5bD/pvhhGe3BX1fvlbkgA==
X-Gm-Message-State: AOJu0YzGpmCMwVYV5Vcg1wd8+a416ygqLYPJISBQiLjeVLmifKpURRbF
	I27YeAYdERMLWkGYeb2ZPlBUzfyTJvZlUcyl5JJX/BWPmTotB3/t/0lbPqTXLMGzb3YwAl5dW/h
	4PU3GYeTsn4s9JPW+HnAkGVcsVS9d+QU47RZhZA==
X-Google-Smtp-Source: AGHT+IFAGfPJGrXOnaH/Gx2u24PuxTtPCsvl4gdJyfYHcmy5PG5TQGqzudRXoxNzaVhKmKUUbKPRP0m59zS/YBd+TMM=
X-Received: by 2002:a25:90f:0:b0:df4:2beb:344e with SMTP id
 3f1490d57ef6-df77215e3f6mr1767903276.2.1716548893984; Fri, 24 May 2024
 04:08:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240524103506.187277-1-ryan@testtoast.com> <20240524103506.187277-3-ryan@testtoast.com>
In-Reply-To: <20240524103506.187277-3-ryan@testtoast.com>
From: =?UTF-8?B?44GN44GP44Gh44KD44KT44GV44KT?= <kikuchan98@gmail.com>
Date: Fri, 24 May 2024 20:08:02 +0900
Message-ID: <CAG40kxFTT-K2LPZOM=0TLKREye8ooa+uvo5Rj7tYC1Um0rzNnw@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm: panel: nv3052c: Add WL-355608-A8 panel
To: Ryan Walklin <ryan@testtoast.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chris Morgan <macroalpha82@gmail.com>
Content-Type: text/plain; charset="UTF-8"

Hi Ryan,

Thanks for your contribution. Here's my sign-off:

Signed-off-by: Hironori KIKUCHI <kikuchan98@gmail.com>

