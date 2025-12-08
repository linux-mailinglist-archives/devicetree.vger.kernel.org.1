Return-Path: <devicetree+bounces-245158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A59F7CAD1C6
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 13:26:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6A2DE30161C4
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 12:26:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 066B62EC54D;
	Mon,  8 Dec 2025 12:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QVxz2jbk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B97701F8BD6
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 12:26:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765196768; cv=none; b=oUpAtqSb/KW9wYRck1rxlP9roQtBh4Oig5sD5PFs/Nh5wqvzeiYqXc9anJ8FhtHvXQTGdUwIDfoJUKrvd/VF2z3KUF65xMGLH7LtEo4N6INnXwvCbgJQxo9GgCrGtNxR3lxDfVXx1iqH0BHYcVf4pgzpqUDjLRrLmDiO4cSaZSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765196768; c=relaxed/simple;
	bh=H4eRlFes40XZLasvmYWo0/7K4YgDUXXtPkHgEcOXS6U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Fy8lHPecYfod1zlU7ridBXtPYDCj5fG8oB8zamCeiSRgnOQvy/JWvwCdk6fGEvJ7HlmUz/26miNZXwR/F+4mj0DoS7Efq7Rj+XzyBvpOSIfjz/pPUn8OvRvf/wlYt2ZkTGqO5vk417ikaVTE06m0/2rLVajlaufWq/+AQz151LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QVxz2jbk; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-78c329724a6so13462097b3.2
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 04:26:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765196766; x=1765801566; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vZt3TabWTyFSBA7SZOawQNFxfo8ZjRuT909uZclWvj8=;
        b=QVxz2jbkesCgPV+DPr/vF25FOEWX73CmKGqF5A5PVnwTDMIxSxUMfB8ovl2V9hr/Oj
         8osKy+IHHiP2mC44KRNGQQfEayx9dbn3VF3r2tbJy4JuLARGDstnaaF3H+0sqQadUFpc
         Z5VIo47t+8dQbbKNOUbKrQzMlWK8W8EgbUJU+efTzSgdTeajr2O6tbwaRY41ZzuLdPBP
         XVuPiog1Ugmj6ghAU8LhY1K3VwYeuu5AweNXbyLgos4BAvOrrho1rOv0MW9Rd5giPsxX
         UyHpS4etCnRJp+mhi1ZbtBkw3p3R+iSVIHW4rOhzbBAg3w0CgbCjj5gITfTvAETKOW1s
         JiLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765196766; x=1765801566;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vZt3TabWTyFSBA7SZOawQNFxfo8ZjRuT909uZclWvj8=;
        b=IoMJfgp2yUsAEpV2MRpkOu8Vc3T2NFk7DIzStHiTgIaXxJBzpCrb6gnZf8w6e3msr/
         B402HAQKug2UdDQlOQ+SOwMU52xM23XljY83BcXQ/SSzuHfzjDBMROakbHfKzBl0zJcq
         cD/jSgEmRDIOc6pAImBBXa0SWgiTMipIODaNrrfKpQEKWJbsKP55H7bh/+xPdF0W6srR
         /mw1YuLDxpdaqhbYfvIPXMuTiRum03m3APIFRKVnzFu5hgFus+uIgJtvw+ZwnmpxANfi
         x8HJWQasG3rvgiwzhWv020AyRRa/e9TG0KGdpepk4A5iOSQqVHrWrmBxqT940zG6u5Ng
         I+XA==
X-Forwarded-Encrypted: i=1; AJvYcCXCkvMzwIf3ISnSFgggd/4C04/BQArWtWhn/qCdnHH4DPxsSqoEcbjC38Eb/pCW5bdk6e68p8xvQkYA@vger.kernel.org
X-Gm-Message-State: AOJu0YyE7j7nkat1ZqfQPy1HZVksOHiW6aq1qmnsGudn/h+MPdl9vQpp
	qL7JpszbJo2Ac6umkH4kFP2mhJYPx0D07vfq/bRai6ZGRAJFNb8Q8W7HTenAHd8dVwD4dvwvQ7L
	IKXeOqGScofHBD2WB4HVQS51zuAsy5JawgGBEji0sUA==
