Return-Path: <devicetree+bounces-11699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 632727D65CC
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:51:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 954FC1C20A81
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:51:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83FA41E511;
	Wed, 25 Oct 2023 08:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jjegFjEb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCAEE1172D
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:51:27 +0000 (UTC)
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A37D0116
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:51:26 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-5a86b6391e9so54053867b3.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698223886; x=1698828686; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tTFfq4D9p5xN0IQqJ2OvWJXv3Kfq9VWLuEHrieoLABs=;
        b=jjegFjEbrKowb9lpBmWFugprJkKVtP0R5e1BuFibXqhdbIk6kBfmB3/Af7+KJYMiGn
         IiOJAb7nbBFlN81mydQadJZjpaY+8mOQJ8JSJ8YWk8Hhzz8zdTQuolZy62PupVvhxPND
         M6AnvsWm3guF257y+DLL4UqWyRZjJjsHQmkb83TSc/fN/H6qKH/tXNpVcIImJuR7nj9W
         faV+IdUwbzkg/lNwN+a0O8a2tY5tkJf3HwoH1jVwwpGo0x+KutSJS0PA73/ihflfkinz
         C+ZmP9jARSPmhpwj1o7Hbku58WQRZxv7+2UoJGR0Q6m3b8pimo0ifYLY9FYiH3SSM+4M
         9Bdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698223886; x=1698828686;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tTFfq4D9p5xN0IQqJ2OvWJXv3Kfq9VWLuEHrieoLABs=;
        b=ORfmg7aldVcrHblEnnMHbFBnqiaHCvbl+06Lyoko67ExiVEWJp39dhjlg1Jn/uqQDS
         yaDr3jBZwiWYZmKrmN6UEOUEVelqQ4jqf/W4TlttnWPJ5CBxRz+sWOPvPQpVjE+6RX9T
         yzyaorpfIYg1NaE7MoUzAU26Eg+QsBOEanp+FHuHgFWhk/QqdZ4D4cgbtkng5C1g7iT7
         mF72oJinz9Hd9s3PoJb6T5s+y9LWnUJVXiNKx6sozwCY8+Zwfu5F1bFy5PcgEF4RGs5P
         wliUKgzMjrbrJ5Zm4mBeDQNezBhtvxAq+B3JnGgVBAVFg/0n9c0MFAvdzAjmsfSvmUHw
         pL6A==
X-Gm-Message-State: AOJu0YyxIkmLhOE+ROazA5mRTcsAn3OuGJnlgRfhJ8K3Mhwq9MhrN+jI
	7s3Z7HaCpda0ckEVcn6CrJGOs1GqyPB/6qbfj8ecVA==
X-Google-Smtp-Source: AGHT+IHhYmxcr42okUrf55P1D8yD7J3sM3R0RNmqCuwGbURggZDxK1dFQSu9KyEiIPEnyMPodJcNcgXhfKnr6kfMiKM=
X-Received: by 2002:a5b:94d:0:b0:d78:6f1:41b4 with SMTP id x13-20020a5b094d000000b00d7806f141b4mr13771717ybq.30.1698223885881;
 Wed, 25 Oct 2023 01:51:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231025-topic-sm8650-upstream-remoteproc-v1-0-a8d20e4ce18c@linaro.org>
 <20231025-topic-sm8650-upstream-remoteproc-v1-3-a8d20e4ce18c@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-remoteproc-v1-3-a8d20e4ce18c@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 25 Oct 2023 11:51:14 +0300
Message-ID: <CAA8EJprOkvBjx=QunK6r8WLhCzaLFY5-OXP0C1D4hwH8hy4wvQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] remoteproc: qcom: pas: Add SM8650 remoteproc support
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Mathieu Poirier <mathieu.poirier@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 25 Oct 2023 at 10:43, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Add DSP Peripheral Authentication Service support for the SM8650 platform.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/remoteproc/qcom_q6v5_pas.c | 50 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 50 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

