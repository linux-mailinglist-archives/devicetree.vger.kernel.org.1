Return-Path: <devicetree+bounces-13956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DDF7E189B
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 03:28:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B710D1F21649
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 02:28:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 114B464C;
	Mon,  6 Nov 2023 02:28:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e1o5xTU2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BBE3630
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 02:28:09 +0000 (UTC)
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93A10FA
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 18:28:08 -0800 (PST)
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1cc28719cb0so7796965ad.0
        for <devicetree@vger.kernel.org>; Sun, 05 Nov 2023 18:28:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699237688; x=1699842488; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8ICXDgrUHS6vF/SNPSijdTNrJfbN2u8WpcsExfAzl5Y=;
        b=e1o5xTU2yVE18YW1DnaNuNCjKDFO5m3ZS5/vS9lcdpUjkj8FMblQEF6s+J9/7kq9q0
         SBd08vzClQdFYQjWsOxTmwiNWMXZCOMSJr+YvTmvgoPGbb//J/h5+QnQj/4qki2UDX+x
         j/FQM8AERkjkTlYmFA1JG96ixAC/YEQN9/RT3j7VRgb+k9+xKYQm/E1WfJ05BYzAyAhr
         2d6saErNaSxfx0lPKfE4LrRn6tIIkckuMvysYpfNhQskUBRDSwYnllT1DSz4KoynpZCo
         U88xr1xzzZLjRDBGGtRHnakcMrd+INeyJuG1PQi+dXS8yfeIyjcHU11jJ+39hDc+LA1Y
         Hauw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699237688; x=1699842488;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8ICXDgrUHS6vF/SNPSijdTNrJfbN2u8WpcsExfAzl5Y=;
        b=rHP8f2ElOp+hW56lP2rIkL/JM//X9pDYYEy3IgYhLaA9WlEzzeBTojKRXbFXTp2bQN
         GP8GERjnQahE+ZmyblJmLVa2+8f2Dc+csZ18vhn7LrPwMVoHuOK7zbbEvHGyS6mDlSSq
         JUKnB0/uYzjblUCCkKmyt11Qga64Fi1IMvukO60WajM0diDxMYIY0do7/w/jmFPFHfVL
         WJh/07WB/T71DNuEsKDjjHpyBs6uMFMUi8BaOmhzO6JgZ9UgpRVZtuXb+SjbFsA/6vuE
         fh3a36YMP8yHgDF7m3Smatj0wS4lvO1QfK41Gz3W3WlJmLEKYtgmcWZerc1AsT4pmGBn
         U3Aw==
X-Gm-Message-State: AOJu0YxEmNE4Qg4GTlaiR59JJO6SII0G2tLB7H0czVC5G0GcEpRlnxSA
	6CMdsG3OlBWQFQKwGc8frWOYsw==
X-Google-Smtp-Source: AGHT+IGKeESJ321fkysf/ehuZaNxdclt+G5XHCOjmYZoDKjWobUxbFP67O0IeMp/d/iW1j9dzcL4Nw==
X-Received: by 2002:a17:902:c649:b0:1cc:3202:dcca with SMTP id s9-20020a170902c64900b001cc3202dccamr23138767pls.2.1699237687807;
        Sun, 05 Nov 2023 18:28:07 -0800 (PST)
Received: from octopus ([2400:4050:c3e1:100:44eb:593c:2134:f5ea])
        by smtp.gmail.com with ESMTPSA id jc15-20020a17090325cf00b001cc0d1af177sm4735588plb.229.2023.11.05.18.28.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Nov 2023 18:28:07 -0800 (PST)
Date: Mon, 6 Nov 2023 11:28:03 +0900
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: Cristian Marussi <cristian.marussi@arm.com>,
	Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>,
	"sudeep.holla@arm.com" <sudeep.holla@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
Subject: Re: [RFC v5 3/5] firmware: arm_scmi: Add SCMI v3.2 pincontrol
 protocol basic support
Message-ID: <ZUhPMxpho1WR5b+8@octopus>
Mail-Followup-To: AKASHI Takahiro <takahiro.akashi@linaro.org>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>,
	"sudeep.holla@arm.com" <sudeep.holla@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
References: <cover.1698353854.git.oleksii_moisieiev@epam.com>
 <7300b8804396075d2ae565f46de51a980ce846e6.1698353854.git.oleksii_moisieiev@epam.com>
 <ZUNYkRtXUPeM4ppS@pluto>
 <ZUhOw0+HVcJYmvp6@octopus>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZUhOw0+HVcJYmvp6@octopus>

On Mon, Nov 06, 2023 at 11:26:11AM +0900, AKASHI Takahiro wrote:
> On Thu, Nov 02, 2023 at 08:06:41AM +0000, Cristian Marussi wrote:
> > On Fri, Oct 27, 2023 at 06:28:10AM +0000, Oleksii Moisieiev wrote:
> > > Add basic implementation of the SCMI v3.2 pincontrol protocol.
> > > 
> > > Signed-off-by: Oleksii Moisieiev <oleksii_moisieiev@epam.com>
> > > ---
> > 
> > Hi Oleksii,
> > 
> > the new get/set v3.2 implementation seems finer to me at first sight.
> > I'll try to test this next days and give you more feedback.
> 
> I don't think that this version addresses my comment yet:
> 
> https://lkml.iu.edu//hypermail/linux/kernel/2308.2/07483.html
> 
> I hope that it will be fixed in your *final* v5.

Oops, this comment should better go against patch#4/5.


> -Takahiro Akashi
> 
> > Thanks,
> > Cristian

