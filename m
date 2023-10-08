Return-Path: <devicetree+bounces-6832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B84BA7BD044
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 23:28:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 72C7C281589
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 21:28:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 044891A71F;
	Sun,  8 Oct 2023 21:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGH8vFeD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC50714A93
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 21:28:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80FD3C433C7;
	Sun,  8 Oct 2023 21:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696800508;
	bh=nQGWKZiyHBv6B4a2iISbyjNNNeRSkrsuiZCq95X2HsI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZGH8vFeD3P+e5W18SGGGuMO7pnRPit9L6JH4GVO8pqloZKkJZyekCXtN4O6nDHB3c
	 DcQ0v6fNnsKA2smebnULTaa91hcoOchINv9ytFKlbrL8d+XxyGTr+CqBikJDUw8yk3
	 4IqCcaW8ZC4MwQCHSgbJe4nRGgrZpei2Xq6+X9yuXoUL/9Dv8T2FGYlQBgeTQy79T0
	 Lhd+UghpG7bWqJJkZYyXoe4hTLqIXP/59UxnWOfY4sVmNWbh7nPVf1jz/ho8+BstGn
	 A2H/7IiVGESt+ih4Dt/fEkicEDnfmvV9vDWACSPoUDZWsUUMZM+TcJUWMdTRX/H8VE
	 oKBkFxWFiqb0g==
Date: Sun, 8 Oct 2023 23:28:24 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, agross@kernel.org,
	andersson@kernel.org, loic.poulain@linaro.org, rfoss@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, todor.too@gmail.com, mchehab@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/5] i2c: qcom-cci: Add sc8280xp compatible
Message-ID: <20231008212824.cs6e6hc7zur67v6k@zenone.zhora.eu>
References: <20231006120159.3413789-1-bryan.odonoghue@linaro.org>
 <20231006120159.3413789-3-bryan.odonoghue@linaro.org>
 <b8f2d7f1-16e2-4e6a-9c84-37da393f74a3@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b8f2d7f1-16e2-4e6a-9c84-37da393f74a3@linaro.org>

Hi Konrad,

> > Add sc8280xp compatible with cci_v2_data parameters.
> > 
> > Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > ---
> Drop this patch, it adds nothing useful

what about the rest of the series?

Could you please be a bit more explicative?

Thanks,
Andi

