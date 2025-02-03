Return-Path: <devicetree+bounces-142572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2922CA25CA7
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 15:34:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E071E7A2D2C
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 14:32:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D807321129C;
	Mon,  3 Feb 2025 14:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JPFRpq1l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6659221129D
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 14:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738592774; cv=none; b=umKcx5jKx3I3K4UI+hZcCVUx/EfNcl3UEZVGDmU3JiOLOY3Dxnfca5i6111DUeluyqkfpK64cu1pdhPZkU9K5uXcdm9ZkQ3jPEDwnHcrEpAXuiZi+PiE0+16/yF/59PI3LJqeJoF0hTMmLTlnvbG+gueYfyONGHDYHhK2V+DtcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738592774; c=relaxed/simple;
	bh=eQmN+wSYqNfPSq7/lGm2FRWILAta40UWxadBXdb2dCU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JTRMSovqw31S9djNfiW8Opxq7aLY4vi26N1J1QBXukCdCbKnUofzPWKDiDjle0UBP9ocmA/LDYZy4K1M67Grq46xQN/wtGFStmdsFrmT+8w1BWnBa96vqYucSQrmOX3CnevhQc6+DS94qyKfvcOYsTPlMbDQRFvzXvV4JRrWoPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JPFRpq1l; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2167141dfa1so76877645ad.1
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 06:26:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738592771; x=1739197571; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Qwfs5ZTiLlNTPpq6GVEveYLjOMUtMGx1iY3Hoyz/gnI=;
        b=JPFRpq1lIax9qYN1iqQHift/c/M1X8eEWbuaLSeerK+F/rjy8cX9GgrBg6bEJI/CX8
         Zc2xIldFZXoAxa2rb8q8Grciti2+T/PTz9BpJKRP39Sg9r/kiiMJGBYXap+i1nXWDNsZ
         ByjLypBmzORX9Jz1aeOVriPRu7EgXVtULqKGWPYR0NjVQ0uo6xHihGhmee9m3Wl1G5IE
         umgrKIs6o6mbE2Mvu6lF0J/gJxu28exPBgeQwUI382tZQeeJhwQVkdgrKctkctfgPG9l
         k00+vprvjcoYt3oNlDVV3jn0Bcyg5V2Bq4GlmnBM7+NKZSV2B4OeaN/Ic3/eeC5WhNHo
         yUXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738592771; x=1739197571;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Qwfs5ZTiLlNTPpq6GVEveYLjOMUtMGx1iY3Hoyz/gnI=;
        b=MDmTM/atVXInWwDdz9p0njAA0FU3Rrf/K3N/A/TXEWqjkjz01h6sLm/w7pgj5K1L23
         OVwnLAS1nLJ67es3fXiC0eIHvn4/CjEGo1dhhDirTppbWkfcWjcPKkTDznp2TYMIhIGd
         caXjV29K9eLGYLs9G16h3Icq1p+1/PVX72lHRqz1zhBFaLAPsooMIfUfNpaqh8dRBcy8
         Dn5faPl+si/SpdoWequtMyHHREXDyUe9tGJDbA2JWKAJKXZGnXj6zWAeUiVYa8eg7mbA
         CqjfnGbwXRf0Nog0S22ARwCyNEZemNM91haut6dp+38xuxwxTLG3yfojh/XRQo1pZYg0
         +6iQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2WlYNZEfpS0WC8y4Eho12yFtu8Hqaj2l/5boY1YrPv7lvvD7bJ+d+X/JY+8zFoTQsWpaUkElDoM1G@vger.kernel.org
X-Gm-Message-State: AOJu0YwOIKJQzEdJBKOs+SRx8vaXB/YbjV87KBhP6jTPcQWn8h5k977x
	KiwptGcHSwa8javR/VWwrm9eEj8VV88ncvbwXEur4KB761UUcdbmTgMG7QAueQ==
X-Gm-Gg: ASbGnct5fxGFkEa7wK09hCncI+fhaRfHV5ZICMgp6RjQhuFwoCUO3UPmjqiMpaIcqH0
	5bbN0e6ZqCuyhk2aAqS857yZZB1LSHjYLinR+bM9bPM2jR51sY1I/96zWjE1AIq4k0pDr6EW6Yv
	RlS9YewVKytnoF02HgKBh8GOSLpbA77e4Ewxwdm+rkVY2guk/Bg/uJCsZI3hot3unTag3xFjoSG
	QVzoQXAIg8jfzLNxkhHdR0+HRu8AOjc9cRdrWI8FiQrhEM/xBwQ6ZJwcCvc0YsL06xpyzPT2wLh
	ECOtQuMiO7TvJhkn7F6XEKSyFg==
X-Google-Smtp-Source: AGHT+IG8vvs+euO/ez1FxBukXMJbsbYt2P49CFmVm6CSf7uQjAXZ4KTRY4SvUqVfvG4OF84t8Yabqg==
X-Received: by 2002:a17:902:cecc:b0:215:3998:189f with SMTP id d9443c01a7336-21de19566bemr244795305ad.6.1738592770645;
        Mon, 03 Feb 2025 06:26:10 -0800 (PST)
Received: from thinkpad ([120.60.129.34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21de32eb995sm75748215ad.148.2025.02.03.06.26.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 06:26:10 -0800 (PST)
Date: Mon, 3 Feb 2025 19:56:04 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	konrad.dybcio@oss.qualcomm.com, quic_mrana@quicinc.com,
	quic_vbadigan@quicinc.com, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v4 1/4] arm64: dts: qcom: x1e80100: Add PCIe lane
 equalization preset properties
Message-ID: <20250203142604.mh3vx2fzrut5wc3z@thinkpad>
References: <20250124-preset_v2-v4-0-0b512cad08e1@oss.qualcomm.com>
 <20250124-preset_v2-v4-1-0b512cad08e1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250124-preset_v2-v4-1-0b512cad08e1@oss.qualcomm.com>

On Fri, Jan 24, 2025 at 04:52:47PM +0530, Krishna Chaitanya Chundru wrote:
> Add PCIe lane equalization preset properties for 8 GT/s and 16 GT/s data
> rates used in lane equalization procedure.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
> This patch depends on the this dt binding pull request which got recently
> merged: https://github.com/devicetree-org/dt-schema/pull/146
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index a36076e3c56b..6a2074297030 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -2993,6 +2993,10 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>  			phys = <&pcie6a_phy>;
>  			phy-names = "pciephy";
>  
> +			eq-presets-8gts = /bits/ 16 <0x5555 0x5555>;

Why only 2 entries? Isn't the property supposed to define the preset for all
lanes?

Same below also.

> +

remove newline here.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

