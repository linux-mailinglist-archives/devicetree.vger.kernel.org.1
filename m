Return-Path: <devicetree+bounces-22936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CED809970
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 03:44:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E95AA282147
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 02:44:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08A837F4;
	Fri,  8 Dec 2023 02:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMA7D1EE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D781817FF;
	Fri,  8 Dec 2023 02:44:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56E85C433C7;
	Fri,  8 Dec 2023 02:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702003452;
	bh=I5sJy6eBAvZlN23cukfV2ZcXAxpxPV68kGFNnW99WKI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AMA7D1EEet+ynKSS9KDL9zUfLr6wB9r9ua9duUOZYYtMPleXgg9eUSAqvsTWaYhg7
	 R7kRMr5QDu00YSaQ9gyRQkyG+FI8f1Pw56SowXjXxL7eDNior9txEP2sYJpN+G7Rmo
	 25Gfng57aiH8vwOMdBvLqUzYiq9CqYdVGWTKZCrmFZebjlbRAlryk3OqiuraZvB6o0
	 v1G1e96oPc+vx+XlIoLeyX+Hf9jyOvoBvwhG95iMKXlAl1aKW3Ha6LYWn+J0Rb2H1r
	 3hIb1IiuSCQAB8iNrFesNlhkeyXySV64Tz3MWXkejegm4F9Qm0PROypz4ZLJds8cjz
	 64eHddmzL6IZw==
Date: Thu, 7 Dec 2023 18:48:47 -0800
From: Bjorn Andersson <andersson@kernel.org>
To: Nikita Travkin <nikita@trvn.ru>
Cc: Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, ~postmarketos/upstreaming@lists.sr.ht, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/3] arm64: dts: qcom: pm8916: Add BMS and charger
Message-ID: <mmxk4dko6ib2pgrzcotxf65q5c7d4eaykd4sfh2ryrmfbdabd7@wnttadck2mda>
References: <20231120-pm8916-dtsi-bms-lbc-v4-0-4f91056c8252@trvn.ru>
 <20231120-pm8916-dtsi-bms-lbc-v4-2-4f91056c8252@trvn.ru>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231120-pm8916-dtsi-bms-lbc-v4-2-4f91056c8252@trvn.ru>

On Mon, Nov 20, 2023 at 07:03:04PM +0500, Nikita Travkin wrote:
> diff --git a/arch/arm64/boot/dts/qcom/pm8916.dtsi b/arch/arm64/boot/dts/qcom/pm8916.dtsi
[..]
>  
> +		pm8916_bms: battery@4000 {

"battery" is not a valid child of the pmic according to
mfd/qcom,spmi-pmic.yaml, so please update the binding to remove the
warnings that this introduces.

Thanks,
Bjorn

