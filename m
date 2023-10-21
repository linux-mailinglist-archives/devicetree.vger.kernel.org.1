Return-Path: <devicetree+bounces-10572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA427D1F78
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 22:23:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79152281C51
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 20:23:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A46E208CB;
	Sat, 21 Oct 2023 20:23:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="sf786JB1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF52320312;
	Sat, 21 Oct 2023 20:23:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 066ACC433C8;
	Sat, 21 Oct 2023 20:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1697919781;
	bh=JF5Kry9cPoR465b2DzfRBGeglCdSJlHcQMOywBgtgrQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sf786JB1uXeeDrqajMwEZPzQdk0ztDgyg+dwQ3tX0EVNKkZuv21UoXouvhXrM1j+Q
	 qYDXsQPzOxbJU08EQqpTx78ngsLlvqD/r/MmfpYv3aYDzOFZqEAO8Ch+x1Yazars7G
	 OKkwceMBibxjJievmv4VUQscHZDPSDcce9YGtp8c=
Date: Sat, 21 Oct 2023 22:22:08 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: luka177 <lukapanio@gmail.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kees Cook <keescook@chromium.org>, Tony Luck <tony.luck@intel.com>,
	"Guilherme G . Piccoli" <gpiccoli@igalia.com>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: qcom: Add Xiaomi Pad 6
 (xiaomi-pipa)
Message-ID: <2023102137-trio-lustrous-61e4@gregkh>
References: <20231021201840.210415-1-lukapanio@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231021201840.210415-1-lukapanio@gmail.com>

On Sat, Oct 21, 2023 at 10:18:39PM +0200, luka177 wrote:
> Add a compatible for Xiaomi Pad 6.
> 
> From: luka177 <lukapanio@gmail.com>
> 
> Signed-off-by: luka177 <lukapanio@gmail.com>
> 
> ---
> Add "From:" in commit message

That's not how that works, it needs to be the first line.  The
documentation states this, right?

And "177" shouldn't be in your name :)

thanks,

greg k-h

