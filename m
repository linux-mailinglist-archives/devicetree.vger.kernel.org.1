Return-Path: <devicetree+bounces-8735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B30827C9DAF
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 05:19:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D86E21C208DA
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 03:19:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3795C187C;
	Mon, 16 Oct 2023 03:19:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oWHer8Pn"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9874185C
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 03:19:30 +0000 (UTC)
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7214BDC
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 20:19:28 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-27d1b48e20dso2092177a91.0
        for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 20:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697426368; x=1698031168; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pDYopfK40jPubbfAMF0ZB98ABj9yrqlTAb4VRGo8NsM=;
        b=oWHer8PnXr3OD+mogE5TjrmVcequgErZ1BXNuaJelY3NJzWbfrVpL3PrxNQqG6VFnz
         2U3grcedmhp9DckNJP1yq2ITip+qP4JbkbJwxK41VZTOXSWIoGkPHzUUGXbBb4HGzDPP
         ehaM9h5HpnIMbYR/loIjA6kZ1YKeMPGJnLFA7zCqt1W4axXmzMLHAuW0e+UXKiMExM8y
         0hmnz5Clj3Il9Cxggn2WdKHY44YHmOixs2eMfn8OyXbEisGonDar7akdG0AEU56Fy3W/
         3rI4K7f0UMFslEx39tlmnZNF267FvPBxWE59C4NVDj43jQ/MRRpvSVcrzQ2wVm8QUTpk
         e4pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697426368; x=1698031168;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pDYopfK40jPubbfAMF0ZB98ABj9yrqlTAb4VRGo8NsM=;
        b=DgfYkHUrTgT5apq0cakKHLzu21s+73PCsQTtIN3nmRavtNOOxg35yPo9zVt66C60A8
         FK4MAXSrzRedN8Qc+abpz14KDtG/SNORVDpfnegIRnbFIa7TTzKUvplV5j24x1JBobx6
         oGZRQV6I4DPBh4kzlAZc8yMduQVBGjOo+GHA2fxNEVmzsXIYFDyAy+89RPCcHRWqWOTu
         /9sgNQS5LFMymorIh8re2ScqOQ+ybbyw3msn7eHeF1qwE9qH1HZcT95sCHCnkO/VJUlN
         cYZbs+72NwdkDLzWRdOrbhjEKydQBN266zqsLXAWAlbjlgKK9cYmFyaXgjuTzPn288S+
         Q/Bg==
X-Gm-Message-State: AOJu0YzknA86rEaJpxWstvpF3jMqLMowB45DEo0UVZKVVITQjSO8lYK5
	ELdIKkq3AszcJ+U1vRFqV4/56Q==
X-Google-Smtp-Source: AGHT+IGxPwpQoJbeM42Kx91ViLrPK676fLQ+CDc22svG4x4yLe446Rh+QuDeJMDtUYlcQYEaVooOGg==
X-Received: by 2002:a17:90b:4e8f:b0:27d:492e:137a with SMTP id sr15-20020a17090b4e8f00b0027d492e137amr4631222pjb.45.1697426367777;
        Sun, 15 Oct 2023 20:19:27 -0700 (PDT)
Received: from localhost ([122.172.80.14])
        by smtp.gmail.com with ESMTPSA id ge9-20020a17090b0e0900b0026b3a86b0d5sm3648903pjb.33.2023.10.15.20.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Oct 2023 20:19:26 -0700 (PDT)
Date: Mon, 16 Oct 2023 08:49:16 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
	andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	rafael@kernel.org, tglx@linutronix.de, maz@kernel.org,
	robimarko@gmail.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: Re: [PATCH v4 4/5] dt-bindings: cpufreq: cpufreq-qcom-hw: Add SDX75
 compatible
Message-ID: <20231016031916.mprtotrnkg5htyid@vireshk-i7>
References: <1686311438-24177-1-git-send-email-quic_rohiagar@quicinc.com>
 <1686311438-24177-5-git-send-email-quic_rohiagar@quicinc.com>
 <20230609155635.GF6847@thinkpad>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230609155635.GF6847@thinkpad>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 09-06-23, 21:26, Manivannan Sadhasivam wrote:
> On Fri, Jun 09, 2023 at 05:20:37PM +0530, Rohit Agarwal wrote:
> > Add compatible for EPSS CPUFREQ-HW on SDX75.
> > 
> > Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> 
> Acked-by: Manivannan Sadhasivam <mani@kernel.org>

Applied. Thanks.

-- 
viresh

