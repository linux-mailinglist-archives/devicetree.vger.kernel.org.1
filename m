Return-Path: <devicetree+bounces-41851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C20C85585A
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 01:40:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B6B541C23260
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 00:40:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C922310F2;
	Thu, 15 Feb 2024 00:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Q3wEBXNv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1154F64D
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 00:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707957606; cv=none; b=ULVdHoIfIZEBMiGUC+vNc4BPn9sJEq+nqWUMDFJNjO7GmgYJ9lpa9T+qmjWSAMfRzQUO/ILRfdABUcbdkY7/5Qi6s/40reIIOdHCn0a5JDvQmhe9RBJnINmXFxZII5Gv6pzM5Hv9rhkBNln9V6C9Sdo/JwXBSRI8PE0MmOkJGq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707957606; c=relaxed/simple;
	bh=kYh5k8MyiysiewusV+Glc1Kt41gt5l9m2Lg4dhbhPyw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TjFcheNMpP/RiKUJ0iqvo9W6bzUTC6XwUupJ7dUAqV1dfJPrT9pf9HGC/SSOeoV30Ohx9C5I+JUcABETI3zrWIJ9cKxRnLY0g4T/6aTAo6G56wLC2p1DjAcoYg+aHzTSk7ByI2Rtaly2QLm5LyXKExD0DG/95Y+2NLz4mQKWTkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Q3wEBXNv; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-55a035669d5so445739a12.2
        for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 16:40:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1707957601; x=1708562401; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kYh5k8MyiysiewusV+Glc1Kt41gt5l9m2Lg4dhbhPyw=;
        b=Q3wEBXNv03SpEX4Vk8kNpNaZsl8bjdr3PLINCfVs5Y2XutaVUnbVi5uDq7xypB5XdG
         G1Ku/pe3mtpzMU1KuPWl0l3JUSmoRWiMH1Wr6L9vaHldMGCy4TTlJRUseHbNQCHDXHN6
         W+MGSdkmADFDh8S4hgeaDE6inrZo6MOXquLl4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707957601; x=1708562401;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kYh5k8MyiysiewusV+Glc1Kt41gt5l9m2Lg4dhbhPyw=;
        b=UQM20Du0UONSgOU2vNS2n4mZfea//j75P/aTpFT3RF5/kIs0elB3739IHTonjX28ZM
         AQQLj7mT9xoFPgIHmHDpO0ofig2VAyuggJ0akQD1xXlp8fPj0rCiPD+5Pg5l9XPthIpX
         FOD5AhkQK2gGvdRy/DGx/7ugZyQQmdEnbFGN9Ta1OCDjPaWTX3eL71zhLRCScvIk3Gr3
         47DCreqMYlAqcqt6ewMVj/uXbhtylAiiNi7sAYNG9HWT1F//OuBBXapFoI49XLI4Z3pQ
         R3E6QOcTBnllX+glZEPJoBRy5SCBURP4DEyETbn5VMkY6KbSqyWDJq6zutrYnRUW89oj
         Q4FQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0ZOiVvGc3kWSMggHX1ZyxlHOZfmUwNboJCRnymOCOpHTqhS+Cam0fmJ3TP3AHbnLWY6+CrcQKOrkesJQM1wncu+xYUGcmPQxBTw==
X-Gm-Message-State: AOJu0Yz44OYAeAnilggjuhQtEj5Lyh1NwnMpbwXc1lQp7/yjs6/PyOsx
	+B4mx3twDSUytTVy0le0pFmsuElgVJQ/2a2NQ9KrbF+GkMfV5CHzC5ekOj0C3Uok8HfTZwSwUTn
	mpLR2
X-Google-Smtp-Source: AGHT+IExgFNiI13tTqi/OSSMWyhcKJSK8nNEfdPdDr6Ej2NtEN+QxT5WCJcyknDfhd77Trubazhn5A==
X-Received: by 2002:aa7:cf86:0:b0:561:ce5d:1a94 with SMTP id z6-20020aa7cf86000000b00561ce5d1a94mr137404edx.1.1707957601486;
        Wed, 14 Feb 2024 16:40:01 -0800 (PST)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com. [209.85.208.48])
        by smtp.gmail.com with ESMTPSA id cs1-20020a0564020c4100b00561c666991csm53629edb.73.2024.02.14.16.40.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Feb 2024 16:40:00 -0800 (PST)
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-561f0f116ecso2916a12.0
        for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 16:40:00 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCULUuiD6AywbFP6WCnuTZpwaSbxCqPfGLPp7trQy3qtO85/QjFIzbnMFt9Pvo7NfCiO6iizQepguCdvDT/cSlxCNLfQwHJztE8uMw==
X-Received: by 2002:a50:8d13:0:b0:55f:8851:d03b with SMTP id
 s19-20020a508d13000000b0055f8851d03bmr333252eds.5.1707957599932; Wed, 14 Feb
 2024 16:39:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240210070934.2549994-1-swboyd@chromium.org> <20240210070934.2549994-22-swboyd@chromium.org>
 <CAD=FV=WovmtKFiG0OMzpus9=z8UJ+Ev3TrwsVia8pSegvjwUiw@mail.gmail.com> <CAE-0n52qgKrasAw1AbZ97zMk1xz6P4KkxNLi4cBpNKy5wWu+1A@mail.gmail.com>
In-Reply-To: <CAE-0n52qgKrasAw1AbZ97zMk1xz6P4KkxNLi4cBpNKy5wWu+1A@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 14 Feb 2024 16:39:45 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XAcXs1hmJB_Rd42+Q3gQDuw=2L+igCyWnnnSYtqdifPA@mail.gmail.com>
Message-ID: <CAD=FV=XAcXs1hmJB_Rd42+Q3gQDuw=2L+igCyWnnnSYtqdifPA@mail.gmail.com>
Subject: Re: [PATCH 21/22] arm64: dts: qcom: sc7180-trogdor: Make
 clamshell/detachable fragments
To: Stephen Boyd <swboyd@chromium.org>
Cc: chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org, 
	patches@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Pin-yen Lin <treapking@chromium.org>, cros-qcom-dts-watchers@chromium.org, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Feb 14, 2024 at 4:35=E2=80=AFPM Stephen Boyd <swboyd@chromium.org> =
wrote:
>
> > > -/* This file must be included after sc7180-trogdor.dtsi */
> > > -#include <arm/cros-ec-keyboard.dtsi>
> > > +#include "sc7180-trogdor-clamshell.dtsi"
> >
> > nit: Not that it was terribly consistent before, but in lazor you
> > remove the "This file must be included after sc7180-trogdor.dtsi"
> > because (I guess) it moved to the clamshell file. However, in other
> > dts files you don't remove it. pazquel has the exact same comment and
> > it's not removed. Pompom has a slight variant of the comment where it
> > explains the reason (to modify cros_ec) and it's not removed. Could
> > make it more consistent...
>
> Sure I can make it more consistent with the explanation. Which way to go
> though? Remove it from the boards and put it into the fragment files?

I don't care too much. I guess I'd lean toward just putting it in the
fragment files just to copy it fewer times.

-Doug

