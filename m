Return-Path: <devicetree+bounces-256268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1A8D388C7
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 22:45:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DED9C313EBF7
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 21:33:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EC9630B528;
	Fri, 16 Jan 2026 21:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="Jn3jS/XT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f50.google.com (mail-yx1-f50.google.com [74.125.224.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E23B230594F
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 21:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768599063; cv=pass; b=LiVl7gl5nZhSeiITdCYs96u0WbEbELrPQItPXcL2Rqx71/DoHX3EImpgO3TSjmp3aJCwO7tt0kyVHs8rUGSgjsMHhdyS6v2/gJUPxDptzcDrzKap9EgLYlzJhEtjXlHOqvUns+RLvS5GwKkY+WovSS/A418nVbvpAAIyzjnXVjs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768599063; c=relaxed/simple;
	bh=vvBMNTtYjIdNhiUtcgxPXcGSrQ3zdfmugL08dxlZpp0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=raHwA/IX5hSZStDXHk0DzIhwFXPy1NwEKoSC9QAYVYY6rOpMD3kwsCc1sXGMws/DevlK4p6djJVjZsQ3OO9K3wuhmrXDUp0HPuXYXmp2IaQ0MpPrb49X19FBrfwf6Ne0ORQfnfubklnBHQBNjff7c/F/IqlXRdu7EUW6t5OsuUQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=Jn3jS/XT; arc=pass smtp.client-ip=74.125.224.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yx1-f50.google.com with SMTP id 956f58d0204a3-64471fcdef0so2063251d50.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:31:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768599061; cv=none;
        d=google.com; s=arc-20240605;
        b=MKEwkWj5k9DvCAgOVW76DKiM6oOxi2LTtvZlrhci/p/h7HRAEBHhXABD5+HSsg1e7x
         PEcb+EXxl1MRDCUEEGtoaSgHnswR0nLxueTSRKLUPToLjZIOigxNQ6UnXNCf3wPgdGXL
         xY3eaT6IilvNdIhPAtkyiyby6bxfO0Wori+BipOb+p9aMwLXY35Gwq1JbcPy9d4XW3iR
         hvlj6/2p2HSU6WDQdzqRMovpYTvwf8fRG7H0nKBLHgwtSt4XRtak6oiqGZkMIThmk1A6
         /oWwVcFegOvDSyJyi8TgX3RixJffZiAQYU6R/EJFp34nlIuRg5B6XHMYQQqdnqbmX0LE
         Qt6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=vvBMNTtYjIdNhiUtcgxPXcGSrQ3zdfmugL08dxlZpp0=;
        fh=sBO8tAd3JBj5Rirk6IRc7KxFPqkXp8UCwDWMl+K8ncc=;
        b=hGMQMRJFBmOXptv6yuLrFKoHitQgDZ0Tt8GfY8Zcikw7z7+gBOLfNR03UuSe2DrGA8
         nj5psoPigbeSCDtOJu8OAvBwgvhm8ZX8mvPaEUHB+UyPyQuNF4KP/A+Wblgo0PYQvtKA
         Z0jnkIS7lM4AfLUpFwjpxOxxgdPyqYZH0EPzgrJGbsJ3OJ22EqLvv/FGuOF44LxY+430
         akjMvgOkPg42U3zZIw2KDliyZBQATVTVDbqF/t0nfC1wVdfJ4YHUiAzhHzBJ8YTIvggz
         Py4AkYipxTc/y047XPrkJKsZ+IOKFVHtNkRitbS6SUPkiZVQ+tJii10NtzrcI3u5TDBg
         QuXA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1768599061; x=1769203861; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vvBMNTtYjIdNhiUtcgxPXcGSrQ3zdfmugL08dxlZpp0=;
        b=Jn3jS/XTRi8FuvKI4kzx5YKe1FRNz6EsTQTD9ZlsUztMXGVTSEK0APQMwgBLfbsANk
         MMpY8hbd5Ag+HfyEv+gLtZQvBuLxOPtkxcJK3/7gNpdMCTyInww43Tskl04Wl1mm+5ep
         jAQ7ZLtIVJwdOcOU7y5jzeeJaTbmrIcvxOnoY9pKCrg+TbZ8H7F0vKe8aip6VmsoZ79p
         QF625iQlpqzxdaTZTjGgxHl7AER7uJoSQWwRZBs1k7frKjR+T+m0NEH9JdYHk/WpA296
         8BBN8W8so1tpYd5ilRk6/vDVtBE1z9z9i6+nIuDgZx8Neepd7swpIdLbf/cWTLGNJIDp
         zDTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768599061; x=1769203861;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vvBMNTtYjIdNhiUtcgxPXcGSrQ3zdfmugL08dxlZpp0=;
        b=ThLnx5GZmOzsuUkPm8EXGONx8iR5/BPyUFeyydJv0QfNA+Tk/tvRMczL3wunfcickK
         Ll4DOSXVnIZI2k+U9Hv20UF+oJY2mLRWJBoYi5+fwjqG2xmhmaHqJqa9OEdgBt3B59cp
         B+0/BhdMqpfLnCXl7Z+EVE6dJ/yWZOvlHnLyHmZxiCK3vZ+ZrGyDxqhbEONgXt8aZzht
         t/ua6YuQu9XE7+L28SPPvBfWW84CBF3Dwn0SCXnLcRVdNcVmXTaWbenksYZ0d7afYXow
         sH6T+PUFYlCqg6IsxyN2J29maoIISt8Zewr9V/5r4l7XxFbfpSpPiGSlOeIke4+CgfNB
         y8sg==
