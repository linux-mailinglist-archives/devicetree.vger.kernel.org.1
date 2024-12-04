Return-Path: <devicetree+bounces-127132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 175F79E4816
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 23:47:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D1F2E168EA2
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 22:47:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55EF31F5432;
	Wed,  4 Dec 2024 22:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="SLnLpyat"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 859C7191F77
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 22:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733352459; cv=none; b=GuTS25P6HVSbGyOZoEdkTjbXBSRGo/076cGt6rI3cFTg+ZqVlhAPCkKUDtfTGWqCf0CWVDXWeXcYpqODfhGj/su4lhje8w5zSLRH7qmGs+x3NET5su7welpQt5E8ovcRygYgQpuuW3fN5rag8h4BRZPbWuiLenzCcqpMRfgqOeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733352459; c=relaxed/simple;
	bh=kJdSvnUsUWuFAazx9AVYeMRAMXugvXd7n56wCE1Oaq0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oNS+Q+F7yJox7+JC0QYLT/JAFC13bxDis11XVKwnvoQyePbbbt/dTz4YSBBPYih/f1zpaU776RcmjboZqLYefnNtSU20OsFRUa6FA/eeO42xqHDWFLEneHsABKWDIW1/99AgfIZvJv2+a/bVg3wJueUmsoXBXDgBtCdkZjZwTAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=SLnLpyat; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53de880c77eso329029e87.1
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 14:47:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733352454; x=1733957254; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1HJnxmfo5xvPN+49q760TRmvPlUcAyzClpyK24RSgC4=;
        b=SLnLpyathc5pOSpy10xrEY0CqECnptBupGCYdAYWYjLLL6AsLI3tNmCy3Tw9QsdVRb
         Ni+BHxLYhlUZWUxt5nbnaj11pVGnNx9fwB6X3DLJel5U4biYUGP0V7F05c8EdfxhpCVG
         uctlvnleGgmxjWiaKWl6+emKvGlpFegIQ8VS8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733352454; x=1733957254;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1HJnxmfo5xvPN+49q760TRmvPlUcAyzClpyK24RSgC4=;
        b=OCG9pc/DG69tmOsPkHl5Ub13QWxowEG5Ybipz0hanX9fFfC1SCIVJqC3Mrgo6ex7/X
         28ARZbUDzSWZi0QlxqoAdOcnVlCgkuzGPkiAMZ38eSb57LRjZqpSYZnatZ2bd/qBaj1H
         zke2T4F2AKrY9G/6sVuJhXncsGIfa7LwW+1nT7LjlUqFxJ+3Q6mAuYWSobvuuOO2aWZs
         XU04KkO+NJJDnnwGKMdVyyTE2SEEa6EMB94YBjVl2tjdjYxjJnrqbKrcOQAf/vp+jhAt
         CP/faOpF79FpbU4zBUFqQK2+iGgsrrlHTtZgR1ivanFq9DTi3+dlOemI7cXYsrgPaCwj
         41aQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpKnr8JSd2vUMbQ4/0VMRUAt590HkQjkV5KlqW/62VjW3TqL/s+KFZEylh/EGORNUy4GoKwUSoMPgK@vger.kernel.org
X-Gm-Message-State: AOJu0YxmT74t3YckIIpRkQ929X9muHi3hNYTNttGzugHKB8mNmCx1pni
	f6ZcVu3y6UyraChVTXUngmml8LjqVNdTzL52C2ji3lF9na3o43k9jxTsRdLypC+6HZgeB4aP86U
	oZw55
X-Gm-Gg: ASbGncuj6qNYEgUtPrWFahTnBCGVuNHlSmxwllzp77VjQMQsxCuTWQ6o1qoCMWNRldN
	J3vfOFYnU9t+NGqQROqTgsI/7sD5e29au2LdlqKDYKeO76jyi72HdGaDRfexgy/9dB3QExSCFtf
	mllWLBDYR2moGMPOJcq2kVc6uCfYDcwogkMYyQt60ci9RO5nzYz3lgA0e2feTtS2t5ITWE2v36r
	LSQ5eXQubf7dcUw1LuPDdnlV93SQpRxDinCY5o9+n1cPbEK6lMRDO/llLeHi30jTYF+8S5cy8lY
	/Fwk3bpoA8eemQ==
X-Google-Smtp-Source: AGHT+IG0AClzj5JwLmNl6X6dKJlkv1dM8nI/QGExbUatoP7a8D5lPjVq4gT60ru8aE0l5KC8ZPUXjw==
X-Received: by 2002:a05:6512:2310:b0:53e:2225:c3c7 with SMTP id 2adb3069b0e04-53e2225c437mr165667e87.39.1733352453759;
        Wed, 04 Dec 2024 14:47:33 -0800 (PST)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com. [209.85.167.44])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e229ba809sm24162e87.161.2024.12.04.14.47.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Dec 2024 14:47:32 -0800 (PST)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-53de880c77eso328968e87.1
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 14:47:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUIyh3NwCsoftaPxGWu4GvZ61bzPi/gRYiKNVb18AmiM38Ln0S5hK5o4X6UqyzzqsUBDs1io9wNiPBb@vger.kernel.org
X-Received: by 2002:a05:6512:3f0e:b0:539:905c:15ab with SMTP id
 2adb3069b0e04-53e12a01745mr5161964e87.32.1733352451667; Wed, 04 Dec 2024
 14:47:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241204-topic-misc-dt-fixes-v1-0-6d320b6454e6@linaro.org> <20241204-topic-misc-dt-fixes-v1-3-6d320b6454e6@linaro.org>
In-Reply-To: <20241204-topic-misc-dt-fixes-v1-3-6d320b6454e6@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 4 Dec 2024 14:47:20 -0800
X-Gmail-Original-Message-ID: <CAD=FV=V8VwixdgNjyTL5m5YzEcCuCFE1iYAwBkdkcpzZ6OusgA@mail.gmail.com>
Message-ID: <CAD=FV=V8VwixdgNjyTL5m5YzEcCuCFE1iYAwBkdkcpzZ6OusgA@mail.gmail.com>
Subject: Re: [PATCH 3/5] arm64: dts: qcom: sc7180-trogdor-quackingstick: add
 missing avee-supply
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Dec 4, 2024 at 2:57=E2=80=AFAM Neil Armstrong <neil.armstrong@linar=
o.org> wrote:
>
> The bindings requires the avee-supply, use the same regulator as
> the avdd (positive voltage) which would also provide the negative
> voltage by definition.
>
> The fixes:
> sc7180-trogdor-quackingstick-r0.dts: panel@0: 'avee-supply' is a required=
 property
>         from schema $id: http://devicetree.org/schemas/display/panel/boe,=
tv101wum-nl6.yaml#
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi b=
/arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi
> index 00229b1515e60505f15fd58c6e7f16dcbf9c661b..ff8996b4de4e1e66a0f2aac01=
80233640602caf3 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi
> @@ -78,6 +78,7 @@ panel: panel@0 {
>                 pinctrl-names =3D "default";
>                 pinctrl-0 =3D <&lcd_rst>;
>                 avdd-supply =3D <&ppvar_lcd>;
> +               avee-supply =3D <&ppvar_lcd>;

Looks right. I guess technically they could be modeled as two
regulators, but it feels pointless. Looking at the schematics there is
a single component on the board that provides both the positive and
negative voltages. There are two enable lines on the component but
they're tied together on the board so we can't enable one separately
from the other anyway.

Thanks for the fix!

Reviewed-by: Douglas Anderson <dianders@chromium.org>

