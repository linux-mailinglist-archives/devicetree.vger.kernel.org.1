Return-Path: <devicetree+bounces-142379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B3BA2531B
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 08:34:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9C8457A2024
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 07:33:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B01A1E7C0E;
	Mon,  3 Feb 2025 07:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UsRIoKni"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F081DED47;
	Mon,  3 Feb 2025 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738568033; cv=none; b=WhzrLfMgoJv7qPlaFxiL6NQ9LODL/8tvRZFRqHVI4rGKDPzBEVv4u/pWSIM8baA2t4uMIYysKozgV3WG00FIOeFmWkx46kQezQHJnflyanYVU7USIGXFPFkjXwN2lbKxz02SLAn5Iem+JOgSzfzSV3FFInehStmAmUj0qTCbt2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738568033; c=relaxed/simple;
	bh=yOy3zcmE0HZGLG2DLjwjOiQ1ZDVv6x3eU+/3hLDWIUo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UBYnXXDcNPQpVOd3PjGsgAz1uyANb8Pv/nBxNX/GS+27VKlTrMfoniPOtsPJ4Ztsy+I6ivDwwIVjl11turwmRQzf3PM3MCepfuBbmbq2TPWEsZyii0n5/Pnmthwdmdciugkp9NGCFm6D0jIRgS95zO3uXN9XhS6PnFvGkbCVGZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UsRIoKni; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A02DC4CEE3;
	Mon,  3 Feb 2025 07:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738568033;
	bh=yOy3zcmE0HZGLG2DLjwjOiQ1ZDVv6x3eU+/3hLDWIUo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UsRIoKni7Yk20ziOyb9DL2vZl2jzq/MwPWN+xK2gZTS83mbNFh8SGEex3IeSW9gFa
	 l0VJnjLmBFx+br2iCRIfeUV6p7vW7VA6QdmT0PQDTZndAIyERaQ9ctja43M8MhcudW
	 gpR66BkU8AP5Ulor5AvYroUKfA4hU765tB2RRHEzDuDS+KO7mVB3bVhTvoJ0bnBcUA
	 eJ4pqfAkqxVYXf7tTiwZ8jNG5hTCfNUOZ2aQhMfYQiYf09lqbOL509wEGM23ITnfqx
	 ezSyiq1//TPd5K1suv51fYYrClr5BCC4Sy6jWG3ntNdKYy3S+sJhgvLWY4hZNXAy39
	 GXdyUBoLlFczQ==
Date: Mon, 3 Feb 2025 08:33:49 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Pratyush Brahma <quic_pbrahma@quicinc.com>
Cc: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v4 0/2] Add support for GPU SMMU on QCS8300
Message-ID: <20250203-lean-delightful-ermine-f5b902@krzk-bin>
References: <20250203-b4-branch-gfx-smmu-v4-0-eaa7aa762f48@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250203-b4-branch-gfx-smmu-v4-0-eaa7aa762f48@quicinc.com>

On Mon, Feb 03, 2025 at 11:17:00AM +0530, Pratyush Brahma wrote:
> Enable GPU SMMU function on QCS8300 platform. GPU SMMU is required
> for address translation in GPU device.
> 
> Signed-off-by: Pratyush Brahma <quic_pbrahma@quicinc.com>
> --
> Changes since v3:
> - Modified the order of clock voting and properties as suggested by Konrad
> - Removed dependency on clocks in commit text as change is merged in
>   linux-next before current base commit
> 
> Link to v3:
> https://lore.kernel.org/all/20241227105818.28516-1-quic_pbrahma@quicinc.com/
> 

How are you sending these?

b4 diff 20250203-b4-branch-gfx-smmu-v4-0-eaa7aa762f48@quicinc.com
Grabbing thread from lore.kernel.org/all/20250203-b4-branch-gfx-smmu-v4-0-eaa7aa762f48@quicinc.com/t.mbox.gz
Checking for older revisions
Grabbing search results from lore.kernel.org
  Added from v3: 2 patches
---
Analyzing 7 messages in the thread
Preparing fake-am for v3: dt-bindings: arm-smmu: Document QCS8300 GPU SMMU
ERROR: v3 series incomplete; unable to create a fake-am range
---
Could not create fake-am range for lower series v3

Best regards,
Krzysztof


