Return-Path: <devicetree+bounces-69097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 456E38CED10
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 01:58:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BDC4A1F218CE
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 23:58:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 829B215886C;
	Fri, 24 May 2024 23:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p+y8mWU8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0037838DD8
	for <devicetree@vger.kernel.org>; Fri, 24 May 2024 23:58:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716595088; cv=none; b=k7hMA1u2zUW7VAT2pzGrPfajbkLXYwPOgDnFRbANdgyGjfegP4CYSiq7a+8XX9oViskrr/tgXMDyQmhupjdlcx8MeFTfcCaY/e1noKRL6Rsh87fbJaWYnVe+n1PN9No1EfJQW92AcaVF4MKN8St6/WPq5EL59EhaKg8t8NIrFlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716595088; c=relaxed/simple;
	bh=5HWALiAhaCDCuhggJpKqNMVshgA5pqPi/lZqDpUtKEI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AWK2OzGShvysLXxise0S+FeFf+7WXguNh6QxysQ7tF2t4Q0bpN2S0Ynmg/WRa6JfbqiKGVaZ6Y5qehrPMEQ7uhzfx4ei8KpZKXQvJZI4Ocum65uScxT/53QQgdzZjTY0NFW5Dk0Hf657Ytes9THJXbcZKzIeh0KX2wjFerJlG0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p+y8mWU8; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-df4f05e5901so3527741276.0
        for <devicetree@vger.kernel.org>; Fri, 24 May 2024 16:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716595086; x=1717199886; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lYOz+vokpIWadzXcAS8j7jOefrZIjKXgl4pHBz5Rm8k=;
        b=p+y8mWU8AyG4rdpCWOemQz8S3S3hdJuKLR258P9hW1DoLEeFUCfXpkgFpDZ9WcqNTA
         DWWMJishvuyDURpsIU12CQfkhGuD5pPbsJUqJsfYk0M2d9wLynwquIJLc14QQvu+GQbJ
         MYWlDdaRixJ8egmkW9vhIaDBG0gU1dcKmjkNli0QP+OdYszyethxSF6WiyWt9q5Ics0n
         a7UB0fe2S74YgcNMpTAMfenn7BMH6cNjVvgFd0kU3jFQt0RjImo8kY43m117ZrcFPjnh
         KrPNujEHcqd7itPGahBDN00BhRvqWKFrpnnamFiHicouN2txLhDdsyDARyByIjqm3xK7
         8Mgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716595086; x=1717199886;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lYOz+vokpIWadzXcAS8j7jOefrZIjKXgl4pHBz5Rm8k=;
        b=Az0XnLVymbZ+Jn09kb9ge96sTpO9J7yfmceE2Z+E2c/DpO5x5aOQlSrN/h4I9lCX+Z
         TWylCxbJhgrmm/Vj+v9AljPso4RscL83bNyC3sYjuzunTxsY3FdATLi9rjEOcQeyy/cs
         YDGa67x+votI0qLepEGOo+m48f9wJ6t98PHgRwg53RHNYXy+UCGiqZ/mn2sDPd51KpNr
         GVLb2hJZDzRnFzEIR9Bqr+vYJKgcrVH1eGxTQ4mpzCkVW9zIw3GDcFPzzJ+/xnTHB5i5
         lgGRfjVaIOyo6MRbaiF7bOQqcwwykldFCtn65yc5hF0p1K6pmDHJbNXOL5KtXYqbB11y
         NRlA==
X-Forwarded-Encrypted: i=1; AJvYcCWbXWdUU0k0VSEzq/MosgmunLqpZpcqkmNkG/wieCgptHyBrsQ7bE7+JJz7wv6YLcpSw9DU/M4ONgDa5x0lY3LkhuBXPjwS7J6oXA==
X-Gm-Message-State: AOJu0YzsXhsWqRz5Q8qC6J3o+Yid0GU4bcxl5DgwWa1ZShoKa9jb4Eyi
	CYHVROTgjxFTODJPB7PnzXlEhgSh/plT9ZhqbCax44+pbbSgg22T/pN7Fv96ENTCtNlHhiY7eFR
	Wz/q8VZTn4wZx7RahK4sFJttSoYoC9NkF7KVQDA==
X-Google-Smtp-Source: AGHT+IEJt5x0q5D99PlS3haolbnYsTanUnYvkV1dN3ctg99GZL50AMveqq1Zym0GFXzBiMKrzHfIb1NU2+LbiK/QvE0=
X-Received: by 2002:a25:8244:0:b0:df1:cd00:b176 with SMTP id
 3f1490d57ef6-df7721e223fmr3820423276.39.1716595086043; Fri, 24 May 2024
 16:58:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240525-topic-pmc8380_gpio-v2-0-2de50cb28ac1@linaro.org> <20240525-topic-pmc8380_gpio-v2-2-2de50cb28ac1@linaro.org>
In-Reply-To: <20240525-topic-pmc8380_gpio-v2-2-2de50cb28ac1@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 25 May 2024 02:57:55 +0300
Message-ID: <CAA8EJpqm3O-2ErRRuPpc-g1o9uPkWz2vBxXtVBUhHb2k_X6jww@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] pinctrl: qcom: spmi: Add PMC8380
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 25 May 2024 at 02:38, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> PMC8380 is a new chip, featuring 10 GPIOs. Describe it.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  drivers/pinctrl/qcom/pinctrl-spmi-gpio.c | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

