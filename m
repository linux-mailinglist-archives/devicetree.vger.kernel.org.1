Return-Path: <devicetree+bounces-253064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 307CCD06E2D
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 03:52:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1FA343019B6B
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 02:52:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41AD73195EA;
	Fri,  9 Jan 2026 02:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=thingy.jp header.i=@thingy.jp header.b="lXKB6bZR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FCF01AF4D5
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 02:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767927126; cv=none; b=cZbelqp3z5oc1gnHJ0lYH+E2fYhvEAV0plP+AUgCTwGiVCc8rbkNzeHUCy/6dWU6SAoNV9NiHY9Wyyd5xqjR35hZhIJi5VQJjmlxbhErpPPQ36saW7JkyCs9t3tPVLvIUp13wFDZ7xlCVn1vHwi4HbK0H9AijvtS+OVpTUhU7pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767927126; c=relaxed/simple;
	bh=mGiZtSDJ7qSg96MVzhLpALvztIeG3xTQS4GuW7PemHI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Te/RF1gtPATLVMP8pheaMDKaSMFyqCm7BuI8oPhrWOX92IgJ0grZKONLaWhOf7xiZ7CXmO9lvx7m8Dm8pwuS3YZYtITcwiBvNQcgl/EA7ExuG8o5eP1vO4xdw4zCxKvBhElQHKf0zFplo4Rs+VAcviaxtDI+aWlzZXX+mOs2nBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thingy.jp; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=thingy.jp header.i=@thingy.jp header.b=lXKB6bZR; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thingy.jp
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0x0f.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-c2dc870e194so2042502a12.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 18:52:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thingy.jp; s=google; t=1767927123; x=1768531923; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mGiZtSDJ7qSg96MVzhLpALvztIeG3xTQS4GuW7PemHI=;
        b=lXKB6bZR+ZI2Bi7HWtKhYdPRC7DhAVKT35FmuqS6b9HTKD+DZaPpPwYQyMj5nmddpz
         r/LwWYz+ukQ7Nh3YRAznrg1iZz3w8GgP1CeVkXd/czEEzBXxuQ26T/4CLdQyhJkp8UQT
         Qpa+9t9A+WDUELhAVXePGRjba1UqBkNADSwcA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767927123; x=1768531923;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mGiZtSDJ7qSg96MVzhLpALvztIeG3xTQS4GuW7PemHI=;
        b=dgWgzvQ3oLYq/HNhztrrQ6jO8n75KuvwdEfFiuJlKtljBKklUHgYoQEco0f14BbuRZ
         U3in0GKxfwfiyn9JGkks10+IF06sDnnnsXDD3k56mgHXOwKw92Xatf08qSNac0+w3Jbb
         geWK8z+jAH5O0ppM3q5D0mgG90KCcehMlWbb3HouNg9pvc3+c19pHi7oQp41bjy1LhAk
         Wb740yyyz0bwcDjVGVXrgw3397yUWV0rgeH9rD51gPi4pLyL7snPHdTARLNYL41ywY8A
         b5qTr7hkih3WY1RLmWJD147mQKGHPpuM2C7bYAzZpnXACv8Uy4kISqjcPvW5hBsGPCKD
         njmw==
X-Forwarded-Encrypted: i=1; AJvYcCUNKxe18wgjuV3j/fSUIkh2LYZThrgoj4+YBQNOFaIgwzIqjguTyl8NZFwcqxLWi2NDo9DZLqeSQ/b2@vger.kernel.org
X-Gm-Message-State: AOJu0YyYVRc1vBgLizfeZ5JB/C59qessp9/19TYozVnO25xsfrVx04Xc
	agN+fdBWWSpUhLyz1j46CdusncU8GUVUkuQ32bfs7Sd/+EiyqWBUB1UY2b23+pQWLEu8fkRizlA
	vNNapvAyd2WU8AqKVfvy2mcbMNfc0yNju5ugzKBSG9A==
X-Gm-Gg: AY/fxX5Y4Ells6pVHkDJpoD2j7eFpiOwEMPseTwSk5/nVSYzGum2UsZdoUjwaAWeoYm
	bbKSSsdK9PS14rXu8rkv640mz+swgCpU9vZxx8IlupeS4mAZLtYugrRAfwDZ5JZ08101KcS5u6N
	1SgXRA9na0OCAerEhrnPj6B8avWS4n3QTnx0nRNINjoFPcdncqb/QIpAJRrz45I7Dqde6FuBApZ
	MQdyUu0aOAijLcm5vZdyouixApvFTJKPFPl6QM/46H6+vcpxadaaBRUIhmr6G/mJv7OyXf1
X-Google-Smtp-Source: AGHT+IGNd3sXlGKj32ScGdjnaH7fI+mBGLRjR7fUrxGMIyJ8kaC+ObQl8ETSG4eHd1JmTvkwvmX6Fi+GVVxjc1gw0uY=
X-Received: by 2002:a17:90b:5867:b0:32e:e18a:3691 with SMTP id
 98e67ed59e1d1-34f68c47f70mr7963900a91.35.1767927123587; Thu, 08 Jan 2026
 18:52:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260107030731.1838823-1-daniel@thingy.jp> <20260107030731.1838823-2-daniel@thingy.jp>
 <20260108233818.GA1466897-robh@kernel.org>
In-Reply-To: <20260108233818.GA1466897-robh@kernel.org>
From: Daniel Palmer <daniel@thingy.jp>
Date: Fri, 9 Jan 2026 11:51:52 +0900
X-Gm-Features: AQt7F2orPoAVfGwBrHQpNsAjLASeWiXftaT5m8q7f7B1C1FL71Cp6WZRbeaE2xE
Message-ID: <CAFr9PXn2HzkSRnX4X-X1q2U+zLxwSP=TxvRwmA5eYxad7SbLzw@mail.gmail.com>
Subject: Re: [RFC PATCH 1/2] of: Add a variant of of_device_is_compatible()
 that can be build time culled
To: Rob Herring <robh@kernel.org>
Cc: linusw@kernel.org, brgl@kernel.org, saravanak@kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

On Fri, 9 Jan 2026 at 08:38, Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Jan 07, 2026 at 12:07:30PM +0900, Daniel Palmer wrote:
> > In a lot of places we are using of_device_is_compatible() to check for quirks
>
> I'm assuming 'a lot' is not just 3 places? Got a rough estimate?
>
> This seems fine to me assuming there are more.

In core code (like the gpio core, and not in a specific driver) there
are only a few places. I think around 10.
There are more when we get into drivers that handle lots of variants
of the same hardware and check the compatible string during probe.
(There are ~700 calls to of_device_is_compatible() in drivers/, most
of which seems to be quirks checking during probe).

Since this didn't get shot down I'll prepare a version that has more examples.

Thanks,

Daniel

