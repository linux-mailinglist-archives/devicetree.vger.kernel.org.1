Return-Path: <devicetree+bounces-11954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A07577D7255
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 19:33:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5BD0C281DB4
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 17:33:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19A0C30D0C;
	Wed, 25 Oct 2023 17:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="REsHipNJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 999221C683
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 17:33:09 +0000 (UTC)
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com [IPv6:2607:f8b0:4864:20::1131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27636183
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:33:07 -0700 (PDT)
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-5a7af20c488so58176797b3.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698255186; x=1698859986; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XvBhZBmkny2j95CjstPK5yQ0xRcuhGsDbkOImnFtxnI=;
        b=REsHipNJhxDpbqsKqK0/8UUA/k9MQLyoMEjWBZUsMgP4SioicgBhkMb744+z6EPlI7
         iNWrRFhakjskfPtGpKrmXK8UvFO+Xg6c7cyc9Db3y6B1jzSUMyQgP9aHIqoa3jyJr8xV
         CGRMIUu+nsBINcescIxn7hw0M83Kz991NBf12xh6YjdRBQAmuxFGg90YBhQmIT5yKZtz
         9XNqjz4Jzx7P2B+7CkRvms60wnUc9XotdLrIBmFL1M3zoQbWJk3lvVjgyBifj3Deglw6
         bFmGpgITPeCXmvLfrf3Y5i7WTtZ1J8moFL9oxsEVluilnmZHyRHnXbLn7a1/B75YiDmS
         GGEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698255186; x=1698859986;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XvBhZBmkny2j95CjstPK5yQ0xRcuhGsDbkOImnFtxnI=;
        b=HcC4+PuXcjp+t4MZw5X6gMgCltw9LI2eGNkVRy4XjhjIk+4Gtqa08rJsLrUJEfl+Hh
         jpGTQS0Slob6hFTQ6Mf2+BiWEkO99VJLWHMyoMK+exZbZLTeywb3U+gYBtoQw6o5gpeK
         9wbY+BAafARkEMD5PmjAIrJT2tsddaehZNfJrSD/YEPjukdMVX15yL1I7ZmQMnnS/ulV
         Tjcg8Sfx4/R47Hu8KQQXtjsNpYCuyvPDRzAnkqjWWiC0Ly/jtHhQShfOyK5aIedO4MpX
         NVM4APWko+zqp0NNdVATV4fEMul8OOCrV6a3v5vBb4vRnpDymCcSy2E6ue1XrAmer11J
         pz+g==
X-Gm-Message-State: AOJu0YwpnxXstdev4rvoisf7YP/LTF7b1zsJlE9Cn1pAzeJzeuQYFuJv
	U7YOUL0ve9Del4r2o9tflzbUPLM7Zxn2lqyPOnwLGQ==
X-Google-Smtp-Source: AGHT+IE8BcBJeQtpMzL82hUdFUv1oZgIuxkummUuwntiC5NFdCUbZrOx510qgUYWkp+wlXZSk33+4m9GJfsMdsOpQog=
X-Received: by 2002:a0d:ddc7:0:b0:59b:bed9:9a3a with SMTP id
 g190-20020a0dddc7000000b0059bbed99a3amr16384399ywe.41.1698255186343; Wed, 25
 Oct 2023 10:33:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231025135943.13854-1-quic_sibis@quicinc.com> <20231025135943.13854-4-quic_sibis@quicinc.com>
In-Reply-To: <20231025135943.13854-4-quic_sibis@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 25 Oct 2023 20:32:55 +0300
Message-ID: <CAA8EJppyoRfFat=hrRRqBDyHK9_y9VdyYm3AY+JAvotBx-RFzw@mail.gmail.com>
Subject: Re: [PATCH 3/3] pmdomain: qcom: rpmhpd: Add SC8380XP power domains
To: Sibi Sankar <quic_sibis@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, ulf.hansson@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, agross@kernel.org, 
	conor+dt@kernel.org, quic_rjendra@quicinc.com, abel.vesa@linaro.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	quic_tsoni@quicinc.com, neil.armstrong@linaro.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 25 Oct 2023 at 17:01, Sibi Sankar <quic_sibis@quicinc.com> wrote:
>
> From: Abel Vesa <abel.vesa@linaro.org>
>
> Add the power domains exposed by RPMH in the Qualcomm SC8380XP platform.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> Co-developed-by: Sibi Sankar <quic_sibis@quicinc.com>
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/pmdomain/qcom/rpmhpd.c | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)

-- 
With best wishes
Dmitry

