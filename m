Return-Path: <devicetree+bounces-9009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 503167CB297
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 20:35:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AF508B20EBF
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 18:35:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E58FD31588;
	Mon, 16 Oct 2023 18:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5TuNaew"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55733418B
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 18:35:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2574C433C7;
	Mon, 16 Oct 2023 18:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697481332;
	bh=NpIaTvuHw8Le9ChpmPmnRspLxE9CIeioI03Nv4mZ9zA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=V5TuNaew8UyYa92+nB9zmq6FI1jsWRiB0dl5SWe7Ch5b/Hs2KPDJGZCq4PRBB+Oxx
	 FXzH2BdJF1dQo0XlIoJ/kjFM/eItqKTy+kHrs7C3z/IbS8GEKlPOacpyhdt6xQf/IR
	 /h1vwzAle8iipeF//iwFP04/zzwty7DugLSuLjuObx2unrrWZ4WGLmHgQh2Q9wnsrI
	 4wpKP5e7KC3v10kCk6TIJu3/r5Oe67SErZzdoktLOGL4NHY39GDmjwSJfl6pKVxIO8
	 gNZDn6PAM+gmyFzDJ24OAOQ++Y2t2xuvyco0lk8LjnWNlLVlOuxLh0jo9Dpqh3x5+y
	 EZYOyzN18SVig==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Amit Kucheria <amitk@kernel.org>,
	Thara Gopinath <thara.gopinath@gmail.com>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Priyansh Jain <quic_priyjain@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	quic_manafm@quicinc.com,
	kernel@quicinc.com
Subject: Re: (subset) [PATCH v2 0/2] Enable tsens and thermal for sa8775p SoC
Date: Mon, 16 Oct 2023 11:39:18 -0700
Message-ID: <169748155481.1250452.18230103775371703582.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230926085948.23046-1-quic_priyjain@quicinc.com>
References: <20230926085948.23046-1-quic_priyjain@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 26 Sep 2023 14:29:46 +0530, Priyansh Jain wrote:
> Adding compatible string in TSENS dt-bindings, device node
> for TSENS controller and Thermal zone support
> 
> Changes since v3:
> - Correct the unit address of tsens node
> - Updated tsens nodes in sorted order by address
> - Moved thermal zones outside /soc node
> 
> [...]

Applied, thanks!

[2/2] arm64: dts: qcom: Enable tsens and thermal for sa8775p SoC
      commit: 4e7870360366b79f8a37ab0809895359105e5b78

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

