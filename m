Return-Path: <devicetree+bounces-29349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7EC822652
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 02:07:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0DC2A1C21A88
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 01:07:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8FC481C;
	Wed,  3 Jan 2024 01:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qf/Al1vR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6579AA38
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-6dc035ee106so3602746a34.3
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 17:07:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704244052; x=1704848852; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MLUaZqAmH0PbXwN8L6W3NTkw4zv2k9fgIgmV6JpxLJE=;
        b=Qf/Al1vRyoiO0JC/pdVrWSZ7R4I1/RS7DMx9B6bT+bMsuKD6yEcA0Tk0M+FEKC4Ary
         yNHytYnVW12WmOdZnNSGJJl4lC7Jt4kSfJNA6Sqt2Ju9SDeRxyHwIQpQZL7X947VZT4O
         D2uKcC6YPQsHXxZzMevmp+mBf2WNdVjfK+iMHY0ZuQ3Ky+hf4D/4uvunB35vFdKuBBsU
         VaDWYCYbjRj4cjfE3EzMmqkwODP3XQhDwFmMBD4vKj35oY9/YQBohaUHMvm46qaEGA7t
         +GDl61WXP41JrUc9rXexQuDzaSse6885DWzvTJdNRcQ2n3hudhRJNihmrbdwLplCvSxp
         caBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704244052; x=1704848852;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MLUaZqAmH0PbXwN8L6W3NTkw4zv2k9fgIgmV6JpxLJE=;
        b=VAI1Wkv0q2Jd/ASKRihX3ILIHNp211i7uQ+KTi0+Dpwz6ybSD9ZOYX8uendXNKbkLV
         F0X7Ty4EUybSa2f1s3oSaYPD9bTZVe8Gbcouur8dsgGtwlb2cX1ZoFZSUWL4Wc5JIYy9
         WNZhiCsPVOBHcugJeiDIsDw/JKAuOBA9t+JpIz90sDjB3jXfxPUph2NSjXTdYUS5oo90
         TgsppfLZTH68cvC/mNgJk2CbEUmJ15aJoVjvqVeo0KZ7ErFbD5hzGMOcYAwlFxX//w4y
         gvomIBZAQ0CzOm5Wg2Iv2aNDyZWD54D5rgsnq+X8XJtGXgaoXmE26nD/c5AdjjVBNVGN
         KxJw==
X-Gm-Message-State: AOJu0Yw7+aMlMh9u2PBaZw06h0osTJgpWEAwttXx6tRe+OQQwEu9pmof
	dwk0MBC/0TMTstcERKtxO8pAXqRYQVZM3FAtKZ8poTNAIwkSZg==
X-Google-Smtp-Source: AGHT+IGcrNg+LJPOn7zrsml4hvDDeGlluQBsFuCyycHjTzf3I+3UxYPMnLvXx116vmDlSxEfArGrGfj28Pd5veWibNk=
X-Received: by 2002:a05:6871:724:b0:204:1aee:7807 with SMTP id
 f36-20020a056871072400b002041aee7807mr13980212oap.15.1704244052510; Tue, 02
 Jan 2024 17:07:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240102-topic-gpu_cooling-v1-0-fda30c57e353@linaro.org> <20240102-topic-gpu_cooling-v1-8-fda30c57e353@linaro.org>
In-Reply-To: <20240102-topic-gpu_cooling-v1-8-fda30c57e353@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 3 Jan 2024 03:07:21 +0200
Message-ID: <CAA8EJpr0w3OqZPbgwiC=NbJdSOBHnWO87oqgjSa1eNfbG8ibAw@mail.gmail.com>
Subject: Re: [PATCH 08/12] arm64: dts: qcom: sm8250: Hook up GPU cooling device
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Jan 2024 at 15:37, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> In order to allow for throttling the GPU, hook up the cooling device
> to the respective thermal zones. Also, update the trip point label
> to be more telling, while at it.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 19 +++++++++++++++++--
>  1 file changed, 17 insertions(+), 2 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

