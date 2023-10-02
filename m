Return-Path: <devicetree+bounces-5035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CAD27B4E39
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 10:54:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C91F1281F44
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 08:54:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1B6D63DF;
	Mon,  2 Oct 2023 08:54:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C79463CF
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 08:54:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67249C433C8;
	Mon,  2 Oct 2023 08:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696236890;
	bh=mY7V5HpyJPC8BlHMafAISBNk/3kEqWunRznr/2Tfk3E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OipTIeg3+nGvXaWjN+6iARoJvRvz3G8QwnLJ/o9uYn13LOPWEs0WBfV+s1KK4o2Pb
	 bu/jacqCEImLQszaTUgOf5wFYzaQZMDwNSDVPtkQHg3TsgjR0xMiJ6U1EEQ5clySi2
	 SsmRHN8y3nHaKNmRCweEOGaN9Nsd3HC/9N5K7h65qq6tCFEx4zM33qKPzo6e3OZ/Yb
	 eRSidAB3ekvpJ7k1x6E5JhmjBxGlpeQXkAJl7iQl4gZAJPFLfHhSreIeXulkm4Xv95
	 CAU/izHn0X1q0Rv2FmP+aAvIOgOvQcY869Y8RKjbxI+Kvb9TmgO6JjFpmuvh9iAJbK
	 DIGlQZMUH12OQ==
Received: from johan by xi.lan with local (Exim 4.96)
	(envelope-from <johan@kernel.org>)
	id 1qnEhd-0004bV-2m;
	Mon, 02 Oct 2023 10:54:57 +0200
Date: Mon, 2 Oct 2023 10:54:57 +0200
From: Johan Hovold <johan@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp-x13s: Use the correct DP PHY
 compatible
Message-ID: <ZRqFYWtEcuSCauCf@hovoldconsulting.com>
References: <20230929-topic-x13s_edpphy-v1-1-ce59f9eb4226@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230929-topic-x13s_edpphy-v1-1-ce59f9eb4226@linaro.org>

On Fri, Sep 29, 2023 at 06:02:57PM +0200, Konrad Dybcio wrote:
> The DP PHY needs different settings when an eDP display is used.
> Make sure these apply on the X13s.

Good catch. This looks to be more in line with what Bjorn intended.

You should fix up sc8280xp-crd and sa8295p-adp.dts as well however.

> FWIW
> I could not notice any user-facing change stemming from this commit.

I've seen some infrequent link-training failures (e.g. on resume) even if
it's been a while since last time now.

> Fixes: f48c70b111b4 ("arm64: dts: qcom: sc8280xp-x13s: enable eDP display")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
> I have no idea whether DP3 is hardwired to be eDP, like it
> seems to be on the last DP controller of SC7280. In that
> case this would be moved to the SoC DTSI.

sa8295p-adp appears to use mdss[01]_dp[23] for eDP.

> ---
>  arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> index 38edaf51aa34..6a4c6cc19c09 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> @@ -601,6 +601,7 @@ mdss0_dp3_out: endpoint {
>  };
>  
>  &mdss0_dp3_phy {
> +	compatible = "qcom,sc8280xp-edp-phy";

Nit: Can you add a newline here after the compatible, please?

>  	vdda-phy-supply = <&vreg_l6b>;
>  	vdda-pll-supply = <&vreg_l3b>;

Johan

