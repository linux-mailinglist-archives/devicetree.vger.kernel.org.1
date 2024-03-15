Return-Path: <devicetree+bounces-50730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5517287CDFD
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 14:18:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EA495B21865
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 13:18:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EBD91BF3C;
	Fri, 15 Mar 2024 13:18:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SvBaGvP/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80D1D24A1F
	for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 13:18:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710508686; cv=none; b=SN16KyiOSSjMGCgNHGeWCdkyUKWoUgPKyFdNoDFNkJ7xJKzF6zADVz6gRnDCtBjnehKBYWrTJZZUTmhk5VU++72xciKOqkCwXFDA43MDNM6kFm+CnXFXMh+c/nF8FX4ORShtZXuK5B48cLt/CTQ6XU4hHmELitG/bRRiQyP+RCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710508686; c=relaxed/simple;
	bh=T/HfBhiQE1waDWYQEd1vD78rXPyQGtudkxEwrgNEHpM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sU0SYglxjdKSOQ1fN/ABYH07my5/ZVs6ysdqQPp6ixkXRYVNFyhW+H84TwbJLOoFEtvojMMYl2wIi3YuM4bjGZZD4Kp2kdSW9eeerEJIum6tArqhWBkwZ+PR/6kzMSH/crYM/2AbNO+SzAeebxfcY+X1yIXS3ZoRlSKNOFNhYJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SvBaGvP/; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-41324a16c9eso13360775e9.0
        for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 06:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710508683; x=1711113483; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BAvj14vJUGomBSxrVqhPVayHAwF+lgqULbYlbgwOBiU=;
        b=SvBaGvP/UksjyWCCiLK9EIV8EEDnxFbMgOrLqbR647u/fgdd+h6QPq97xOfwC8TBHB
         d5Z2L8NZIUiYLhF/UM+X5z6/PJ8A0SsMvlWPsLak8r/Xf70Zbl6vAudT6OogOUpHUHFQ
         MMAG3txLF6jTzyHwuu1vS9AKn+ylPwprBUmpEKBsMpLJH3pdyHbYIkVJ9RdFkYeMdORW
         ywHqs9dFiXrzzpWrreJPOb2aLNDOyM1hxf+1uz3gk1r7bVthll0mEpQ9lA99uSkSwZ8c
         Xb3eUhywYM8nsO6Jhh+Emwim6hXpEVfSE3clFr4naOQo6kCZ4aElB6J0bL1u4pJWdhLV
         2Oww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710508683; x=1711113483;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BAvj14vJUGomBSxrVqhPVayHAwF+lgqULbYlbgwOBiU=;
        b=EEaOXQg7DxLoq9oODDWl3wdlALMyjqjS5xEuXM+2rP3p8qDF1DMuFjA6gdBXSV1rGM
         v2a6DrQDbTw8fcSYehyATLXF1Csk7j6rx6Wa+vlnmOUj9cdCedU5is8v0nwAUs43IKeX
         JSTgpit2UBEr8xHWC61qTJvr0CVCd7J/FML4KEbvq/n6OHaYp9EqnELaHP4zfEbAOdWl
         i6yq+G6NV7FJ4J5poA09mvWi2EiZoDaPCWtwuFqHp3xJDcdbun9HUsG8+nDG0f4kt+1q
         8sK/RbSlNkYFrRxEIX25O84tP4uWIM6Zq+3FD6Z/CqmxXtVDkLiCArUWkLC8gcu1hOys
         pT5g==
X-Forwarded-Encrypted: i=1; AJvYcCVK7d6MQe5/Kw5z4Sz2eNPKDzkF1kYDRl+NxmPZyzjlt9aRiUDoePBeH82jftU25wG5h7I0YUve8SzXuYeDgyldH/3ZhimWGcDhUQ==
X-Gm-Message-State: AOJu0YxCwI+vfMjRqI05lj82kHmm82UmJHQ0+urd2DlNzQV0CbrFOc8h
	/7YzFF/0K8ZCcnDCAO93YEtVzDekcGKBMd7KViwmIryKuwcDvDJhX+EjI+9F2T8=
X-Google-Smtp-Source: AGHT+IHlUY3Az6uwRCsdn4XHEMvaEDhhX0HkGvtTN9jqjiaiqubgf+xJXK+Mvnp/afaT+k0YwpLk1g==
X-Received: by 2002:a05:600c:4f94:b0:413:f1c0:8a5d with SMTP id n20-20020a05600c4f9400b00413f1c08a5dmr3796731wmq.26.1710508682802;
        Fri, 15 Mar 2024 06:18:02 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id fl22-20020a05600c0b9600b00414013adab2sm1909935wmb.6.2024.03.15.06.18.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Mar 2024 06:18:02 -0700 (PDT)
Date: Fri, 15 Mar 2024 16:17:58 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Jan Dakinevich <jan.dakinevich@salutedevices.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Kevin Hilman <khilman@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, alsa-devel@alsa-project.org,
	linux-sound@vger.kernel.org, linux-gpio@vger.kernel.org,
	kernel@salutedevices.com
Subject: Re: [PATCH 06/25] ASoC: meson: g12a-toacodec: fix "Lane Select" width
Message-ID: <cc26302f-fa57-41ba-bf1c-2e7ef898b4d0@moroto.mountain>
References: <20240314232201.2102178-1-jan.dakinevich@salutedevices.com>
 <20240314232201.2102178-7-jan.dakinevich@salutedevices.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240314232201.2102178-7-jan.dakinevich@salutedevices.com>

On Fri, Mar 15, 2024 at 02:21:42AM +0300, Jan Dakinevich wrote:
> For both G12A and SM1 the width of "Lane Select" should be 2, not 3.
> Otherwise, it overlaps with "Source".
> 
> Signed-off-by: Jan Dakinevich <jan.dakinevich@salutedevices.com>

When you resend this, could you describe how this bug might look to a
user?  If a user hits this bug and they want to see if it has been
fixed by reading the commit messages, I don't think this description
is sufficient for that.

regards,
dan carpenter


