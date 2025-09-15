Return-Path: <devicetree+bounces-217499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A71BB57FB9
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 16:58:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2FF373AC640
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 14:57:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B51132ED3C;
	Mon, 15 Sep 2025 14:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="O/h0bUi0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AE41202F70
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 14:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757948266; cv=none; b=T/C6A/BFBm8I22XeDVzDhbA93Os5i4BgEmT1mImcX/tKAqKJxiUVOfkbHdY1U2uFM5pG/AMXKmZzarqVCDrWbvQ1/in3mpWNdYpcl/HLW+cs4pvWMDeygR6b3KO+TsgI+puAYTQQ7eVR2bSG6LzpA5zdV07eOsgdizM7cvJ+uSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757948266; c=relaxed/simple;
	bh=8IynsGzsgz7X180dzhNxE6PK1i2vkr9WAjXS5vs2w24=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=o7NagJzvfgpK+qR7YyZF7Tn0Zi8XQ+tH8xVrvnP4i62eqCtEkhC73hAXmtIWw39Sgv54CpdYVPKM9vjETJArTpU6eTSSZqg05T/wPW0yJkjZBYKmVz6AjdWcFG/0vPFB2mD06sDo+ThBX+xLfYlCUKugcFF+AhC4E8F8l6I37Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=O/h0bUi0; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-7725fb32e1bso4471993b3a.1
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1757948264; x=1758553064; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bWnOZJSewnsdDRnB5iGIXYYv++Gnu1xZmA3g/PLQf9k=;
        b=O/h0bUi0Bv2qcFJgzQ46OfRK8OI1U2iZ1A4m2P4FOvAaV67dya9pW5EU5fFf1dxQyw
         1cjwOT72dzlIutVnt3mdbi+RopllpivVOhOlZNChxDg7nLyyg8/BFdO2Wyq9LfJrHmAH
         mZ9283VfurcslXseuth8nRgLHv1y1wkYRRER20ymVtuThcDOraO9Q72xiJ63XGbSCUwo
         W6JjRMh+luk3Ptw9FKf2KHTjAOpMiV9QaSR1W38iN09LlmhspxhFYpv7uSpa1a7CKyWr
         m1qcK3zfqOsUmtrJMLOwMNhyi5m47Ybs7R7TRPoELXDtiXQOmHLuus0g9RsU5mGdFm5w
         H0xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757948264; x=1758553064;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bWnOZJSewnsdDRnB5iGIXYYv++Gnu1xZmA3g/PLQf9k=;
        b=WhShn/Tcq1EtHSkamvH8uH9TPiYy/0OQGaEq+/DwAemsZim/z4u0ZZloQ0I3KEu7Vi
         MKon8/nNg1wYJtOvEO64cvTq9+WOiwXtQ3b5ZgqX8Nb9FV6ZE0vPKVtHOQKj86jN8cPD
         zGs6Dy0zREWtIuqOMn09eVXgdykS+8UogYr7dAn1Z4N5uYBTDUWopMtLf0lGGbg2h6Yy
         pgSoKmTj83CS6p0ixvk6N1jQDIxtBDwvC2FMrvCi4LWl5YqF/J1JMF9ZTveleMHORUAW
         Ts3RyZ1hvbiNosz4Ji/AI7YOjGAq1+u824dBLsCVc/sR8k9CngF7avZwfSkcEJcVu4pT
         pXUg==
X-Forwarded-Encrypted: i=1; AJvYcCXRFJOX0Zai16GipTn5BZXmTF3Az27uieLdmt8bopND+Axhblq8kPXdsa3Z/5Nym6tSMNI1J2oDIU25@vger.kernel.org
X-Gm-Message-State: AOJu0YwNueQVaHBhFdSBPIu6OK+tdjoUu6AToIZHQe7y8kCXvR4q1Kip
	C/WgdLd7ngTlMhGnwviwUi4UEDvD0sBTH81W3mR6zTTfK63wTpsEEVzZyNEAY1BXn5J2Ku9w3q0
	hGuwPcYmPJgAowPRPm2u+rmppv2vvSEl3F7K4vW4n
X-Gm-Gg: ASbGnctfizlhYH1uIhNLKCxunAywLHe/DPnULkl8KGtL8m9uinmdIHtj/h/aE9n/Oqz
	o06XUEl1F19qhnqkHWrN8V2OQ/KWQlhGHvxP4dghOgIf3dt+q0zAsZHcLhY0sj3MtfHqW8UIE5s
	wxXN3OUhnHdEJNeRFAcmCqdwEMXiqvdwsP30GygMHvLgM1RCSnHKkak9AL6w/NQhNnZ9xTdKSvt
	Y7QxUVcYdprj4nSXcIrS2ARBfFlCWYz5TdeskFcqLg=
X-Google-Smtp-Source: AGHT+IHnj6/TLndLwM8EyXwEuk/YJ9EdWGwOpk4CWXv+kwz1bKWJkqFmdEGI1fqwhaJAaM5FG2Rg3VduvcabMBwKZmE=
X-Received: by 2002:a17:903:478d:b0:264:8a8d:92dd with SMTP id
 d9443c01a7336-2648a8da428mr77672995ad.20.1757948263212; Mon, 15 Sep 2025
 07:57:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250915064715.662312-1-yanzhijian@huaqin.corp-partner.google.com>
In-Reply-To: <20250915064715.662312-1-yanzhijian@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@google.com>
Date: Mon, 15 Sep 2025 07:57:30 -0700
X-Gm-Features: Ac12FXxQXW-Con-zpsPtv_VMeeXMu-aegpq7H-CjBeLPv29-bp9mRKCGUG3xxe0
Message-ID: <CAD=FV=W8HGEa6FJ_NApH7V-NiJhiiaA3czXPJTbff6vWKBoy=Q@mail.gmail.com>
Subject: Re: [PATCH v2] drm/panel: Add support for KD116N3730A07
To: Zhijian Yan <yanzhijian@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Sep 14, 2025 at 11:48=E2=80=AFPM Zhijian Yan
<yanzhijian@huaqin.corp-partner.google.com> wrote:
>
> Add panel driver support for the KD116N3730A07 11.6" eDP panel.
> This includes initialization sequence and compatible string, the
> enable timimg required 50ms.
>
> KD116N3730A07:
> edid-decode (hex):
>
> 00 ff ff ff ff ff ff 00 2c 83 10 01 00 00 00 00
> 02 23 01 04 95 1a 0e 78 03 3a 75 9b 5d 5b 96 28
> 19 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
> 01 01 01 01 01 01 09 1e 56 dc 50 00 28 30 30 20
> 36 00 00 90 10 00 00 1a 00 00 00 00 00 00 00 00
> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 fe
> 00 4b 44 31 31 36 4e 33 37 33 30 41 30 37 00 2e
>
> Signed-off-by: Zhijian Yan <yanzhijian@huaqin.corp-partner.google.com>
> ---
> Change since V1:
>
> -Add edid in commit message.
>
> V1:https://lore.kernel.org/all/20250912131104.1726775-1-yanzhijian@huaqin=
.corp-partner.google.com/
> ---
>  drivers/gpu/drm/panel/panel-edp.c | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

Pushed to drm-misc-next:

[1/1] drm/panel: Add support for KD116N3730A07
      commit: 65afe8b647a7c2e5c508eb28c93baddaa40812f4

-Doug