X-Forwarded-Encrypted: i=1; AJvYcCUs1a7dzTVqkplJRhiUu0AfNSOVL3RUzwhfNTMScdLN825Tfa4A5BnHX8M7d9lxTM0vwZQPIBpV7OaJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyRnPL+ZR4yG7OtglxrqyqfO61ntWWQVbiMP1+Q2uqntzILEy4D
	6b/XsuQ4BLTPEvOS+FU7SZ+SoktTablD6FEvJKS8v22PK2+Z5xz06GyGHJTamAXgB0+PRRDq5df
	YB0ggI16Q6JNxexU32qGXS8v/I0st3scABr0anqfUMg==
X-Gm-Gg: AY/fxX79ajurR9r4QxjVrbLkfjYfhisSiAG5V2698zt4LkD0knxetYDiKHWAYfH5imD
	sBIY/K2BVZnXgxVaWIbTT/gW59ibdd3knjLrrDP6wJ6hv6t3QxpI15XZhfoVAdrW+4A0+RViw16
	Zst+Vku/uFRRX4kG3qBv+Wmk+fPFA5tGQcs6xBaqeK8Eke05hskKFq1/CnYjzndChaks150Re9Z
	vmOqRTbIEMr3jJ8nmaI56xNCrZMsUbvQwYXNpXm+rgoWpkTToXRwp8hmbM0HUybZ1azAIQjHu4k
	4+f4S0qYi6p8K8CO4GYfIAEEwt89LNuD4K8zqn/usR0AwDJm8inD2FY/nWnjJ/es21d8AfM=
X-Received: by 2002:a05:690c:e3cc:b0:78f:b820:f2f3 with SMTP id
 00721157ae682-793c523ce6dmr77707577b3.12.1768599060916; Fri, 16 Jan 2026
 13:31:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com>
 <20260115-atlantis-clocks-v1-8-7356e671f28b@oss.tenstorrent.com> <20260116-pretty-maize-cuscus-fd1cbf@quoll>
In-Reply-To: <20260116-pretty-maize-cuscus-fd1cbf@quoll>
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Fri, 16 Jan 2026 15:30:48 -0600
X-Gm-Features: AZwV_Qg_SKVdsBkEYiEsvS3rA5LuKeOql85INJDNfPf7p1rAcP7anRwsxzBwm-M
Message-ID: <CAEev2e_LhhN2uZvQp4r92FLZNS7qYhC=Nn6NeFwqRw5OGjv4Lw@mail.gmail.com>
Subject: Re: [PATCH 8/8] clk: tenstorrent: Add reset controller to Atlantis
 clock controller probe
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>, Joel Stanley <jms@oss.tenstorrent.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, joel@jms.id.au, fustini@kernel.org, mpe@kernel.org, 
	mpe@oss.tenstorrent.com, npiggin@oss.tenstorrent.com, agross@kernel.org, 
	agross@oss.tenstorrent.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

On Fri, Jan 16, 2026 at 3:08=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> Completely pointless. You do not have any user of this.
>
> Adding a few unused lines is not a logical change to the kernel. Why not
> adding it member by member like one patch for empty struct, then second
> patch for struct with adev, then third patch adding regmap?
>
>
> You just added this file! Why are you adding incomplete or even buggy
> code which immediately you fix?

Regarding your comments from patches 5, 6 and 8, I will clean up the
patches that add the auxdev and reset controller so that there are no
more unnecessary commits.

