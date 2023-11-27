Return-Path: <devicetree+bounces-19354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F257A7FA855
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 18:52:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA6312815F9
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 17:52:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06FC13AC21;
	Mon, 27 Nov 2023 17:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99EFD111;
	Mon, 27 Nov 2023 09:52:03 -0800 (PST)
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-1fa486a0e10so903367fac.3;
        Mon, 27 Nov 2023 09:52:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701107522; x=1701712322;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1qP2c9CN5CjrhkwDV0xgvtW5t/xJO6d0tsdDX2eLr8w=;
        b=Ykef37PPVj7uvRjpsBNt6Rc96iudiJIWrBBOvzo1t3jjhEPVZblRjci+apwBg0kRli
         IP/Z49cdL9QUyWYL5u1y0h5vOnQTZR/5AffxJqgZyMGXP8+l5EqlN3c+iJJ688zOaAKx
         yVObZ06foaNXjirbZDwvZPjmuH9RyLilMQzx6gjfi6t/uKjnPpaEL/OIQMTjIo/NwZuR
         WBfdelsHhevpYic4O9dFT0pDpWUPBXM/gUFRnOOoZV02sPE3kcduPOUlhPgp3DPhjSfL
         GLN+USsRYQmwoY3IqNmfLV621HRjmcmZ9eI51Ngkai+9AZI3aUho1LOz0BnPYS18Gf+j
         t7gQ==
X-Gm-Message-State: AOJu0YzFwk533O474XFOu0+7HNfS+isyNKJZa7j5EbjWRI0yzIdcPSZX
	vqFs2+O2HbTu8r5WtSDCyg==
X-Google-Smtp-Source: AGHT+IG19I5lae8dWTQhpITCeP9FKx74DPu+CfRsHG/iq0HJR8akTbrvzMlAP81KjFrZih4SR+NR/A==
X-Received: by 2002:a05:6870:d85:b0:1f4:daf6:78cc with SMTP id mj5-20020a0568700d8500b001f4daf678ccmr15957254oab.31.1701107521903;
        Mon, 27 Nov 2023 09:52:01 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id z19-20020a056870515300b001efce0658e6sm2436211oak.39.2023.11.27.09.52.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 09:52:01 -0800 (PST)
Received: (nullmailer pid 1854610 invoked by uid 1000);
	Mon, 27 Nov 2023 17:52:00 -0000
Date: Mon, 27 Nov 2023 11:52:00 -0600
From: Rob Herring <robh@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Li Yang <leoyang.li@nxp.com>, Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: fsl,dpaa2-console: drop unneeded quotes
Message-ID: <170110751966.1854443.5792070352001940257.robh@kernel.org>
References: <20231122224419.2809361-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231122224419.2809361-1-robh@kernel.org>


On Wed, 22 Nov 2023 15:44:19 -0700, Rob Herring wrote:
> Drop unneeded quotes over simple string values to fix a soon to be
> enabled yamllint warning:
> 
>   [error] string value is redundantly quoted with any quotes (quoted-strings)
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/misc/fsl,dpaa2-console.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!


