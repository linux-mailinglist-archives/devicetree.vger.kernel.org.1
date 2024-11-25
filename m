Return-Path: <devicetree+bounces-124179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 823669D7D01
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 09:36:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CAA76B21142
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 08:36:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 250F2188CCA;
	Mon, 25 Nov 2024 08:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="EBtpqW2y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CD1B2500D5
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 08:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732523779; cv=none; b=HoiTQPGQiqVzGNRhVY7eabjf1DzGv25aTG0btFjItiWjV075QOJ49vmPrvq2vndWAgaAxQTZgeydgdjawMf43wyUJx8F/lG/5XkQuM4OndGx+/lxGKiIYuox32tr4o9RvAWapqVMKzkGX7eKNgNVTerTrznWmFmeFCYrsK6YWAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732523779; c=relaxed/simple;
	bh=LFZPIyR6ASWo+Qpc5QWBNipe1NMG6Z5pRSj8OUn4/Ik=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gM6D+EJe+NgnE3L+c6eG6e7RgUms05hKlr69T7LvaRG1nQc2K/ojV5Q5l0/YYEvYn5dd9JQM/kqG/4uSuMTB8TVYphX3fjxXNBryIFE5EHKjkVQjtqNERRNj4siFzWBGBWBG88yZfoTvfghqWGGwiOaBVf525VRHIgY7sHfOU1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=EBtpqW2y; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-7f450f7f11dso2945003a12.2
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 00:36:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732523777; x=1733128577; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=c8y7knWYoVm5AIz2hT27XuGr0+HUiUQTJYnoybECw00=;
        b=EBtpqW2yQiYaRs3qYDJDJ8uQLJlW/QPrLDXtzx5xgTPsJK4BlwJdeEDv/waGgFcs8M
         vw49mMwu7towAFIDcoXP+TMCGlfaNSkNTs/zcz4q/R3Lz4psamjZ7m1nKCtHpBGZ5A9b
         GQk+rtHrtle/7camii2l08F4wJc9OiQmLciOk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732523777; x=1733128577;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c8y7knWYoVm5AIz2hT27XuGr0+HUiUQTJYnoybECw00=;
        b=Yb8GwPNyf462o70Cp0ZAtokuZj5u52IL0+Mvubt5m1yfSyXsTN4EpPqkmTjW8+TB2/
         +EZ4i3Ej2nRCg3tD/z56Q2BcxvBgdlDTjAYBR9ne/OoyqWjGcPblf6VTGQCoiYS9NLat
         YgKRdwQ4M5vFas3DCAbJCg5BJ1a2QowX88l1ZAjW/ha8bye0Xjh/XcQkUyDTvtJU/Yod
         2L7d785mud6ThT7108TVoNOfnlkv80gBNTpqZzKdwKI1DgwH/ID4WHGiVqBO2inuUN1G
         OrzSPdaZy//J66d8otc8BMyjGRJcv4sIxO1NBvLM2r7Dn+DK5wihZzt8CBulbq/zhtWv
         U2eQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2jf+/8KGXZQ2xBQmDsmMmTcyFhAlnZBNjUNujnu3Zm9v5eL8om803dWH5EiOhbjUf5T5Pq/QWYsOE@vger.kernel.org
X-Gm-Message-State: AOJu0YzuOO7IRaj7nABigoqHqf3EISMQ6eievYYgOYcd6N6VY3TpYmNz
	HLJHu+00QMDE7tN6uRZeKuEO/aiwaTJcw2g6ss2DXAfQSvMJY8AEsHpJACwHNw==
X-Gm-Gg: ASbGncs99qvHx+6Adut4nhgbxjRkLeAIaEHSLuPiJrA2shMfZNB4eSPXAvyOOe96wGt
	BjZ5qt2WrqC4UmlX8gFlzOohRCZZkvq/QmyiuBM4UtMhaosvWmMPCUuo9zZ09RAPFjt/iC24BtW
	pcmHWNglqt2lDqW/wnpk2ROknoKmqEm24tQ0iWD8GPRZXAc7oLTlqRMYh+GzGdF7adfo/WRhcJt
	20Op58iNGUtg6ETolfBsQ9ZHEJzslh0c3lOtbpn6zAj
X-Google-Smtp-Source: AGHT+IEpo2KdlJDaqZnS03OD0RPyKY0ulaDT8hskGK6LW/OqNmKQOfY9Vz1uB+KvJ1tLMzjf1OOoFQ==
X-Received: by 2002:a05:6a20:244a:b0:1d9:21a0:14e0 with SMTP id adf61e73a8af0-1e09e3f0a42mr19359410637.12.1732523777046;
        Mon, 25 Nov 2024 00:36:17 -0800 (PST)
