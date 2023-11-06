Return-Path: <devicetree+bounces-14218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 893B37E2CDD
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 20:32:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B72C81C2031C
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 19:32:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ECEA20B23;
	Mon,  6 Nov 2023 19:32:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gerhold.net header.i=@gerhold.net header.b="A47wv3mV";
	dkim=permerror (0-bit key) header.d=gerhold.net header.i=@gerhold.net header.b="PKWoXJs2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B37DD168BC
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 19:32:18 +0000 (UTC)
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [81.169.146.166])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76315103;
	Mon,  6 Nov 2023 11:32:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1699299133; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=XgdK8DDDpP7P/1cRCviflvC29vjgRoykNcFhCm6wzuO5yiCNenKwOZFVDeIawWXRBz
    /tV82bPOlkiaZiWDf1Yqjne2h17MUcpdnqNlojZAmh9Rf7REU2M4Vz8qGRkGox/36Uun
    1xHoZE/+nKlbGYzdHi2q+zTHIYDlESTk35rlP/ieTi1YXgwlZdA3qlGExsxwiMi+hHgK
    H6J+Q3kqC1anvaXvePgdQn9o6lI09CDc12GCDegHVjmYswGlH2aG/rOCXyvn+Tr8fTr6
    v6eYOHACHB9dtrDQ4IyzpaBKoN+cpOUfo466LNqILm1dgAEy0S2m/gN0tN/kxgZsA8dN
    02iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1699299133;
    s=strato-dkim-0002; d=strato.com;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=57RQjPWYE9g4BN2v5kN64PfbhlJAlDmf3yAW/OfR5M8=;
    b=hflZzDUklEr6swZnMYCJG8fxNOm/pxuM7zc3ADVSDRblZSwVmNSdgiWnwuo/8Fxyja
    cVDrAh+RnaV8RXMJPFFGBwSTHVEdk1VcTsIDKqH++YGfVjq3rWAHLPOGM/SayZ0fTrwx
    7h6Sk5/iWGj6tTUryMmfAoN5sS8JPlPse9f8CH8iYzfatgs6Sb726XKhAHMbH7OGpNbh
    UOADSycJf3WuBVAaYK6egytk9b15mNHg3nXJo4LkfBnHno/IJVYbt3YRc1oxApcVKduT
    Vi76UlXLTOuUBOXHRcs5rONMc+zDZolHKZa0kUP2f5PkWZXw4MijVBa43Y8jVGTvNxZP
    TYZQ==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1699299133;
    s=strato-dkim-0002; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=57RQjPWYE9g4BN2v5kN64PfbhlJAlDmf3yAW/OfR5M8=;
    b=A47wv3mVHbDnzv9hd/VX6KibC7qG5NS2NA+nCQmgDeZoGy7B0AuRYAu8EURvXyux+V
    GsupN8BpaRN6r/Zy479y43i6qONdLD3Gm9+1R9lOxMuZE8M387RK+SE+KdmksolunMbO
    4MDEqfx61XVJvV8pQxY83ssUqpdS9HDKsvubSj0UyIw/KDr/cYH+lbkWaFrzdq37Gq6+
    PgceXAKiEB9B7httlLbRPYJNg5+BXdp1LZBf4IRYla+2urK5FpLNN/g82Tg+6xJ15Rbl
    2ChTQ/6cyG21GX6khluN1KYoPekV5wf6P0JF+yS2Ew/ItN3NgU2tXSiqUBaufdblM3bY
    X9fQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1699299133;
    s=strato-dkim-0003; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=57RQjPWYE9g4BN2v5kN64PfbhlJAlDmf3yAW/OfR5M8=;
    b=PKWoXJs2g1NzjZFqNDhnkHqrZds63JVCS15UTRSumafGZY+WrzTLn4NBgLZbMbho3p
    ZauCBFKuaWaZQAw1Y7DQ==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u261EJF5OxJD4peA8Z2L1A=="
