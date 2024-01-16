Return-Path: <devicetree+bounces-32318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D01482EF3E
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 13:56:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 579F8B20C0D
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 12:56:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 565101BC35;
	Tue, 16 Jan 2024 12:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d6LCvaY4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE82B1BC36
	for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 12:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-5ebca94cf74so93474227b3.0
        for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 04:56:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705409782; x=1706014582; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qPvAzx+acIKZbhCoWwT8OSWs5JRbg5iaUFTYttPLGXE=;
        b=d6LCvaY4SkmWU5YNL682LM4UXvW0vCI32O9aQZyCkR5s/MdxuPDmBk9EZxdKkVlBhD
         vOn/lyr8093oyg6qreV6CxiL1JOx3L4jmic5JJOQNgY79ChnZcV4vb3j+f5MvGzPd3bg
         V82PLm8HjmLDQVnyAoUDbCLYnrHc6x7FfhRhQaMHmQUYS1tyDc0MUe/UnYcomqq714vG
         nDhIXww8XOC9Me6A/ssHT/qe0w48T3ms0Fczclu1jEAZkBm8QGYOYQI6yhw/9+4uza7q
         pBzOzUpLuFeXolNL9uR9yexuYqUWyLpIm+jC7Gu5ehd33DQSR0J9Dtu4/e33GlplbAXK
         6WKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705409782; x=1706014582;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qPvAzx+acIKZbhCoWwT8OSWs5JRbg5iaUFTYttPLGXE=;
        b=HnGkBQSJ9Jk4SPvOLyPu1Ot83DXYP10oEIF3FLgDqM0lxUzQqBDBTFFEm2Vi8pSujO
         Gqb29NDJZrclaU5P+2JihNHnbNJ/YpSAgBJYP7wnVb8kDoFKVSxn2aqkUiBNhV2Lqg0A
         x8TyCmxE7tG0Ilj9xUXd0m7cVDv5cgK6v8xxMdTR8PIzOFny5frFMj6eJaX8gCQyTIkm
         v2PwSOntcoAMC8cworDaP13Vz3hssdJbC5fbDWFZy3fnNa3dMg50gpgaWNQ3jqwNeSCM
         no+PQc+a0RUR1eg3XQGVRvum4zVNI8aCZjjP2RpN629WadrbOihR8HGfKBUJFOgPe2Kl
         /SgA==
X-Gm-Message-State: AOJu0YwExC8LLgPmUVuAwnh9hVRWFa2bp+Ggp3hSEvg3PAtRicnCMUUH
	SzcMN/+o9+YV48ZHXHS6bcDparg7AS7hAQfswszmpECEQG8gyA==
X-Google-Smtp-Source: AGHT+IGjE5GhtOos1P0amM4JQFu3eKw1tqmWIYnsnq3XqIvhlz9Y2t2oFk9YyYvvD1PT7sgkLdzkQK3eFQUVOOf4dFk=
X-Received: by 2002:a05:690c:b98:b0:5fc:d36f:b9a0 with SMTP id
 ck24-20020a05690c0b9800b005fcd36fb9a0mr2829729ywb.80.1705409781910; Tue, 16
 Jan 2024 04:56:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
 <20240113-pmi632-typec-v2-9-182d9aa0a5b3@linaro.org> <2e07f014-0884-49ca-babd-b89cc90a16b7@linaro.org>
In-Reply-To: <2e07f014-0884-49ca-babd-b89cc90a16b7@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 16 Jan 2024 14:56:11 +0200
Message-ID: <CAA8EJpqPqV_nHxxbo2Vzwcp__hvREjF3bhduGhM=7UpuOgBxTQ@mail.gmail.com>
Subject: Re: [PATCH v2 09/15] usb: typec: qcom-pmic-typec: add support for
 PMI632 PMIC
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 16 Jan 2024 at 14:32, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
>
>
> On 1/13/24 21:55, Dmitry Baryshkov wrote:
> > The PMI632 PMIC support Type-C port handling, but lacks USB
> > PowerDelivery support. The TCPM requires all callbacks to be provided
> > by the implementation. Implement a special, 'stub' Qcom PD PHY
> > implementation to enable the PMI632 support.
> >
> > Acked-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
>
> Still not a fan of stubby stubs :/

Me too. If there are better suggestions, I'll be pleased to implement
them. Greg, Heikki?

-- 
With best wishes
Dmitry

