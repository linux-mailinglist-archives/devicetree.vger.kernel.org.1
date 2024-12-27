Return-Path: <devicetree+bounces-134367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E97319FD4D4
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 14:17:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9862A16110E
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 13:17:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDA8D28691;
	Fri, 27 Dec 2024 13:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="VfhIXtUC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68B2A1E48A
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 13:17:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735305474; cv=none; b=S4+fGYa17FcpsKQEAPtfcEWvjFXDvPwfBcVpnSNATK/xJf9zdgc5kwXrDutjYNgf6oj4DOM6XklGTGrA4EZyvQcfs+OJ133saUPcfvkwMwF+jD+d6WiSta32dJEbjRHIoqc08k5hX/A7W1zEOht0potr6NQBQdp8A38dWllNXgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735305474; c=relaxed/simple;
	bh=PF0Dn+BVSf40mdR0wYF7BsfgSf4DelJbKIonMN7pZzY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j2+T9tDWes88kiAAhi2qKDqTZIr/4ErdF+BJVzAwyMqofyAL1N2Yu/stnaqlNgDc8tGZVrQnX071HPtMQV3c1j3frXqVmd5CkY+KbdlzJlxYIQyJdfE2P6ureYtoZ0jzoxvIlMTepwzbEsCLU3+E6wDaZqNwm3UK46po9TIQeQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai; spf=none smtp.mailfrom=edgeble.ai; dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b=VfhIXtUC; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=edgeble.ai
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-2efb17478adso8702496a91.1
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 05:17:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1735305473; x=1735910273; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iAXFsxzlonOLXIwCn7fwLxpEOxOZpKttSBYOZ0M8BhA=;
        b=VfhIXtUCHhJP6lG85j6AggxZF5NqbdPH9j3j8/1OXoICXKgyocMC/iN29BT7Br9UNp
         2vIHbmfg2v/PClwfxvQxCKp/Pa779/aiX5WTlFvutQqKSNvTMmruZt5B47tW2klnxjGm
         3U/tyLpoJ/if1wRodoYcZ1IwrCoVG5xTCe6OUfY7UHL86yRsZGFnTPB0vag38law4+ip
         vYBNv0/P18bcKgVYQPE+zwCuNGAOW7tFknn4fVSmAZXBGia+zpNXjOJoKu2D7ASytFLM
         P36yVFOtCRXEW5qmHoWjdoBx2FDq3zVLCh037vEUJIOUzhHEJrFBF874KMG5F+2Jittr
         +K3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735305473; x=1735910273;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iAXFsxzlonOLXIwCn7fwLxpEOxOZpKttSBYOZ0M8BhA=;
        b=vF1H6RKjvAUwGKbYSvAu0o0BJ5d6dyP5RaMg9FR/STWz/v4cqXyRheLfRN+5yRmeZ5
         7RG4frMFTX739sQs0PNjx4/Kpy/7krWKLHu8tLo5X0qBjmbbXMGZu3XpdYFzrngWpi/1
         tPD3M7EdnXFbWqgu5rXOfhRb4dLkiW49SlIq2XeyuNBBz1+rSzZLumTbuMwhhvvWK0sB
         CRdMwexY15B4lokWZpcLXjun6r/0eaYykLHa7WqlkuK/EroqaZr+VDdxtrxQYXaUVsO4
         LnzW5kyp9gxRk7sPuCq5qIfvN2sKj7ZxJlaUW1mdjY9H1Lb3HRmPz2ZlBBL5o2n6LxOD
         lVew==
X-Forwarded-Encrypted: i=1; AJvYcCUHxdEzmzjU94/wPMWi9M1q9jpfJyk9QQT0nYgfzLeRVS3SarKLCddnAMU+Ix7emBdE14egXWYLqk5P@vger.kernel.org
X-Gm-Message-State: AOJu0Yxh0/VCLkrhGDL/yApHkQLbxImkwsG7NPZDKqV85TtL8kybiYgp
	BdYrPBJ0oFi/+KUyDdYIHzxHRUNbSWfacvEIDcWldU8xDtzNoQ5PDgOFE8Bdss6LlGtU+JbDehk
	OsFoLNIBnE205DEx+T4TdMHv6Vovg6EnT/auZuA==
X-Gm-Gg: ASbGncsHkTd8LkxIJMnAEoEY+Q2diA+KCo45g6thqVp+9qivx52m2bzfmR236GiS8Ap
	pKc+gN0J6n20MZKi4K21BoLOkNWCJfzl5Jljm
X-Google-Smtp-Source: AGHT+IGJXNWgYAZk4yTpptTSbNQn9IKrdlEA0Qzrr4v2C2qdF2+VE2NVca0nGnqFhl/5SkEJUK38o98Ip0n+fUXbfnQ=
X-Received: by 2002:a17:90a:da8e:b0:2ea:712d:9a82 with SMTP id
 98e67ed59e1d1-2f452ec6fadmr40836147a91.29.1735305472878; Fri, 27 Dec 2024
 05:17:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241211-rk3588-hdmi1-v2-0-02cdca22ff68@collabora.com> <20241211-rk3588-hdmi1-v2-2-02cdca22ff68@collabora.com>
In-Reply-To: <20241211-rk3588-hdmi1-v2-2-02cdca22ff68@collabora.com>
From: Jagan Teki <jagan@edgeble.ai>
Date: Fri, 27 Dec 2024 18:47:41 +0530
Message-ID: <CA+VMnFzJumtLmhFxNt8Mjzju7nC6wMWn2zDwpiRg3CEULRzDyA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] arm64: dts: rockchip: Add PHY node for HDMI1 TX
 port on RK3588
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexandre ARNOUD <aarnoud@me.com>, kernel@collabora.com, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 11 Dec 2024 at 04:37, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
>
> In preparation to enable the second HDMI output port found on RK3588
> SoC, add the related PHY node.  This requires a GRF, hence add the
> dependent node as well.
>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---

Tested-by: Jagan Teki <jagan@edgeble.ai> # edgeble-6tops-modules

