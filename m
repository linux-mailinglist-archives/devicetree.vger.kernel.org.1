Return-Path: <devicetree+bounces-23992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 233B480D393
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 18:20:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 53E3A1C2148E
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 17:20:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 054C34E63B;
	Mon, 11 Dec 2023 17:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nf8er2OI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A209BD8;
	Mon, 11 Dec 2023 09:19:51 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40c19f5f822so26530565e9.1;
        Mon, 11 Dec 2023 09:19:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702315190; x=1702919990; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=XBkNbk1tNxG/gdCBqT3MOLILfZDJui9Br4+ml00XNfg=;
        b=Nf8er2OI2UVptobJLQSWhgYoLvbHU+AUCOMURULMHQtKjZCO6k+bymb83dfyoskpD6
         Az/mEhoFu7YfCHAd3dxyicFukEVh01aRp4jGTSqWbnyTJPgDpp4F0m6gfVwJalbrnXH2
         s994ZE9NGp4iikMCJU4on9dSBwyXuMq9Qc0iiMM2q6wgmbDeTMUxtegQCzkJsBSy40Xz
         LLnUXs7os3NvWjCQ7ItZlPjxWYEU+kXweh7JL7EdR5zumcM6Ul+DAqNUq5/N3tvf6+Wl
         Z3WuD0TBqfqX3hvEUvupvuHkUufWPS9xGJRnYJIwrrCG1ha8kzrGCJrdIcOcfyTup9Zm
         lEwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702315190; x=1702919990;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XBkNbk1tNxG/gdCBqT3MOLILfZDJui9Br4+ml00XNfg=;
        b=Ome5g8aBZdMk0ENet2drrKnBXOk2lXlvoxLBmnQl+lFg40G0Xa0nXQYkCUKHMi97PJ
         J7V6MwpiAmwE3UGoKq5oNgBPJChSUwX2P5hKFsrDQs4qbJKFdC03nJUkc0uXAdwVptM+
         3rzgbE0o16tSeAPwwLkcBnUoJcqEKsfY7Mc1V749bjp3kLu/sPdnB3pUThi1MIFoW1fy
         F5N5yeTw00Na+leERvqEMqVKf/oum36QEbWefR8L5lfPXkTL4TICULzI5bd8HUHoy/R/
         hzs0I2y9hk6jFeohM6jvoG61nu1sWqUAYBsFQaKmHSOld7snGpZZp8JD8xq8zzo7VCS/
         yefw==
X-Gm-Message-State: AOJu0Yx7hfJsIcMakeL+dwktskpoRhikSXTL84KqBBKOauxmPO+yaDNJ
	MQweCTWxE+TYptUJO9yxDuU=
X-Google-Smtp-Source: AGHT+IGyxy+wtwZZ1G/OOSOEWoM/tjkuTJxBBJDZfOQSTxFaVPEo1+OgEX92tW0fbfPM0YWRIhUIdg==
X-Received: by 2002:a05:600c:4ca7:b0:40b:5e56:7b66 with SMTP id g39-20020a05600c4ca700b0040b5e567b66mr2288377wmp.175.1702315189743;
        Mon, 11 Dec 2023 09:19:49 -0800 (PST)
Received: from Ansuel-xps. (93-34-89-13.ip49.fastwebnet.it. [93.34.89.13])
        by smtp.gmail.com with ESMTPSA id he10-20020a05600c540a00b0040b3829eb50sm13465507wmb.20.2023.12.11.09.19.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 09:19:49 -0800 (PST)
Message-ID: <657744b5.050a0220.dfa0d.11a4@mx.google.com>
X-Google-Original-Message-ID: <ZXdEsqeyKetvyF15@Ansuel-xps.>
Date: Mon, 11 Dec 2023 18:19:46 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [net-next PATCH 1/2] dt-bindings: Document QCA808x PHYs
References: <20231209014828.28194-1-ansuelsmth@gmail.com>
 <242759d9-327d-4fde-b2a0-24566cf5bf25@lunn.ch>
 <65772f36.050a0220.678b6.ef84@mx.google.com>
 <74b7fc4f-88d2-41c0-8d98-6530f0fc2d70@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <74b7fc4f-88d2-41c0-8d98-6530f0fc2d70@lunn.ch>

On Mon, Dec 11, 2023 at 04:54:12PM +0100, Andrew Lunn wrote:
> > Mhhh with a generic property and LED core or phylib handling it... How
> > it would work applying that setting on PHY side?
> 
> Add a .led_set_polarity callback to the PHY driver structure?
> 
> Take a look at other LED drivers. Does anything similar already exist?
> It is unlikely that PHYs are the only sort of LED to have a polarity.
>

Interesting topic... With a quick grep on Documentation for polarity of
high, I can't find any use of it...

Also main problem is that the thing is controlled globally and not per
LED. (can be handled internally to the driver with some priv and check
magic)

Is it worth to impemement the additional API to control this? And I
guess a egenric binding should be added to ethernet-phy? Or should it be
added to LEDs?

-- 
	Ansuel

