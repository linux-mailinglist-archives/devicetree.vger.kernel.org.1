Return-Path: <devicetree+bounces-33698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CAE8361F5
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 12:37:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8A7ECB24433
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 11:27:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 533C03B29A;
	Mon, 22 Jan 2024 11:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O9JbOR7S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7C8C3FE45
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 11:15:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705922109; cv=none; b=RChpr1YrQD2Kpq/oqK8tC9VQFyIPtJl9ciuBiTmMpAZAEuowwoVwj+Oq8E3tgEpEi7288KdCI7AaRnKW4fYREi2kXZPl9dboSBD6Tdy6KXC7lZ+fOKfuNgNZkGJEz9mbc60xIRuOssKqr89TVoFrwo1Z1amVNfBrc/wkbwvfJFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705922109; c=relaxed/simple;
	bh=3U26AwLWLJuOLiSHNbpDZg8iCOyOjMLbtNfwUDuPsrA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=HXLkrp1/UhfVVHwRy38iKOc/9KJ7cP2XYtm1+xvveVZgMyMu4aoCYLmdCK8X9zu8ALD9G/znPISfda71BsiqQm290UafjoTPJ/sFm1I5yw/VI0uSLWdT29C49xYNH0QAjrwvqamFFmM4yS31e/Bkk1+nSZtPL/2RF50jd3GUnjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O9JbOR7S; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-55c2cf644f3so1129790a12.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 03:15:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705922106; x=1706526906; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QPmf9u26sxVj6eHcqF+q85lpL4wNzWXWxkNCXCaIX+s=;
        b=O9JbOR7SRmXEP2OPKwQphyOCleXoZVxh3QAywiCMOg6a1X9dWPZeGqOPk/6IG2OadZ
         zoB+Fwe20ZFlxhjE3KvOTCU/jpZ5ZTs/Ni97brPS2eiRm23NHaVHAgESRtCPvu0pJUwd
         FwK/B0zos1Y0BDe+TW6iTUNlHHru/jvLPl4HeO0VklqqQJCtl+vHHKRIU5X/oOk8Wc1F
         ZjKegSf8nJjYuwIzlvbedEalQD0pV324QhCJVPDV/U46v9s46qTGTNdDmRvyOe1mtpVa
         Z0Ev6eF4yK8o0Cj2/z4sxGm+ikLrod4ItEgfDhEv0aEYxvzu0k20Ge2CX513m1RhJzNE
         lhbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705922106; x=1706526906;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QPmf9u26sxVj6eHcqF+q85lpL4wNzWXWxkNCXCaIX+s=;
        b=LoaBuj7qt2C2kpjQ+y2pcD/63JVz3E5PxZKJEE25L2eP1A7QwQ8SFWqp+pj9WTcZxU
         BLZYakQa6pkQsvlO9aLPalIHDu91LGzjzFHo7t8J3McarYCqmNJ9KzOfr2/CCRtxtqnE
         H0qwT1+UXAD0dWVBWAEXLh//zewjhX1Aw1rXYwAg5nWRVxUTxv7/+qzXfOmxHhZz0ZX1
         +ZA9rM4qvqmAbnSSMqBc7gtSATI3zhzs/ZisZQyH3T/t7yP2kJEJ7wR+SZsUMnFB1yxA
         uKZdD97H15sdvPyyT3J453VlDLkak/ESQ8auLsh17zWoEbxU3wqfyf5YIi5FUxq1EZ9r
         bZ6w==
X-Gm-Message-State: AOJu0Yw+kAM+LXMYFkM68hrpwCG2FyJyVzrG1ewSk0Qc+jYq+5EjgJek
	6dTrmyuqVWZnh6fsYMwvfjPlWAec9hOZLtoHW79QhyrtgVa5KQZXBWfTXQ3z0yI=
X-Google-Smtp-Source: AGHT+IE8I+Eo9RwcwMBcQ478giL0bJsjYQaZ7E+O1sXJtyfVCg3bIc32yO8QW6+TBwYJjV1QcNS3qw==
X-Received: by 2002:a05:6402:2786:b0:55a:466c:8e19 with SMTP id b6-20020a056402278600b0055a466c8e19mr1272882ede.16.1705922105764;
        Mon, 22 Jan 2024 03:15:05 -0800 (PST)
Received: from [127.0.1.1] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id h27-20020a056402095b00b0055c643f4f8asm179422edz.32.2024.01.22.03.15.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 03:15:05 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Artur Weber <aweber.kernel@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org
In-Reply-To: <20240105-tab3-display-fixes-v2-1-904d1207bf6f@gmail.com>
References: <20240105-tab3-display-fixes-v2-0-904d1207bf6f@gmail.com>
 <20240105-tab3-display-fixes-v2-1-904d1207bf6f@gmail.com>
Subject: Re: (subset) [PATCH v2 1/2] ARM: dts: exynos4212-tab3: add
 samsung,invert-vclk flag to fimd
Message-Id: <170592210439.45273.227109126148019562.b4-ty@linaro.org>
Date: Mon, 22 Jan 2024 12:15:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Fri, 05 Jan 2024 07:53:01 +0100, Artur Weber wrote:
> After more investigation, I've found that it's not the panel driver
> config that needs to be modified to invert the data polarity, but
> the FIMD config.
> 
> Add the missing invert-vclk option that is required to get the display
> to work correctly.
> 
> [...]

Applied, thanks!

[1/2] ARM: dts: exynos4212-tab3: add samsung,invert-vclk flag to fimd
      https://git.kernel.org/krzk/linux/c/eab4f56d3e75dad697acf8dc2c8be3c341d6c63e

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


