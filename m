Return-Path: <devicetree+bounces-1521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 483237A6EDA
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 00:52:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2A5E11C20A57
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 22:52:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7028528E31;
	Tue, 19 Sep 2023 22:52:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6144CBE4C
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 22:52:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61A0FC433C7;
	Tue, 19 Sep 2023 22:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695163971;
	bh=noTxmz6iLNnSuo/XV2Cb+rg8rRBwcTLVh5k44MJBDOA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aLmedwLCQM6OeIqTlqbaDNWsK8K64O31bj9DM9VHlYD3FzTID3e5wmMtweKMR2NId
	 8m5ucWI4XssmyPVYwDEwkjaEWRLfW+X9NxjImJDymLjS6ahthzpiQaeruw0sU+l1jy
	 F0g4YPO8rEjOLC/4DYamaknCpDFybfUqUuDVJAB7lzrTfn3HYWnVVRlfOyVn99c/fw
	 pBOEur9+ZS7dwpI0Mr4jEI089+SfAKifabqHUR1s4bSvlEyuhLM1WQJ81/yQgs+Ccp
	 aIcz7g2cXEnvNCE3HE2JkgB/NZGQCmiNdPspRTyeW8znPXEq0qGlSJHav5H6UlzGJ7
	 ndt3Xr3MW6QLg==
Date: Tue, 19 Sep 2023 15:56:59 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	Kalle Valo <kvalo@kernel.org>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: qrb2210-rb1: add wifi variant
 property
Message-ID: <d35jpxdg5xektdsctj6uh7lys55h6eague6uipdv4emhz35jrg@bhobgz2ngjxv>
References: <20230801232448.4175662-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230801232448.4175662-1-dmitry.baryshkov@linaro.org>

On Wed, Aug 02, 2023 at 02:24:47AM +0300, Dmitry Baryshkov wrote:
> The RB1 platform doesn't have board-specific board-id programmed, it uses
> generic 0xff. Thus add the property with the 'variant' of the
> calibration data.
> 

I'm not able to find any patches posted that adds the &wifi node in
either rb1 or rb2. Can you please have this squashed when that node is
added?

Regards,
Bjorn

> Note: the driver will check for the calibration data for the following
> IDs, so existing board-2.bin files will continue to work.
> 
> - 'bus=snoc,qmi-board-id=ff,qmi-chip-id=120,variant=Thundercomm_RB1'
> - 'bus=snoc,qmi-board-id=ff,qmi-chip-id=120'
> - 'bus=snoc,qmi-board-id=ff'
> 
> For the reference, the board is identified by the driver in the
> following way:
> 
> ath10k_snoc c800000.wifi: qmi chip_id 0x120 chip_family 0x4007 board_id 0xff soc_id 0x40670000
> ath10k_snoc c800000.wifi: qmi fw_version 0x337302d3 fw_build_timestamp 2023-01-06 01:50 fw_build_id QC_IMAGE_VERSION_STRING=WLAN.HL.3.3.7.c2-00723-QCAHLSWMTPLZ-1
> ath10k_snoc c800000.wifi: wcn3990 hw1.0 target 0x00000008 chip_id 0x00000000 sub 0000:0000
> ath10k_snoc c800000.wifi: kconfig debug 0 debugfs 0 tracing 0 dfs 0 testmode 0
> ath10k_snoc c800000.wifi: firmware ver  api 5 features wowlan,mgmt-tx-by-reference,non-bmi crc32 b3d4b790
> ath10k_snoc c800000.wifi: htt-ver 3.114 wmi-op 4 htt-op 3 cal file max-sta 32 raw 0 hwcrypto 1
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
> index 608bb119ff02..166385971d7b 100644
> --- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
> @@ -536,6 +536,7 @@ &wifi {
>  	vdd-1.8-xo-supply = <&pm2250_l13>;
>  	vdd-1.3-rfa-supply = <&pm2250_l10>;
>  	vdd-3.3-ch0-supply = <&pm2250_l22>;
> +	qcom,ath10k-calibration-variant = "Thundercomm_RB1";
>  	status = "okay";
>  };
>  
> -- 
> 2.39.2
> 

