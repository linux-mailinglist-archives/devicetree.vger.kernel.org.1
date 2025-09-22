Return-Path: <devicetree+bounces-220252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4FFB93815
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 00:45:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9783B1892BDD
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 22:46:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B7EA2AE99;
	Mon, 22 Sep 2025 22:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Swqoiavj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 852F411185
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 22:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758581135; cv=none; b=O4IZpGBPN/+918gN9wZrmpG/NK5UeQMGDIEqEfaupciESCGnBMmNLH+Dxt79OgMj0/lU22wbi2lY+azDqewyViiemtBAv0e+IMTuOuHZHHC5Wz9v5lCiYIAwqguf9HEhYggq4CCbtfjNPd/FAgwDv8CBA22ZuzNwZlGuHG3zAPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758581135; c=relaxed/simple;
	bh=81+xe4iAGauiki031P2C3Xr5MVG+bpBbO/KitipPrW8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QGM1EKSnVuYuuKU/9tbW74D+HNBtJuH7SmMeQ6AxM0xV8XXJoV70DySLkDByaHdTgVjlwW3GUGxVoNrqCt4t8FgAdW+rJXYaThhZQOmuKnzoD2IeYBa/CgFxMkqxlRX7zzqVe2umQk54pDnqDL2VJ0NlT/I3wUG+o7xCcSfpTXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=google.com; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Swqoiavj; arc=none smtp.client-ip=209.85.160.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-4bb7209ec97so111741cf.1
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 15:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1758581132; x=1759185932; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=I59lx++Tx+ZboAPSBm8Z9Aq9d7rn9DeuhAfPTw4RUyo=;
        b=Swqoiavj7CGyxXXWYVq1WI+q38UDYsbnx1fwzOPQTNoaf4Lm+eIF3ql5Ov68QAR+4J
         hsAJQhwTiespSjeQvhIKOX1i1gEvjnO4lQNLoTHr7wxqROFUTOpUhoW6qID63+dc6lqC
         gmvLebTGv/uYkSshFqXUvHeZAX9Tu5jbyjBZU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758581132; x=1759185932;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I59lx++Tx+ZboAPSBm8Z9Aq9d7rn9DeuhAfPTw4RUyo=;
        b=pRbYAl3hVPKaSSeWfGCT99KSBQ1ETzmZt6yvevnJ72PERhfnDi0wFuG9LKHW0wq+SB
         0GPYgmh4dObQz90cJnDoZhukB/jK8rnLxeD4aPSa5uBPYlXV8Yw961sGoQA2cN4yrl5w
         ntbO1VtvbF/Nz3XMHGI+P7wpCpJSYMy3Pc5HUxB7+ICvftRMIj5lq4QFBXFZ+v5OzOMM
         cles9/A+m1jJ0QZJOhe909i33vvV79YT+1xAPqQmiQXKlOY+ThOAxlrK6ipyDmXF/1jo
         NVbm3V2hom+0KS9gMDiU0JzVhhd2JIVgbV3QykI39fzdjfDpVR+Pr2akqCr8zsEoxtys
         /tQw==
X-Forwarded-Encrypted: i=1; AJvYcCUGBz4/yxIfjw+m52+w70s5gMQ8dSWWsqaF1Fum3rra5tllM8KEWvOjHAf2Ixl+b66R7vzMxPzJd85j@vger.kernel.org
X-Gm-Message-State: AOJu0Yyn5gpnT23rOXN7qdH3kWekTEdFVBgFjwhIBc4aoc61sDeOvRj0
	FafyfZNxZfVerv+amNmdFWtnFPkV1yquAaDTmhiYSTyrjRiUVCDccLkP30CLmhCRrWEaFr++0Eg
	buCyjMoRuCARQT8tbYrPlmLqg6vjSRBUqoCAo9XYI
X-Gm-Gg: ASbGncub/o6bJIs6g5Eiv5MdN6wFOlMyoGfrFYLCOAHOBpqotMXTze2bue/DZVlWhN0
	vu47jtlRW9981lOcz7K94j4W2LcxbKdZO/eSe0MYizIO6eUPV1dHPCCTC/Xb7hRffVxnZTgpQxS
	dMmEt6dEH9rijvfiK+3qFlzc3MYM7idh/4wCzs1Ttz84YSjGpXuaUysJAqvs1m2py9JxbJgpg6n
	U0k
X-Google-Smtp-Source: AGHT+IEEHjj+wsiT1bNCpHBT5Mi+r8GATT0+bhUw8kMDnXciBxiK/CjOVLMPqzXvLsmITsSiS2BY9rY1zKy2QnMzLjo=
X-Received: by 2002:ac8:5903:0:b0:4cf:dc5c:8c76 with SMTP id
 d75a77b69052e-4d36ab2866fmr1207671cf.11.1758581132096; Mon, 22 Sep 2025
 15:45:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250922-b4-ddr-bindings-v7-0-b3dd20e54db6@gmail.com> <20250922-b4-ddr-bindings-v7-1-b3dd20e54db6@gmail.com>
In-Reply-To: <20250922-b4-ddr-bindings-v7-1-b3dd20e54db6@gmail.com>
From: Julius Werner <jwerner@chromium.org>
Date: Mon, 22 Sep 2025 15:45:19 -0700
X-Gm-Features: AS18NWDpJeoFHhQc83aqhmhoSwFRisU770ZW4iy7Do1FLF-ntGplzcw3QSX4Lyg
Message-ID: <CAODwPW_oDTh9FdnLq7w2FPQv68ReAUUpssqEktUH5zhewbfcxg@mail.gmail.com>
Subject: Re: [PATCH v7 1/7] dt-bindings: memory: factorise LPDDR props into
 SDRAM props
To: =?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Julius Werner <jwerner@chromium.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, 
	=?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
Content-Type: text/plain; charset="UTF-8"

> +      lpddrX,YY,ZZZZ or ddrX-YYYY,AAAA...,ZZ where X, Y, and Z are in lower

It looks like you accidentally changed `lpddrX-YY,ZZZZ` to `lpddrX,YY,ZZZZ`?

