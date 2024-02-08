Return-Path: <devicetree+bounces-39583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8A384DA81
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 08:04:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C233C1F2311E
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 07:04:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCC5469306;
	Thu,  8 Feb 2024 07:04:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SDZqL43k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A119692F6
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 07:04:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707375883; cv=none; b=rFhSx28+D1qx8fq8N0pO4G0aDK9xeb40wpFnfu02qBeJ63d+bKN4ULqC3bUF0szVl1xdqsiQxXX3aCsyfYAk7MjWZ9zOhq6eUokMCCdOuWJl5MuGl7BVJnx2XA8X/pQEaQDbnAjnnlDUucbke7j/RyTexVy8XtS8zNalzfri3cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707375883; c=relaxed/simple;
	bh=/dUEdEbwNUhZ+aQMRIuPq7jmcRmW4Aamy65pmoNUbZs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=n76xu9MYlrsTqf1g1jFDW6p7uvF9ug+aEWaju95yAwlJWXKk+XjEfKq5xvT4svICONSjWmFXMwl7le76pZ2ZMiWCgONO3jJkOB6gZlDTXuKrMiGqbtY70K7NP4WyITwy4uqQU159Vl2DIE5WdlcU1SnnsVaoMLlyKHbdgzMWOUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SDZqL43k; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-60492003050so14445707b3.0
        for <devicetree@vger.kernel.org>; Wed, 07 Feb 2024 23:04:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707375880; x=1707980680; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bPKD4ep9YOuiWl27Ev0wM1SentiITExStFxFca8q9z0=;
        b=SDZqL43kVgJ+PxWF9Mda2W2Yd1uvg/vKaCsbeFbxPJwkjB3ytS0z0JQ0E4610GFd7l
         hy3/jqP9o4H3PnhwqHaP374DFecWQcxLG49SJeVpQeyzvzlv8VddGlJ68w4JOXMLWBAl
         8KAr11OknlkPcD3ep6WDPbC2cYGIEBat/w+hhIJgSAmY5M1GF5haZgX++JqhQuSwAB6g
         GbrldnkpdDI2spKwj86FvTEaRzFmCtQ+5p7C1x7LfzPe2sJGEuf1Y1PZWQCxsJbMq72+
         /g0Fvfvg/B+h39ooxo+zjby0b8DepuKWvhalZ9cP1J4DyoPLlpX5R0fwhIZTjXX8UDIz
         9o8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707375880; x=1707980680;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bPKD4ep9YOuiWl27Ev0wM1SentiITExStFxFca8q9z0=;
        b=Zmx3FBVWW1YjICGlEAZXXInUeoSyNdYRneWdU1fznEU8kzkWE0b2TedUf5gzfUTovX
         FJibSl0TrBj6qPZmzKlIn2pKM1vOv0haqeDp4pVNtH1Fy7CwYbm56MQQkgQfNcvFeYJv
         v8tYp5ohW/TDvhTwjJ8aRU53XwVXls/JgVLXrf9ltqo2a2HHN3J2roEIlRH8w9zM25aX
         2HgSt1Je1bO67KOgemk8gdtchiOW2AkoczAC67mn79TtZ3rgQktBwd1q5xVnfuwXnYUy
         YA9tATBZJcDJVm/I49vd7tWl/gQkDfh+zwgJnCqTJ8RNasEs5T4Z2YAX6OQ7wtAzFMHk
         +ZFw==
X-Forwarded-Encrypted: i=1; AJvYcCW/6DPNxi63oiy9ilw+kNGbDad/t1DBczVnIPcR/zUIY6bmOoQxiaCPVPpZ0pTOqoOZqudzedpoJfg2qKRGccNS5aWYWORKxYJK/w==
X-Gm-Message-State: AOJu0YwAqqCP3J3ngiI3CWPi3kUSUCMolBuf1FNyKqb60B1QeOxFXVx/
	ycYssFZAC9jzEMOklFvOM4gV6Zde/seN041tU7N28MaQlhsj+a2lYrJ8COX7l8YjtN3om47kHHP
	ohGogefBZsgPRAHFv17zpMlsZxLvsR2OivjumEg==
X-Google-Smtp-Source: AGHT+IEDJiJ1wGIF+76nIiNla0Ud//7eEwT66kMVmwpG2My01XV9c8/1LCp9EBebFzwqkXI0XWHEMhJrSHZvQ5TE0XE=
X-Received: by 2002:a0d:c6c7:0:b0:603:ed0f:af71 with SMTP id
 i190-20020a0dc6c7000000b00603ed0faf71mr7393692ywd.49.1707375880218; Wed, 07
 Feb 2024 23:04:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240208062836.19767-1-quic_tdas@quicinc.com> <20240208062836.19767-5-quic_tdas@quicinc.com>
In-Reply-To: <20240208062836.19767-5-quic_tdas@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 8 Feb 2024 09:04:29 +0200
Message-ID: <CAA8EJprwwR9pvnyH8j+5maEOnbry5gjT=hXYQc9ZXVUOegtTtQ@mail.gmail.com>
Subject: Re: [PATCH 4/5] clk: qcom: camcc-sc7280: Add parent dependency to all
 camera GDSCs
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 8 Feb 2024 at 08:29, Taniya Das <quic_tdas@quicinc.com> wrote:
>
> Camera titan top GDSC is a parent supply to all other camera GDSCs. Titan
> top GDSC is required to be enabled before enabling any other camera GDSCs
> and it should be disabled only after all other camera GDSCs are disabled.
> Ensure this behavior by marking titan top GDSC as parent of all other
> camera GDSCs.
>
> Fixes: 1daec8cfebc2 ("clk: qcom: camcc: Add camera clock controller driver for SC7280")
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/clk/qcom/camcc-sc7280.c | 5 +++++
>  1 file changed, 5 insertions(+)


-- 
With best wishes
Dmitry

