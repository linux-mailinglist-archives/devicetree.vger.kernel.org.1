Return-Path: <devicetree+bounces-10610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C125C7D23A3
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 17:46:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F2EC81C209D5
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 15:46:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE1386FCC;
	Sun, 22 Oct 2023 15:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLCbgrtq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF4663B2
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 15:46:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18BE3C43391;
	Sun, 22 Oct 2023 15:46:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697989570;
	bh=KqtvWHvEr2+HSDf51eJD5dXAJxO3x4VmurwGhZc1wtM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hLCbgrtqhmY1jO0WfLI1Va39wYLTFz8wABttbmsrMRURn3PV4LcwcyzdQCYg7IVL8
	 CsYM9lUqZv8nOczoBJnbY9G6n74vl/JoKP/fy7CIaKOb6oSsZpv9en0PT9vvxx7lKT
	 plsfBDwoSqbuUIgJWuN6vDH0G4kYKvpcn77JUte4OktSTTOFX412MUM1IIpU5BvMBA
	 rJ6/zOQT2Q7qSVvxxPgoM5FWcbgrEAurKKrmvISrTpsJpEf9kx+NEV6hgG681t6le2
	 oHxeIOz8kmLlrAoiY/UsRl9t7Ro5HjslnVGq51TzKtk6YPy1CyEtJSFGtuAJAF/kKT
	 OVWumfiGhI4mA==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Luca Weiss <luca.weiss@fairphone.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v2 0/2] Small updates / fixups for PMIC spmi-gpio
Date: Sun, 22 Oct 2023 08:50:17 -0700
Message-ID: <169798982330.271027.14782440269787832990.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231002-pm7250b-gpio-fixup-v2-0-debb8b599989@fairphone.com>
References: <20231002-pm7250b-gpio-fixup-v2-0-debb8b599989@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 02 Oct 2023 09:00:10 +0200, Luca Weiss wrote:
> Update the schema to use plural _gpios label in the example. And fix a
> dtbs_check warning in pm7250b.dtsi.
> 
> 

Applied, thanks!

[2/2] arm64: dts: qcom: pm7250b: Use correct node name for gpios
      commit: 6cd8621758004d98f7c622c2d756c116c6888127

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

