Return-Path: <devicetree+bounces-14232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA437E2F40
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 22:52:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8061D1C2088A
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 21:52:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 247342EAEE;
	Mon,  6 Nov 2023 21:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="XtMWDFxT"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C724D2EAE9
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 21:52:29 +0000 (UTC)
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FDA210C0
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 13:52:28 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2c5039d4e88so68561381fa.3
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 13:52:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699307546; x=1699912346; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pcLpYQwHOJBs1+bgx/XyMohSbAkHSHoZFZS+/mc6OhY=;
        b=XtMWDFxT2X2LyBM2vs1jV9nlKOgjtd2jyewQwPe04aYkMuJkygwJaIUzZ1X48YTKV9
         j9VPZbB0Y9REGxL8AJgkjoDbc3AvLy3ZJ1ii8rsRdrUN/cCR8Rg618bh950smNYHsk1S
         jWVSolYCW9eDRjUwsUu8gNZL0aLmCNDsQuobc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699307546; x=1699912346;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pcLpYQwHOJBs1+bgx/XyMohSbAkHSHoZFZS+/mc6OhY=;
        b=IznGdzWEmpz/8jZHP44l7ylyskoRZU9GJ4YGttG1X540pLdjc9Uo3YEFDuC/UQGagj
         sCrq6TJRvVIvLVK3tFG0M86T/BiteU7AdwMWaMAD2OZQsVmithUXVazZN39qZfwNzSFn
         ieG+GX/6d+fZCsSMJqejOHUxqz65nR43JXOqjcVRYH8ly2oJxTEWEP6r0MjO8D9OTKKW
         /pVkpLa98PKjtYED7iJ0BsxRbkOjxFNfcxesoiUZfjAQh27dJU2pX52sxngvlANQac24
         W+oosjxFQ1/RdT5xCt04GMCM/JfhA0p/SgQMDP03J0750qGxZU3O/Bfl3D9Yc1HC5giz
         xVWg==
X-Gm-Message-State: AOJu0YzK1zglBncfidNPli3SNJvoDjzOexfdAxq7oAaqXFoyLhCFgS7U
	SddPA/bc1sp52iuQP1HQsrfjoOQ1WlUxs9167XP43g==
X-Google-Smtp-Source: AGHT+IHwaWHjOprXL57hNf2rFZSX55S5GAUN1q/qHfDTTNIOltSUt0SKeimJVCNC7yGPADzZ4lTXV9ddU9TVuiCpVKE=
X-Received: by 2002:a2e:a98c:0:b0:2c5:4a5:9560 with SMTP id
 x12-20020a2ea98c000000b002c504a59560mr32234027ljq.41.1699307546288; Mon, 06
 Nov 2023 13:52:26 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 6 Nov 2023 13:52:25 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20231103163434.8.Ic1d4402e99c70354d501ccd98105e908a902f671@changeid>
References: <20231103163434.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
 <20231103163434.8.Ic1d4402e99c70354d501ccd98105e908a902f671@changeid>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Mon, 6 Nov 2023 13:52:25 -0800
Message-ID: <CAE-0n5152eMZ_muL3rBOc6gyRQOXA0U8=vXp6GkkuvOo3Mp+mw@mail.gmail.com>
Subject: Re: [PATCH 8/9] arm64: dts: qcom: sm6350: Make watchdog bark
 interrupt edge triggered
To: Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Douglas Anderson <dianders@chromium.org>, Guenter Roeck <linux@roeck-us.net>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-watchdog@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>, 
	Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Quoting Douglas Anderson (2023-11-03 16:34:34)
> As described in the patch ("arm64: dts: qcom: sc7180: Make watchdog
> bark interrupt edge triggered"), the Qualcomm watchdog timer's bark
> interrupt should be configured as edge triggered. Make the change.
>
> Fixes: 5f82b9cda61e ("arm64: dts: qcom: Add SM6350 device tree")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

