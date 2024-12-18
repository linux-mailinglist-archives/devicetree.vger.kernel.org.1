Return-Path: <devicetree+bounces-132252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E5C9F6450
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 12:09:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E6562188AC49
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 11:09:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5330A199FC9;
	Wed, 18 Dec 2024 11:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zWtI40d/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACF62192B94
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 11:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734520142; cv=none; b=u63IzAlP/yL4ewRCoNC4TIVezzMkpW2ZNnADm17/y5mP8G/0G+menDsEFY2w5UHJJndIY9gq2pqIJOoawURxK7zyEzZeLjsEVjnnv/KwSDQuEWLqgLFyNXnaOrBPZUGVhQ/JP5RjQvhOkpQz9FKPXooBBWwoXFARt5AFbYeFjBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734520142; c=relaxed/simple;
	bh=4/YYiE8DrfDSJmT0Dm8s6zXYaOz1sPe9FboUtUKQues=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cdQZFkYAKN60Jy+zaJ5tdw3sTe2QBbPRGKBtFMzQxxKdqgvOz+r7MT2VAmPXhajfaENu2HfqpuH4P57CLecYHNZd2eg7//x/sN+tDC7EQ5fPVHWCf7+t7G/LFUMJynBga+lD7DvRuyaTXyqtYOQzknIT07UQA3ny71NWeNSzObg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zWtI40d/; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3ebadbb14dcso2142246b6e.3
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 03:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734520140; x=1735124940; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4/YYiE8DrfDSJmT0Dm8s6zXYaOz1sPe9FboUtUKQues=;
        b=zWtI40d/znsrTkKctZQkBptvybgcJKhgOaglJ3kDQso/gUD1w3adq2fRcTVmL/pGV/
         u+o/xwmkuytMemRC66QYkpu8OyVvjgN4beMpd9AieNvMgXC3LnbbG/2pnDrcgICss4A7
         xDj3g1avPciKT88PzRsgkFiSn8HloCDqRv6/QTudzFLeUaQNwDMwIj8Fx8NQNiTp5yzU
         FP8KKr8PaazgZ50PCujolEiP+tyibI4znXYaI93nQYt8nX7T4dvbSuRUpnwzgO/jmMrV
         4b56/W48xG/I3sVrb9GrzcaKBNarrXNDW2Ikh36CetyKSkkNzAqcDSofe5V5zKA55B/A
         PfSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734520140; x=1735124940;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4/YYiE8DrfDSJmT0Dm8s6zXYaOz1sPe9FboUtUKQues=;
        b=FKEst8SSczxTxyrkerlfZGym9TTBUzXNNmq4/CCwkulkaqkY3+X+rLOlNlY4fwQLfH
         45YiweJgjg7V06EghT0tFNlUh1hzAWi2rL3PRx52hw5VxogkQkgWc3ITxalz/cqUHGd4
         XIUwJEbvW1r7AWRcoaxr69E9yXOvQUj5e9GLEEsW7+G6sfX+aWUU3tgzrkWvFYTwuywG
         nbiz8z7rG++lNAhEeZcTFdO08SlwGG1SnoAEjMONMN+9qQi4jQ4m9Zmz4chZM2ASNRJA
         /C6x60d7uERGIaRvoLMsfW9boVFuwpwdxYforCBVs7uPxAO8KVKauoVDtT5XfD2hQ+eQ
         /EXg==
X-Forwarded-Encrypted: i=1; AJvYcCU2psnh5TSYxXDP0vrX3Z/jowUXmfoAc6yOMmvl1rrsbriHSxyjXXi/pgF3MFICuNlfRnePVLh1voUm@vger.kernel.org
X-Gm-Message-State: AOJu0Yzcx0KYsfIfjDiJ5AO9ZOmkreXyF+jJp22FG+i89uv59teP+upl
	M+sNldO5p9viHRsS6H3Z2G78a//Pa6rnmAyL4BDZxTllwepVEz0IgzfCtTbEs71PlTTtXPgKh2c
	jjsdK6y70Fdhlg6RD2wioRyvU7GvU2ygXQxCQbA==
X-Gm-Gg: ASbGncuowltqWCEZirv6PaAKxmwrVcvt1HjOdSTr5qmWnwIU9Dx7lHQYOC6XWwmqiQG
	kykN1lA42QfqLbeoHcLt93ugfAeO1At2dckkwQ5c=
X-Google-Smtp-Source: AGHT+IEFgoxKdoJisFUM5ICD9pBhU+fG3s7zPXYhJrT/VXlT7HQqFQRQC9gMDg4S88yvTnHjNPAX6OW7RBGF95100H4=
X-Received: by 2002:a05:6808:10d5:b0:3e6:580b:d7d0 with SMTP id
 5614622812f47-3eccbf9189dmr1697114b6e.19.1734520139785; Wed, 18 Dec 2024
 03:08:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241217-acpm-v4-upstream-mbox-v5-0-cd1d3951fe84@linaro.org> <20241217-acpm-v4-upstream-mbox-v5-3-cd1d3951fe84@linaro.org>
In-Reply-To: <20241217-acpm-v4-upstream-mbox-v5-3-cd1d3951fe84@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 18 Dec 2024 11:08:48 +0000
Message-ID: <CADrjBPr82hvSSyULxi0k08ts2d1vO41qXvmr08+9wP-MB9fhvQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] MAINTAINERS: add entry for Samsung Exynos mailbox driver
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, andre.draszik@linaro.org, 
	kernel-team@android.com, willmcvicker@google.com, daniel.lezcano@linaro.org, 
	vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de
Content-Type: text/plain; charset="UTF-8"

Hi Tudor,

On Tue, 17 Dec 2024 at 09:40, Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>
> Add entry for the Samsung Exynos mailbox driver.
>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

