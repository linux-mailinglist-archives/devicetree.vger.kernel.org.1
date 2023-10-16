Return-Path: <devicetree+bounces-8974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A8C7CADC2
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 17:40:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1DB3E1C2030D
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 15:40:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F376D2AB36;
	Mon, 16 Oct 2023 15:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXBxWqD4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D65F729422
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 15:40:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8DEBAC433C9;
	Mon, 16 Oct 2023 15:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697470808;
	bh=x6oRhyvnMXidDUSwxZNupzsLuIKRsX2HDyNAn1+O64I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kXBxWqD4scC//5xFA/IbPLVe2hmBXfo/NuwPIiTN4Opt2RlGCYkMMH2UzKrvWrASn
	 EUagcH0hn8LcKPU5yzPgYcRjYlqahu+21++XIRYHjDU/UWV0cs1dhBfPjWlbuJB+Xg
	 EhtnShMNLxxQpT01801ABqnmKZ7izPuM1/ZoShWhR7KqDF4JeuKsbe0nTbF8Gs49y3
	 guav1fURR8Bzn2SJv+yUH/3X4FDUu7gH6IAiJgjkphGD76kv8OKOzVyrHaV6GxG1R0
	 Sjq5ncTm2umWjuG10RDeNLfC3fDEbia1yFGfIrMknth4yD7AKNBwmEpssbW5GR2c0j
	 5OsP0roHy64EQ==
Date: Mon, 16 Oct 2023 08:43:55 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	Andy Gross <agross@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/5] arm64: dts: qcom: sdm845-mtp: switch to mbn
 firmware
Message-ID: <af4fx3u6c3znawelenzwtm2cter7cpdis34q64ug3cqzina774@jhqj6o3ectv3>
References: <20230826221915.846937-1-dmitry.baryshkov@linaro.org>
 <20230826221915.846937-4-dmitry.baryshkov@linaro.org>
 <a12eee9b-e159-4e1b-b812-60cdf93c1b41@app.fastmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a12eee9b-e159-4e1b-b812-60cdf93c1b41@app.fastmail.com>

On Mon, Oct 16, 2023 at 03:39:01PM +0200, Arnd Bergmann wrote:
> On Sun, Aug 27, 2023, at 00:19, Dmitry Baryshkov wrote:
> > We have switched most of devices to use mbn (squashed) firmware files
> > instead of spit mdt+bNN. Even this DT uses modem.mbn and a630_zap.mbn.
> > Let's switch adsp and cdsp firmware files to use .mbn format too.
> >
> > Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> I saw this pop up in the dts pull request today, and this needs
> some more clarification I think: Why does the dts have to know
> about which format the files are in? I would expect that to be
> handled by the driver internally.
> 
> From what I can tell, either the two files are compatible,
> and the driver can just try both names by manipulating that
> string, or the two are incompatible and changing the firmware
> name would also mean that the dts node and driver would
> have to be aware of the difference.
> 

The implementation does not care about the file name, it will detect
which of the two formats is being provided and load the content
accordingly.

So what this patch does is to align the firmware file name to match what
we have in linux-firmware, and what the few of us booting this device
have hacked around in /lib/firmware for (quite) a while now.

Regards,
Bjorn

