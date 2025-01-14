Return-Path: <devicetree+bounces-138368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A06A101FF
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 09:27:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8CB733A875C
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 08:27:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EB8C284A43;
	Tue, 14 Jan 2025 08:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C32JIz6u"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64F032500C3;
	Tue, 14 Jan 2025 08:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736843250; cv=none; b=p4Rl7q+CfEyvFlSvu9F6oHsgbIICUdNdlXFD13S61uNkMYB29TJwlZZ609+3szpGeoxT5grffq2PG93UEweHizqIhvMJzLYzegGtE0uugviSJaFS9TIxd7IWF8SmU2Wi4U93CoEOrjUAgr6A4gUMZikRlJ+Br5Y3ozGbGCX17sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736843250; c=relaxed/simple;
	bh=GHzHtqnmpq1PvgRDrFaqxUV2KyjcDVhrvf/Nme3LByw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ReKjt7NqVjZhotQgyqiQFIY6GYZsyoTbPP7qhGy7iknrTnYoh50JhnQXbg5U0ao5mY4dTihNLJ8DIQ8aza1ZRRf+aqsac3+UuYXnrLm7iEvDn5bga5Mv4TjZpLbYDEFvaloXuHJkeYlb5wul+X1j+u/b1EGlgJiNWmGQo4pRSbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C32JIz6u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16770C4CEDD;
	Tue, 14 Jan 2025 08:27:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736843249;
	bh=GHzHtqnmpq1PvgRDrFaqxUV2KyjcDVhrvf/Nme3LByw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C32JIz6u+zh9FTZ7wImMXIVbRM+upRScQZpe8mRv9yC7fa9DapHpxDv8XxJuukvJQ
	 HGdkNhg4k551xvGEcbd8xxQoxwu6VmmBkuewXlOY7yQgQjK/QNt4MbfDOXfLUqnE2l
	 i3IVunrunHll/ehw3JlbgyHC0bURLNZFAtOJrEY0GixEv0XOrxEFjeH7cx6b8XVUEl
	 wWDmM7Qak4siSBE7faxaAK8sXnhpxVBMQaHTmh31NjJM67gkT2Tm8YyRvpkDwQdLqe
	 Zl8PUr3Fow9K3kRQ9s+DHKEYB+WRZ5BIvYnlMdBzMZHj/MlG8+PCYMyVo/R6fxRgK2
	 WhztqNf12jstw==
Date: Tue, 14 Jan 2025 09:27:26 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/6] dt-bindings: platform: Add Huawei Matebook E Go EC
Message-ID: <7mojfix3wobcowdlmux6gznwdqlhd3y7q3zxb5jvjkqzt2tzol@ogdrn7yxs2r7>
References: <20250113175024.590437-1-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250113175024.590437-1-mitltlatltl@gmail.com>

On Tue, Jan 14, 2025 at 01:50:23AM +0800, Pengyu Luo wrote:
> Add binding for the EC found in the Huawei Matebook E Go and
> Huawei Matebook E Go LTE 2-in-1 tablets, the former one is a QS sc8280xp
> based tablet, the latter one is a QS sc8180x based tablet.
> 
> This series has a codename, gaokun. More information about gaokun, please
> check https://bugzilla.kernel.org/show_bug.cgi?id=219645
> 
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---
>  .../bindings/platform/huawei,gaokun-ec.yaml   | 124 ++++++++++++++++++
>  1 file changed, 124 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/platform/huawei,gaokun-ec.yaml
>

This got disconnected from the rest, so you need to resend. Otherwise I
don't see how maintainer can apply the set.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

<form letter>
This is an automated instruction, just in case, because many review tags
are being ignored. If you know the process, you can skip it (please do
not feel offended by me posting it here - no bad intentions intended).
If you do not know the process, here is a short explanation:

Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions of patchset, under or above your Signed-off-by tag, unless
patch changed significantly (e.g. new properties added to the DT
bindings). Tag is "received", when provided in a message replied to you
on the mailing list. Tools like b4 can help here. However, there's no
need to repost patches *only* to add the tags. The upstream maintainer
will do that for tags received on the version they apply.

https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577
</form letter>

Best regards,
Krzysztof


