Return-Path: <devicetree+bounces-19361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DCC7FA8E6
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 19:22:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D99E2815AD
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 18:22:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 848243D39A;
	Mon, 27 Nov 2023 18:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B162D92
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 10:22:40 -0800 (PST)
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-6d7f67a99c7so1985336a34.0
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 10:22:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701109360; x=1701714160;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MBQp87nN1ZXYCV+ZiFDJ9d6k54ZH5acCAfj3YDGmhyY=;
        b=FtL854lIJqeAR42J6Z94aA2tzMSjT1uNxmwgQ4U+DuyM6yy7+FaeMN+jL1kq7CqUnD
         zLmd1P7Z9sOQyvxiFkbkjoSYayIuyK2T/ST543fRiP18TjK4TTSorQjV1SO0sq4uC08u
         cVheMQWnrl6PxSODXyJKvK7rCZy4hkdjhS1BRJvizUCIWXfF33minYiG8+HYr8UxikJl
         sDuj2k3GBgwGwFaFNLZ0edHewLyQggknKdGql7NIIULbqYisiUw4qeWqexO8h6GajhSc
         vdpaRhKR14aQXILUA+Y5pc3ni8BOV+15/o8UQBM8tI5fhWpTyT4k/WTSmsl34K4MF143
         ocQg==
X-Gm-Message-State: AOJu0YxNKy3wkLMH48yxiB99nh9KZvnY3RVqMqYr4AS0IOEpNy58b6Lf
	cC9PD1ZcaWn1SskQKdlxqg==
X-Google-Smtp-Source: AGHT+IHXYT4+k7zpz4AEDVZdLbxXvHpVrBEm971Wf5iGDpvFIwdb5owQef5DYxzrjq7ZVEzIgLtqDw==
X-Received: by 2002:a9d:5541:0:b0:6bd:335e:1eda with SMTP id h1-20020a9d5541000000b006bd335e1edamr8177093oti.11.1701109359977;
        Mon, 27 Nov 2023 10:22:39 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id t2-20020a4aadc2000000b00586c4324f5dsm1562721oon.35.2023.11.27.10.22.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 10:22:39 -0800 (PST)
Received: (nullmailer pid 2128060 invoked by uid 1000);
	Mon, 27 Nov 2023 18:22:38 -0000
Date: Mon, 27 Nov 2023 12:22:38 -0600
From: Rob Herring <robh@kernel.org>
To: Pavel =?iso-8859-1?Q?L=F6bl?= <pavel@loebl.cz>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: arm: sunxi: Add Banana Pi P2 Zero v1.1
Message-ID: <20231127182238.GA2068488-robh@kernel.org>
References: <20231118111418.979681-1-pavel@loebl.cz>
 <20231118111418.979681-2-pavel@loebl.cz>
 <d87bb48b-e04a-4ee4-86eb-d1533328cc74@kernel.org>
 <20231120231017.614b9d61@alena.lan>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231120231017.614b9d61@alena.lan>

On Mon, Nov 20, 2023 at 11:10:17PM +0100, Pavel Löbl wrote:
> On Mon, 20 Nov 2023 10:16:55 +0100
> Krzysztof Kozlowski <krzk@kernel.org> wrote:
> 
> > On 18/11/2023 12:14, Pavel Löbl wrote:
> > > Document binding for Banana Pi P2 Zero v1.1.
> > > 
> > > Signed-off-by: Pavel Löbl <pavel@loebl.cz>
> > > ---
> > >  Documentation/devicetree/bindings/arm/sunxi.yaml | 6 ++++++  
> > 
> > Please use scripts/get_maintainers.pl to get a list of necessary
> > people and lists to CC (and consider --no-git-fallback argument). It
> > might happen, that command when run on an older kernel, gives you
> > outdated entries. Therefore please be sure you base your patches on
> > recent Linux kernel.
> That's what I did using next-20231117 kernel source, without
> --no-git-fallback argument though. The output seemed a bit long so I
> have not included every line in CC. So you are saying I should address
> more people next time?

You should use --no-git-fallback.

> Also it's not clear to me what should go to Cc: and what should go to
> To: when submitting. Looking at the list there does not seem to be a
> rule.

As Krzysztof said, doesn't matter, but I put people in To and lists in 
Cc. Setting up tocmd/cccmd with --nol and --nom options will do that 
automatically. Or you could put who should apply the patch in To 
(allwinner maintainers) and everyone else in Cc. But that takes manual 
work, so I don't do that.

Rob

