Return-Path: <devicetree+bounces-161326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E70FA7361E
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 16:55:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 87BC27A769A
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 15:54:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC72A1CACF3;
	Thu, 27 Mar 2025 15:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="SPw0/0q7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B3E1A8F71
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 15:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743090866; cv=none; b=lTvCHyCqvhBKrR1TghZaDhiFVLhn5TGf5OyUaHSMypcpz/qYIrPjcteAu7SBuG6dXVlmOdWLTHTpt+/ZiU4gGH/pCW3aqn18E1RCLSWWAkw83rnBLRJ0eAJja+Lnr9A9tcNv9Xn/pEXZbJPLd4E4zIyBUL+mpqNK0nfmQqH1AzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743090866; c=relaxed/simple;
	bh=Xn+hqAJcwF4LrOcw3aw2H3+w6fmBJDHufrOGSfYCVhY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aUwtCytVWADdmFzj/jC8tgLUfpFcgMbOxUBeSR353kt3FQsCoSo3wkZH2dVMKUzn2E7724BK4PjKBLCn/36II9u92GyhB5V0wPYYM1boOCadHnPq3OBaA8HrdmA9KBZsKMi98AMrlHL7RUXGW4mo4o0hZPEtE8/rmVe8LaWiL2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=fail smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=SPw0/0q7; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=chromium.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-30db3f3c907so12183641fa.1
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 08:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1743090858; x=1743695658; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CZv00/ePRkrRXDyY8uRk/fzDNtpq9RLmjZL7rRlPdfo=;
        b=SPw0/0q7EZ69fGBoGxpE8lzfVCkaePV1/wnhmNA4XMTr4GumSPL9oJGIgUtvh4Pkhn
         KumNI8+I2ziu9ioj9bVHZwCnYxXfD7RhEywfsxIXToJWIAzKBNlGamgUWMOXKkS82Ptf
         TYGTUIgv/mdGDh3oDv1QVzJ+9WCVoIUc0Ra8w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743090858; x=1743695658;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CZv00/ePRkrRXDyY8uRk/fzDNtpq9RLmjZL7rRlPdfo=;
        b=ZECdcKKQQSzazvVZ7Jzkulwmco8LbpfpoHrc0TEfFyZFaBGcdCw2mkrm7vzbnPgD8D
         jydJbpSn76VxvPzwSx+o7DICohzgTLmz7f9m5EjyKdKH2cdxF5dsOzYxwB+4cHoFkM20
         4yx3Khv2m+pOOGEhMQ11FL9ZIEXNEI2CdfxME1wgO+GLiqaeGb/pPx2mVeL2U5E+FcrF
         gwzSvmu/QobXXDUs/Ium82KCxqG2pph/26AVFVqWPPAPSp4+I9aS+RA+uxjEspMK3MWx
         rjI4NHXbvWL2iuKUvAVJ4ptngYW2mi7zqJcflmsltbX49kMnO5HgCMqb+4rq/d7KqNHx
         3d/w==
X-Forwarded-Encrypted: i=1; AJvYcCUcJl/ZSkJCOBCZ/5MMZlIW9Stx/FbyiBc5oBl10eHGPFVTHsG47+z+fBee39ABrmTqGqygJKenTUyn@vger.kernel.org
X-Gm-Message-State: AOJu0YxHx3TfWNp9L4frQ0lrBm0JgcjH44XJhpgyps5wkasr3eOJ9O2r
	1DwZ/C61lERKZ4esfQzpt/Vs4yni1GGZdK4a4tS4QALpWAOfEdgZ+nnJgSe43eN5Kae/KumHu38
	70w==
X-Gm-Gg: ASbGnct++4p4vg6mcz+onI4uKNqITQh0eyhmSC9nNIbRIzfClBpM7qZDyeqmFB45LWO
	3WJMRt5Dd76O800q+DhmxETb58KVMKVqVxbqPrCA/URZObGH+j77UM+c71QnLQ5o6sUnN3FcR3U
	UcMI2Y1IyaSMoXY7/5UA6HU2CEXujAROuvwK5+Yj5tS1J7YpsYfynzJo4pxOEb3SxZN5FZJIh5L
	l3ih/ze+sOUDDTCc/WcK6+rPPuUekelfJHaJmzuWWTmjFqS95Yk3bgO2bENy822lpsPQLgw+1Il
	qCmObcj1riX31iCuGKdJp3TV9yJzAxEioWpZlEy2DWxhKGgAm5TjChKxBTAx16bWJUw3eC4kKuH
	Wpe8VfW3g
X-Google-Smtp-Source: AGHT+IFkaUYy+Szn00wtUy9D9e6/yRN1MCyzxLuWvZZ3aCmqVgfVluLSuJkjOAwEVGyyD1C6DGfkhQ==
X-Received: by 2002:a05:651c:1a0b:b0:30d:626e:d004 with SMTP id 38308e7fff4ca-30dc5e60a44mr16039051fa.20.1743090858306;
        Thu, 27 Mar 2025 08:54:18 -0700 (PDT)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com. [209.85.167.41])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30d7d7e0603sm24969941fa.35.2025.03.27.08.54.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Mar 2025 08:54:17 -0700 (PDT)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-548409cd2a8so1347201e87.3
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 08:54:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXOHVw/Ijb5zhcVAqemfN2kmNxSWlm9BbDHulNMumc/P+mklD5kwKMIB3rgmoQnuv1Jst5iIr+RvPnZ@vger.kernel.org
X-Received: by 2002:a05:6512:23a9:b0:549:8f21:bc0e with SMTP id
 2adb3069b0e04-54b012201cemr1799007e87.32.1743090855396; Thu, 27 Mar 2025
 08:54:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250325-wip-obbardc-qcom-t14s-oled-panel-v2-0-e9bc7c9d30cc@linaro.org>
 <20250325-wip-obbardc-qcom-t14s-oled-panel-v2-1-e9bc7c9d30cc@linaro.org> <20250326-foxhound-of-nonstop-temperance-6f5a67@krzk-bin>
In-Reply-To: <20250326-foxhound-of-nonstop-temperance-6f5a67@krzk-bin>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 27 Mar 2025 08:54:03 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V4bA-kGs+qBfTJ2+zayGr1ndDMiT6Gc0d8ZCxxYLCZVQ@mail.gmail.com>
X-Gm-Features: AQ5f1Jr0GBzGsFAxBQlSMWFiKpwbfZWxF1im_nyKl3vKfJiviUfLFt-4zl7_mZE
Message-ID: <CAD=FV=V4bA-kGs+qBfTJ2+zayGr1ndDMiT6Gc0d8ZCxxYLCZVQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: display: panel: samsung,atna40yk20:
 document ATNA40YK20
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Christopher Obbard <christopher.obbard@linaro.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Johan Hovold <johan@kernel.org>, Rui Miguel Silva <rui.silva@linaro.org>, 
	Abel Vesa <abel.vesa@linaro.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Mar 26, 2025 at 1:08=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Tue, Mar 25, 2025 at 07:21:26PM +0000, Christopher Obbard wrote:
> > The Samsung ATNA40YK20 panel is a 14" AMOLED eDP panel. It is
> > similar to the ATNA33XC20 except that it is larger and has a
> > different resolution.
> >
> > Signed-off-by: Christopher Obbard <christopher.obbard@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yam=
l | 2 ++
> >  1 file changed, 2 insertions(+)
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Pushed this patch to drm-misc-next:

[1/4] dt-bindings: display: panel: samsung,atna40yk20: document ATNA40YK20
      commit: 1822532477cb5f007313de4c70079c09aaa270d5