Received: from gerhold.net
    by smtp.strato.de (RZmta 49.9.1 DYNA|AUTH)
    with ESMTPSA id Lbb8e2zA6JWDXXQ
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Mon, 6 Nov 2023 20:32:13 +0100 (CET)
Date: Mon, 6 Nov 2023 20:32:06 +0100
From: Stephan Gerhold <stephan@gerhold.net>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Dang Huynh <danct12@riseup.net>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Robert Marko <robimarko@gmail.com>,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 5/8] regulator: qcom_smd: Add PM8937 regulators
Message-ID: <ZUk_NmR9Hb922ZFF@gerhold.net>
References: <20231106-pm8937-v1-0-ec51d9eeec53@riseup.net>
 <20231106-pm8937-v1-5-ec51d9eeec53@riseup.net>
 <CAA8EJprRT=thU-7_rfX6Qhk55iC9Hc0d8x46uyt-p4DOHCrrwQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAA8EJprRT=thU-7_rfX6Qhk55iC9Hc0d8x46uyt-p4DOHCrrwQ@mail.gmail.com>
Content-Transfer-Encoding: 7bit

On Mon, Nov 06, 2023 at 02:15:12PM +0200, Dmitry Baryshkov wrote:
> On Mon, 6 Nov 2023 at 14:11, Dang Huynh <danct12@riseup.net> wrote:
> >
> > The PM8937 is found on boards with MSM8917, MSM8937, MSM8940 SoCs and
> > APQ variants.
> >
> > It provides 6 SMPS (two are controlled by SPMI) and 23 LDO regulators.
> >
> > Signed-off-by: Dang Huynh <danct12@riseup.net>
> 
> I haven't checked LDO / SMPS types.

That's kind of the part where one would most likely make mistakes
though. :D

I checked them based on the log Dang posted on IRC, by cross-referencing
the voltage ranges with the regulator types in the SPMI regulator driver.

Looks good :)

Reviewed-by: Stephan Gerhold <stephan@gerhold.net>

Thanks,
Stephan

(bootloader) Detected PMIC 0x10019
(bootloader)   s1: 1225000 mV, disabled,   fast  (smps)
(bootloader)   s2: 1162500 mV,  enabled,   fast  (smps)
(bootloader)   s3: 1412500 mV,  enabled,   fast  (smps)
(bootloader)   s4: 2050000 mV,  enabled,   fast  (smps)
(bootloader)   s5: 1225000 mV,  enabled,   fast  (ftsmps2p5)
(bootloader)   s6: 1225000 mV,  enabled,   fast  (ftsmps2p5)
(bootloader)   l1: 1000000 mV, disabled, normal  (ult_nldo)
(bootloader)   l2: 1250000 mV,  enabled, normal  (ult_nldo)
(bootloader)   l3: 1350000 mV,  enabled,   idle  (ult_nldo)
(bootloader)   l4: 1800000 mV, disabled, normal  (ult_pldo)
(bootloader)   l5: 1800000 mV,  enabled,   idle  (ult_pldo)
(bootloader)   l6: 1800000 mV,  enabled, normal  (ult_pldo)
(bootloader)   l7: 1800000 mV,  enabled, normal  (ult_pldo)
(bootloader)   l8: 2900000 mV,  enabled, normal  (ult_pldo)
(bootloader)   l9: 3300000 mV, disabled, normal  (ult_pldo)
(bootloader)  l10: 2800000 mV, disabled, normal  (ult_pldo)
(bootloader)  l11: 2950000 mV,  enabled, normal  (ult_pldo)
(bootloader)  l12: 2950000 mV,  enabled, normal  (ult_pldo)
(bootloader)  l13: 3075000 mV,  enabled, normal  (ult_pldo)
(bootloader)  l14: 1800000 mV, disabled, normal  (ult_pldo)
(bootloader)  l15: 1800000 mV, disabled, normal  (ult_pldo)
(bootloader)  l16: 1800000 mV, disabled, normal  (ult_pldo)
(bootloader)  l17: 2850000 mV,  enabled, normal  (ult_pldo)
(bootloader)  l18: 2700000 mV, disabled, normal  (ult_pldo)
(bootloader)  l19: 1300000 mV, disabled, normal  (ult_nldo)
(bootloader)  l20: 1740000 mV, disabled  (ln_ldo)
(bootloader)  l21: 1740000 mV, disabled  (ln_ldo)
(bootloader)  l22: 2800000 mV, disabled, normal  (ult_pldo)
(bootloader)  l23: 1300000 mV, disabled, normal  (nldo1)

