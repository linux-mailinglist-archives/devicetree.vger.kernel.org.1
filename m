Return-Path: <devicetree+bounces-13955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C75C77E1897
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 03:26:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 18C00B20B81
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 02:26:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 394B164F;
	Mon,  6 Nov 2023 02:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ByT/Wdw8"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA7C3630
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 02:26:18 +0000 (UTC)
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52A4BFB
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 18:26:17 -0800 (PST)
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-2800db61af7so1303649a91.0
        for <devicetree@vger.kernel.org>; Sun, 05 Nov 2023 18:26:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699237577; x=1699842377; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4+zjHfcFj8TqUlH84WYwsqc/8Y29BbFUby3pKruCyyo=;
        b=ByT/Wdw8UiJKQFJ8L2fbJIKApIh/PJcgdYD9GkG37Rx/iqC+uPXVB99IpXfzZdh9J3
         rdfbWs9zVKXZZrIhiayi/GMPJv0w8VqHLLSogiYELRaMY2MlnG3gZ4uhck89cfYP0h0F
         8VvruuSrW+YeMIJpXkHpCFFAtqaDJH0ue8lS0t7GfmiybLqKFql6riuXaZdEXVBx/lU0
         sbLO1p+1EPzXx/vcwJjT2zzKQN3QLou9Zbi7R5EAg2iNwcfaF6WJ7W42NtWg7Jocuhjo
         7gPAuuCQfCTnZ2XvbB+wkQkoC5bk2I+tWDwWIKpQjmv+cZ0VnAPD02wS01mcauyh5yVz
         zw4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699237577; x=1699842377;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4+zjHfcFj8TqUlH84WYwsqc/8Y29BbFUby3pKruCyyo=;
        b=GuK5OHI8/OarjCJbFL4L340/q62ixhKj+E9vCPuOZE7s0ql8/lNmM6Miykut3eaBOq
         ZslmtCYWA/Sqq4oSDCZKxvcye7ZBo8cJDVgnhZIfrD4zBhapYF07uckhY2c4PvOgXaZQ
         vaJzOdVUV4JdgMuwV5GgH/b8lzB2ziCcywtdvFhMuCK4+zsv/0FkW/b+lwrg9xWbmqTJ
         8wEriI4WKIjTx0VrqOaqyvfAzJ0ENlSrewpf5QCvFQkgVwZrk4GPpemyTWbz0MjDiOZ4
         E/5wHGwyh18FYFc2Jk9NEyzaOvuursnts8m33aKreYK1oVZ8/VPQ2xEHPMV+EhAUzEiD
         ySpA==
X-Gm-Message-State: AOJu0YwbwSY4tfWzg0o8PVudN5iZTVvAJRzVH2t3KL+v3uwt3p+aDURg
	BFu4j2Dl89clT/GJu0rclqKiFw==
X-Google-Smtp-Source: AGHT+IGXh2OTE0HtTz18uLoZnkxoWT3Ir57Kp8XxMeM0i7FeY+b193kXNd3C1M/38jDoZnuejggAsQ==
X-Received: by 2002:a17:90b:3781:b0:27d:15e3:3aa9 with SMTP id mz1-20020a17090b378100b0027d15e33aa9mr26980182pjb.3.1699237576750;
        Sun, 05 Nov 2023 18:26:16 -0800 (PST)
Received: from octopus ([2400:4050:c3e1:100:44eb:593c:2134:f5ea])
        by smtp.gmail.com with ESMTPSA id cq13-20020a17090af98d00b00280c285f878sm4447627pjb.55.2023.11.05.18.26.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Nov 2023 18:26:16 -0800 (PST)
Date: Mon, 6 Nov 2023 11:26:11 +0900
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: Cristian Marussi <cristian.marussi@arm.com>
Cc: Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>,
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
Message-ID: <ZUhOw0+HVcJYmvp6@octopus>
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
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZUNYkRtXUPeM4ppS@pluto>

On Thu, Nov 02, 2023 at 08:06:41AM +0000, Cristian Marussi wrote:
> On Fri, Oct 27, 2023 at 06:28:10AM +0000, Oleksii Moisieiev wrote:
> > Add basic implementation of the SCMI v3.2 pincontrol protocol.
> > 
> > Signed-off-by: Oleksii Moisieiev <oleksii_moisieiev@epam.com>
> > ---
> 
> Hi Oleksii,
> 
> the new get/set v3.2 implementation seems finer to me at first sight.
> I'll try to test this next days and give you more feedback.

I don't think that this version addresses my comment yet:

https://lkml.iu.edu//hypermail/linux/kernel/2308.2/07483.html

I hope that it will be fixed in your *final* v5.

-Takahiro Akashi

> Thanks,
> Cristian