X-Gm-Gg: ASbGnctcjVO8BRWh5UYJUjlYPxqvagy2R3nelvNSv5fEhBckar62xq7n9F3tLUVDWs3
	6NnGtx9au8CBct2Qffa+99lcHJLZBWc4MwkqTml5JBc/qQWdEXFxhU6JLgfl32R4JAQ772MALKX
	S1tHpZ1dQ+7lgVc1t3RjcB6zxkrCQ3PVRlrnCbDy5+prwr36XjM2H2MkXIXYi7xxDntn1SO7Wv1
	InLw968FD8DJjFkk1dE4rJeCP1t/XlfjYeFlLvyhtl2bKaurpEz0jYWfy5IRFQ05/qfWRf0
X-Google-Smtp-Source: AGHT+IF6MqQA4bkmhAJPeVaQca00cmapujBX1CfRi0eGTrtCM9ILNfiWIU9u8UsYIv2GuQ7ieXOfeMLccw2NZ7Ci7AU=
X-Received: by 2002:a05:690e:1244:b0:641:f5bc:698c with SMTP id
 956f58d0204a3-6444e7efa27mr5658268d50.72.1765196765550; Mon, 08 Dec 2025
 04:26:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251119-pmdomain-hierarchy-onecell-v4-0-f25a1d5022f8@baylibre.com>
In-Reply-To: <20251119-pmdomain-hierarchy-onecell-v4-0-f25a1d5022f8@baylibre.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 8 Dec 2025 13:25:29 +0100
X-Gm-Features: AQt7F2qsC1ugYAKEuQ1qk2c6Z1cB6OEvu0GB4iPLjG4SxCgrMPQ_kWL48UjxFTI
Message-ID: <CAPDyKFor41f=-vpaborhOziYu1RSnxL6-mezBQTHLPVM_TEAuA@mail.gmail.com>
Subject: Re: [PATCH RFC v4 0/2] pmdomain: core: add support for domain
 hierarchies in DT
To: "Kevin Hilman (TI.com)" <khilman@baylibre.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org, arm-scmi@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 20 Nov 2025 at 01:58, Kevin Hilman (TI.com)
<khilman@baylibre.com> wrote:
>
> Currently, PM domains can only support hierarchy for simple
> providers (e.g. ones with #power-domain-cells = 0).
>
> Add more generic support by creating an of_genpd helper which can
> parse a nexus node map, and create domain hierarchy.
>
> described in section 2.5.1 of the DT spec.

Even if that is generally described, shouldn't we update the generic
DT doc for power-domains [1] to mention this too?

At least we should show some examples of how this can be used.

>
> Signed-off-by: Kevin Hilman <khilman@baylibre.com>
> ---
> Changes in v4:
> - use new OF iterator for parsing map. See:
>   https://lore.kernel.org/r/20251119-topic-lpm-of-map-iterator-v6-18-v1-1-1f0075d771a3@baylibre.com
> - instead of mapping on probe, create of_genpd helper to be called by providers
> - Link to v3: https://lore.kernel.org/r/20250613-pmdomain-hierarchy-onecell-v3-0-5c770676fce7@baylibre.com
>
> Changes in v3:
> - use of_parse_phandle_with_args_map() instead of custom parsing
> - probe when device is attatched to PM domain
> - Link to v2: https://lore.kernel.org/r/20250528-pmdomain-hierarchy-onecell-v2-0-7885ae45e59c@baylibre.com
>
> Changes in v2:
> - Use nexus map instead of creating new property as suggested by Rob H.
> - Link to v1: https://lore.kernel.org/r/20250528-pmdomain-hierarchy-onecell-v1-1-851780700c68@baylibre.com
>
> ---
> Kevin Hilman (TI.com) (2):
>       pmdomain: core: support domain hierarchy via power-domain-map
>       pmdomain: arm_scmi: add support for domain hierarchies
>
>  drivers/pmdomain/arm/scmi_pm_domain.c | 11 ++++--
>  drivers/pmdomain/core.c               | 64 ++++++++++++++++++++++++++++++++++
>  include/linux/pm_domain.h             |  9 +++++
>  3 files changed, 82 insertions(+), 2 deletions(-)
> ---
> base-commit: 3a8660878839faadb4f1a6dd72c3179c1df56787
> change-id: 20250528-pmdomain-hierarchy-onecell-a46fad47d855
> prerequisite-change-id: 20251119-topic-lpm-of-map-iterator-v6-18-a61447423adc:v1
> prerequisite-patch-id: e2c4a8c727d0f172166cfa622e60d97048a97b26
>
> Best regards,
> --
> Kevin Hilman (TI.com) <khilman@baylibre.com>
>

Thanks for continuing to work on this! I will look into the series asap.

Kind regards
Uffe

[1]
Documentation/devicetree/bindings/power/power-domain.yaml

