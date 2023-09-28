Return-Path: <devicetree+bounces-4122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C01BF7B1459
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 09:14:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 12EF0B20AD7
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 07:14:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C8FE2E648;
	Thu, 28 Sep 2023 07:14:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A991173F
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 07:14:03 +0000 (UTC)
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C1F4CD6
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 00:14:01 -0700 (PDT)
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-578d0d94986so9083951a12.2
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 00:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695885240; x=1696490040; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VtAQFshoixr4PLMOGpQ5x3E+4JvwXvrJVP5lWSHmXcs=;
        b=GI3+uX4Fm/RDCPJZ2JY+NH3noeb5l18RbVYWJcjXV2Mercx3uMRgOH5JKxzvGLElV8
         e5ibjR3IE05dHJcokZ2YZDrx75MYFyAltNX08b7rbKuFwlD4k8mGEf9HEmPvA5cdyhPU
         7UKFTcs5N+HJe8isGPwlpAmZury+YPBf35zw+9ZA7NA6GyqUV6y+CA9VDL2rMflqNRGB
         4pjrHJ40M5qmBTjjJdKZFdMcofWVSz9jcI2OT31vxvB6hkbW02Yb+nDp5hLvUOLWUJlO
         +4URWUN2fAwf7vOW+0mUMMygHnwBWRtcuCcUuROVntXrQIOqUuyfsew2pN5NhvSPUlKK
         tY5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695885240; x=1696490040;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VtAQFshoixr4PLMOGpQ5x3E+4JvwXvrJVP5lWSHmXcs=;
        b=GadHGn6BcvA3pNhJyG15NhLTlLb0YqKPfFGgB8zAkN4VRAzeXlx6ae10LYN0v7rpBa
         51BVk+Vrq64xKZrrNuNY5FLB7ujA0s7YMoQdGEjbJPfDrCenykHVQkyCK0ES3zJl+0Wq
         6OJGgihYpHTDWfTykXfrygRW9aBQ6XKEbA8zxxMrQMoYV1ofyjwuFHRxhO/3qNRbvxDs
         yc8xx602KMW8ptx26R9iJhwNhDzh3CicNaBGWSGjKw65jb+l79jzJ56mnq6T40V9/bwL
         Ho6BTIwRUdtHIdwPwWYXJVNl6evilSD5UFkmZJHv/Oy9ZEG0ff0YgGnfF45tHO9XLieG
         fTSA==
X-Gm-Message-State: AOJu0Yz2gYo9RTKL7EOZfb2NNqDpsC2hmKt+VN2JnjkOpfWpCG1TTRR3
	9imUeAtAaKLrL2h9P0n7Q2X9ow==
X-Google-Smtp-Source: AGHT+IF+ebHc4PI7RDBAqlxE+M8CNQuYhiPegz6Bi2F6ZoLnTZtxR5vgvmHJEfj4gXpYMG0OC++96g==
X-Received: by 2002:a05:6a20:914f:b0:160:83e1:712f with SMTP id x15-20020a056a20914f00b0016083e1712fmr396378pzc.23.1695885240687;
        Thu, 28 Sep 2023 00:14:00 -0700 (PDT)
Received: from localhost ([122.172.81.92])
        by smtp.gmail.com with ESMTPSA id a12-20020a170902b58c00b001bc5dc0cd75sm3726200pls.180.2023.09.28.00.13.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 00:14:00 -0700 (PDT)
Date: Thu, 28 Sep 2023 12:43:58 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: Bjorn Andersson <quic_bjorande@quicinc.com>,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
	Ilia Lin <ilia.lin@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>, linux-pm@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: opp: opp-v2-kryo-cpu: Allow opp-peak-kBps
Message-ID: <20230928071358.nwhy7lpsrawlrkf6@vireshk-i7>
References: <20230920-opp-kbps-binding-cleanup-v1-1-65b059bb4afc@quicinc.com>
 <169532249877.800354.7360993815442441183.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <169532249877.800354.7360993815442441183.robh@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 21-09-23, 13:55, Rob Herring wrote:
> 
> On Wed, 20 Sep 2023 16:03:57 -0700, Bjorn Andersson wrote:
> > Many of the users of operating-points-v2-kryo-cpu scales interconnect
> > bandwidth based on the selected opp. Extend the binding to allow the
> > opp-peak-kBps property, inherited from opp-v2-base.yaml, to be used to
> > specify the requested bandwidth.
> > 
> > Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> > ---
> >  Documentation/devicetree/bindings/opp/opp-v2-kryo-cpu.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> 
> Acked-by: Rob Herring <robh@kernel.org>

Applied. Thanks.

-- 
viresh

