Return-Path: <devicetree+bounces-1589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C207A714C
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 05:55:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 75A461C20A72
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 03:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A9CD3C21;
	Wed, 20 Sep 2023 03:55:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197963C00
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 03:55:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EFCCC43397;
	Wed, 20 Sep 2023 03:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695182100;
	bh=zYeb75WtdFqsQ498+NDNEBkGhkVa81ZkDRsZUSt8gCo=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=QYeBhBhxR0iKfvAaDvKwSSE2p+COykJmWb0dsS2v3ifs7KX1qEv0O13VDs2DnTn91
	 zoIL5EV5VxGJLeIhOub9KtbXEe/66DdAi+gvpYFi3N5BNZuZmtSVmJGhHwhCEIfN2/
	 gW2EtRo4HosaOEMmEAE/Jix7LqNAHgEDQ24pYjDUkBvkV83g6HuNB3tZ9M8WnQA+0D
	 xwh1WO19wJCVmyUHgIWIJ50ywPe0f/xTSUsm9gijrsBHz6JfOwmCJDFUEToqaG4qqn
	 ydcoJy8V+AbqSqC8jDdS8MGWZD4Rs/Y279n2LYJFUiIdDYH46A7u+0JWzhg1m9wbpD
	 ckSpIlSBNjCow==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rohit Agarwal <quic_rohiagar@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: qcom: sdx75-idp: align RPMh regulator nodes with bindings
Date: Tue, 19 Sep 2023 20:58:52 -0700
Message-ID: <169518233726.1055386.45697761517790968.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230905163103.257412-1-krzysztof.kozlowski@linaro.org>
References: <20230905163103.257412-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 05 Sep 2023 18:31:03 +0200, Krzysztof Kozlowski wrote:
> Device node names should be generic and bindings expect certain pattern
> for RPMh regulator nodes:
> 
>   sdx75-idp.dtb: rsc@17a00000: 'pmx75-rpmh-regulators' does not match any of the regexes: '^regulators(-[0-9])?$', 'pinctrl-[0-9]+'
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sdx75-idp: align RPMh regulator nodes with bindings
      commit: 815ea491460766dbd4b39a3c9904b44b5880c41c

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

