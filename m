Return-Path: <devicetree+bounces-25059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E897812403
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 01:43:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 50B251C20490
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 00:43:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC5D438E;
	Thu, 14 Dec 2023 00:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=jms.id.au header.i=@jms.id.au header.b="Hi8bRobk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31F37E0;
	Wed, 13 Dec 2023 16:43:44 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-a22deb95d21so369148366b.3;
        Wed, 13 Dec 2023 16:43:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google; t=1702514622; x=1703119422; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RLpB5md1tEE7IuK+B3sruEQW7P8lycC54rVRstoSoLw=;
        b=Hi8bRobkZd38MwIzsqox+5Fcdlmia96Suk8wc1VIHEWj9K2IBhKp0X34q5X7N+Blbw
         AXPXhYgY0MYjl9zgSGcv40HYSnMPMuJ7wr4AJRlbItQNTGcwdBN+c9AuOGoTWRj4+/Rw
         aTHm1flvFdLq+wpQfjPISiltbvpR1eLba8FYI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702514622; x=1703119422;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RLpB5md1tEE7IuK+B3sruEQW7P8lycC54rVRstoSoLw=;
        b=c4HspHSEBFpSJ3phKJCF+4B8m0K7qjzJqEIGSrBBe/YgPDMI2Va6H/aCwqRnXpPN8L
         1zgLXPvefR5OpA5tawoduxxZrBYGyMVzxTYtOgA2Llgg9p7XMFKYPM74ajNfds3XTZAn
         YrzDQsn6GDIceZk6XOw/c0mU5e1hbEdPhfX2VdiDw1VeLxJInGVBcyILiqcfnLFqiqtW
         gHFxrTys936d9Xc0MhSNMSTHclwAvGWbgHn9O2SZn4qAi3CbMMVkfAJoAYaeC4WCYupj
         v66jc4QtUdcV/sv4XMWg2eqa9pDdigAlAl3lbst0aQmdaE1v9v5A2TFwA2U/nhrxGIRR
         /+oA==
X-Gm-Message-State: AOJu0YxtfUZbW1e44d6dQxjUSyWcXa5/tHV6MK7y+x+3XodmlitHpMIf
	pdapfqDqpy7cmROvBpuAcnFBUCLMv2FDyhDVVBw=
X-Google-Smtp-Source: AGHT+IFa9Zm+LfMZFPUZavztuLcHzT2Ycn1Vj82hIrX/b4xCeE4xJgbmsr48xQ/aHgS2Y86FFkv1fdkhWTwCmE5Nadc=
X-Received: by 2002:a17:906:1750:b0:a19:a19b:c746 with SMTP id
 d16-20020a170906175000b00a19a19bc746mr3703966eje.150.1702514622267; Wed, 13
 Dec 2023 16:43:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231212075200.983536-1-yangchen.openbmc@gmail.com>
In-Reply-To: <20231212075200.983536-1-yangchen.openbmc@gmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 14 Dec 2023 11:13:30 +1030
Message-ID: <CACPK8Xc7XjgBj-SQH45=omjEXd-BpXgcQDp6s8UkJ8QsbnYSPg@mail.gmail.com>
Subject: Re: [PATCH 00/11] Modify DTS of META Minerva CMM BMC(AST2600)
To: Yang Chen <yangchen.openbmc@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	andrew@codeconstruct.com.au, patrick@stwcx.xyz, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, Jerry.Lin@quantatw.com, EasonChen1@quantatw.com, 
	Leslie.Tong@quantatw.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 12 Dec 2023 at 18:24, Yang Chen <yangchen.openbmc@gmail.com> wrote:
>
> This series modifies the DTS of the Minerva CMM which is the board on the
> META platform that uses the ASPEED SoC(AST2600).

Looks good. I've merged this for submission in v6.8.

Reviewed-by: Joel Stanley <joel@jms.id.au>

