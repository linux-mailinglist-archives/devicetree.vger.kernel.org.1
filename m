Return-Path: <devicetree+bounces-89077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3D593FEA4
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 21:57:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A2296B213AA
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 19:57:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FE55188CD5;
	Mon, 29 Jul 2024 19:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U4HnnVPo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A32D5187355
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 19:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722283059; cv=none; b=M9Ea/wI4sOilvGxDkm3Tjf47tVY8qUaxc3ol7vGRsLvhgX8PD9BSi6jDAHJc1o04BfCHNY0tODGbHdERLBOxeAbxmB84/mbuq6Q8F8n4ZBx1TBavhyf1xYanxcWkde6Y9vcjNLdMJuJSg9WUDFyBYY10Oaq9xzcRo4tUn0Ttbgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722283059; c=relaxed/simple;
	bh=trM2O+rr9bV4LesywylqLRqG+0npdiIzz5q9qSoKCH8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H1o2jxLXkaUPcEQsiHp7YuPa+1ArC2B2tLaX8rauC5aC4mGvYeUfMwFJHV6+jjZNByzsT920KdyE6JBLbgcl8DVGj/VOEG18iVCCjEfWsGNqTr9venf30H4KnO06Ccdgr9o0AyHpcTR6P8aD3jQ4ogF5eLiSCc9Z0cM5g7F+/q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U4HnnVPo; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-52f01ec08d6so5904328e87.2
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 12:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722283056; x=1722887856; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+SqnnDYE6kct0XV14lMyb3SDYD0Ty7GXWU1n/Q+fOCw=;
        b=U4HnnVPoDvZxU3hUn6tHcUUOH8fNIMxaSJM7VblXWQ/vC8gmKQaPO+3hUlnXE2UFZ2
         Hjg0o+e7EyzhgGMIquQm74Dcs5wR+ZpD2EuHARWrQcEH0tqG/66TGmlhkeNPxftASjYf
         Run7labuqbY6lYF2mFma3R22RshUpidiV7VvKn/GlhRqH7fpVvH6GghhLLdEGdSX+nAY
         Bh44KDhJFQcFeg8qWULs2yA4trQEreYGc1gMocxzDk5fjS3D/dtjQ7VEF2hhLupNNYm9
         zp7F9SiYiwepd+WP0pipn4UezW0Wdy3tiXm1tosGKKbwjoG1jmlBIO7Q0FffFEXMyj96
         F4tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722283056; x=1722887856;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+SqnnDYE6kct0XV14lMyb3SDYD0Ty7GXWU1n/Q+fOCw=;
        b=mNxEZuZVsHi5V4tPORSFGhMLhNFELNmxu9ubJ+8j4cgt720qC7h+WDmZiG6luFELFB
         aWkEPMnKQByHqWg2dQAZgBZW2h5WdSWgEOBDkuNzzRnT7cNgRk4Ppdp33kx7nMeOcyFO
         HLJlD+5qftSL0VaAIIL560IaAyVUalgT4bN3HK33mCEt9cL5OGoYxEo02DfrKPlQ30iU
         HbiaQJhuBbB0CiejYFOF9UKlm1LlXTT/SEBZch3W0uTxs2vOwmA+UYaaros78KUX2yEv
         FoELxCLOTDb9m8WdXQWR0T8MW8f79SWmiX8FdJMCMFSJbEaacwLdAk3g6O6iDvAVqc4K
         PTyQ==
X-Forwarded-Encrypted: i=1; AJvYcCUIpo7QSEL4q/RLpk+wh+8Wl3LNzpMK4Jqsm+LVyIMXiXD9yBvzHFcQu0bFvnpwBKp5BTKpNd5AMsqkaQ53bINMR1llVFJVu/S3Fg==
X-Gm-Message-State: AOJu0YzdRUbncWsF72Ye3K9KBHcRJ39jSe/67/FwGYh9vZid+0XF+z7Y
	X/1IR3/IgU6r4QklaMTDavfXKPM+4lDv5fZXVWo2/lLhGsQcSrk181JQiFzpDUU=
X-Google-Smtp-Source: AGHT+IGU7pQmqUmGKaSIWVKnKEMXKhEM3oxtggFcHC4HPPRwfwBdgdynlaWbk6c3WNLSirf/4oEFiw==
X-Received: by 2002:ac2:4c8e:0:b0:52e:f950:31f7 with SMTP id 2adb3069b0e04-5309b280422mr5231024e87.28.1722283055719;
        Mon, 29 Jul 2024 12:57:35 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fd5c318d0sm1607452e87.287.2024.07.29.12.57.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 12:57:35 -0700 (PDT)
Date: Mon, 29 Jul 2024 22:57:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: gregkh@linuxfoundation.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, andersson@kernel.org, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, jun.li@nxp.com
Subject: Re: [PATCH 1/3] dt-bindings: usb: gpio-sbu-mux: Add an entry for
 PTN36043
Message-ID: <a3trxkx2fue2oahscjkc4silnfhesrws5xn7brjefjmke5emci@dn3cbb7yzmux>
References: <20240729081039.3904797-1-xu.yang_2@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240729081039.3904797-1-xu.yang_2@nxp.com>

On Mon, Jul 29, 2024 at 04:10:37PM GMT, Xu Yang wrote:
> Add a compatible entry for the NXP PTN36043 GPIO-based mux hardware
> used for connecting, disconnecting and switching orientation of
> the SBU lines in USB Type-C applications.

NAK, this is not correct. PTN36043 switchies SuperSpeed lines and not
SBU.

> 
> PTN36043 datasheet: https://www.nxp.com/docs/en/data-sheet/PTN36043A.pdf
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> ---
>  Documentation/devicetree/bindings/usb/gpio-sbu-mux.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/gpio-sbu-mux.yaml b/Documentation/devicetree/bindings/usb/gpio-sbu-mux.yaml
> index 8a5f837eff94..152849f744c1 100644
> --- a/Documentation/devicetree/bindings/usb/gpio-sbu-mux.yaml
> +++ b/Documentation/devicetree/bindings/usb/gpio-sbu-mux.yaml
> @@ -20,6 +20,7 @@ properties:
>      items:
>        - enum:
>            - nxp,cbdtu02043
> +          - nxp,ptn36043
>            - onnn,fsusb43l10x
>            - pericom,pi3usb102
>            - ti,tmuxhs4212
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

