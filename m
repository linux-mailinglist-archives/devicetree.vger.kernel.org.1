Return-Path: <devicetree+bounces-283827-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDe3MlIizmnElAYAu9opvQ
	(envelope-from <devicetree+bounces-283827-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 10:01:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7791D385910
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 10:01:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 92005300F1AC
	for <lists+devicetree@lfdr.de>; Thu,  2 Apr 2026 08:01:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4C97394476;
	Thu,  2 Apr 2026 08:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTvPWQne"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 901CF21D3CC;
	Thu,  2 Apr 2026 08:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775116871; cv=none; b=jg6xusZCJw48ys8Tqd5ByWpNJj97kUn5qtW+CYRKmlJr4p3D8fKr9NLdDTluO+k6vB9QJz0MU2uqKEn6AeC6gw7c+ujbBMkWoGhXwRmWGgZ8F+EZcIs2KOArrUCPx7gxrFzeMj6lqK519OSvZvDbLciN1XH2QL6SgrXZ2vlqY5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775116871; c=relaxed/simple;
	bh=dOBLN9EDUXoP6F3RNlfwPSU/jR0DNDaBV83MF3LHzyU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qNOsmFlPCFSWCFJX5ZqEUO5COfZuW3IX8pDX7PtV3UljqxURkscUU2Y0NedSRONtZa8d8XMTcB05KT0Lr/RCegjT4w7iUfSvxfyZxJDExW9YEzT/SuM5GtsyFBeAqpeGTXO146lYmaT0HbS2t8z9EMmMj+rmueahToRLPAL2NZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTvPWQne; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A72DC19423;
	Thu,  2 Apr 2026 08:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775116871;
	bh=dOBLN9EDUXoP6F3RNlfwPSU/jR0DNDaBV83MF3LHzyU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PTvPWQneucHcWRnBJe8LoYjpL22hEDAAM0vTVlx94GSvRpLgu+jIRhu8p94Jf7+tD
	 EwaMh9sDaS44jfchwbTjsx3RBaAKJsxgTEM+796o1OR3VapbfKsEaXctW50iB/LAii
	 1LOW/1jcolXp9uosOb12OGVdIeI8yCzLhNkN/ZZUwfKcWMOFWa5E8jiprtgpmnglnW
	 BEXhEdix7oKwau+fn0rBRm5E1ZwN6ytEBnKh8jbRPniHHD+09OKvGqVB+2FcWGLjNG
	 BS4NPvQl2fY2+I3WVgvQkr4kVOn2J+AsB9/LVf9aCBVQ3a7RtBD7Xdj9LjMnuVOUlb
	 4ht76ZEw7jFpg==
Date: Thu, 2 Apr 2026 10:01:08 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Alexey Klimov <alexey.klimov@linaro.org>
Cc: Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, linux-samsung-soc@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] arm64: dts: exynos850: Add ap2apm mailbox
Message-ID: <20260402-free-foamy-gibbon-acad72@quoll>
References: <20260402-exynos850-ap2apm-mailbox-v2-0-ca5ffdff99d4@linaro.org>
 <20260402-exynos850-ap2apm-mailbox-v2-3-ca5ffdff99d4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260402-exynos850-ap2apm-mailbox-v2-3-ca5ffdff99d4@linaro.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-283827-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	RSPAMD_URIBL_FAIL(0.00)[linaro.org:query timed out];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[samsung.com,linaro.org,baylibre.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7791D385910
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 02, 2026 at 03:20:16AM +0100, Alexey Klimov wrote:
> Add mailbox node that describes AP-to-APM mailbox, that can be
> used for communicating with APM co-processor on Exynos850 SoCs.
> 
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---
>  arch/arm64/boot/dts/exynos/exynos850.dtsi | 9 +++++++++

What DTS is doing in the middle of the patchset? If there is going to be
resend, then fix the order. If the order is intended, then most likely
NAK but I need somewhere explanation (but I really do not see the need
for it).

Please read submitting patches (both documents).

Best regards,
Krzysztof


