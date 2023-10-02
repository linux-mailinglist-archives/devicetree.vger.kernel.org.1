Return-Path: <devicetree+bounces-5235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F9D7B5AAD
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 21:02:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id DF2632829B9
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:02:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E99911F187;
	Mon,  2 Oct 2023 19:02:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3091DA29
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 19:02:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8357C433C7;
	Mon,  2 Oct 2023 19:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696273363;
	bh=DQV4eoMp9jFD7zvkmtOSYdMnuHNf0VvMoMtfzjO/Ekg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BfpmflcifU8vwKb1LuUbnKaLt7SrgFfJ8mi6JgBhDBtu8f6evox6lco6qaN9shTY2
	 4hOItYfn1gkGiVOr0F5JLa8Ea/NkLSchdpeBYwVcBdO/4NdxqvlarrrV0jrTTW/hGC
	 2ONqqyKkO56gq30zdhOEH39FZrez43YsIqmC4z40vS8rxzNaBocEMbKRAhNla7N440
	 ZexOGwcak3iCl6596OPjS6+I1B6hVAoCjaCTg3tIIG5o+l4wmCBlgv1ZtFZcS6rhKW
	 7lSvldWLCgz4TM5QkdmgGiET8ifENe7jiuhl17cShv/KTnoxqYDU4nUwlzl3ilg9fT
	 3JizYOObasTZw==
Received: (nullmailer pid 2346989 invoked by uid 1000);
	Mon, 02 Oct 2023 19:02:40 -0000
Date: Mon, 2 Oct 2023 14:02:40 -0500
From: Rob Herring <robh@kernel.org>
To: Robert Marko <robimarko@gmail.com>
Cc: Christian Marangi <ansuelsmth@gmail.com>, rafael@kernel.org, linux-arm-msm@vger.kernel.org, sboyd@kernel.org, krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, conor+dt@kernel.org, linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, ilia.lin@kernel.org, vireshk@kernel.org, robh+dt@kernel.org, agross@kernel.org, nm@ti.com, andersson@kernel.org, konrad.dybcio@linaro.org
Subject: Re: [PATCH v5 2/4] dt-bindings: opp: opp-v2-kryo-cpu: Document named
 opp-microvolt property
Message-ID: <169627336028.2346949.8537369869669018895.robh@kernel.org>
References: <20230930102218.229613-1-robimarko@gmail.com>
 <20230930102218.229613-2-robimarko@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230930102218.229613-2-robimarko@gmail.com>


On Sat, 30 Sep 2023 12:21:17 +0200, Robert Marko wrote:
> From: Christian Marangi <ansuelsmth@gmail.com>
> 
> Document named opp-microvolt property for opp-v2-kryo-cpu schema.
> This property is used to declare multiple voltage ranges selected on the
> different values read from efuses. The selection is done based on the
> speed pvs values and the named opp-microvolt property is selected by the
> qcom-cpufreq-nvmem driver.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---
> Changes v5:
> * Fix typo in opp items
> 
> Changes v4:
> * Address comments from Rob (meaning of pvs, drop of
>   driver specific info, drop of legacy single voltage OPP,
>   better specify max regulators supported)
> 
>  .../bindings/opp/opp-v2-kryo-cpu.yaml         | 39 +++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


