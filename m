Return-Path: <devicetree+bounces-13495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BD27DE50B
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 18:09:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EF5322812D6
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 17:09:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C020156C2;
	Wed,  1 Nov 2023 17:09:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BYieO0ay"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA33F154A0;
	Wed,  1 Nov 2023 17:09:17 +0000 (UTC)
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A0FAFD;
	Wed,  1 Nov 2023 10:09:16 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-32dbbf3c782so655123f8f.1;
        Wed, 01 Nov 2023 10:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698858555; x=1699463355; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=NZPlhUOCK7okoUQsTTKK0IjnNH7irIK2p/2Bnn8UEv8=;
        b=BYieO0ayvPpQK79RMTUl5/irFmvuDn5+X7nNP77HukgiiMMa2HvhqEWw0SLrpCZ2eU
         CKbH1jUsytrRG1V1WGf95aoRvRVm4ck9XSBl3CEsc0SmZ/IvCULrevlxWRY7zmYtY4Q4
         i8lZyzNhJb5VECMKZ1HuP2EQkz9zOByd1SAytGebyZxMBToFa5bXWA6uoQetWYZYiCro
         DjwxY6pMV56MnYtJiOS0qKtrDoxdoU4QsaMbUFpSG9eTDs8TRDSBRrZUJqtam9Hu2rE+
         Sbo3HWKfpcOwsZGLrA8eVG7AV99VbTkt5MCvLJmZ9+T8aobHZ1NTXAjyUmfJKQGoVcsd
         4V8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698858555; x=1699463355;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NZPlhUOCK7okoUQsTTKK0IjnNH7irIK2p/2Bnn8UEv8=;
        b=nfhuxYV00I9weWEuGA1Cs+1hQyRkbzuzt5VaAJebX+r1PLoK2+IiDpDTS8YeLPfa1A
         Ldeh/jEU6lKiTp2NqF2Kl/FC2agp+qqk1+HKj84Fd8uxSEkfGqriVoXPlJrtxiqreGzf
         JSiKAIta/LIm5W4VRlzoCscPQJ52PwFah+746d4tCs/kATNG47xeZVb1G+3T+OigMFbZ
         ZPHkXIJhI/KLLZtmMu5oj+8tFUs+jmI3B8ecdLAevWk5Lv7TzgWz+iIQ1jMCh+ZVaniB
         UWcMcF65vZ1ubYvbImKom5IsFB86sMyXxJ+aQstzYWhdkoGujvdu27xmdp+oIrQcqf56
         YtVw==
X-Gm-Message-State: AOJu0YxdZJQhreMnm3enA73JGJonEdzm9iBMmKg+z07fpYpY5eaCrwMI
	0FqB5OcC1eWroE330icXkGc=
X-Google-Smtp-Source: AGHT+IGtTXr/kTMLy/R9teg5mGqXuVKejKhn3hIAWp/szoiaU5Yfzj65YDHE6B6LPbHM6N+84o6s/A==
X-Received: by 2002:a05:6000:188f:b0:32f:75d2:bdba with SMTP id a15-20020a056000188f00b0032f75d2bdbamr3921739wri.6.1698858554682;
        Wed, 01 Nov 2023 10:09:14 -0700 (PDT)
Received: from Ansuel-xps. (93-34-89-13.ip49.fastwebnet.it. [93.34.89.13])
        by smtp.gmail.com with ESMTPSA id u16-20020a05600c19d000b0040644e699a0sm318436wmq.45.2023.11.01.10.08.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 10:08:57 -0700 (PDT)
Message-ID: <65428629.050a0220.b2431.1edc@mx.google.com>
X-Google-Original-Message-ID: <ZUKGCUNvAx3J0PZ4@Ansuel-xps.>
Date: Wed, 1 Nov 2023 18:08:25 +0100
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
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Robert Marko <robimarko@gmail.com>
Subject: Re: [net-next PATCH v2 1/2] net: phy: aquantia: add firmware load
 support
References: <20231101123608.11157-1-ansuelsmth@gmail.com>
 <4b536ad3-2112-4f28-90e4-586b5745be20@lunn.ch>
 <65427400.5d0a0220.41c58.0ded@mx.google.com>
 <34a0b76e-aa0e-4148-ba01-c3b4608f17f7@lunn.ch>
 <65427fd4.df0a0220.28d26.1955@mx.google.com>
 <c9dad91a-1de1-4c30-ab7f-414552702009@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c9dad91a-1de1-4c30-ab7f-414552702009@lunn.ch>

On Wed, Nov 01, 2023 at 05:54:50PM +0100, Andrew Lunn wrote:
> > There are plenty of firmware around so it can be checked by from what I
> > have, it looks like they are word aligned... Ok I will use the
> > get_unaligned and add a comment saying that we assume the iram and dram
> > section are always word aligned.
> 
> We probably want to know if there is firmware out there which is not
> word aligned. So i would probably do phydev_err() and return -EINVAL.
>

Do we have API to check this? Or I think I should just check the iram
and dram size and see if iram_size % sizeof(u32) is zero and return
error otherwise.

-- 
	Ansuel

