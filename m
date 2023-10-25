Return-Path: <devicetree+bounces-11924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B9A7D711F
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 17:44:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 22C6B1F21A50
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 15:44:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E58C32AB5F;
	Wed, 25 Oct 2023 15:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAK84zCh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7FB928E10
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 15:44:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 919ACC433C8;
	Wed, 25 Oct 2023 15:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698248685;
	bh=yk1+TBIWql/6xKTzf7Al0olsihyW9HN32xrt3HZ5UBI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=QAK84zCh5klcpa+EAiiCX1PmLrhd6uR/Y+VXlxabYBcvdmmvUM59hbBTgddCaCgqU
	 P7lzF67lTdHZ30BVLgikVO9CTpCCVr76C6Ikf7boAmpCnkThlOH1cTJ3bQY7qzgphp
	 h1AsylwTMUGeEHkWsFLSddu47kL2aflXoOC2sNKElZektHOeqclHcmls7HzoMHW+Ym
	 4OSkkJx3usctm1rxR/Y9mKIXdFHVB7ZzGTW4UpEbkrA5wa5P8xNzz5mn9GF8fFvnaf
	 O0aMhWuFXQtbMs875fY7U4gDBfp/du6E3OVwcePqeS9LuVruVBnFCSNyA8NfeDBfXQ
	 QOaebiuZsWTVA==
From: Lee Jones <lee@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Stephen Boyd <sboyd@kernel.org>, Nikita Travkin <nikita@trvn.ru>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
In-Reply-To: <20231023-pm8916-dtsi-bms-lbc-v2-1-343e3dbf423e@trvn.ru>
References: <20231023-pm8916-dtsi-bms-lbc-v2-0-343e3dbf423e@trvn.ru>
 <20231023-pm8916-dtsi-bms-lbc-v2-1-343e3dbf423e@trvn.ru>
Subject: Re: (subset) [PATCH v2 1/3] dt-bindings: mfd: qcom,spmi-pmic: Add
 pm8916 vm-bms and lbc
Message-Id: <169824868224.758275.3309948002942732059.b4-ty@kernel.org>
Date: Wed, 25 Oct 2023 16:44:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2

On Mon, 23 Oct 2023 11:20:32 +0500, Nikita Travkin wrote:
> PM8916 (and probably some other similar pmics) have hardware blocks for
> battery monitoring and charging. Add patterns for respecive nodes so the
> devicetree for those blocks can be validated properly.
> 
> 

Applied, thanks!

[1/3] dt-bindings: mfd: qcom,spmi-pmic: Add pm8916 vm-bms and lbc
      commit: e9aec86e211ee493081e8934b8c821d660b417ee

--
Lee Jones [李琼斯]


