Return-Path: <devicetree+bounces-158416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DDCA66965
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 06:31:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B0CAF175507
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 05:31:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86EE71CD214;
	Tue, 18 Mar 2025 05:31:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C4x5QfnQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECA1D2B9A4
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 05:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742275868; cv=none; b=nKiUayisrZl2OBKtyONJ+aeGcXfcAgXC5cq9hFyPZO5P4Te6K6pE+i4gdbcBNMWCfbqJ4uvo5Ar2OOyy+jU0uQzcQT7R4OdE+NOTTSdW+wdfYj1Exbr4MIViQ9H3p5T0QbHTtl3jhin/PFY/QdE/4MB16nSK24rGQ8n/1b+Aw20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742275868; c=relaxed/simple;
	bh=uc0nqUy8n6Lwy/VSv9TAgXJgTNY7busrfcgDDejJjrE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eZ3d60HEAmYnAHMv36A0Wz82+5qIfPiDkafXFgjQ5BnDZvDur/X2h4rJ6ZK08E5IvNKRZFJRF8l7jumWrAGeRAZFu1PJQLi8a5f93POaIGras9jqpvhL2fLQuDZ5ywtWmiHhMoEgBIY7acEObaodJzLmnX+48WC5kyZD7acS1q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=C4x5QfnQ; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-225b5448519so96457645ad.0
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 22:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742275866; x=1742880666; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WZOO6fXLUM5QQ6l+FSRSueHWGfAmK/qcP1DtlCjY8Js=;
        b=C4x5QfnQHvohKSaOJtlIvFHlPp/GGUhkytSkRerthYH9tDzm4NUFRTiSqZxngKOMTs
         ErT/dlUGXy2fuZbBQh+EFlC/2myqdIgNRQ/Mea7o7VzBdgFzxSXUMU4K9xTUO6RSb6BY
         PfBFJFpjSbtoYEeyD0o5cIzuSOfLbWpTZotxRAvkBhBhemdZu38Fn6jk3v5Q5ftMumwg
         i+kf/xcy6LRJ/VgPtYIAdKy1hZil6Omr1JXsHbb4CqW79jT+BWZc6gqAiZd5EtF7PDD0
         /qoJ9UJMJ3LIAKUQWzpnOja5b+MeFtC/9NpfSrAmMBLVD7pEVpULirTViEehTHMtkYxs
         heFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742275866; x=1742880666;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WZOO6fXLUM5QQ6l+FSRSueHWGfAmK/qcP1DtlCjY8Js=;
        b=e5tLnpXwfeTjyMRKVyRcg8W87kJZ4hCN8k8Z5ARhKv0zCJiEoQ/TDmeofuU98HTc6B
         A7wF160FPsAk6KKQFvJZ5WieNB9LEgHMkLZSlvwUoE6K22Ih9/9Q6NgzdlXp258naROC
         uw+YJ4RaZxUZ6vSa8GgaInqOMETE4Uw4J0LpPz5BTOFOCDoccF0T2vpX+OBT+F22T/Eu
         Wn20iy2oh0JZ4XhFnVvZLYgG7KXEYbMtWsnpyuh27/4XlJ6umpW5oEq/0rCwwPnFoR4p
         9GWbCxz2YgTXDmIWgE6VPR+DAJCxdFXkJkNUZoKjUR+NdDcObuWcGD8dKA4YphlKeWVS
         3dtg==
X-Forwarded-Encrypted: i=1; AJvYcCXCcyPe+SKGovgsmGE+8wq0gaZS2DcZd9+6qcsKFKLo4sIf4Ggokv5t7M56hd33jLcaFJJwNq2bluoH@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2j27sIkSSumQRI7J61419SszpWOEr9TkZy6QP9gHdS+1lHmnS
	SJP+fFzxdaPYn/6WEVLnBsDbOlPGvfnYXsRlYpUacRSpwt/w4VjMe4o56d51Mg==
X-Gm-Gg: ASbGnctTeiB0kztXh283zfYjLY4VUm3EQVKTygQrC0/SOpehnKqCEyoLQjqKtF3QEaj
	W2Ro1sy7HISXuuo7DGKL6ebw8mvJFMHeqdVyHHSNyYb57SzdvNwovTcyCD8y/D2HnKxJWejh9Dh
	ICb1o6Dw4NTTnX8f1qOdPSq+YPmBR1Qg4bor1dVE9fiy3JdGrAaz9eYxEWdNAoTACBsPQ8qJXOq
	qf7wYhaskoHVBJBvARbJv83+SZtOdN2c0cKYlTf4/OO59/lAjOliifqrWzkMNa98Cf8s801Zqi3
	uZvBZnI5/U724pt9laWgRPQtLi3V+jaO2gghyz4XGMpLb7dE4jNvjrx2
X-Google-Smtp-Source: AGHT+IHLYD5fTKzDENoVI+mnh+1/mTxdSkdiF0on8Wov7vEkkGeSNfMXP1QSWphdwBuAx/8LoGtLHg==
X-Received: by 2002:a17:902:ce84:b0:220:ca08:8986 with SMTP id d9443c01a7336-225e0a6c2ddmr176694025ad.22.1742275866087;
        Mon, 17 Mar 2025 22:31:06 -0700 (PDT)
Received: from thinkpad ([120.56.195.170])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c6bbe5a2sm85314025ad.196.2025.03.17.22.31.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 22:31:05 -0700 (PDT)
Date: Tue, 18 Mar 2025 11:00:58 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	Nitin Rawat <quic_nitirawa@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Manish Pandey <quic_mapa@quicinc.com>
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: sm8750: Add UFS nodes for
 SM8750 QRD board
Message-ID: <20250318053058.ddhzbilbtenglfy4@thinkpad>
References: <20250310-sm8750_ufs_master-v2-0-0dfdd6823161@quicinc.com>
 <20250310-sm8750_ufs_master-v2-6-0dfdd6823161@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250310-sm8750_ufs_master-v2-6-0dfdd6823161@quicinc.com>

On Mon, Mar 10, 2025 at 02:12:34PM -0700, Melody Olvera wrote:
> From: Nitin Rawat <quic_nitirawa@quicinc.com>
> 
> Add UFS host controller and PHY nodes for SM8750 QRD board.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
> index f77efab0aef9bab751a947173bcdcc27df7295a8..8dd82494ba5aea6e6b5ddafc9299ec68dfb84bcd 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
> @@ -790,3 +790,21 @@ &tlmm {
>  &uart7 {
>  	status = "okay";
>  };
> +
> +&ufs_mem_phy {
> +	vdda-phy-supply = <&vreg_l1j_0p91>;
> +	vdda-pll-supply = <&vreg_l3g_1p2>;
> +
> +	status = "okay";
> +};
> +
> +&ufs_mem_hc {
> +	reset-gpios = <&tlmm 215 GPIO_ACTIVE_LOW>;
> +
> +	vcc-supply = <&vreg_l17b_2p5>;
> +	vcc-max-microamp = <1300000>;
> +	vccq-supply = <&vreg_l1d_1p2>;
> +	vccq-max-microamp = <1200000>;
> +
> +	status = "okay";
> +};
> 
> -- 
> 2.46.1
> 

-- 
மணிவண்ணன் சதாசிவம்

