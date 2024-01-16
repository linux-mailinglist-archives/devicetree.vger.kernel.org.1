Return-Path: <devicetree+bounces-32384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 967A882F2E5
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 18:10:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F9FB28867C
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 17:10:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73C941CA9B;
	Tue, 16 Jan 2024 17:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AC2tgQRJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DEC1CA87;
	Tue, 16 Jan 2024 17:10:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9121EC433F1;
	Tue, 16 Jan 2024 17:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705425007;
	bh=WCi6VGkBIXSBMccsoDB/WZ6vKhOsmu9kfVAUQ8dIkdM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AC2tgQRJMJBy3BvQIGWENmv0xrO3i6eH56mpqRHbnn0HwwXlvLFF9J1+4w/Yv2rRi
	 uPgBAE4sECuMuo/D0docvQG7bY3GmiQI246QkRexqOZHwU6hd3NwFGQcvoqJmZJxkJ
	 I8C/D3RrRdsEnSvjOMxLOF21vAoO7b+C8Sc2fZBLNSh4Xx/wy4abrutJSPJ04oAQRd
	 so49wXxbsS+KdkYQClNx888QpyoHTnBm33/pAqye6SdwowMDFhnHmeU0qsx9JV2KUK
	 x5Q8CYFCuFgHPUqs3CMml/6ai+q/7/t3pZZj6s2s6r3aCokpFpOtZWfxLecO15UWO7
	 YV5f6MOUMX9Ng==
Date: Tue, 16 Jan 2024 11:10:05 -0600
From: Rob Herring <robh@kernel.org>
To: Zhenhua Huang <quic_zhenhuah@quicinc.com>
Cc: krzysztof.kozlowski+dt@linaro.org, quic_tingweiz@quicinc.com,
	richard@nod.at, vigneshr@ti.com, conor+dt@kernel.org,
	linux-kernel@vger.kernel.org, miquel.raynal@bootlin.com,
	linux-mtd@lists.infradead.org, quic_bjorande@quicinc.com,
	devicetree@vger.kernel.org, robh+dt@kernel.org
Subject: Re: [PATCH v2] dt-bindings: mtd: avoid automatically select from
 mtd.yaml
Message-ID: <170542500495.126061.10553621105906619365.robh@kernel.org>
References: <1704885705-7486-1-git-send-email-quic_zhenhuah@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1704885705-7486-1-git-send-email-quic_zhenhuah@quicinc.com>


On Wed, 10 Jan 2024 19:21:45 +0800, Zhenhua Huang wrote:
> The mtd binding is always $ref'ed by other bindings, default selector
> should be from other binding files which ref'ed it. Now, "$nodename" in
> mtd.yaml turns into a "select" automatically such that a few binding check
> issues reported because it conflicts with sram devices(eg, qcom,imem.yaml,
> rules in folder sram/*)
> 
> To avoid the automatically created "select" in mtd.yaml, adding:
> 
> select: false
> 
> Suggested-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> Fixes: 7bdc671822e9 ("dt-bindings: mtd: physmap: Reuse the generic definitions")
> Signed-off-by: Zhenhua Huang <quic_zhenhuah@quicinc.com>
> ---
> Hi Bjorn,
> 
> As the idea is from your comment, I added "Suggested-by" you.
> Please tell me if that's not suitable. Thanks.
> 
>  Documentation/devicetree/bindings/mtd/mtd.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


