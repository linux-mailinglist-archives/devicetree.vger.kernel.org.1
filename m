Return-Path: <devicetree+bounces-66764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF508C484B
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 22:36:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1F1C4B21B4A
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 20:36:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 788DB80027;
	Mon, 13 May 2024 20:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k9XJQe89"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13CE1E4B3
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 20:36:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715632588; cv=none; b=Qarm5TNWl6r41fYWEZcTri8MBVNVfk/48STmmkLIiEGHtoreedmrYTePhNJ+1yZGXApXolQ5qMaoec3GwxiozFPrwhzfL+wJERlpNxLdFPVuTnYcv4WCxUPtoetgEA64Hear4z9KM290N8z+NOgmNRh/1LdxZGuQClSDDfSKHa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715632588; c=relaxed/simple;
	bh=SA4bW/xLJg6YuBcd2QES1hRhoe/jYuqsZNcpNb5KJNY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MTKKf8YMyl6hNCco4GwCIQl1v/XkCyJ+f300MgKBN/e5zB1nCqLK+tK2FfumTaXQNV0/R8upFAC36PAz1bnirHKyqBXn0IxHndRNtuyfRk8221XcIp2NGng0ttHPYO8nDuHHkiV3MQb3jRgdoU1/URMQ7TDE5Ib6i6z9hRoZ1pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=k9XJQe89; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-de462979e00so5162054276.3
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 13:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715632586; x=1716237386; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SA4bW/xLJg6YuBcd2QES1hRhoe/jYuqsZNcpNb5KJNY=;
        b=k9XJQe89XNL19VvGqRDYMOT5tXt6SKGnDFGMrnfXs1KhnTzW3ta3hYq4dEaZZHkT4V
         jkdZJ3uQ6kR2ZLXD0UqnlZ4VsucGacG+IH4axHw2XljmfoQEEYzLCbvROyjlQ43+twae
         sWgUK4mSZTai7EH8ZwkYgpzF7xK5ZIe2CqNBiS8qCiEiecz+J1sh8r66YVSFvcECanPz
         R5pl5+G4J7cjLkzplWRkj+Yt3nai5L21qdZcqhdu3DcjkWH1Nc56rYYPaE3qiDMvH5gZ
         2nTY7bQQJ13FHEs/oooAupSikNSfp9x/CfdCl1odpzLWL0PEy89k2JKHgsmpS/pUp7/q
         +wfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715632586; x=1716237386;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SA4bW/xLJg6YuBcd2QES1hRhoe/jYuqsZNcpNb5KJNY=;
        b=LVzVCrnnURefDNlalYx30xQM+5e6chFjUUMYMxsRmtu3aUZu9qn0K7jFs+xnsVMgbc
         EHMMJHnpEAYmhSBIrJ794w7wuyaFkyvftRZlyylWQSavRMpr8JknULz7sXJOOGJAfMlD
         lo3tGRI5wURwAo0zDEZj0FRHyDJ3gbDJPkkv4t0vcTLsVUU649smEA9SKeCdQMoX+dtI
         7wmuHRmdQtRalJT5m05R5FF32pPzAwni5IwIIsnUa8fvRwnXQwwUF7qO/qyoSBGXTFO/
         v0PzEl559xQhXZpwpfkvB8shgBEhzZEG5rscoTZrhU4wtuiETOeEGokkBb/demwHAePs
         xLkg==
X-Forwarded-Encrypted: i=1; AJvYcCVAL2wTAjlRHORkuiXyfb/0sONHvmNeJFllODw3SK9UK/04/xprmesNgT+lJxtXSZbtZC5PHDutZSlThC5Mix2c3gWJfqQpBmSAxQ==
X-Gm-Message-State: AOJu0YxDVYLuEagV030jEAs7TdhivK7DHJlpPC0NYraWZDi7I8ISP7wJ
	6fd5ItiGmRFg6IZw5bkvnbl/ygTeXFAciQ1nnk8Zid72HbFjECKaQTMUT4GOfmt7SbKJ9QK22Wj
	OGZpVbntU6O5s9LS3qU83EYt87dG/6JdxTvT2NQ==
X-Google-Smtp-Source: AGHT+IGLloi3lhRWV20W7xA9r5SsU5g+2Owk/UejzB1t2DecP+EHOQs1IPoWLpxgX7GwAk9KqeJ7Ka+d0dhqsAlSfWU=
X-Received: by 2002:a25:bc3:0:b0:dcc:8f97:9744 with SMTP id
 3f1490d57ef6-dee4f3a9f25mr9748339276.43.1715632585931; Mon, 13 May 2024
 13:36:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240509-dt-bindings-dsi-panel-reg-v1-0-8b2443705be0@linaro.org> <20240509-dt-bindings-dsi-panel-reg-v1-2-8b2443705be0@linaro.org>
In-Reply-To: <20240509-dt-bindings-dsi-panel-reg-v1-2-8b2443705be0@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 May 2024 22:36:15 +0200
Message-ID: <CACRpkdaeXcy4uYTD1Ub-BRG9RCDKaY0wCbe4xoUpLwZWuy+KuQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: display: panel: constrain 'reg' in SPI panels
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Sam Ravnborg <sam@ravnborg.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chris Morgan <macromorgan@hotmail.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Konrad Dybcio <konradybcio@gmail.com>, 
	Del Regno <angelogioacchino.delregno@somainline.org>, Heiko Stuebner <heiko@sntech.de>, 
	Luca Weiss <luca.weiss@fairphone.com>, Dmitry Baryskov <dmitry.baryshkov@linaro.org>, 
	Shawn Guo <shawn.guo@linaro.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 9, 2024 at 11:43=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> SPI-attached devices could have more than one chip-select, thus their
> bindings are supposed to constrain the 'reg' property to match hardware.
> Add missing 'reg' constrain for SPI-attached display panels.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

