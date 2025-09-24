Return-Path: <devicetree+bounces-220763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F04B9A2F4
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 16:13:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C95F4C4F0B
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 14:13:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A53CB30648D;
	Wed, 24 Sep 2025 14:12:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3773064A9
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 14:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758723174; cv=none; b=BB7V4YFL155Ii3l7JYkRFfwSTrAE74MkMZVk1ysQarqqAik6Bdbpk1DxDb8fN7HZpsthUp2894idL2lZ3VNFPgGLZqTqeYY8PpaeAgQL837e7ymLcAix/4lbWFqLmrXSrwXj39+kszC8mVH1Sx96tMH1prG36+wbO1G7q3OmNpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758723174; c=relaxed/simple;
	bh=RAQppiXjWIWyTOC11PHSe910HHT72uEJpzqGu/pPfgQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=e02duqYHjCdKCm9yJ5Fj0Puo9WScLdPjI0z0VGH6eosowjmJyheRTqRScUSfa9tnvnhxgn+L78jetC2hiSTt6fWTKWJ8uANrEpZoIKZ8XJX1b34bH4q1pM2pvUmm+R3z0D5HRu1pY9cR+ppOXapXkPTt1SkJZ9d7unmWIXbGkTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.219.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-78e9f48da30so59361066d6.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 07:12:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758723172; x=1759327972;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=43BZO3RAppnebCnCAQY4LIb5j3YiQqsMBJqVptEFktE=;
        b=HjeFFkLUxXuNDzg8IBy7QaFSYrBtI7GYDk5qAQ1Odg/ru3xB0wGxIY1z+BJG7MNNZe
         JonrPhzRzUKR34AQymWWciPecGd2WJn6oH0SowE272Vlhsr/v1/m8VGYyLMZRS4lmL2I
         jLqqyoAYj8gwIA9yGn+mTOUxwrN0dlSI/s8ME32azsSbYRxxuRizbPMBYaGv/iR1+wOw
         Gk72ojCPY5IPVXFaWs2yEBD9jOd9bh9FqcovvbZm6hfKGNaNp2HRZKOMVb2eyHglDMQ3
         jgraayjxraHN2oT9ckN+vxsgu3UUzGnMElVEwo7JgiQHxaUCOrBz+5uZ1MYKsxc6xcVE
         f2KQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYTSfE9832wxbd1eGvbFk8fJHFhUOzaZDF0ZDqujLBowdqdKkBrs4LHRSGTEbsImC7tcqXRJ+OKqL/@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4ybZAPdhLDuI1CDZEDoeusfn/sur2BxqoMObR4FV0M3VgPWDs
	wEMA9D0v48wlHmH4sQ32NtQjpaHeCzZwRKNSPUVOK5jhIgvGjW+oGyC6s6E8Mdmt
X-Gm-Gg: ASbGncvLitla6QltpYcylqAxYuZgoEIoeAgzivoZvCaqS5yjG+qPseFRdcEI4eD6xGp
	GKHt6O2fElWtdnxidjaL/SH9iB7pPFFBjYhqtAZb7/jr9w8PQdDBapbxgJ7S9P+wAmWXSY7aLjV
	D+dNZ+xPwXAhhQWrKkZk1BVoj5+zon2oIDiok3H4pq7JO2/2A9SfWVnJ6dFdna1z8K88OKbAXvs
	9v3wQ8iroOIv4yQl9PG1JBqtSyuhcOy8B3w+Z2iWMh1yH6nfApI/ozhQO7RU3PlCVsmDv8Og72U
	3yYxHzlXu154QxDD4CQ17WcNttn9z2oXZgUGE6tX6pI/Kgm2IK3BdTNoGNQUejVogusGWB/P5rG
	2cR8hSmk19ueB3TUT5xHgfZ9Y6tu0CP01ohRHP2LBybvScPMNe7EVkavWf0bcraxA
X-Google-Smtp-Source: AGHT+IGSj9VfTo1KJFTb0jsFzX/BOI5DnSYXBN/MQFn9kmdzw4Pm1q38CxGeLiHJGH7KhfnfpFAveQ==
X-Received: by 2002:a05:6214:20a9:b0:726:91d:bdb8 with SMTP id 6a1803df08f44-7fc45172a40mr1494496d6.55.1758723171697;
        Wed, 24 Sep 2025 07:12:51 -0700 (PDT)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com. [209.85.222.176])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-793546dd333sm105715216d6.56.2025.09.24.07.12.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 07:12:51 -0700 (PDT)
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-859b2ec0556so28731985a.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 07:12:51 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWHn7QCrJ3fM2E0T3e1sdQ/LfQq2QEYpaGV0BiXsznNVoZhSuGnc9auX7NBNsQ7ghAuJW+OYoYfyBwu@vger.kernel.org
X-Received: by 2002:a05:690e:d4b:b0:635:4ed0:5717 with SMTP id
 956f58d0204a3-63604666409mr5129283d50.49.1758722693635; Wed, 24 Sep 2025
 07:04:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250909113840.122785-1-john.madieu.xa@bp.renesas.com> <20250909113840.122785-4-john.madieu.xa@bp.renesas.com>
In-Reply-To: <20250909113840.122785-4-john.madieu.xa@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 24 Sep 2025 16:04:42 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXfN2qK-Yd=ZAaLek=UMkLK+NzdU5aFr0ET3o9m8RB4pA@mail.gmail.com>
X-Gm-Features: AS18NWC4NdZL83Kq7qZvbj_wBXjrH_GSLKGUTwSbCh3zlppgYZIteZzcvWX4tWU
Message-ID: <CAMuHMdXfN2qK-Yd=ZAaLek=UMkLK+NzdU5aFr0ET3o9m8RB4pA@mail.gmail.com>
Subject: Re: [PATCH v8 3/4] arm64: dts: renesas: r9a09g047: Add TSU node
To: John Madieu <john.madieu.xa@bp.renesas.com>
Cc: catalin.marinas@arm.com, conor+dt@kernel.org, daniel.lezcano@linaro.org, 
	krzk+dt@kernel.org, lukasz.luba@arm.com, magnus.damm@gmail.com, 
	mturquette@baylibre.com, p.zabel@pengutronix.de, robh@kernel.org, 
	rui.zhang@intel.com, sboyd@kernel.org, will@kernel.org, 
	biju.das.jz@bp.renesas.com, devicetree@vger.kernel.org, john.madieu@gmail.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	rafael@kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 9 Sept 2025 at 13:39, John Madieu <john.madieu.xa@bp.renesas.com> wrote:
> Add TSU node along with thermal zones and keep it enabled in the SoC DTSI.
>
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>

LGTM, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

