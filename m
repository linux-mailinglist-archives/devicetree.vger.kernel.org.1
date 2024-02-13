Return-Path: <devicetree+bounces-41479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCE285400A
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 00:24:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CE0961F22BB3
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 23:24:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80EE462A1D;
	Tue, 13 Feb 2024 23:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="TPspMKOs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B48AB63105
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 23:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707866667; cv=none; b=TKLQHC6nc98IhgPAPcnzxO4b9Yh5DRuhVgtvoSepIFsIKfqTleEbjLBrhopp+GULt0hqbXpEqDSMgJJ/oZ8NijadrdChGjgpYlfHa1Teg0pYznRNiD1DbRNnCnYL1MbBBShKqftMNPzS/5Yb5P2fUv1yEhi9u6rq1h5RKJltXR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707866667; c=relaxed/simple;
	bh=SNOVFhian0wSmfjQUWbhIZH1oLKhGuatN3RQQaM/zI4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mrIdP1NxGAmslD6zh1fgsp7W9HHLQRddDSG0AmHyep1Py+GiiEP4XE1Qj5qW8VuiN/yPWbWiWIKaun/+Rzl4GpM8oLoX7vZ78iriV6AlDx3Y3d/jQEDwFzUMDgZZg+R3JG0kJiBYrkTgCBjnPBT2BQ82XledQqEib/0I2G5S+6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=TPspMKOs; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-55a035669d5so7142806a12.2
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 15:24:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1707866662; x=1708471462; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qyzkdDn36VkqM4HUW3/5Yc8FfYXf+Vgri3xwPCVSUsQ=;
        b=TPspMKOsrV8aSUQARaHs7Jl2xx5/lqXWOuMBls7HyH2hBMi11g7yOXbtll5xYDuQtk
         LW4aFr8+R284ZjI5XS59L7yWXwmMG2yJvHh/SvI+iwDlZGgWIx2x8n/x+hOckH8VutX4
         68nand1erw/FU60tAKKQaLMKz01fuA56FWr44=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707866662; x=1708471462;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qyzkdDn36VkqM4HUW3/5Yc8FfYXf+Vgri3xwPCVSUsQ=;
        b=amSw7UYVNFB1jVUTTqc3PkV4L68PG7jsmmaTra7saYsNumRoIFHjr19QRi07HWKe2F
         7EoeKauJ0+4pRI036og2BQM1eRJVynIptidvJ4qakezoqdtLfZp4nvZtfvIVb+FW6hfQ
         qtEAvTWAN4I7OMmV655vApfUxq3yochxyQsczlc96aZQnL/h7dOo9H7QTdwYLGzC91Rl
         WTR9K9AccNKZWgQEXL126V0JwOWBvDGF7FbzfH30crjSntmwjbLxkMBPqVY3r2PHM/u3
         veZsdVeuxw58IyaIdzgCeL/YrI4Cjc1QSZFricb3fddGKCWj3YbdAPjXXXbU1NoIOI1I
         th9w==
X-Forwarded-Encrypted: i=1; AJvYcCVDChkjo5E+1dbVdijzxjUHjyKLr8g94S0jnzb9krgAc4wWIa88MBURRxtRgeOXsKikRJLAPTOv61UenHzk3mYQgOUH5GPWaeZaxg==
X-Gm-Message-State: AOJu0Yz+baWMjivkQreL8tMWDJiuGjsU/2F6Tb9HGYzrZjmT30Oddmjk
	TBfsJQeeTWgdIoXJTNgSd03UQHWgjLEL0jcyNOy9zthA5TtejI0lRr+0x/j6XoOFu3Cmi4MQQU8
	FpH19
X-Google-Smtp-Source: AGHT+IFpl5Kl9cPOYOhLi+HZGlPzJuW34eLpsu6yp/YcYnzraEcZGCwPclsO5sJ6Qvh3rR0zliv4oA==
X-Received: by 2002:a05:6402:1658:b0:561:caa5:c12e with SMTP id s24-20020a056402165800b00561caa5c12emr694374edx.34.1707866661554;
        Tue, 13 Feb 2024 15:24:21 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU0I3ugxvbyOAafm9HCUDvolVrM65GY8NLKmJTGfRqf2OpdlWVWTWcv7jAEhVBGMHdrYHo/xY4nGG7CE8e4X6Xm7+Gg4Pa/BaSCEQ==
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com. [209.85.128.49])
        by smtp.gmail.com with ESMTPSA id fk7-20020a056402398700b00561a443a393sm2692019edb.92.2024.02.13.15.24.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 15:24:20 -0800 (PST)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-410acf9e776so96325e9.1
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 15:24:20 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX3+onIRYxviaV3+1goHwrwuTgbgJO4iVVDdXER9fmj1AGdz7lCW5blKXKkuDmAu/XBDGlwIaf10oT8aXUWM6Z7PjtxJVtndMnqPw==
X-Received: by 2002:a05:600c:a16:b0:411:cf85:9549 with SMTP id
 z22-20020a05600c0a1600b00411cf859549mr57493wmp.3.1707866660353; Tue, 13 Feb
 2024 15:24:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240210070934.2549994-1-swboyd@chromium.org> <20240210070934.2549994-20-swboyd@chromium.org>
In-Reply-To: <20240210070934.2549994-20-swboyd@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 13 Feb 2024 15:24:03 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XxX9wqZdwf9Wtq2=KOKgTr5FhyJJWp8S9W1xFW3cY80Q@mail.gmail.com>
Message-ID: <CAD=FV=XxX9wqZdwf9Wtq2=KOKgTr5FhyJJWp8S9W1xFW3cY80Q@mail.gmail.com>
Subject: Re: [PATCH 19/22] arm64: dts: qcom: sc7180: quackingstick: Disable
 instead of delete usb_c1
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

On Fri, Feb 9, 2024 at 11:10=E2=80=AFPM Stephen Boyd <swboyd@chromium.org> =
wrote:
>
> It's simpler to reason about things if we disable nodes instead of
> deleting them. Disable the second usb type-c connector node on
> quackingstick instead of deleting it so that we can reason about ports
> more easily.
>
> Cc: <cros-qcom-dts-watchers@chromium.org>
> Cc: Andy Gross <agross@kernel.org>
> Cc: Bjorn Andersson <andersson@kernel.org>
> Cc: Konrad Dybcio <konrad.dybcio@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: <linux-arm-msm@vger.kernel.org>
> Cc: <devicetree@vger.kernel.org>
> Cc: Pin-yen Lin <treapking@chromium.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  .../arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)

Bjorn: happy to see this landed any time to shorten Stephen's series.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

