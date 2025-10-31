Return-Path: <devicetree+bounces-233895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E0018C26924
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 19:31:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 098C21A61BF9
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 18:32:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A128322A27;
	Fri, 31 Oct 2025 18:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j70pvV+S"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33489288C24;
	Fri, 31 Oct 2025 18:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761935485; cv=none; b=WZ34rGSiHvb8dWERV8m+iRY1fmgGn8v58YEpiiAQNzL027YYj2F9XXsNOJzl2iEgjikJrLcPNk0WWJLITWmi9QJoWcFguHU7x7lUQivKWrYYion/WypDh9YFT/WSBupFzrEpXovI8rR28EHBzMddHiLy1mOa8yN05LDoxpFPm7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761935485; c=relaxed/simple;
	bh=7QjSpP4gSg2HMdbwtzWmMJkDfvOWMcYNnr6C2VlIBUU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Dn72csblJ+qN2CpZSSWI5btZpauHCFic0rsApfXcuOIPFT+vNeCrArk15yaJ51gN4eDGMOH1AdQB+AmxvgBId0XseYdmjD+FQzHbrv6DwQyCfOd2qwCLgJkQyUKLXZO9wubtzmceTlW5Fiu3WybJ760tH45oHmuaLyXaXyLVdhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j70pvV+S; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BAA2C4CEE7;
	Fri, 31 Oct 2025 18:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761935484;
	bh=7QjSpP4gSg2HMdbwtzWmMJkDfvOWMcYNnr6C2VlIBUU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=j70pvV+SC94vUKhBHD8MQjUS05VvhFQfzM7I7ElZuOkGTFN/biEve4GPuD+mw6NE+
	 AsQF+6RxXPXup+RO1x0FL8s9ipNAxL7t5TLX26pQ1PSO85xv6TqBkynY5ybRVRum99
	 aGTCF0xJ0v9wn8J2QsbIChKckJkreP+bm/nOECTRtmZ6e6bHB8CRpQAebaD8IX4XV0
	 7qfGbS5hXMh6JZoPt70UMKPMc5p2K2lFKdyO10ff85R38eesBNZ3BEcdDExOX+BfE1
	 w+vyyDpqR/5v3q9M1GEHjX6dHVffIGwHPNRcG/zwUQoTPhU7zbCrQhoZFu61EbEolt
	 81hXw9B364Yww==
Date: Fri, 31 Oct 2025 13:31:23 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Peter Rosin <peda@axentia.se>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Support Opensource <support.opensource@diasemi.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	asahi@lists.linux.dev, linux-sound@vger.kernel.org,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Martin =?utf-8?Q?Povi=C5=A1er?= <povik+lin@cutebit.org>,
	patches@opensource.cirrus.com, Mark Brown <broonie@kernel.org>,
	imx@lists.linux.dev, Lars-Peter Clausen <lars@metafoo.de>
Subject: Re: [PATCH v2 1/1] ASoC: dt-bindings: consolidate simple audio codec
 to trivial-codec.yaml
Message-ID: <176193548186.1612475.2578905716183905679.robh@kernel.org>
References: <20251031144622.4033833-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251031144622.4033833-1-Frank.Li@nxp.com>


On Fri, 31 Oct 2025 10:46:19 -0400, Frank Li wrote:
> Consolidate simple audio codec (one compatible string, one reg, one
> optional reset-gpios and '#sound-dai-cells' 0) to a trivial-codec.yaml.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> change in v2
> - update title to Trivial Audio Codecs
> - update maintainer to rob
> - add reset-gpios
> - add charles keepax reviewed-by tag.
> - add below
> cirrus,cs4349
> cirrus,cs4341a
> cirrus,cs4265
> "adi,ssm2602", "adi,ssm2603", "adi,ssm2604"
> ti,pcm1792a
> ti,pcm1789 (Add reset-gpios)
> ti,pcm5102a
> dlg,da9055-codec (already added v1).
> ---
>  .../bindings/sound/adi,max98363.yaml          | 60 --------------
>  .../devicetree/bindings/sound/adi,ssm2602.txt | 19 -----
>  .../bindings/sound/adi,ssm3515.yaml           | 49 ------------
>  .../devicetree/bindings/sound/cs4265.txt      | 29 -------
>  .../devicetree/bindings/sound/cs4341.txt      | 22 ------
>  .../devicetree/bindings/sound/cs4349.txt      | 19 -----
>  .../devicetree/bindings/sound/da9055.txt      | 22 ------
>  .../bindings/sound/nuvoton,nau8540.yaml       | 40 ----------
>  .../bindings/sound/nuvoton,nau8810.yaml       | 45 -----------
>  .../bindings/sound/nxp,tfa9879.yaml           | 44 -----------
>  .../bindings/sound/nxp,uda1342.yaml           | 42 ----------
>  .../devicetree/bindings/sound/pcm1789.txt     | 22 ------
>  .../devicetree/bindings/sound/pcm179x.txt     | 27 -------
>  .../devicetree/bindings/sound/pcm5102a.txt    | 13 ---
>  .../bindings/sound/trivial-codec.yaml         | 79 +++++++++++++++++++
>  .../devicetree/bindings/sound/wlf,wm8510.yaml | 41 ----------
>  .../devicetree/bindings/sound/wlf,wm8523.yaml | 40 ----------
>  .../devicetree/bindings/sound/wlf,wm8580.yaml | 42 ----------
>  .../devicetree/bindings/sound/wlf,wm8711.yaml | 40 ----------
>  .../devicetree/bindings/sound/wlf,wm8728.yaml | 40 ----------
>  .../devicetree/bindings/sound/wlf,wm8737.yaml | 40 ----------
>  .../devicetree/bindings/sound/wlf,wm8750.yaml | 42 ----------
>  .../devicetree/bindings/sound/wlf,wm8753.yaml | 62 ---------------
>  .../devicetree/bindings/sound/wlf,wm8776.yaml | 41 ----------
>  .../devicetree/bindings/sound/wlf,wm8961.yaml | 43 ----------
>  .../devicetree/bindings/sound/wlf,wm8974.yaml | 41 ----------
>  .../devicetree/bindings/sound/wm8770.txt      | 16 ----
>  27 files changed, 79 insertions(+), 941 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/adi,max98363.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/adi,ssm2602.txt
>  delete mode 100644 Documentation/devicetree/bindings/sound/adi,ssm3515.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/cs4265.txt
>  delete mode 100644 Documentation/devicetree/bindings/sound/cs4341.txt
>  delete mode 100644 Documentation/devicetree/bindings/sound/cs4349.txt
>  delete mode 100644 Documentation/devicetree/bindings/sound/da9055.txt
>  delete mode 100644 Documentation/devicetree/bindings/sound/nuvoton,nau8540.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/nuvoton,nau8810.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/nxp,tfa9879.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/nxp,uda1342.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/pcm1789.txt
>  delete mode 100644 Documentation/devicetree/bindings/sound/pcm179x.txt
>  delete mode 100644 Documentation/devicetree/bindings/sound/pcm5102a.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/trivial-codec.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8510.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8523.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8580.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8711.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8728.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8737.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8750.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8753.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8776.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8961.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8974.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/wm8770.txt
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


