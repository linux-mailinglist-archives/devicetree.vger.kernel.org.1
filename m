Return-Path: <devicetree+bounces-30618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F3155828647
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 13:51:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A0C2C284A68
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 12:51:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53D0B381D1;
	Tue,  9 Jan 2024 12:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OY1tnq+P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07FF0381BB
	for <devicetree@vger.kernel.org>; Tue,  9 Jan 2024 12:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-5e82f502a4cso21328567b3.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jan 2024 04:51:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704804669; x=1705409469; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qROkrwZiYfF7G3qfeBpIFh1K/Mmm7qN8BCKWKeQz2Xg=;
        b=OY1tnq+P3Q6vvno8v0wZENbjzmrUJwCN/PHwcahuwO2cP/MUTzxCVUjKs+qE9RbtKb
         1NBcBw9KZMvx1wGO6JyvfpMmKHRqk3FnzzMh8qGbA6hkyZUlsoY9qceSg2rcrZxWoYE6
         hCponmBawZvVUKR7TbGDov9gUDiWPfGqOQcBXnZ2UU/HCic2Nr1Q0wDgIB/1+T8yLJKs
         rGpHMglJ/GPkmTu2WUnGv7BuJFdKyTmZ0VDl3ddoL9AaQ6XCzWfoc6pvMjOeNeE0QuCA
         P/fnP4+CYfoPC0xGoSgWDz8YhxYuY6kS0vR9rgURu2ejOusxCX8sI8Vczukgsx6iTEt1
         hkTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704804669; x=1705409469;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qROkrwZiYfF7G3qfeBpIFh1K/Mmm7qN8BCKWKeQz2Xg=;
        b=TqGnWZ4U4eNV+d1usXaEYRm8Q+LeqPAzxUU+C1+e09pJpdcXFATpjIlS6liXU/P+E+
         RrVXV1Gt3MO3A45prPfkXW/59pVmZWwWCw0lSF+jeuQt2duCnUV8am2Gf6poftMpqw9I
         WajYDG16ChrD09sb/D83yVQ4DxgAHIrKOIovOteKRL4BAruVoXKB4vlrvg3t8jZkqKPf
         6qTAyi366Yper7GXUrW2BauG+sbY9Kbw+ZzIfoxBw0Q37xeCtt9lQErXa7pW7GB59qKr
         zsluWRjCYRps63dntmaf+TAGsvE2Kqtb0ZQ/Vle4e/Db7hv8TXBeVjuXAQEX8FH81dDQ
         HFlw==
X-Gm-Message-State: AOJu0YzSGVJ2rmw4FUJJ01tQowdug7qFPcnkwZlNYMEHb+JBzFtXtzCx
	xEMaZTw1k3r3Fg/tc57zG3sdRC6LmpXh7TBmFwKyK30GvKiCgw==
X-Google-Smtp-Source: AGHT+IH+fzv4HWsvreNV0+tSn6byYRFteteAYCO+0WhpTnneXsrnBRv9MuDla7pttJ83htiBlMzNHxSf3skPhge1yI8=
X-Received: by 2002:a25:e0ce:0:b0:dbd:572a:a106 with SMTP id
 x197-20020a25e0ce000000b00dbd572aa106mr2145429ybg.10.1704804669129; Tue, 09
 Jan 2024 04:51:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240108201618.2798649-1-dario.binacchi@amarulasolutions.com> <20240108201618.2798649-6-dario.binacchi@amarulasolutions.com>
In-Reply-To: <20240108201618.2798649-6-dario.binacchi@amarulasolutions.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 9 Jan 2024 13:50:58 +0100
Message-ID: <CACRpkdb73Qrs6MuiC427f=RnyD=rydH_4xVhBx-2bS8bX0mJCw@mail.gmail.com>
Subject: Re: [PATCH v5 5/8] dt-bindings: nt35510: add compatible for FRIDA FRD400B25025-A-CTK
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Sam Ravnborg <sam@ravnborg.org>, Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"

Hi Dario,

do you want me to apply patches 5,7,8 to the dri-misc
tree?

Yours,
Linus Walleij