Received: from google.com ([2401:fa00:1:10:66a3:d18f:544f:227a])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-724de531b68sm5847702b3a.111.2024.11.25.00.36.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Nov 2024 00:36:16 -0800 (PST)
Date: Mon, 25 Nov 2024 16:36:13 +0800
From: "Sung-Chi, Li" <lschyi@chromium.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Benson Leung <bleung@chromium.org>, Guenter Roeck <groeck@chromium.org>,
	Sebastian Reichel <sre@kernel.org>, Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, chrome-platform@lists.linux.dev,
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: mfd: cros-ec: add properties for
 thermal cooling cells
Message-ID: <Z0Q2_ds3HCMaN1jQ@google.com>
References: <20241122-extend_power_limit-v1-0-a3ecd87afa76@chromium.org>
 <20241122-extend_power_limit-v1-2-a3ecd87afa76@chromium.org>
 <4f5sahkxxqb5qonh676igaiadkxv2pbhbibu6wtx4yenplfn4o@yvidi4ujavhr>
 <Z0Pl3muZx716QSed@google.com>
 <c2e9a97e-129d-4a82-9e81-b1391b4b6ff9@kernel.org>
 <667d4273-b3dd-4027-9266-bbd88b2f537a@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <667d4273-b3dd-4027-9266-bbd88b2f537a@kernel.org>

On Mon, Nov 25, 2024 at 08:35:01AM +0100, Krzysztof Kozlowski wrote:
> On 25/11/2024 08:32, Krzysztof Kozlowski wrote:
> > On 25/11/2024 03:50, Sung-Chi, Li wrote:
> >> On Fri, Nov 22, 2024 at 08:49:14AM +0100, Krzysztof Kozlowski wrote:
> >>> On Fri, Nov 22, 2024 at 11:47:22AM +0800, Sung-Chi Li wrote:
> >>>> The cros_ec supports limiting the input current to act as a passive
> >>>> thermal cooling device. Add the property '#cooling-cells' bindings, such
> >>>> that thermal framework can recognize cros_ec as a valid thermal cooling
> >>>> device.
> >>>>
> >>>> Signed-off-by: Sung-Chi Li <lschyi@chromium.org>
> >>>> ---
> >>>>  Documentation/devicetree/bindings/mfd/google,cros-ec.yaml | 3 +++
> >>>>  1 file changed, 3 insertions(+)
> >>>>
> >>>> diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> >>>> index aac8819bd00b..2b6f098057af 100644
> >>>> --- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> >>>> +++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> >>>> @@ -96,6 +96,9 @@ properties:
> >>>>    '#gpio-cells':
> >>>>      const: 2
> >>>>  
> >>>> +  '#cooling-cells':
> >>>> +    const: 2
> >>>
> >>> This is not a cooling device. BTW, your commit msg is somehow circular.
> 
> 
> ^^^ And here which you ignored: this is not a cooling device.
> 

Hi, I added the explanation in the commit message in the v2 version. Please have
a look, it should explains why it is not a cooling device.

> >>> "Add cooling to make it a cooling device because it will be then cooling
> >>> device."
> >>>
> >>> Power supply already provides necessary framework for managing charging
> >>> current and temperatures. If this is to stay, you need to explain why
> >>> this is suitable to be considered a thermal zone or system cooling
> >>> device (not power supply or input power cooling).
> >>>
> >>> Best regards,
> >>> Krzysztof
> >>>
> >>
> >> Thank you, I will rephrase the commit message. The reason to not to use the
> >> managing charging current and temperatures in the power supply framework is
> >> that:
> >>
> >> - The EC may not have the thermal sensor value for the charger, and there is no
> >>   protocol for getting the thermal sensor value for the charger (there is
> >>   command for reading thermal sensor values, but there is no specification for
> >>   what sensor index is for the charger, if the charger provides thermal value).
> >> - The managing mechanism only take the charger thermal value into account, and
> >>   I would like to control the current based on the thermal condition of the
> >>   whole device.
> >>
> >> I will include these explanation in the following changes.
> > 
> > 
> > This does not explain me why this is supposed to be thermal zone. I
> > already said it, but let's repeat: This is not a thermal zone. This
> > isn't thermal zone sensor, either.
> 
> 
> And nothing from your "revised" commit msg explains why something which
> is not a cooling device is supposed to be a cooling device.

The revised commit message is sent, please have a look.

> 
> 
> Best regards,
> Krzysztof

