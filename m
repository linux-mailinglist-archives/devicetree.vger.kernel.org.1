Return-Path: <devicetree+bounces-218676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2B6B83107
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 07:58:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DAAFC16495E
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 05:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87A662D73A7;
	Thu, 18 Sep 2025 05:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TyV3OBci"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1DA92D6E67
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 05:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758175112; cv=none; b=M+ZCWwKnSSVtrrxYYLdnC2OPK3hXr6gEk5LTe/r+SQMsQn9ndj7cGKTyq0ysPnM552blrMZXEXpWivPxa/gq6biwDJrxbgw57mNanXFvQNL49DofXsVHrW2cBLacZQxTG/klZmkzY0IcVbHD6aUCZuoRKaHd1/+ngbhIStyq3eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758175112; c=relaxed/simple;
	bh=e7yRxA2B68UWIKkdczYYijQsT9ZC4h4tFwI2brifv3E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NyK15P4CIt2hC1kV2dK+u0A3bHOofC5B5QWc73GdnuIGDbXufOIsaMNmfLDQCG60IK630VoBy97t+SaLSXCBjrUcZyhCWp1dBuAIJJ9/FG4XFz30+0bZtAf/edCsgTBlWexpwZjfEL4YHJD8dJXTmKLiN0YDVsTWAnyrmUxINwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TyV3OBci; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-77d24db67e0so281972b3a.3
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 22:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758175110; x=1758779910; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1M8K/x0sWMdi+p7zlur7P/Abek/ld1zdxtrufjSounw=;
        b=TyV3OBciB6qhzJ4DdhcCjulEYOnOExKqaLoQAsOiTfqpMJMwVuXNZWAYksnXfxBXqT
         1Y8zu/glvqt9pd8bJOah8UvJMmL06zfGb0cdh//qOHw4NxaFbiJrdFooqKkHgxdn91hD
         EtbCeHaxl4naGo4FbxipOHoMuUufnoM/x3eiQoVZEyIqkJJE4qnvvBLbusOTiGpcjmcB
         EvtJ67UN6uk32YgrA25u4W/+vRkvgkUr3YLwIWGD23oOWbuU9aqHR0yJL6U8GaiI1RHs
         XbFA77Ykaku74TFvngzrM08k6voUHeIetAT9cHlsQxetKZUv9QyshrHB+DlMrmMqCwGd
         EYQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758175110; x=1758779910;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1M8K/x0sWMdi+p7zlur7P/Abek/ld1zdxtrufjSounw=;
        b=RV8JkbSqdchdBJEW7r0ngqBp+n/4M3IfSQ/AI7TMzA2dFxUwvMR8p9LKdveJqIOa+g
         SynUDhgMqgLkmAUPXdyqDCCaJhKscyPi8dMjUri6ConOLL32rLJG7SkStdd9ei7aatAz
         JTVyr0wl2iQ1m+Idc3WHfrk1g8uUGIdP+VCpTYkm5fcpvhXw/ExKgzRiSYHP7xSCAGwI
         IPt4P0+9M+BLc0qr2c19rYMKjKQCO5tnynCGMccbrpVs+ZQ4PHyQsoUJfg6EXuTji5lB
         u1g65okRQYaz/V8d1bIxvoY4o3qhDFiTC3n9ZCD9bb02nJuSDZE3+9qUlakotgzmfklT
         rIYQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjzdjFKrIUXHE82jVEw+PDtmxwRInpkSGFx8fXwL+bk2g85TfXcHf/mk/LwmdEiGTNaiYqOIAHPL/I@vger.kernel.org
X-Gm-Message-State: AOJu0YyPLMktSFp4BJXyQb+6ILnz8ezUX7EER14h/SQkC68bIK+ylQU9
	xWy9Zevxxfg5Nn/hwMW16VNT7+xuCumE6cLZQIRy6JYLXwUqQH9G+hLB
X-Gm-Gg: ASbGncs5SJ0+BbYCCvtCuRJs/rusGR4MHY00AnOKRhsmfK2/vmybipHB+7RT21d5ZXq
	lGnWKcGRJQ7vqlVE6WEIitVUUBjwigsp7qRAGQagxTcsmfGttqIezqWSzYiCVlK8rM/oh3uHFxP
	/Sv4jRYl+yHumGa3wFUE/36BW9owW1p5XjeImv/GTJ4ojXqr7WcrfgOqy8ff5KmOxpCAfGoIz55
	oTPhQjN3yaeGwxDwVj7V1RA4cNxlHL5k5RkBMTrSs/Fw4irDwmVXaDrvZmSoI3oz463FbFQi0+n
	ZXNQPIa04A1oaRY2YLOXjdEucZXYGcRSlXaM25p1C02YfZJyu5LUg+hqjZndfsFDMzxHF8oSiL3
	X+zSlMaVz63ewp/1fgryOLpVMIVAo/FvaLin690XwOw==
X-Google-Smtp-Source: AGHT+IGb+rdTMfwVbcT/i/JK1WiLKpQvT7aq4HHFKHQrPydPEVY0k2OXSVn7CE/ZKWO3IERNaHMXMw==
X-Received: by 2002:a05:6a20:748c:b0:271:cdbb:4d26 with SMTP id adf61e73a8af0-27aac3da5a9mr6725643637.58.1758175110263;
        Wed, 17 Sep 2025 22:58:30 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:194b:8358:5c91:3d3d])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff4002edsm1199838a12.33.2025.09.17.22.58.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 22:58:29 -0700 (PDT)
Date: Wed, 17 Sep 2025 22:58:27 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Oleksij Rempel <o.rempel@pengutronix.de>, 
	"open list:INPUT (KEYBOARD, MOUSE, JOYSTICK, TOUCHSCREEN)..." <linux-input@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH 1/1] dt-bindings: touchscreen: resistive-adc-touch:
 change to unevaluatedProperties
Message-ID: <wbwtlcrlwnvvjyv7cnffu3sltrqfaddjf5f6dzizhgglwskjgb@zgxjfm5oafxz>
References: <20250910224402.994046-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250910224402.994046-1-Frank.Li@nxp.com>

On Wed, Sep 10, 2025 at 06:44:01PM -0400, Frank Li wrote:
> Change additionalProperties to unevaluatedProperties because it refs to
> touchscreen.yaml.
> 
> Fix below CHECK_DTBS warnings:
> arch/arm/boot/dts/nxp/imx/imx6dl-skov-revc-lt6.dtb: touchscreen (resistive-adc-touch): 'touchscreen-y-plate-ohms' does not match any of the regexes: '^pinctrl-[0-9]+$'
> 	from schema $id: http://devicetree.org/schemas/input/touchscreen/resistive-adc-touch.yaml#
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Applied, thank you.

-- 
Dmitry

