Return-Path: <devicetree+bounces-5019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B01E17B4C05
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 09:01:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 6185C2816A0
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 07:01:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D56D9CA44;
	Mon,  2 Oct 2023 07:01:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E336417C3
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 07:01:05 +0000 (UTC)
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AE23E0
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 00:01:04 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-406650da82bso16597625e9.3
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 00:01:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696230062; x=1696834862; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JY0pGPase8DAPqfUfT8zLIwupYNhs+ANJOrUn57BoW8=;
        b=cxtqljFw3W6BH9rWR1igF+AD0MrugHQDDE95Z4uVha+LDNnofSLdFo+hvoW3/xSQBk
         I71iZNR7/9pBf/cJ5Z9WYMbpARNUzkoL05DcurCS/KE3saPYQaDBRRed7sOKZilq0Z6H
         hWl2MQ65ZvfLe4LxatTI+v+nUm50T0IjBrxrFDtfpuguDfcgF9bgl+Yss0t/I/7PbA9e
         NgMvrTdHyr8R9+Llxdor5GdqVI5oXUqgOwPwaM/Ezvp7uqz2qhDvOTRrDSihPZYddw8u
         vOfBW6RmAmdhrZVv+6Z5qeF+SB+QHkBRGAME1oECDy87jFjviruhcDmamSU4U5CnunNz
         abHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696230062; x=1696834862;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JY0pGPase8DAPqfUfT8zLIwupYNhs+ANJOrUn57BoW8=;
        b=qAJvTFLL5Z6R+RLTFy63UomiA1bYl1XqDEl/5LGglEWdSZ0G8D0YgOnsj3D4JgS26a
         xOYC/uJPSA+Wae412kp1AaC6wmeR4I8I74kxJQlU/JgysEc6UpizrJav4viVJE9a1xHu
         k+tpRdRCLB9kUpTKweqpGGOXb1+Bi3PdnDwy7fkXiOH7VbE+eDIOwE6bJrmde1Rv0Twi
         hx0uIUVX/QvmILS8XiK7VLalRiLqg6cON8heAyY4lDnDHk0lgg7gNIkEdYs9R5j8ECx6
         XAwS5MXDBX5heTefc1ifhuL9ThTgYoIkYnWCYoYN2aAljRjmIXHnTAYPF/KS+giofeKL
         G4eg==
X-Gm-Message-State: AOJu0Yz88MWqFPkTc2hJyZ/4rqzHxwy7RnvFyYodnBgxdNf9QT2Ky6CT
	xBgvKN2W6Ul7kB/6K/S8MBuhtA==
X-Google-Smtp-Source: AGHT+IFaCMBuWg5TQzZ8F+fXy536sYD86fhXX3Qt7RMVopoYPkSdFbYvPmBNx/iZzn+a2xlQnqMhFw==
X-Received: by 2002:a5d:5151:0:b0:31a:e772:ddf6 with SMTP id u17-20020a5d5151000000b0031ae772ddf6mr8873550wrt.39.1696230062112;
        Mon, 02 Oct 2023 00:01:02 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id r17-20020adfda51000000b00327c79ca7c6sm2440715wrl.80.2023.10.02.00.01.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 00:01:01 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Kevin Hilman <khilman@baylibre.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Jerome Brunet <jbrunet@baylibre.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-amlogic@lists.infradead.org
In-Reply-To: <20230925135326.1689396-1-jbrunet@baylibre.com>
References: <20230925135326.1689396-1-jbrunet@baylibre.com>
Subject: Re: [PATCH] arm64: dts: meson: g12: name spdifout consistently
Message-Id: <169623006126.3465675.17408655598798133472.b4-ty@linaro.org>
Date: Mon, 02 Oct 2023 09:01:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Mon, 25 Sep 2023 15:53:26 +0200, Jerome Brunet wrote:
> g12 and sm1 are fairly similar when it comes to audio.
> Both have 2 spdif outputs. While the 2nd output is named "spdifout_b" for
> both, the 1st one is named 'spdifout' for g12 and 'spdifout_a' for sm1.
> 
> Use 'spdifout_a' for both instead.
> 
> This change does not fix any particular problem. The intent is just to make
> it easier to have a common card definitions for platform designs using both
> SoC families, when spdifout is used.
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.7/arm64-dt)

[1/1] arm64: dts: meson: g12: name spdifout consistently
      https://git.kernel.org/amlogic/c/3f0b916f3a7eaa8aab6f6ab465a4f5342b5253c7

These changes has been applied on the intermediate git tree [1].

The v6.7/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil


