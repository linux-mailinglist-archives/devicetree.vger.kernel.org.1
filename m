Return-Path: <devicetree+bounces-2732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1D37AC482
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 20:47:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 43E7C1C208F5
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 18:46:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96A5621106;
	Sat, 23 Sep 2023 18:46:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4850633CE
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 18:46:55 +0000 (UTC)
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 631B2127
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 11:46:53 -0700 (PDT)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-59c0281d72dso48093717b3.0
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 11:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695494812; x=1696099612; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4lp4rqH/fgRa84q4bZqMK+Guj4Ezv52nETpih6zUjHw=;
        b=g4VrMnolXzD3zZ/0E3hR5BnbLkuZjMaD1irOZCK12IoTEQj0MIAzyve9urHYgKOa7n
         N6rkJud2y3ByiVfC92uNHkx8QxZ/1ElbYVldJd93515TU4Dl5kSl09Q9pwtpXhAoutj9
         OEbxFT3Eakp7MR/vXLhmASurDX8SRWDYHcBbA+KtC7k7LNkBj2IcyjUmBqBDezUHFqsi
         WnoGzEzGzq6Enn56jx7Flx33DHyEGP7YvqRnAONHz4WWD0UVUk8S/MoSeeb3L0o5RRQz
         7bfnHFnPwbhJKCknOLN8IyH1iB/Jk+rTM3dmQeszmjH93xBgFJ9zyb82S3aPttejwtWi
         PwjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695494812; x=1696099612;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4lp4rqH/fgRa84q4bZqMK+Guj4Ezv52nETpih6zUjHw=;
        b=mWubPKHsufdJkgElpZqiQ2rN1DfW01q49IBiY2JCZMJ8aabLAVjZYuBe9AQc/rX6oG
         jn6ATyZUA3powwwvnlN+hf7L407K/UeG6r6kjc8LwSX5iwIFhbey8VpoX8QdUhv0+EwM
         8aOJrQhfeAFqTuzlwe6yVdvWGKLlOfae0Mfnl314GXOBx/HEwdbzgxZuQFBYzBODai6V
         UF6/hxqvEZLnNnz2VU4GWk+J5IB8T9xFrp6z8TIKjNz1iH65P2tty1hlaES1iqs2jv08
         5IsZtfI37KgSh7dEtfq81cWCl1qkAOacNgsieFTCFGMRA8zqdRcrVRD3xc6fMbz/nMsG
         qvUg==
X-Gm-Message-State: AOJu0YzfKNbtSDuTbPTPhQa8e1wnkko7vGjNNrYWBnmz0exuS5vIboTT
	zFg6KZBQ9s0HeLAAiw+Zf/WJxUDHRTNv+pdedXWR4g==
X-Google-Smtp-Source: AGHT+IGqpLDQaSKpfRkGN4iCRx1ZP8Q1I74Bfq2VhneqyGobUNQ6P2RuDQc4LxTjxhw6/3msKE/hmUsc55+LyS5yHyU=
X-Received: by 2002:a05:690c:4483:b0:59f:5361:d18c with SMTP id
 gr3-20020a05690c448300b0059f5361d18cmr2072246ywb.41.1695494812564; Sat, 23
 Sep 2023 11:46:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230922115116.2748804-1-srichara@win-platform-upstream01.qualcomm.com>
 <20230922115116.2748804-4-srichara@win-platform-upstream01.qualcomm.com>
In-Reply-To: <20230922115116.2748804-4-srichara@win-platform-upstream01.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 23 Sep 2023 21:46:41 +0300
Message-ID: <CAA8EJprB2WgVGyDmeOCRrAiyZ4o0HtWmj+P8GTCyY6wNEKywSA@mail.gmail.com>
Subject: Re: [PATCH V3 3/4] thermal/drivers/tsens: Add support for IPQ5018 tsens
To: Sricharan R <srichara@win-platform-upstream01.qualcomm.com>
Cc: krzysztof.kozlowski@linaro.org, agross@kernel.org, andersson@kernel.org, 
	konrad.dybcio@linaro.org, srinivas.kandagatla@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	thara.gopinath@gmail.com, rafael@kernel.org, daniel.lezcano@linaro.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	quic_srichara@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, 22 Sept 2023 at 14:51, Sricharan R
<srichara@win-platform-upstream01.qualcomm.com> wrote:
>
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
>
> IPQ5018 has tsens IP V1.0, 4 sensors and 1 interrupt.
> The soc does not have a RPM, hence tsens has to be reset and
> enabled in the driver init. Adding the driver support for same.
>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> ---
>  [v3] Fixed Dmitry's comments for error checks in init_ipq5018
>
>  drivers/thermal/qcom/tsens-v1.c | 60 +++++++++++++++++++++++++++++++++
>  drivers/thermal/qcom/tsens.c    |  3 ++
>  drivers/thermal/qcom/tsens.h    |  2 +-
>  3 files changed, 64 insertions(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

