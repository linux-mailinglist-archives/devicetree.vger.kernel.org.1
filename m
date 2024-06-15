Return-Path: <devicetree+bounces-76030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DD05F909792
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 12:06:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E173A1C20BA2
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 10:06:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA40F1CF96;
	Sat, 15 Jun 2024 10:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wuz+2Rea"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E902E200CD
	for <devicetree@vger.kernel.org>; Sat, 15 Jun 2024 10:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718445977; cv=none; b=k7UPWMRc2/+PXDVaY4UqXoMlA6Q2kMz7ROikRdIH2rgmw5F60DNnvbPvPa5LBhq39Ee7UTIXTrkuzikaVLAcnkX8FWHrxLP+Lev7UvLUK56cK0qHM+3C1FiUOuobU/Q0Oqc4CBjGEkbLaz5G2VhBazUA+vY8KarPGGJ6wdTSoL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718445977; c=relaxed/simple;
	bh=lqirP9gigiKAhJ5Bf+brE3OspN1XsrFeIptJAmGIslc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TI+KP5On2GEecwJBn0KjD06GFKKw4mOi6Cf/ywgrmNcRsobGfHw2I0ddO9Gh0f1HcogDm3AWEs2/5LnBGQv744b2NbBHz80QEC7LDaaFJULS/xPw0icYf/+uu4aFU5aGuFTk75rxTk+2rF9Nk099/zyLR6FBAotNf2wQiArW/mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wuz+2Rea; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-57cad4475e0so5552854a12.1
        for <devicetree@vger.kernel.org>; Sat, 15 Jun 2024 03:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718445974; x=1719050774; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Ugzta3rP3oFVUakfzJRDuby3jiVRivBwMnbybv5VjRQ=;
        b=wuz+2ReauU3hLGqzNnseqibGtpFdhT9hZXuufY2BjZ+M5Mw8BR6kp1donpX3Vs9ntJ
         uSKdS3ZimRv314Zxijs0P7IKX3qro30RKNKpOaK/bphZ/hrix8nZgdKSRSYc1nlULB+9
         96yvVtwdfkJE1kNROtJ9jpfslZVvuVWGzrPN0gcyX7La1x/jg/EfT9nLJaaIsjtmkr1Q
         wBov9H3yXvsVTDxYWAbK/lTvtubdpWld5Pcglp4S+04NmnmVDujMDvzbOOvhEBv5e3RA
         u1xW2m1rq+v1L/7YwAN4hXk/o7yRTEhuF/VVr2fT7wfZTszPTd30x9pllYCM2dTCWuHB
         wavw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718445974; x=1719050774;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ugzta3rP3oFVUakfzJRDuby3jiVRivBwMnbybv5VjRQ=;
        b=LoHGzmZuCmb5GL4gBiXD0ProeeW2dk0UgVGX2LiRoLoYZrhl3T33XQtxApcnMFXQ0J
         bnBj3YrQayrKxvNa9ajXmvTDAf9J7Mx9NrQPQJMNL06QgQdMHU9bkQAkwEx/ZYTqARu4
         zjqZ76p6hY47XjfDoa2fbHSdmqqZMkLxUTpI7YLjlRJ5YcMalDJEpRGGojLu+MLTJrzq
         KyaEtje0C2iiQFzjDC/bsPhjTm1Z30aLr1a6haMF5xmEwn1UHoT0Ta0Cy1HUYwWGOS1G
         t47yUkbkE/lRmrLAksReNTQ38ewrw4IcBFWDcOQZPO5+kvMya+A+LnmCbPt4eeCGQarL
         N2yQ==
X-Forwarded-Encrypted: i=1; AJvYcCWBmE7JU8565CDpJPEA78PMIQeo7Uq93u31KREqS43e2H7Cg13TtmnwaDkvWZ9g7vgwhzoHNIrvTkPn0w73ezzgZ6zErnWPHtg4pA==
X-Gm-Message-State: AOJu0YzBbzEVlUF6f49gYqDtQvX9YzLD/XHO9QmajuXxfVz9Jwi3uvqn
	LGFyCXmJgBsJu+oyInUASmPyNgUFVvfy04SkQ9dR1bX462b2n9i3BVgZBYkadAU=
X-Google-Smtp-Source: AGHT+IHpZRE7tLtI+hyxdD7uPvYmeuVdDYZy9nBvk4bG45MFzf+YwcnWMLMpLGLygUNr7MHnHr/8ow==
X-Received: by 2002:a05:6402:1d8d:b0:57c:7cff:6c7e with SMTP id 4fb4d7f45d1cf-57cb4bc27f7mr5038354a12.12.1718445974179;
        Sat, 15 Jun 2024 03:06:14 -0700 (PDT)
Received: from [192.168.0.18] ([78.10.206.163])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57cb72e992dsm3446706a12.48.2024.06.15.03.06.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Jun 2024 03:06:13 -0700 (PDT)
Message-ID: <93ad0a34-0b7a-4b1b-a135-1c31b47b2db8@linaro.org>
Date: Sat, 15 Jun 2024 12:06:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] dt-bindings: display: panel: Add compatible for
 kingdisplay-kd101ne3
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>,
 dmitry.torokhov@gmail.com, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org,
 benjamin.tissoires@redhat.co, dianders@google.com, hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240614145510.22965-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240614145510.22965-3-lvzhaoxiong@huaqin.corp-partner.google.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240614145510.22965-3-lvzhaoxiong@huaqin.corp-partner.google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/06/2024 16:55, Zhaoxiong Lv wrote:
> The kingdisplay-kd101ne3 is a 10.1" WXGA TFT-LCD panel with
> jadard-jd9365da controller. Hence, we add a new compatible
> with panel specific config.
> 
> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
> ---
> Chage since V3:
> 
> - 1. Abandon the V2 patch and add kingdisplay kd101ne3-40ti binding to 
> -    jadard,jd9365da-h3.yaml again.
> 
> V2:https://lore.kernel.org/all/20240601084528.22502-2-lvzhaoxiong@huaqin.corp-partner.google.com/
> 
> Chage since V2:
> 
> -  Drop some properties that have already been defined in panel-common.
> -  The header file 'dt-bindings/gpio/gpio.h' is not used, delete it
> 
> V1: https://lore.kernel.org/all/20240418081548.12160-2-lvzhaoxiong@huaqin.corp-partner.google.com/
> 
> ---
>  .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml    | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
> index 41eb7fbf7715..6138d853a15b 100644
> --- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
> @@ -19,6 +19,7 @@ properties:
>            - chongzhou,cz101b4001
>            - radxa,display-10hd-ad001
>            - radxa,display-8hd-ad002
> +          - kingdisplay,kd101ne3-40ti

Again, don't add to the end of the lists. Look - list is ordered.


Best regards,
Krzysztof


