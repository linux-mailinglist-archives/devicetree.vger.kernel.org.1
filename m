Return-Path: <devicetree+bounces-256586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 26721D399B2
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 21:24:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 541BA3001FD7
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 20:23:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E1253009E4;
	Sun, 18 Jan 2026 20:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="GhMQOs7S"
X-Original-To: devicetree@vger.kernel.org
Received: from out-171.mta0.migadu.com (out-171.mta0.migadu.com [91.218.175.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27C42F533E
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768767835; cv=none; b=DANVAtN4x0vfY86xhydb574e/UD7Lo+tqJMCs+vtv1FvS1IdjB/wDKIHgqkjXIVEJ3u1FZHn99ZNo9aXgCwpFh+kGDMdWtsqDhth0OgdP250RcfoZ1hFR6pLglQdcVvT3x4KAraLoiTraBI35Erdk3dJxi2/3tmBqnvIkShcjDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768767835; c=relaxed/simple;
	bh=1KmlhgpnhMhlTqqRX7V6IQGrXJek28BbOi1DT9+1fXg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=p+5TsyEk5BnirS3YZDFSu38OFtvp3330MZMr8iUOQh5WzE9c9PHC0nYMbL7DPXZuGrlNvIjlvfB3GwnqKGXJNyOd9k2et31/+6qlyRmnKu59QYOWe1vS0LppOgKPgKXh1IcJj2lp5tf7LMdRfyZbZSHBOETwhQeT0MH1AMlUbb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=GhMQOs7S; arc=none smtp.client-ip=91.218.175.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
Message-ID: <d14e84d5-5c64-43d9-a3d1-6e5361322551@packett.cool>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1768767821;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DmNLrCGOrA1csfsCDmuvQF5SpM6jdS7qdpTp3KM6ngA=;
	b=GhMQOs7StyS5ZHla0fMcITb5pMdno5t3S+txLY2YVle7I3JCgIt7ATeFXMVTFwxKv1oW8f
	7xy5intqFr8t1FkceR5Wt4yaKFPCnvsCIJHJ5kQm5hyimdK3WYscr8FJkyB70Nrmb8gpj+
	6yc5NeeqCBAD6LVudha1/+QdJHpZYHojOmgaOn8UgU3UobCYliw3UMv8LIR04KKq6KnQsx
	lr+CEBVbbSLNNJvHWk+UQBnHuK6x1OjMWKEWX+FAWIt+nUTqy7Su2ghZR08buoU7O54JhT
	FXGOohtA9eE6X4cvj2iExoyEPvEJ77vsg3ssKvYW+hHdXuF2d1sr/2WYzfpLXQ==
Date: Sun, 18 Jan 2026 17:23:34 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] arm64: dts: qcom: hamoa: Add 1443 MHz OPP to iris video
 codec
To: Alejandro Quintanar <alejandro@quihel.net>, linux-arm-msm@vger.kernel.org
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 Deepa Guthyappa Madivalara <deepa.madivalara@oss.qualcomm.com>,
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260116190225.25320-1-alejandro@quihel.net>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Val Packett <val@packett.cool>
In-Reply-To: <20260116190225.25320-1-alejandro@quihel.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT

hi,

On 1/16/26 4:02 PM, Alejandro Quintanar wrote:
> Add the missing 1443 MHz operating point to the iris video codec OPP
> table. The qcom-iris driver requests this frequency but fails with:
>
>    qcom-iris aa00000.video-codec: dev_pm_opp_set_rate: failed to find OPP for freq 1443000000 (-34)
>    qcom-iris aa00000.video-codec: power on failed
>    qcom-iris aa00000.video-codec: core init failed
>
> The iris driver uses the sm8550 compatible fallback and expects higher
> frequencies for turbo modes. Without this OPP, hardware video encoding
> and decoding fails on x1e80100-based devices.

That sounds strange. I never needed to add an OPP to iris, let alone 
such a massively higher one. I can decode two 4K AV1 streams 
simultaneously on x1e80100-dell-latitude-7455 and it works fine (adding 
a 3rd one just grinds them all to a halt, no power errors).

Looking at the code, the clock is calculated as a sum of *minimum* 
frequencies required for all running sessions (with a fallback to 
ULONG_MAX if that's not available.. hmm) so maybe something is off 
somewhere..

~val


