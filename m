Return-Path: <devicetree+bounces-10663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 233707D2612
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 23:16:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CEFA5281433
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 21:16:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6991134DC;
	Sun, 22 Oct 2023 21:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02038101E3
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 21:16:01 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C08B3AF
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 14:16:00 -0700 (PDT)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-5a7af20c488so27324977b3.1
        for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 14:16:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698009360; x=1698614160;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J5qdRx9w38uewGOvQSjl82e1Dk017FDdnHXm5nRCJmo=;
        b=dmgDh4Ag28VV7g5z8va66aOA6spDTDpEiPrAB0JpKxzzjtf4KpmbypJKd6OcnkkzEH
         VLUrlzm82Dnf+08OKsKua3j2ZLFxLk5DMArkSD3zhP3W5QluyZruB/q1ZK7nWpbnijNG
         /CW9xdT1m2q0Ht2Z6/xx4d+4u0QQAR0b6JYop6v36LMwfxxIVm21zqL3PwjdiXFgJW8l
         PR0Ry35ikXZWa8GQKe/bnviy/7h38QMC7fHtYlny/X7VrbTc6+4VjyS3Ewn+rNgK76yo
         +GPGYpLsZpyD2kUWqlAXvqSY7a95sMccMhi08UoD4NwY1lo5fCuKuVYwU+wSgCxKL64g
         LCYw==
X-Gm-Message-State: AOJu0YwoKXOl0N3kNu/+GRcWkrYjKeTb2tc+vK1vfjn3vAKBcNhBJW48
	jyX4+n4qKIEXvdmqT9rwmg==
X-Google-Smtp-Source: AGHT+IG775QBgwR9QOMoIXL0rYJuGAkmxPRZF8VZib/r9lbl2oU5E35+LdMos2vE6VQGgCaAxG5OrA==
X-Received: by 2002:a05:690c:dcd:b0:5a7:bbd1:ec21 with SMTP id db13-20020a05690c0dcd00b005a7bbd1ec21mr10791826ywb.0.1698009359928;
        Sun, 22 Oct 2023 14:15:59 -0700 (PDT)
Received: from herring.priv ([2607:fb91:e6c1:8e5d:a109:ceb8:bec4:d970])
        by smtp.gmail.com with ESMTPSA id r9-20020a0de809000000b005845e6f9b50sm2571436ywe.113.2023.10.22.14.15.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Oct 2023 14:15:59 -0700 (PDT)
Received: (nullmailer pid 692476 invoked by uid 1000);
	Sun, 22 Oct 2023 21:15:57 -0000
Date: Sun, 22 Oct 2023 16:15:57 -0500
From: Rob Herring <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>, Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2] dt-bindings: watchdog: fsl,scu-wdt: Document imx8dl
Message-ID: <20231022211557.GA690569-robh@kernel.org>
References: <20231004182043.2309790-1-festevam@gmail.com>
 <CAOMZO5DsZgp2d5w6a+ZRWoLCkPAKCxE0KCcXhP5t=9yQckqgqg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAOMZO5DsZgp2d5w6a+ZRWoLCkPAKCxE0KCcXhP5t=9yQckqgqg@mail.gmail.com>

On Thu, Oct 19, 2023 at 11:54:34PM -0300, Fabio Estevam wrote:
> Hi Rob,
> 
> On Wed, Oct 4, 2023 at 3:21 PM Fabio Estevam <festevam@gmail.com> wrote:
> >
> > From: Fabio Estevam <festevam@denx.de>
> >
> > imx8dxl also contains the SCU watchdog block.
> >
> > Add an entry for 'fsl,imx8dxl-sc-wdt'.
> >
> > Cc: Wim Van Sebroeck <wim@linux-watchdog.org>
> > Cc: Guenter Roeck <linux@roeck-us.net>
> > Signed-off-by: Fabio Estevam <festevam@denx.de>
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > ---
> > Changes since v1:
> > - Sent it as a standalone patch to the DT folks.
> > - Collected Conor's ack.
> 
> Can this go through your tree?

I'm waiting to see if Guenter picks it up, but will if he doesn't.

Rob

