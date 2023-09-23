Return-Path: <devicetree+bounces-2738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EBED97AC4B8
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 21:14:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 9D1ED2821F1
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 19:14:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FA432111E;
	Sat, 23 Sep 2023 19:14:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E260733CE
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 19:14:40 +0000 (UTC)
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8707194
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 12:14:38 -0700 (PDT)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-59bf1dde73fso49877107b3.3
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 12:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695496478; x=1696101278; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6VhOCWF+ynd7copH4f2yVtc2i5yJp0tKjP7DBJWHccA=;
        b=XxDmdafF5SqkVHtM6DYnVQfXJilGRFyMvcBgZrPmAnkYzBqZuyNew+I5oPaaN/rWfL
         i/Mm/+B9nSXR//u0GhkATeJdDVG4zZzLf+YKOsfBZHnoEK0Hfb82dIMdOvaCFab0XPbU
         DNlHxH5XHoYejfO+bBjWqGJgk5YqE5HZ/tGW1gHD4lynwwT8EOM9tKxw24ZVo6Q6n183
         tGm90SJRDJdDYTPxwpjLVDF7d8q2yMVFc+spf9/ZmqRRuy0Dom1NtWWJJB3sH0tuwiOn
         lE3bHNBYgaAC/UuTCywvurL5ye4VNMQDqrXQBLkkOPRqDIWzDzDnBtw2BzpY3koVttDV
         x/pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695496478; x=1696101278;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6VhOCWF+ynd7copH4f2yVtc2i5yJp0tKjP7DBJWHccA=;
        b=kiZ0HTCylXQ1XVF37OotwsOm0TVkFJW1Mw5zZLLMkbnKkhtLDlkwqKp6kzwfiVC3SF
         nbaqCQs/pD9nowXsHUnaoRXOkSlMTnaxQdUXeWwYgow+nR9cMhYBMHuu8SpYRJNyGjn6
         4Vy4Sm8OKPAj2pM4BekVehmNcjnsvuLF9a4IsGcv1MjeQrc1vkL0CZPhmtcIr5WjkKwk
         Oh41aEJBpl0HtRAOXr0Xns6PHcq+aBFFH0Gdqu5VP2eG7GFxYQ7LORYEAl1+IYt+oHQ0
         wI9ij2t8WuzkUt3YzA/EZyQKmJhCN5YzA6LCisBjxvOLT3/k+VSv4CdpQJKsRrPXSeEk
         /KAg==
X-Gm-Message-State: AOJu0Yx+jue04zSaQpVnhCOLq6lXmRqMgzKhV9yX2hKYDZ16MS0/f4No
	PKhAa2WrjHZwqommLmhKhXE2C6+0iKM6DwaWd1G98g==
X-Google-Smtp-Source: AGHT+IEXrA6dbcuQVgJj6jiFnJaGVpMmWaaRY9SNum7koxm9FFIHsiBiEqOprk+GF7Q5FQ/v6O7buksQm9OGfKYzgUY=
X-Received: by 2002:a05:690c:2b0a:b0:59f:535b:52a8 with SMTP id
 em10-20020a05690c2b0a00b0059f535b52a8mr1489573ywb.23.1695496477936; Sat, 23
 Sep 2023 12:14:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230922084303.4164046-1-quic_gokulsri@quicinc.com> <20230922084303.4164046-4-quic_gokulsri@quicinc.com>
In-Reply-To: <20230922084303.4164046-4-quic_gokulsri@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 23 Sep 2023 22:14:27 +0300
Message-ID: <CAA8EJppX==xq8Z9MCS4ZwveV0-WKbvEC3Wv1NzGvXXV=2q5DzQ@mail.gmail.com>
Subject: Re: [PATCH V2 3/3] arm64: dts: qcom: ipq5018: enable the CPUFreq support
To: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, jassisinghbrar@gmail.com, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_varada@quicinc.com, quic_srichara@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, 22 Sept 2023 at 11:44, Gokul Sriram Palanisamy
<quic_gokulsri@quicinc.com> wrote:
>
> Add the APCS, A53 PLL, cpu-opp-table nodes to set
> the CPU frequency at 800MHz (idle) or 1.008GHz.
>
> Co-developed-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi | 40 +++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
>


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

