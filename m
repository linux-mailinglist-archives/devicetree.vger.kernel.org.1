Return-Path: <devicetree+bounces-135969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF23A03315
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 00:01:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B787D3A22FC
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 23:01:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 335551E22EB;
	Mon,  6 Jan 2025 23:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOYgWrok"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B5E1E2317;
	Mon,  6 Jan 2025 23:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736204494; cv=none; b=UV/1g6vsuzeXa0Ai2RPuRlyq8EyraMfvGvOAjN8p6dFN5RBu+CWgr8lozSJeMzXF949AGIhSa/y6ZL3WP1nzP9W4QZ5ffqjBfuSzoKXOOZV1zzTqwJqHLvpL6WOkr3XO5PcycSfEPq1+1DNk5XgMlxppTWzlmKZF3Z527spUa6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736204494; c=relaxed/simple;
	bh=XLRYyKN9OTtAlXidxnSwNZeda4GdZRM5tmNq5NHvBHQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ckUhFXVKCA8JYANEKaU1hty6iVxKtZuH3ZUjvGck2FEHfqRTT6rHFqAvInKWrMeEZekPXIFCza42HXzpF+50mhIiG2j2jKPx/VjdtoC3Leiyqd//EBT8leiBrCjw5SGBgf6wvmgMkgeF0KU1C/Q8nA9W5Th24lzwS4Cn7fm/HYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOYgWrok; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B49DC4CED2;
	Mon,  6 Jan 2025 23:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736204494;
	bh=XLRYyKN9OTtAlXidxnSwNZeda4GdZRM5tmNq5NHvBHQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BOYgWrokDSY0u1TNAuInaBmXte7tXgepDZ8IAtdWIkWATYyUH8U80SChoSQnrxIDA
	 QyUZea+Njf0pWmDjdrB+4Tg6JNUru8sLjfhoi6i/dn2miDl8qeGNwTilLmKrQGV7Un
	 daspM4VXI+JXZmTCf5Xh6//FRi1I+fWuIVuzJ3Bdsp32nB5h6A4hUXksqMNHSDgPjg
	 rVlY8yfX7NktE+iCsyf536C8imp0wMXO6gLyw/G/qaddx6SktxOZpiWYy6wOF60c7K
	 kZDPBVZ1rOil+8yp60GETKYoTnQy2t3j8Z8PweWNuw0BAJlTnUmI7rduEYno1kZnAa
	 TxhpIYEElItCA==
Date: Mon, 6 Jan 2025 17:01:33 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk@kernel.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: memory-controller:
 qca,ath79-ddr-controller: Drop consumer from example
Message-ID: <173620449122.1284921.15695764812874159537.robh@kernel.org>
References: <20250103212448.2852884-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250103212448.2852884-1-robh@kernel.org>


On Fri, 03 Jan 2025 15:24:48 -0600, Rob Herring (Arm) wrote:
> Normal practice is examples only show what the binding document defines
> and doesn't include consumers in a provider example (or vice-versa). The
> "qca,ddr-wb-channel-interrupts" and "qca,ddr-wb-channels" properties are
> also not yet documented by a schema, so avoid (not yet enabled) warnings
> on them by dropping the interrupt-controller node from the example.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  .../memory-controllers/qca,ath79-ddr-controller.yaml       | 7 -------
>  1 file changed, 7 deletions(-)
> 

Applied, thanks!


