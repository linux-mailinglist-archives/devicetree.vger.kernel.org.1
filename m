Return-Path: <devicetree+bounces-13080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4947F7DC7AD
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 08:54:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 024142816BC
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 07:54:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC7B810A28;
	Tue, 31 Oct 2023 07:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ftVnKX0V"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A6501118A
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 07:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EA08C433C8;
	Tue, 31 Oct 2023 07:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698738846;
	bh=rI1tj+ClpBzU1bf9NbYO6yeIi3E8ggphbloqxq8Xc3k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ftVnKX0VoyCbVvu452uXlgW3AItzBiB9NQ5YhvWxkhps5eA7ZmpRty2yValF0Tpny
	 1IhURRs6aJTHPaSKoGNhZ3XLkl019/a6KP+OqkKWQhQlJEz7MqHuv1pTtRSzVi4tV6
	 HJRdEHFTwjKf84GShCR5aARkJxPsIi3rI+EfXEBnn920uHUWIvCJ2DS47dsExvXJJc
	 EioEkqpk31qPoT+wz/Vxehc7V/JqyhMVV8uzamQkLvWhtjQXrPs8WhyNhQgBNErW9H
	 9DGz3TPIiwJ2KkW7/J7PTaclHCspRdlAHuQi73yFDQMdpIN8olxENOTJmWuTvha2zu
	 1tBf6vA6DDPbQ==
Date: Tue, 31 Oct 2023 07:54:00 +0000
From: Lee Jones <lee@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	Nikita Travkin <nikita@trvn.ru>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: (subset) [PATCH v2 1/3] dt-bindings: mfd: qcom,spmi-pmic: Add
 pm8916 vm-bms and lbc
Message-ID: <20231031075400.GR8909@google.com>
References: <20231023-pm8916-dtsi-bms-lbc-v2-0-343e3dbf423e@trvn.ru>
 <20231023-pm8916-dtsi-bms-lbc-v2-1-343e3dbf423e@trvn.ru>
 <169824868224.758275.3309948002942732059.b4-ty@kernel.org>
 <67b0e974-779c-434c-b558-81840ec46cdd@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <67b0e974-779c-434c-b558-81840ec46cdd@linaro.org>

On Fri, 27 Oct 2023, Krzysztof Kozlowski wrote:

> On 25/10/2023 17:44, Lee Jones wrote:
> > On Mon, 23 Oct 2023 11:20:32 +0500, Nikita Travkin wrote:
> >> PM8916 (and probably some other similar pmics) have hardware blocks for
> >> battery monitoring and charging. Add patterns for respecive nodes so the
> >> devicetree for those blocks can be validated properly.
> >>
> >>
> > 
> > Applied, thanks!
> > 
> > [1/3] dt-bindings: mfd: qcom,spmi-pmic: Add pm8916 vm-bms and lbc
> >       commit: e9aec86e211ee493081e8934b8c821d660b417ee
> 
> Hi Lee,
> 
> It seems this patch depends on something not in your tree. This should
> have been clearly explained in cover letter or this patch changelog, but
> wasn't.
> 
> Please drop the patch.

Done.

-- 
Lee Jones [李琼斯]

